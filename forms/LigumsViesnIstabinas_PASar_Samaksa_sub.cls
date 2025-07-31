Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database   'Use database order for string comparisons

Private Sub Apmaksat_Click()
    If IsNull(Me.PA_Nos) Then
        MsgBox "Kursoram ir jābūt rindā ar reģistrētu maksājumu.", vbOKOnly, "JTM"
        Exit Sub
    End If
    LNR = Me.Ligums
    INR = Me.IST_NR
    panos = Me.Nosaukums
    pacena = Me.MAKS_MEN
    dlidz = Me.DAT_LIDZ
    VLPAID = Me.VLPA_ID
    DoCmd.GoToRecord , , acNewRec
    Me.VLPA_ID = VLPAID
    Me.Ligums = LNR
    Me.IST_NR = INR
    Me.Nosaukums = panos
    Me.MAKS_MEN = pacena
    Me.DAT_NO = dlidz
    Me.DAT_LIDZ = DateAdd("m", 1, Me.DAT_NO)
    Me.SamPerSk = 1
    Me.TOTAL = Me.SamPerSk * Me.MAKS_MEN
''    Me.LAST_DAT = Format(Date, "DD-MM-YYYY")
    Me.FABULA = Me.FABULA & CurrentUser() & Date

    Me.SamPerSk.SetFocus
End Sub

Private Sub Dat_Lidz_AfterUpdate()
    totals
End Sub

Private Sub DAT_LIDZ_Exit(Cancel As Integer)
''    If Abs(Me.DAT_NO - Me.DAT_LIDZ) > 32 Then MsgBox "Dienu skaits pārsniedz vienu mēnesi." & Chr(13) & Chr(10) & "   Ja cilvēks slēdz līgumu pa mēnešiem," & Chr(13) & Chr(10) & "dienu skaits nedrīkst pārsniegt vienu mēnesi!"
'    If IsNull(Me.MAKS_DAY) And Not IsNull(Me.MAKS_MEN) Then MAKS_MEN.SetFocus
End Sub

Private Sub DAT_NO_AfterUpdate()
    totals
End Sub

Private Sub DAT_NO_Enter()
    If Forms!LigumsViesn!Ieraksts.Enabled = True Then Me.DAT_NO = Format(Date, "dd-mm-yyyy")
End Sub

Private Sub Dzest_Click()
    Dim a
    If Not IsNull(Me.MaksVeids) Or Not IsNull(Me.PA_SamaksataSum) Then
        a = MsgBox("Šim rēķinam ir atzīmēti pieņemtie maksājumi. Vai esat pārliecināti ka drīkst dzēst?", vbYesNo + vbExclamation, "JTM")
        If a = vbNo Then Exit Sub
    End If
    Me.Stat = -1
    Me.Requery
End Sub

Private Sub Form_AfterInsert()
    Dim db As Database
    Dim rec As Recordset

    If Not IsNull(Me.Ligums) Then
        Set db = CurrentDb
            Set rec = db.OpenRecordset("SELECT VLPAM_ID FROM dbo_viesn_Ligumi_PApr_Maksajumi WHERE (((Ligums)=" & Me.Ligums & "));", dbOpenSnapshot, dbSeeChanges)
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
    End If
End Sub


Private Sub IST_NR_AfterUpdate()
    totals
End Sub


Private Sub MAKS_DAY_AfterUpdate()
    totals
End Sub

Private Sub MAKS_MEN_AfterUpdate()
    If IsNull(Me.DAT_NO) Or IsNull(Me.DAT_LIDZ) Then
        MsgBox "Jānorāda periods par kuru maksā!", vbOKOnly + vbExclamation, "JTM"
        Me.TOTAL = Null
        Exit Sub
    Else
        Me.TOTAL = Me.SamPerSk * [MAKS_MEN]
        Me.LAST_DAT = Format(Date, "DD-MM-YYYY")
        Me.FABULA = Me.FABULA & CurrentUser() & Date
    End If
End Sub


Private Sub MAKS_MEN_Exit(Cancel As Integer)
'If Not IsNull(Me.MAKS_MEN) Then IST_NR.SetFocus
End Sub

Private Sub SK_IST_AfterUpdate()
    totals
End Sub

Private Sub totals()
    If Not IsNull([MAKS_MEN]) And Not IsNull(Me.DAT_NO) And Not IsNull(Me.DAT_LIDZ) Then


        Me.SamPerSk = (Month(Me.DAT_LIDZ) - Month(Me.DAT_NO) + (Year(Me.DAT_LIDZ) - Year(Me.DAT_NO)) * 12)
        If Me.DAT_LIDZ - Me.DAT_NO > 32 Then Me.SamPerSk = Me.SamPerSk + 1

        Me.TOTAL = Me.SamPerSk * [MAKS_MEN]
        Me.LAST_DAT = Format(Date, "DD-MM-YYYY")

        Me.FABULA = Me.FABULA & CurrentUser() & Date
    Else
        Me.TOTAL = ""
    End If
End Sub

