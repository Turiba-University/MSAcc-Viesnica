Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database   'Use database order for string comparisons

Private Sub Apmaksat_Click()
    If IsNull(Me.IST_NR) Then
        MsgBox "Kursoram ir jābūt rindā ar reģistrētu maksājumu.", vbOKOnly, "JTM"
        Exit Sub
    End If

    LNR = Me.Ligums
    IstSk = Me.SK_IST
    INR = Me.IST_NR
    dno = Me.DAT_NO
    dlidz = Me.DAT_LIDZ
    MDay = Me.MAKS_DAY
    MMen = Me.MAKS_MEN
    MKopa = Me.Kopa
    MAtl = Me.Atlaide
    MTotal = Me.TOTAL

    DoCmd.GoToRecord , , acNewRec

    Me.Ligums = LNR
    Me.SK_IST = IstSk
    Me.IST_NR = INR
    Me.DAT_NO = DateAdd("m", 1, dno)
    Me.DAT_LIDZ = DateAdd("m", 1, dlidz)

    '== uzliek maksāšanas termiņu - iepriekšējā mēneša 25.datums
    Me.IstMaksTermins = DateSerial(Year(dno), Month(dno), 25)

    Me.MAKS_DAY = MDay
    Me.MAKS_MEN = MMen
    Me.Kopa = MKopa
    Me.Atlaide = MAtl
    Me.TOTAL = MTotal


''    Me.LAST_DAT = Format(Date, "DD-MM-YYYY")

    Me.FABULA = Me.FABULA & CurrentUser() & Date

    Call LAST_DAT_AfterUpdate

    Me.MaksVeids.SetFocus
End Sub

Private Sub Atlaide_AfterUpdate()
    If Me.Atlaide > 1 Then
        Me.Atlaide = Me.Atlaide / 100
    End If
    totals
End Sub


Private Sub Bridinajums_Click()
    If Me.Bridinajums = 0 Then
        DoCmd.OpenForm "MPazinojumi", , , "[Ligums]=" & Me.Ligums, acFormEdit
        Me.Bridinajums = True
    Else
        DoCmd.OpenForm "MPazinojumi", , , , acFormAdd
        Forms!MPazinojumi!Tips = 1
        Forms!MPazinojumi!Ligums = Me.Ligums
        Forms!MPazinojumi!Lig_Dat = Forms!LigumsViesn!Lig_Dat
        Forms!MPazinojumi!Vards = Forms!LigumsViesn!Vards
        Forms!MPazinojumi!Uzvards = Forms!LigumsViesn!Uzvards
        Forms!MPazinojumi!Istaba = Me.IST_NR
        Forms!MPazinojumi!Par_No = Me.DAT_NO
        Forms!MPazinojumi!Par_Lidz = Me.DAT_LIDZ
        Forms!MPazinojumi!BP_Datums = Date