Private Sub MaksVeids_AfterUpdate()
    If Me.MaksVeids = 1 Then
        If Forms!LigumsViesn!OpenFrom = 10 Then
            Dim KStr As String, KData As Recordset, PData As Recordset, db As Database, SumI, gads
            Set db = CurrentDb()
            If IsNull(Me.VLPA_ID) Then
                MsgBox "Lai veiktu apmaksu, norādiet papildaprīkojuma veidu.", vbOKOnly, "JTM līgumi"
                DoCmd.OpenForm "LigumsViesn_PA_sar"
                Forms!LigumsViesn_PA_sar!OpenFrom = 30
                Me.MaksVeids = Me.MaksVeids.OldValue
                Exit Sub
            End If

            KStr = "SELECT dbo_Viesn_PAprikojums.KA_Nodala, dbo_Viesn_PAprikojums.KA_Nodala_txt, dbo_Viesn_PAprikojums.KA_MV_ID"
            KStr = KStr & " FROM dbo_Viesn_PAprikojums"
            KStr = KStr & " WHERE (((dbo_Viesn_PAprikojums.PA_ID)=" & Me.VLPA_ID & "));"
            Set PData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)
            If PData.EOF Then
                MsgBox "Lai veiktu apmaksu, norādiet papildaprīkojuma veidu.", vbOKOnly, "JTM līgumi"
                DoCmd.OpenForm "LigumsViesn_PA_sar"
                Forms!LigumsViesn_PA_sar!OpenFrom = 30
                Me.MaksVeids = Me.MaksVeids.OldValue
                Exit Sub
            End If

            If IsNull(Me.LAST_DAT) Then Me.LAST_DAT = Date
            If IsNull(Me.PA_SamaksataSum) Then Me.PA_SamaksataSum = Me.TOTAL


            KStr = "SELECT tmp_KA_cdata.Nodala, tmp_KA_cdata.Nodala_txt, tmp_KA_cdata.Artikuls, tmp_KA_cdata.Daudzums, tmp_KA_cdata.Cena, tmp_KA_cdata.Summa, tmp_KA_cdata.Valuta, tmp_KA_cdata.Logins, tmp_KA_cdata.JTM_RID"
            KStr = KStr & " FROM tmp_KA_cdata;"

            Set KData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)

'!!!!!!!!! Jāsaliek pareizās nodaļas papildaprīkojumam
            KData.AddNew
            KData!Logins = CurrentUser
            KData!Nodala = PData!KA_Nodala
            KData!Nodala_txt = PData!KA_Nodala_txt
            KData!Artikuls = PData!KA_MV_ID & Forms!LigumsViesn!Ligums & Year(Me.DAT_NO) & Format(Month(Me.DAT_NO), "00")
            KData!Daudzums = 1
            KData!Cena = Me.TOTAL
            KData!Summa = Me.TOTAL
            KData!Valuta = Forms!ka!fd_Valuta
            KData!JTM_RID = Me.VLPAM_ID
            KData.Update

''            If Me.KavN_Summa > 0 Then
''                KData.AddNew
''                KData!Logins = CurrentUser
''                KData!Nodala = 2
''                KData!Nodala_txt = "Kavējuma nauda JTM"
''                KData!Artikuls = 7 & Forms!LigumsViesn!Ligums & Year(Me.DAT_NO) & Format(Month(Me.DAT_NO), "00")
''                KData!Daudzums = 1
''                KData!Cena = Me.KavN_Summa
''                KData!Summa = Me.KavN_Summa
''                KData!Valuta = Forms!ka!fd_Valuta
''
''                KData.Update
''            End If
            Forms!ka!KA_sub_cdata.Requery
        Else
            MsgBox "Līgums nav atvērts no kases apmaksas formas, apmaksa netiks iereģistrēta kasē.", vbOKOnly + vbExclamation, "JTM līgumi"
        End If
    Else
        If IsNull(Me.LAST_DAT) Then Me.LAST_DAT = Date
        If IsNull(Me.PA_SamaksataSum) Then Me.PA_SamaksataSum = Me.TOTAL

    End If

End Sub

Private Sub PA_sar_Click()
    If Not IsNull(Me.PA_SamaksataSum) Then
        MsgBox "Par šo periodu ir reģistrēta apmaksa. Labot nedrīkst!", vbOKOnly + vbExclamation, "JTM"
    Else
        DoCmd.OpenForm "LigumsViesn_PA_sar"
        Forms!LigumsViesn_PA_sar!OpenFrom = 20
    End If
End Sub

Private Sub SamPerSk_AfterUpdate()
    If IsNull(Me.DAT_NO) Or IsNull(Me.DAT_LIDZ) Then
        MsgBox "Jānorāda periods par kuru maksā!", vbOKOnly + vbExclamation, "JTM"
        Me.TOTAL = Null
        Exit Sub
    Else
        Me.TOTAL = Me.SamPerSk * [MAKS_MEN]
        Me.LAST_DAT = Format(Date, "DD-MM-YYYY")
        Me.FABULA = Me.FABULA & CurrentUser() & Date
    End If
End Sub