''        Forms!MPazinojumi!Termins = Date + 10
        Forms!MPazinojumi!Paraksta_VU = "I.Ernstsone"
        Forms!MPazinojumi!Paraksta_Amats = "Jaunatnes tūrisma mītnes vadītāja"
        Forms!MPazinojumi!Paraksta_Amats_eng = "Youth Hostel Manager"

        Dim db As Database
        Dim rec As Recordset

        Set db = CurrentDb
        Set rec = db.OpenRecordset("SELECT Max(dbo_viesn_MPazinojumi.BP_Nr) AS MaxOfBP_Nr FROM dbo_viesn_MPazinojumi;", dbOpenSnapshot, dbSeeChanges)

        If IsNull(rec!MaxOfBP_Nr) Then
            Forms!MPazinojumi!BP_Nr = 1
        Else
            Forms!MPazinojumi!BP_Nr = rec!MaxOfBP_Nr + 1
        End If

        Set rec = db.OpenRecordset("SELECT dbo_kl_Logins.Uzvards, dbo_kl_Logins.Vards, dbo_kl_Logins.Telefons FROM dbo_kl_Logins WHERE (((dbo_kl_Logins.Login)=""" & CurrentUser & """));", dbOpenSnapshot, dbSeeChanges)

        Forms!MPazinojumi!Sagatavoja = Left(rec!Vards, 1) & ". " & rec!Uzvards & " " & rec!Telefons

        Me.Bridinajums = True
    End If
End Sub

Private Sub Dat_Lidz_AfterUpdate()
    totals
    TN_aprekins_sub
End Sub

Private Sub DAT_LIDZ_Exit(Cancel As Integer)
    If Abs(Me.DAT_NO - Me.DAT_LIDZ) > 32 Then MsgBox "Dienu skaits pārsniedz vienu mēnesi." & Chr(13) & Chr(10) & "   Ja cilvēks slēdz līgumu pa mēnešiem," & Chr(13) & Chr(10) & "dienu skaits nedrīkst pārsniegt vienu mēnesi!"
    If IsNull(Me.MAKS_DAY) And Not IsNull(Me.MAKS_MEN) Then MAKS_MEN.SetFocus
End Sub

Private Sub DAT_NO_AfterUpdate()
    totals
    TN_aprekins_sub
End Sub

Private Sub DAT_NO_Enter()
    If Forms!LigumsViesn!Ieraksts.Enabled = True Then Me.DAT_NO = Format(Date, "dd-mm-yyyy")
End Sub

Private Sub Dzest_Click()
    Dim a
    If Not IsNull(Me.MaksVeids) Or Not IsNull(Me.Ist_SamSum) Or Not IsNull(Me.KavN_SamSum) Then
        a = MsgBox("Šim rēķinam ir atzīmēti pieņemtie maksājumi. Vai esat pārliecināti ka drīkst dzēst?", vbYesNo + vbExclamation, "JTM")
        If a = vbNo Then Exit Sub
    End If
    Me.Stat = -1
    Me.Requery
End Sub

Private Sub Form_AfterInsert()
    Dim db As Database
    Dim rec As Recordset

    Set db = CurrentDb
        Set rec = db.OpenRecordset("SELECT MAKS_ID FROM dbo_viesn_Maksajumi WHERE (((Ligums)=" & Me.Ligums & "));", dbOpenSnapshot, dbSeeChanges)
    rec.MoveLast
    If rec.RecordCount > 1 Then
        DoCmd.Echo 1, "Pārbaude uz STOP sarakstu..."
             If StopSaraksts(IIf(IsNull(Forms!LigumsViesn.CKods), 0, Forms!LigumsViesn.CKods), 3) > 0 Then
            DoCmd.SetWarnings 0
            If MsgBox("Vai vēlaties turpināt?", vbYesNo + vbDefaultButton2) = vbNo Then DoCmd.DoMenuItem acFormBar, acEditMenu, acUndo, , acMenuVer70
            DoCmd.SetWarnings 1
        End If
        DoCmd.Echo 1, ""
    End If
End Sub

Private Sub Form_AfterUpdate()
''      If Forms!LigumsViesn!POSITION = "Viesis" Then
''        Forms!LigumsViesn!LSumKopa.Visible = True
''    Else
''        Forms!LigumsViesn!LSumKopa.Visible = False
''    End If
End Sub

Private Sub IST_NR_AfterUpdate()
    totals
End Sub

Private Sub IST_NR_DblClick(Cancel As Integer)
    DoCmd.OpenForm "VIA_VietuSkaitsUzdatumu", , , "[Ist_Nr]=" & Me.IST_NR
    Forms!VIA_VietuSkaitsUzdatumu.Stat_Datums = Date
    Forms!VIA_VietuSkaitsUzdatumu.Requery
End Sub


Private Sub Ist_SamSum_Click()
    If IsNull(Me.Ist_SamSum) And Not IsNull(Me.MaksVeids) And Not IsNull(Me.LAST_DAT) Then
        Me.Ist_SamSum = Me.TOTAL
    End If
End Sub

Private Sub IstMaksTermins_AfterUpdate()
    Call LAST_DAT_AfterUpdate
End Sub

Private Sub KavN_Dienas_AfterUpdate()
    Dim a
    Dim KNLidz As Date, KNApjoms As Single, KNSum As Single, KNLim As Single
''    KNApjoms = 0.01 '== kavējuma nauda 1% dienā, līdz 31.07.2014
    KNApjoms = 0.005 '== kavējuma nauda 0.5% dienā, no 01.08.2014
    KNLidz = Date

    a = MsgBox("Vai labot kavējuma dienu skaitu manuāli?", vbYesNo + vbQuestion, "JTM")
    If a = vbYes Then
        If IsNull(Me.KavN_Dienas) Then
            Me.KavN_Summa = Null
            Exit Sub
        ElseIf (Me.KavN_Dienas >= 0 And Me.KavN_Dienas < 200) Then
            KNSum = Int(((Me.KavN_Dienas) * Me.TOTAL * KNApjoms + 0.005005) * 100) / 100
            Me.KavN_Summa = KNSum '10% robeža noņemta no 19.11.2014
            Exit Sub
        Else
            MsgBox ("Nekorekts kavējuma dienu skaits")
            Exit Sub
        End If
    End If
    If Not IsNull(Me.MaksVeids) Then
        Me.KavN_Dienas = Me.KavN_Dienas.OldValue
        Exit Sub
    End If
'==== kavējuma naudas aprēķins
    If IsNull(Me.IstMaksTermins) Then
        Me.KavN_Dienas = Null
        Me.KavN_Summa = Null
        Exit Sub
    End If
    If IsNull(Me.KavN_Dienas) Then
        Me.KavN_Summa = Null
        Exit Sub
    End If


    If Not IsNull(Me.LAST_DAT) Then KNLidz = Me.LAST_DAT
    If KNLidz > Me.IstMaksTermins Then
        KNSum = Int(((Me.KavN_Dienas) * Me.TOTAL * KNApjoms + 0.005005) * 100) / 100
        Me.KavN_Summa = KNSum '10% robeža noņemta no 19.11.2014
''        KNLim = Int((Me.TOTAL * 0.1 + 0.005005) * 100) / 100  '10% no kavētās summas - max.sods no 01.01.2014.
''        If KNSum > KNLim Then
''            Me.KavN_Summa = KNLim
''        Else
''            Me.KavN_Summa = KNSum
''        End If
    Else
        Me.KavN_Dienas = Null
        Me.KavN_Summa = Null
    End If
End Sub

Private Sub KavN_SamSum_Click()
    If IsNull(Me.KavN_SamSum) And Not IsNull(Me.MaksVeids) And Not IsNull(Me.LAST_DAT) Then
        Me.KavN_SamSum = Me.KavN_Summa
    End If
End Sub

Private Sub LAST_DAT_AfterUpdate()
    If Not IsNull(Me.MaksVeids) Then
        Me.KavN_Dienas = Me.KavN_Dienas.OldValue
        Exit Sub
    End If

'==== kavējuma naudas aprēķins
    If IsNull(Me.IstMaksTermins) Then
        Me.KavN_Dienas = Null
        Me.KavN_Summa = Null
        Exit Sub
    End If

    Dim KNLidz As Date, KNApjoms As Single, KNSum As Single, KNLim As Single
''    KNApjoms = 0.01 '== kavējuma nauda 1% dienā, līdz 31.07.2014
    KNApjoms = 0.005 '== kavējuma nauda 0.5% dienā, no 01.08.2014
    KNLidz = Date
    If Not IsNull(Me.LAST_DAT) Then KNLidz = Me.LAST_DAT
    If KNLidz > Me.IstMaksTermins Then
        Me.KavN_Dienas = KNLidz - Me.IstMaksTermins
        KNSum = Int(((Me.KavN_Dienas) * Me.TOTAL * KNApjoms + 0.005005) * 100) / 100
        Me.KavN_Summa = KNSum '10% rodeža noņemta 19.11.2014
'''        KNLim = Int((Me.TOTAL * 0.1 + 0.005005) * 100) / 100  '10% no kavētās summas - max.sods no 01.01.2014.
'''        If KNSum > KNLim Then
'''            Me.KavN_Summa = KNLim
'''        Else
'''            Me.KavN_Summa = KNSum
'''        End If
    Else
        Me.KavN_Dienas = Null
        Me.KavN_Summa = Null
    End If
End Sub

Private Sub MAKS_DAY_AfterUpdate()
    totals
End Sub
Private Function TN_aprekins_sub() As Integer

    If Forms!LigumsViesn!TNAttiecas = -1 Then 'jārēķina TN
    If Not IsNull(Me.DAT_NO) And Not IsNull(Me.DAT_LIDZ) And Not IsNull(Me.SK_IST) Then
        Dim db As Database
        Dim LIstrst As Recordset, Lstr As String, LIstDrst As Recordset

        Set db = CurrentDb
        IstNr = Me.IST_NR

        LNR = Forms!LigumsViesn!Ligums
        TNG = Forms!LigumsViesn!TNGrupa

''        Lstr = " SELECT dbo_viesn_Maksajumi.Ist_Nr"
''        Lstr = Lstr & " FROM dbo_viesn_Maksajumi"
''        Lstr = Lstr & " WHERE (((dbo_viesn_Maksajumi.Ligums) = " & LNR & ") And ((dbo_viesn_Maksajumi.Stat) Is Null Or (dbo_viesn_Maksajumi.Stat) = 0))"
''        Lstr = Lstr & " GROUP BY dbo_viesn_Maksajumi.Ist_Nr;"
''
''        Set LIstrst = db.OpenRecordset(Lstr, dbOpenDynaset)
''
''        LIstrst.MoveFirst
''        Do While Not LIstrst.EOF 'iet pa katras istabiņas maksājumu datumiem
            ''DoCmd.RunCommand acCmdSaveRecord


            Lstr = " SELECT dbo_viesn_Maksajumi.Ligums, dbo_viesn_Maksajumi.Stat, dbo_viesn_Maksajumi.MaksVeids, dbo_viesn_Maksajumi.Ist_Nr, dbo_viesn_Maksajumi.Dat_No, dbo_viesn_Maksajumi.Dat_Lidz, dbo_viesn_Maksajumi.Sk_Ist, dbo_viesn_Maksajumi.TNKopa, dbo_viesn_Maksajumi.TNNepiemero18, dbo_viesn_Maksajumi.TNNepiemeroDS, dbo_viesn_Maksajumi.TNNaktis, dbo_viesn_Maksajumi.TNSum"
            Lstr = Lstr & " FROM dbo_viesn_Maksajumi"
            Lstr = Lstr & " WHERE (((dbo_viesn_Maksajumi.Ligums) = " & LNR & ") And ((dbo_viesn_Maksajumi.Stat) Is Null Or (dbo_viesn_Maksajumi.Stat) = 0) And ((dbo_viesn_Maksajumi.IST_NR) = " & Me.IST_NR & "))"
''            Lstr = Lstr & " WHERE (((dbo_viesn_Maksajumi.Ligums) = " & LNR & ") And ((dbo_viesn_Maksajumi.Stat) Is Null Or (dbo_viesn_Maksajumi.Stat) = 0) And ((dbo_viesn_Maksajumi.IST_NR) = " & LIstrst!IST_NR & "))"
            Lstr = Lstr & " ORDER BY dbo_viesn_Maksajumi.Dat_No;"
            ''Set LIstDrst = db.OpenRecordset(Lstr, dbOpenDynaset)

            ''Šo ieviesu, līdz ar to Lstr selekts nav vajadzīgs.
            Set LIstDrst = Me.Recordset

            TNNaktisIst = 0

            LIstDrst.MoveFirst
            Do While Not LIstDrst.EOF 'iet pa istabiņas maksājumu datumiem
                If LIstDrst!IST_NR = IstNr Then
                    If IsNull(LIstDrst!TNNepiemero18) Then TNNep18 = 0 Else TNNep18 = LIstDrst!TNNepiemero18
                    If IsNull(LIstDrst!TNNepiemeroDS) Then TNNepDS = 0 Else TNNepDS = LIstDrst!TNNepiemeroDS
                    TNKopa = LIstDrst!SK_IST - TNNep18 - TNNepDS
                    dno = LIstDrst!DAT_NO
                    dlidz = LIstDrst!DAT_LIDZ
                    If TNKopa = 0 Then
                        TNNaktis = 0
                    ElseIf TNKopa < 0 Then
                        MsgBox "Tūrisma nodevas nepiemērošanas laukos (<18 un DS) norādīts lielāks viesu skaits, nekā istabiņā!", vbExclamation + vbOKOnly, "JTM"
                    Else
                        If DateDiff("d", dno, dlidz) + TNNaktisIst > 10 Then
                            TNNaktis = 10 - TNNaktisIst
                        Else
                            TNNaktis = dlidz - dno
                        End If
                    End If
                    TNSum = TNNaktis * (TNKopa)

                    LIstDrst.Edit
                    LIstDrst!TNKopa = TNKopa
                    LIstDrst!TNNaktis = TNNaktis
                    LIstDrst!TNSum = TNSum
                    LIstDrst.Update

                    If TNG = -1 Then

                    Else
                        TNNaktisIst = TNNaktisIst + TNNaktis
                    End If
                End If
                LIstDrst.MoveNext
            Loop
''            LIstrst.MoveNext
''        Loop




    End If
    End If

''    Me.Refresh

'==================
''        TN_aprekins = -1
''
''        If Me.TNLabots = 0 Then Exit Function
''
''        TN_aprekins = 0
''
''        Dim db As Database
''        Dim VIrst As Recordset, VIstr As String, INVrst As Recordset
''
''        Set db = CurrentDb
''
''        LNR = Me.Ligums
''
''        VIstr = " SELECT dbo_viesn_Maksajumi.Ligums, dbo_viesn_Maksajumi.Ist_Nr, dbo_viesn_Maksajumi.MaksVeids"
''        VIstr = VIstr & " FROM dbo_viesn_Maksajumi"
''        VIstr = VIstr & " WHERE (((dbo_viesn_Maksajumi.Ligums)=" & LNR & ") AND ((dbo_viesn_Maksajumi.Ist_Nr)=999) AND ((dbo_viesn_Maksajumi.MaksVeids) Is Null) AND ((dbo_viesn_Maksajumi.Stat) Is Null));"
''        Set INVrst = db.OpenRecordset(VIstr, dbOpenDynaset)
''
''        If Not INVrst.EOF Then
''            MsgBox "Maksājumos ir vismaz viens neapmaksāts tūrisma nodevas ieraksts. Jaunu pievienot nevar!", vbOKOnly, "JTM"
''            Exit Function
''        End If
''
''
''    ''    LNR = Me.Ligums
''        dno = Me.Datums_In
''        dlidz = Me.Datums_Out
''        TNKopa = Me.TNKopa
''        If IsNull(dlidz) Then
''            a = MsgBox("Nav norādīts izvākšanās datums. Vai piemērot tūrisma nodevu par 10 naktīm?", vbYesNo + vbDefaultButton1, "Līgums")
''            If a = vbNo Then Exit Function
''            TNNaktis = 10
''            dlidz = DateAdd("d", 10, dno)
''        ElseIf DateDiff("d", dno, dlidz) > 10 Then
''            TNNaktis = 10
''            dlidz = DateAdd("d", 10, dno)
''        Else
''            TNNaktis = dlidz - dno
''        End If
''
''        If IsNull(Me.TNNepiemero) Then TNNep = 0 Else TNNep = Me.TNNepiemero
''        TNPers = TNKopa - TNNep
''
''        Me.MAKSAJUMIbeta.SetFocus
''        DoCmd.GoToRecord , , acNewRec
''
''        Me.MAKSAJUMIbeta.Form.Ligums = LNR
''        Me.MAKSAJUMIbeta.Form.DAT_NO = dno
''        Me.MAKSAJUMIbeta.Form.DAT_LIDZ = dlidz
''        Me.MAKSAJUMIbeta.Form.SK_IST = TNNaktis * TNPers
''        Me.MAKSAJUMIbeta.Form.IST_NR = 999
''        Me.MAKSAJUMIbeta.Form.MAKS_DAY = 1
''        Me.MAKSAJUMIbeta.Form.Kopa = TNNaktis * TNPers
''        Me.MAKSAJUMIbeta.Form.TOTAL = TNNaktis * TNPers
''        Me.MAKSAJUMIbeta.Form.FABULA = Me.MAKSAJUMIbeta.Form.FABULA & CurrentUser() & Date
''
''        Me.TNKopa.SetFocus
''
''        Me.TNLabots = 0
''        TN_aprekins = -1
End Function
Private Sub MAKS_DAY_DblClick(Cancel As Integer)
    If CurrentUser = "imants" Or CurrentUser = "iluta" Then
        DoCmd.OpenTable "dbo_viesn_kl_LBData"
    End If
End Sub

Private Sub MAKS_DAY_Enter()
    If Not IsNull(Me.MAKS_MEN) Then
        'MsgBox "Ir vai nu maksa par dienu vai mēnesi"
        Me.MAKS_MEN.SetFocus
        Exit Sub
    End If
End Sub

Private Sub MAKS_DAY_Exit(Cancel As Integer)
    On Error GoTo RESUMEW
    If Not IsNull(Me.MAKS_DAY) Then
        IST_NR.SetFocus
        Me.TOTAL = [SK_IST] * ([DAT_LIDZ] - [DAT_NO]) * [MAKS_DAY]
    End If
RESUMEW:
    Exit Sub
End Sub

Private Sub MAKS_MEN_AfterUpdate()
    totals
End Sub

Private Sub MAKS_MEN_DblClick(Cancel As Integer)
    If CurrentUser = "imants" Or CurrentUser = "iluta" Then
        DoCmd.OpenTable "dbo_viesn_kl_LBData"
    End If
End Sub

Private Sub MAKS_MEN_Enter()
    If Not IsNull(Me.MAKS_DAY) Then
       ' MsgBox "Ir vai nu maksa par dienu vai mēnesi"
        Me.MAKS_DAY.SetFocus
        Exit Sub
    End If

End Sub

Private Sub MAKS_MEN_Exit(Cancel As Integer)
'If Not IsNull(Me.MAKS_MEN) Then IST_NR.SetFocus
End Sub


Private Sub MaksVeids_AfterUpdate()
    If IsNull(Me.DAT_NO) Or IsNull(Me.DAT_LIDZ) Then
        MsgBox "Nav norādīts izmitināšanas periods!", vbOKOnly, "JTM līgumi"
        Me.MaksVeids = Null
        Exit Sub
    End If

    If IsNull(Me.LAST_DAT) Then Me.LAST_DAT = Date
    If IsNull(Me.Ist_SamSum) Then Me.Ist_SamSum = Me.TOTAL
    If IsNull(Me.KavN_SamSum) Then Me.KavN_SamSum = Me.KavN_Summa
    If IsNull(Me.TN_SamSum) Then Me.TN_SamSum = Me.TNSum
    If Me.MaksVeids = 1 Then
        If Forms!LigumsViesn!OpenFrom = 10 Then
            Dim KStr As String, KData As Recordset, db As Database, SumI, gads
            Set db = CurrentDb()

            KStr = "SELECT tmp_KA_cdata.Nodala, tmp_KA_cdata.Nodala_txt, tmp_KA_cdata.PLU_txt, tmp_KA_cdata.Artikuls, tmp_KA_cdata.Daudzums, tmp_KA_cdata.Cena, tmp_KA_cdata.Summa, tmp_KA_cdata.Valuta, tmp_KA_cdata.Logins, tmp_KA_cdata.JTM_RID"
            KStr = KStr & " FROM tmp_KA_cdata;"

            Set KData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)

            If Me.TNSum > 0 Then 'TN apmaksa
                KData.AddNew
                KData!Logins = CurrentUser
                KData!Nodala = 26 'Forms!LigumsViesn!c_Nod_ID
                KData!Nodala_txt = "Tūrisma nodeva" 'Forms!LigumsViesn!c_NodNos
                KData!PLU_txt = "26TN"
                KData!Artikuls = Forms!LigumsViesn!c_MV_ID & Forms!LigumsViesn!Ligums & Year(Me.DAT_NO) & Format(Month(Me.DAT_NO), "00")
''                If IsNull(Me.TNNepiemero) Then
                    KData!Daudzums = Me.TNKopa * Me.TNNaktis
''                Else
''                    KData!Daudzums = (Me.TNKopa - Me.TNNepiemero) * Me.TNNaktis '1
''                End If
                KData!Cena = 1 'Me.TOTAL
                KData!Summa = Me.TNSum
                KData!Valuta = Forms!ka!fd_Valuta
                KData!JTM_RID = Me.MAKS_ID

                KData.Update

                If IsNull(Me.TN_SamSum) Then Me.TN_SamSum = Me.TNSum

            End If

            KData.AddNew
            KData!Logins = CurrentUser
            KData!Nodala = Forms!LigumsViesn!c_Nod_ID
            KData!Nodala_txt = Forms!LigumsViesn!c_NodNos
            KData!PLU_txt = Forms!LigumsViesn!c_Nod_ID & "JTM"
            KData!Artikuls = Forms!LigumsViesn!c_MV_ID & Forms!LigumsViesn!Ligums & Year(Me.DAT_NO) & Format(Month(Me.DAT_NO), "00")
            KData!Daudzums = 1
            KData!Cena = Me.TOTAL
            KData!Summa = Me.TOTAL
            KData!Valuta = Forms!ka!fd_Valuta
            KData!JTM_RID = Me.MAKS_ID

            KData.Update

            If Me.KavN_Summa > 0 Then
                KData.AddNew
                KData!Logins = CurrentUser
                KData!Nodala = 2
                KData!Nodala_txt = "Kavējuma nauda JTM"
                KData!PLU_txt = 2 & "Kav.nauda"
                KData!Artikuls = 7 & Forms!LigumsViesn!Ligums & Year(Me.DAT_NO) & Format(Month(Me.DAT_NO), "00")
                KData!Daudzums = 1
                KData!Cena = Me.KavN_Summa
                KData!Summa = Me.KavN_Summa
                KData!Valuta = Forms!ka!fd_Valuta
                KData!JTM_RID = Me.MAKS_ID

                KData.Update
            End If
            Forms!ka!KA_sub_cdata.Requery
        Else
            MsgBox "Līgums nav atvērts no kases apmaksas formas, apmaksa netiks iereģistrēta kasē.", vbOKOnly + vbExclamation, "JTM līgumi"
        End If
    End If
End Sub

Private Sub Pazinojums_Click()
    If Me.Pazinojums = 0 Then
        DoCmd.OpenForm "MPazinojumi", , , "[Ligums]=" & Me.Ligums, acFormEdit
        Me.Pazinojums = True
    Else
        DoCmd.OpenForm "MPazinojumi", , , , acFormAdd
        Forms!MPazinojumi!Tips = 2
        Forms!MPazinojumi!Ligums = Me.Ligums
        Forms!MPazinojumi!Lig_Dat = Forms!LigumsViesn!Lig_Dat
        Forms!MPazinojumi!Vards = Forms!LigumsViesn!Vards
        Forms!MPazinojumi!Uzvards = Forms!LigumsViesn!Uzvards
        Forms!MPazinojumi!Istaba = Me.IST_NR
        Forms!MPazinojumi!Par_No = Me.DAT_NO
        Forms!MPazinojumi!Par_Lidz = Me.DAT_LIDZ
        Forms!MPazinojumi!BP_Datums = Date
''        Forms!MPazinojumi!Termins = Date + 10
        Forms!MPazinojumi!Paraksta_VU = "I.Ernstsone"
        Forms!MPazinojumi!Paraksta_Amats = "Jaunatnes tūrisma mītnes vadītāja"
        Forms!MPazinojumi!Paraksta_Amats_eng = "Youth Hostel Manager"

        Dim db As Database
        Dim rec As Recordset

        Set db = CurrentDb
        Set rec = db.OpenRecordset("SELECT Max(dbo_viesn_MPazinojumi.BP_Nr) AS MaxOfBP_Nr FROM dbo_viesn_MPazinojumi;", dbOpenSnapshot, dbSeeChanges)

        If IsNull(rec!MaxOfBP_Nr) Then
            Forms!MPazinojumi!BP_Nr = 1
        Else
            Forms!MPazinojumi!BP_Nr = rec!MaxOfBP_Nr + 1
        End If

        Set rec = db.OpenRecordset("SELECT dbo_kl_Logins.Uzvards, dbo_kl_Logins.Vards, dbo_kl_Logins.Telefons FROM dbo_kl_Logins WHERE (((dbo_kl_Logins.Login)=""" & CurrentUser & """));", dbOpenSnapshot, dbSeeChanges)

        Forms!MPazinojumi!Sagatavoja = Left(rec!Vards, 1) & ". " & rec!Uzvards & " " & rec!Telefons

        Me.Pazinojums = True
    End If
End Sub

Private Sub SK_IST_AfterUpdate()
    totals
    TN_aprekins_sub
'    Me.Requery

End Sub

Private Sub totals()
    Me.Kopa = IIf(Not IsNull([MAKS_DAY]), [SK_IST] * ([DAT_LIDZ] - [DAT_NO]) * [MAKS_DAY], IIf(Not IsNull([MAKS_MEN]), [SK_IST] * [MAKS_MEN], ""))
    If IsNull(Me.LAST_DAT) Then Me.LAST_DAT = Format(Date, "DD-MM-YYYY")
    Me.TOTAL = IIf(Not IsNull(Me.Atlaide), Me.Kopa * (1 - Me.Atlaide), Me.Kopa)

    Me.FABULA = Me.FABULA & CurrentUser() & Date
End Sub

Private Sub TNKopa_AfterUpdate()
    TN_aprekins_sub

End Sub

Private Sub TNNepiemero_AfterUpdate()
    TN_aprekins_sub

End Sub

Private Sub TNNepiemero18_AfterUpdate()
    TN_aprekins_sub

End Sub

Private Sub TNNepiemeroDS_AfterUpdate()
    TN_aprekins_sub

End Sub
