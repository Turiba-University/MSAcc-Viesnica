Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database   'Use database order for string comparisons

Private Sub Beigas_Click()

    If Me.Ieraksts.Enabled = True Then
        Dim a
        a = MsgBox("Līgums tika atvērts labošanai. Vai esat pārliecināti, ka jāver ciet bez labojumu saglabāšanas?", vbYesNo + vbExclamation, "JTM")
        If a = vbNo Then
            Exit Sub
        End If

        Dim DatCh As Recordset, DatRes As Recordset, DatCh_str As String, db As Database
        Set db = CurrentDb()
        DatCh_str = "SELECT dbo_viesn_Ligumi.Ligums"
        DatCh_str = DatCh_str & " FROM dbo_viesn_Ligumi"
        DatCh_str = DatCh_str & " WHERE (((dbo_viesn_Ligumi.Ligums)=" & Me.Ligums & "));"

        Set DatCh = db.OpenRecordset(DatCh_str, DB_OPEN_SNAPSHOT, dbSeeChanges)
        If DatCh.EOF Then 'līgums uzsākts, nav saglabāts, attīra istabiņas/maksājumus/...
            DatCh_str = "SELECT dbo_viesn_Ligumi_Istabas.VLI_ID, dbo_viesn_Ligumi_Istabas.Ligums"
            DatCh_str = DatCh_str & " FROM dbo_viesn_Ligumi_Istabas"
            DatCh_str = DatCh_str & " WHERE (((dbo_viesn_Ligumi_Istabas.Ligums)=" & Me.Ligums & "));"

            Set DatRes = db.OpenRecordset(DatCh_str, DB_OPEN_DYNASET, dbSeeChanges)

            If Not DatRes.EOF Then
                Do While Not DatRes.EOF
                    DatRes.Edit
                    DatRes!Ligums = -DatRes!Ligums
                    DatRes.Update
                    DatRes.MoveNext
                Loop
            End If


            DatCh_str = "SELECT dbo_viesn_Maksajumi.MAKS_ID, dbo_viesn_Maksajumi.Ligums"
            DatCh_str = DatCh_str & " FROM dbo_viesn_Maksajumi"
            DatCh_str = DatCh_str & " WHERE (((dbo_viesn_Maksajumi.Ligums)=" & Me.Ligums & "));"

            Set DatRes = db.OpenRecordset(DatCh_str, DB_OPEN_DYNASET, dbSeeChanges)

            If Not DatRes.EOF Then
                Do While Not DatRes.EOF
                    DatRes.Edit
                    DatRes!Ligums = -DatRes!Ligums
                    DatRes.Update
                    DatRes.MoveNext
                Loop
            End If


            DatCh_str = "SELECT dbo_viesn_Ligumi_VValstis.VLVV_ID, dbo_viesn_Ligumi_VValstis.Ligums"
            DatCh_str = DatCh_str & " FROM dbo_viesn_Ligumi_VValstis"
            DatCh_str = DatCh_str & " WHERE (((dbo_viesn_Ligumi_VValstis.Ligums)=" & Me.Ligums & "));"

            Set DatRes = db.OpenRecordset(DatCh_str, DB_OPEN_DYNASET, dbSeeChanges)

            If Not DatRes.EOF Then
                Do While Not DatRes.EOF
                    DatRes.Edit
                    DatRes!Ligums = -DatRes!Ligums
                    DatRes.Update
                    DatRes.MoveNext
                Loop
            End If


            DatCh_str = "SELECT dbo_viesn_Ligumi_Inv.VLI_ID, dbo_viesn_Ligumi_Inv.Ligums"
            DatCh_str = DatCh_str & " FROM dbo_viesn_Ligumi_Inv"
            DatCh_str = DatCh_str & " WHERE (((dbo_viesn_Ligumi_Inv.Ligums)=" & Me.Ligums & "));"

            Set DatRes = db.OpenRecordset(DatCh_str, DB_OPEN_DYNASET, dbSeeChanges)

            If Not DatRes.EOF Then
                Do While Not DatRes.EOF
                    DatRes.Edit
                    DatRes!Ligums = -DatRes!Ligums
                    DatRes.Update
                    DatRes.MoveNext
                Loop
            End If

        End If
    End If
    DoCmd.Close A_FORM, "LigumsViesn"
End Sub

Private Sub Caurlaide_AfterUpdate()
    If UCase(Me.Caurlaide) = "JAUNA" Then
        DoCmd.OpenForm "Caurlaides"
        Forms!Caurlaides.RecordSource = ""
        Forms!Caurlaides.Vards.ControlSource = ""
        Forms!Caurlaides.Uzvards.ControlSource = ""
        Forms!Caurlaides.CaurlNr.ControlSource = ""
        Forms!Caurlaides.IstNr.ControlSource = ""
        Forms!Caurlaides.Stavoklis.ControlSource = ""
        Forms!Caurlaides.Derigums.ControlSource = ""
        Forms!Caurlaides.Anul.ControlSource = ""
        Forms!Caurlaides.Pers_ID.ControlSource = ""

        Forms!Caurlaides.Vards = Me.Vards
        Forms!Caurlaides.Uzvards = Me.Uzvards
        Forms!Caurlaides.Stavoklis = Me.POSITION
        Forms!Caurlaides.Derigums = #6/30/2005#
        Forms!Caurlaides.Pers_ID = Me.Pers_ID
        Forms!Caurlaides.Drukāt.Enabled = False
        Forms!Caurlaides.Ierakstīt.Enabled = True
        Forms!Caurlaides.CaurlNr = DMax("CaurlNr", "dbo_viesn_Caurlaides") + 1
    Else
        DoCmd.OpenForm "Caurlaides"
    End If
    Me.Caurlaide = "Caurlaides"
End Sub

Private Sub Caurlaide_Click()
    Me.Caurlaide = Click
End Sub

Private Sub cmdRez_Click()
    DoCmd.OpenForm "Rezervisti", acNormal
    Me.cmdRez = Click
End Sub



Private Sub Command186_Click()
    Dim Izdr As Recordset, JTMLig_rst As Recordset, JTMLig_str As String, db As Database
    Set db = CurrentDb()
    qq = "SELECT dbo_viesn_kl_LBData.IzdrForma"
    qq = qq & " FROM dbo_viesn_kl_LBData"
    qq = qq & " WHERE (((dbo_viesn_kl_LBData.POSITION)=""" & Me.POSITION & """));"
    Set Izdr = db.OpenRecordset(qq, DB_OPEN_SNAPSHOT, dbSeeChanges)
    If Izdr.EOF Then
        MsgBox "Nav atrasta izdrukas forma. Pārbaudiet, vai ir pareizi norādīts līguma stāvoklis.", vbExclamation + vbOKOnly, "JTM līgumi"
    Else

         JTMLig_str = "SELECT dbo_Personas.DokVeids, dbo_Personas.Dok_Derigs_Lidz, dbo_Personas.Dok_Izdots_Datums, dbo_Personas.Dok_Izdots_Vieta"
         JTMLig_str = JTMLig_str & " FROM dbo_Personas"
         JTMLig_str = JTMLig_str & " WHERE (((dbo_Personas.Personas_ID)=" & Me.Pers_ID & "));"

         Set JTMLig_rst = db.OpenRecordset(JTMLig_str, dbOpenSnapshot, dbSeeChanges)

         Me.Dok_Valsts = JTMLig_rst!Dok_Izdots_Vieta
         Me.Dok_Datums = JTMLig_rst!Dok_Izdots_Datums
         Me.Dok_Termins = JTMLig_rst!Dok_Derigs_Lidz
         If JTMLig_rst!DokVeids = 1 Then
             Me.Dok_Veids = "Pase"
             Me.Dok_Veids_Eng = "passport"
         ElseIf JTMLig_rst!DokVeids = 2 Then
             Me.Dok_Veids = "ID karte"
             Me.Dok_Veids_Eng = "ID card"
         Else
             Me.Dok_Veids = " "
         End If

         If Me.POSITION = "BAT students" Then
             Me.Position_ENG = "TU student"
         ElseIf Me.POSITION = "Cita skola" Then
             Me.Position_ENG = "Other school"
         ElseIf Me.POSITION = "Darbinieks" Then
             Me.Position_ENG = "Employee"
         ElseIf Me.POSITION = "Pastāvīgs viesis" Then
             Me.Position_ENG = "Permanent guest"
         ElseIf Me.POSITION = "viesis" Then
             Me.Position_ENG = "Guest"
         Else
             Me.Position_ENG = " "
         End If


         DoCmd.OpenReport Izdr!IzdrForma & "_eng", A_PREVIEW

    End If


End Sub

Private Sub Datums_In_AfterUpdate()
    Me.TNLabots = -1

End Sub

Private Sub Datums_Out_AfterUpdate()
    If Me.Datums_Out.Locked = True Then Exit Sub
    Dim a, P, d
'''    a = InputBox("Ievadiet izvākšanās datumu (dd.mm.gggg). Lai izdzēstu datumu, ievadiet atstarpi:", "Līgumi")
'''    If IsDate(a) Or a = " " Then
        Dim db As Database, Rez As Recordset, Lstr As String, KStr As String, PData As Recordset
        Set db = CurrentDb()
'''        Lstr = "SELECT dbo_viesn_Ligumi.Datums_Out"
'''        Lstr = Lstr & " FROM dbo_viesn_Ligumi"
'''        Lstr = Lstr & " WHERE (((dbo_viesn_Ligumi.LIGUM_ID)=" & Me.LIGUM_ID & "));"
'''        Set Jaun = MyDB.OpenRecordset(Lstr, dbOpenDynaset, dbSeeChanges)
'''        Jaun.Edit
            If IsNull(Me.Datums_Out) Or Me.Datums_Out = " " Then
'''                Jaun!Datums_Out = Null
            Else

                Lstr = "SELECT dbo_viesn_Ligumi_Istabas.Istaba"
                Lstr = Lstr & " FROM dbo_viesn_Ligumi_Istabas"
                Lstr = Lstr & " WHERE (((dbo_viesn_Ligumi_Istabas.Ligums)=" & Me.Ligums & ") AND (Not (dbo_viesn_Ligumi_Istabas.Istaba) Is Null) AND ((dbo_viesn_Ligumi_Istabas.LIDat_Lidz) Is Null));"
                Set Rez = db.OpenRecordset(Lstr, dbOpenDynaset, dbSeeChanges)

                If Not Rez.EOF Then
                    Do While Not Rez.EOF

                        KStr = "SELECT dbo_Viesn_Rezervesana.V_Rez_RID, dbo_Viesn_Rezervesana.CKods, dbo_Viesn_Rezervesana.Istaba, dbo_Viesn_Rezervesana.Dzests, dbo_Viesn_Rezervesana.Lig_Dat"
                        KStr = KStr & " FROM dbo_Viesn_Rezervesana"
                        KStr = KStr & " WHERE (((dbo_Viesn_Rezervesana.CKods)=" & Me.CKods & ") AND ((dbo_Viesn_Rezervesana.Rez_MG)=" & Me.MG & ") "
                        KStr = KStr & " AND ((dbo_Viesn_Rezervesana.Istaba)=" & Rez!Istaba & ") AND ((dbo_Viesn_Rezervesana.Dzests) Is Null Or (dbo_Viesn_Rezervesana.Dzests)=0));"

                        Set PData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)
                        If PData.EOF Then

                        Else
                            a = MsgBox("Personai ir rezervācija uz " & Forms!LigumsViesn!MG & ". mācību gadu, " & Rez!Istaba & ".istaba. Dzēst (Yes) vai pagarināt (No) šī gada ietvaros?", vbYesNoCancel, "JTM līgumi")
                            If a = vbYes Then
                                PData.MoveFirst
                                PData.Edit
                                PData!Dzests = -1
                                PData.Update
                            ElseIf a = vbNo Then
                                d = InputBox("Ievadiet rezervācijas datumu (dd.mm.gggg).", "JTM līgumi")
                                If IsDate(d) Then
                                    PData.MoveFirst
                                    PData.Edit
                                    PData!Lig_Dat = d
                                    PData.Update
                                Else
                                    MsgBox "Jāievada datums. Izmaiņas nav veiktas.", vbOKOnly, "JTM līgumi"
                                End If

                            End If
                        End If

                    Rez.MoveNext
                    Loop
                End If

                a = Me.Datums_Out
                Lstr = "UPDATE dbo_viesn_Ligumi_Istabas SET dbo_viesn_Ligumi_Istabas.LIDat_Lidz = #" & Month(a) & "/" & Day(a) & "/" & Year(a) & "#"
                Lstr = Lstr & " WHERE (((dbo_viesn_Ligumi_Istabas.Ligums)=" & Me.Ligums & ") AND ((dbo_viesn_Ligumi_Istabas.LIDat_Lidz) Is Null Or (dbo_viesn_Ligumi_Istabas.LIDat_Lidz)>"
                Lstr = Lstr & " #" & Month(a) & "/" & Day(a) & "/" & Year(a) & "#));"
                DoCmd.SetWarnings 0
                DoCmd.RunSQL Lstr

                Lstr = "UPDATE dbo_viesn_Ligumi_PApr SET dbo_viesn_Ligumi_PApr.PADat_Lidz = #" & Month(a) & "/" & Day(a) & "/" & Year(a) & "#"
                Lstr = Lstr & " WHERE (((dbo_viesn_Ligumi_PApr.Ligums)=" & Me.Ligums & ") AND ((dbo_viesn_Ligumi_PApr.PADat_Lidz) Is Null Or (dbo_viesn_Ligumi_PApr.PADat_Lidz)>"
                Lstr = Lstr & " #" & Month(a) & "/" & Day(a) & "/" & Year(a) & "#));"
                DoCmd.RunSQL Lstr

                DoCmd.SetWarnings 1
                Me!LigumsViesnIstabinas_sub.Requery
                Me!LigumsViesnIstabinas_PASar_sub.Requery
            End If
'''        Jaun.Update
'''        Jaun.close
'''        Me.Requery
'''    End If
    Me.TNLabots = -1

End Sub

Private Sub Datums_Out_Enter()
    If Not Me.Datums_Out.Locked = True Then Exit Sub
    Dim a, P
    a = InputBox("Ievadiet izvākšanās datumu (dd.mm.gggg). Lai izdzēstu datumu, ievadiet atstarpi:", "Līgumi")
    If IsDate(a) Or a = " " Then
        Dim MyDB As Database, Jaun As Recordset, Lstr As String
        Set MyDB = CurrentDb()
        Lstr = "SELECT dbo_viesn_Ligumi.Datums_Out"
        Lstr = Lstr & " FROM dbo_viesn_Ligumi"
        Lstr = Lstr & " WHERE (((dbo_viesn_Ligumi.LIGUM_ID)=" & Me.LIGUM_ID & "));"
        Set Jaun = MyDB.OpenRecordset(Lstr, dbOpenDynaset, dbSeeChanges)
        Jaun.Edit
            If a = " " Then
                Jaun!Datums_Out = Null
            Else
                Jaun!Datums_Out = a
                Lstr = "UPDATE dbo_viesn_Ligumi_Istabas SET dbo_viesn_Ligumi_Istabas.LIDat_Lidz = #" & Month(a) & "/" & Day(a) & "/" & Year(a) & "#"
                Lstr = Lstr & " WHERE (((dbo_viesn_Ligumi_Istabas.Ligums)=" & Me.Ligums & ") AND ((dbo_viesn_Ligumi_Istabas.LIDat_Lidz) Is Null Or (dbo_viesn_Ligumi_Istabas.LIDat_Lidz)>"
                Lstr = Lstr & " #" & Month(a) & "/" & Day(a) & "/" & Year(a) & "#));"
                DoCmd.SetWarnings 0
                DoCmd.RunSQL Lstr

                Lstr = "UPDATE dbo_viesn_Ligumi_PApr SET dbo_viesn_Ligumi_PApr.PADat_Lidz = #" & Month(a) & "/" & Day(a) & "/" & Year(a) & "#"
                Lstr = Lstr & " WHERE (((dbo_viesn_Ligumi_PApr.Ligums)=" & Me.Ligums & ") AND ((dbo_viesn_Ligumi_PApr.PADat_Lidz) Is Null Or (dbo_viesn_Ligumi_PApr.PADat_Lidz)>"
                Lstr = Lstr & " #" & Month(a) & "/" & Day(a) & "/" & Year(a) & "#));"
                DoCmd.RunSQL Lstr

                DoCmd.SetWarnings 1
            End If
        Jaun.Update
        Jaun.Close
        Me.Requery
    End If

End Sub

Private Sub Form_Open(Cancel As Integer)
''''''    If IsNull(Me.CKods) Then
''''''        Call CheckPersData(0)
''''''    Else
''''''        Call CheckPersData(Me.CKods)
''''''    End If
''''''    Me.POSITION.Requery
''''''    If Me.POSITION = "Viesis" Then
''''''        Me.LSumKopa.Visible = True
''''''    Else
''''''        Me.LSumKopa.Visible = False
''''''    End If
'''    If Forms!ligumsviesn!POSITION = "Viesis" Then
'''        Forms!ligumsviesn!LSumKopa.Visible = True
'''    Else
'''        Forms!ligumsviesn!LSumKopa.Visible = False
'''    End If
End Sub

Private Sub Ieraksts_Click()
    Dim MyDB As Database, Jaun As Recordset, JaunEU As Recordset, Lstr As String, LigID, LigNr, a, Vsk, VskL
    Set MyDB = CurrentDb()

    If IsNull(Me.POSITION) Or Me.POSITION = "" Then
        MsgBox "Lūdzu norādiet līguma stāvokli", vbExclamation, "Līgums"
        Exit Sub
    End If
    If IsNull(Me.Valsts) Or Me.Valsts = "" Then
        MsgBox "Lūdzu norādiet valsti", vbExclamation, "Līgums"
        Exit Sub
    End If
    If Me.POSITION = "Cita skola" And IsNull(Me.Position_Comment) Then
        MsgBox "'Cita skola' līgumam ir jānorāda mācību iestāde.", vbExclamation, "Līgums"
        Me.Position_Comment.SetFocus
        Exit Sub
    End If

    TUA_vajag = 0

    Lstr = "SELECT dbo_viesn_kl_LBData.POSITION, dbo_viesn_kl_LBData.TUA, dbo_viesn_kl_LBData.TN, dbo_viesn_kl_LBData.KontInfo"
    Lstr = Lstr & " FROM dbo_viesn_kl_LBData"
    Lstr = Lstr & " WHERE (((dbo_viesn_kl_LBData.POSITION)=""" & Me.POSITION & """));"
    Set Jaun = MyDB.OpenRecordset(Lstr, dbOpenDynaset, dbSeeChanges)

    If Jaun!TUA = -1 Then

        Lstr = "SELECT dbo_STL_kl_Valsts.ES_valsts"
        Lstr = Lstr & " FROM dbo_STL_kl_Valsts"
        Lstr = Lstr & " WHERE (((dbo_STL_kl_Valsts.Valsts)=""" & Me.Pilsoniba & """));"
        Set JaunEU = MyDB.OpenRecordset(Lstr, dbOpenDynaset, dbSeeChanges)

        If JaunEU.EOF Then
            TUA_vajag = 1
        ElseIf IsNull(JaunEU!ES_valsts) Then
            TUA_vajag = 1
        ElseIf Not JaunEU!ES_valsts = 1 Then
            TUA_vajag = 1
        End If
        If TUA_vajag = 1 And IsNull(Me.PersCert) Then
            MsgBox "Šim līguma stāvoklim ir jānorāda termiņuzturēšanās atļauja (TUA).", vbOKOnly, "Līgums"

            Exit Sub
        End If
        If TUA_vajag = 1 And (Me.PersCert = 11 Or Me.PersCert = 12) And IsNull(Me.PersCertTerm) Then
            MsgBox "Šim līguma stāvoklim ir jānorāda termiņuzturēšanās atļaujas vai vīzas termiņš.", vbOKOnly, "Līgums"

            Exit Sub
        End If
    End If

    If Jaun!TN = -1 Then
''        If IsNull(Me.TNVeids) Then
''            MsgBox "Šim līguma stāvoklim ir jānorāda tūrisma nodevas piemērošana.", vbOKOnly, "Līgums"
''            Exit Sub
''        End If
    End If

    If Jaun!KontInfo = -1 Then
        If IsNull(Me.TelNr) And IsNull(Me.Epasts) Then
            MsgBox "Ir jābūt norādītai kontaktinformācijai - e-pastam vai tel.nr.!", vbOKOnly, "Līgums"
            DoCmd.OpenForm "Personas_dati", , , "[Personas_ID]=" & Me.CKods, acFormEdit
            Forms![Personas_dati].OpenFromViesnLig = -1
            Forms![Personas_dati].OpenFromPersMekl = 0
            Forms![Personas_dati].OpenFromRezervJauns = 0
            Exit Sub
        End If
    End If

    Jaun.Close

''    If Me.TNVeids = 1 Then
''        Lstr = "SELECT Sum(Vsk) AS VskLig FROM (SELECT dbo_viesn_Maksajumi.Ist_Nr, Max(dbo_viesn_Maksajumi.Sk_Ist) AS Vsk FROM dbo_viesn_Maksajumi"
''        Lstr = Lstr & " WHERE (((dbo_viesn_Maksajumi.Ligums) = " & Me.Ligums & ") AND ((dbo_viesn_Maksajumi.Stat) Is Null) AND ((dbo_viesn_Maksajumi.Ist_Nr)<>999)) GROUP BY dbo_viesn_Maksajumi.Ist_Nr ) as vs;"
''        Set Jaun = MyDB.OpenRecordset(Lstr, dbOpenDynaset, dbSeeChanges)
''
''        If IsNull(Me.TNKopa) Then VskL = 0 Else VskL = CInt(Me.TNKopa)
''
''        If Jaun.RecordCount = 0 Then
''            Vsk = 0
''        Else
''            Vsk = Jaun!VskLig
''        End If
''        If Not (VskL = Vsk) Then
''            a = MsgBox("Nesakrīt viesu skaits istabiņās (" & Vsk & ") ar tūrisma nodevas laukā norādīto kopējo skaitu (" & Me.TNKopa & "). Vai saglabāt līgumu ar šo nesakritību?", vbYesNo + vbDefaultButton1, "Līgums")
''            If a = vbNo Then Exit Sub
''        End If
''    End If

''    If Me.TNKopa > 0 Then
''        If TN_aprekins = 0 Then Exit Sub
''    End If


    If Me.Labosana = -1 Then
        Lstr = "SELECT dbo_viesn_Ligumi.Position, dbo_viesn_Ligumi.PositionComment, dbo_viesn_Ligumi.Piezimes, dbo_viesn_Ligumi.Pilnv_Persona, dbo_viesn_Ligumi.Valsts, "
        Lstr = Lstr & " dbo_viesn_Ligumi.Datums_In, dbo_viesn_Ligumi.Datums_Lidz, dbo_viesn_Ligumi.Datums_Out, dbo_viesn_Ligumi.Maksatajs_PID, "
        Lstr = Lstr & " dbo_viesn_Ligumi.IstVSk, dbo_viesn_Ligumi.IstMCena, dbo_viesn_Ligumi.IstComf, dbo_viesn_Ligumi.TNVeids, dbo_viesn_Ligumi.TNKopa, dbo_viesn_Ligumi.TNNepiemero, dbo_viesn_Ligumi.TNGrupa"
        Lstr = Lstr & " FROM dbo_viesn_Ligumi"
        Lstr = Lstr & " WHERE (((dbo_viesn_Ligumi.LIGUM_ID)=" & Me.LIGUM_ID & "));"
        Set Jaun = MyDB.OpenRecordset(Lstr, dbOpenDynaset, dbSeeChanges)
        Jaun.Edit
            Jaun!POSITION = Me.POSITION
            Jaun!PositionComment = Me.Position_Comment
            Jaun!Piezimes = Me.Piezimes
            Jaun!Pilnv_Persona = Me.PilnvarotaPersona
            Jaun!Valsts = Me.Valsts
            Jaun!Datums_In = Me.Datums_In
            Jaun!Datums_Lidz = Me.Datums_Lidz
            Jaun!Datums_Out = Me.Datums_Out
            Jaun!Maksatajs_PID = Me.Maksatajs_PID
            Jaun!IstVSk = Me.IstVSk
            Jaun!IstMCena = Me.IstMCena
            Jaun!IstComf = Me.IstComf
            Jaun!TNGrupa = Me.TNGrupa
''            Jaun!TNVeids = Me.TNVeids
''            Jaun!TNKopa = Me.TNKopa
''            Jaun!TNNepiemero = Me.TNNepiemero
        Jaun.Update
        Jaun.Close

        Lstr = "SELECT dbo_Personas_Cert.Personas_ID, dbo_Personas_Cert.CertVeids, dbo_Personas_Cert.CertTips, dbo_Personas_Cert.CertDatums, dbo_Personas_Cert.Aud_User, dbo_Personas_Cert.Aud_Date"
        Lstr = Lstr & " FROM dbo_Personas_Cert"
        Lstr = Lstr & " WHERE (((dbo_Personas_Cert.Personas_ID)=" & Me.Pers_ID & ") and ((dbo_Personas_Cert.CertTips)=2));"
        Set Jaun = MyDB.OpenRecordset(Lstr, dbOpenDynaset, dbSeeChanges)
        If Jaun.EOF Then
            Jaun.Close
            Set Jaun = MyDB.OpenRecordset("dbo_Personas_Cert", dbOpenDynaset, dbSeeChanges)
            Jaun.AddNew
                Jaun!Personas_ID = Me.Pers_ID
                Jaun!CertTips = 2
                Jaun!CertVeids = Me.PersCert
                Jaun!CertDatums = Me.PersCertTerm
                Jaun!Aud_User = CurrentUser()
                Jaun!Aud_Date = Now()
            Jaun.Update
        Else
            Jaun.Edit
                Jaun!CertVeids = Me.PersCert
                Jaun!CertDatums = Me.PersCertTerm
                Jaun!Aud_User = CurrentUser()
                Jaun!Aud_Date = Now()
            Jaun.Update
        End If

        Me.PilnvarotaPersona.Locked = True
        Me.PilnvarotaPersona.BackColor = 12632256
        Me.Piezimes.Locked = True
        Me.Piezimes.BackColor = 12632256
        Me.POSITION.Locked = True
        Me.POSITION.BackColor = 12632256
        Me.Position_Comment.Locked = True
        Me.Position_Comment.BackColor = 12632256
        Me.Valsts.Locked = True
        Me.Valsts.BackColor = 12632256
        Me.Datums_In.Locked = True
        Me.Datums_In.BackColor = 12632256
        Me.Datums_Lidz.Locked = True
        Me.Datums_Lidz.BackColor = 12632256
        Me.Datums_Out.Locked = True
        Me.Datums_Out.BackColor = 12632256
        Me.PersCert.Locked = True
        Me.PersCert.BackColor = 12632256
        Me.PersCertTerm.Locked = True
        Me.PersCertTerm.BackColor = 12632256

        Me.IstVSk.Locked = True
        Me.IstComf.Locked = True

''        Me.TNVeids.Locked = True
''        Me.TNVeids.BackColor = 12632256
''        Me.TNKopa.Locked = True
''        Me.TNKopa.BackColor = 12632256
''        Me.TNNepiemero.Locked = True
''        Me.TNNepiemero.BackColor = 12632256

        Me.Requery
        Me.Ieraksts = Click
''        Me.Labosana = Null
        Me.Beigas.SetFocus
        Me.Ieraksts.Enabled = False
    Else 'jauns līgums
        Me.Ieraksts = Click
        Me.Jauns.Caption = "Jauns"
        Me.Ligum_rep.Enabled = True
        Me.Caurlaide.Enabled = True
        Set Jaun = MyDB.OpenRecordset("dbo_viesn_Ligumi", dbOpenDynaset, dbSeeChanges)   ' Open table.
            Jaun.AddNew
            Jaun!Vards = Me.Vards
            Jaun!Uzvards = Me.Uzvards
            Jaun!PK = Me.PK
            Jaun!Pase = Me.Pase
            Jaun!PILSETA = Me.PILSETA
            Jaun!Pagasts = Me.Pagasts
            Jaun!Novads = Me.Novads
            Jaun!Iela = Me.Iela
            Jaun!ADMINIST = CurrentUser()
            Jaun!Pers_ID = Me.Pers_ID
            LigNr = Me.Ligums
            Jaun!Ligums = Me.Ligums
            Jaun!Lig_Dat = Me.Lig_Dat
            Jaun!POSITION = Me.POSITION
            Jaun!PositionComment = Me.Position_Comment
            Jaun!Piezimes = Me.Piezimes
            Jaun!Pilnv_Persona = Me.PilnvarotaPersona
            Jaun!Valsts = Me.Valsts
            Jaun!Datums_In = Me.Datums_In
            Jaun!Datums_Lidz = Me.Datums_Lidz
            Jaun!Datums_Out = Me.Datums_Out
            Jaun!Maksatajs_PID = Me.Maksatajs_PID
            Jaun!IstVSk = Me.IstVSk
            Jaun!IstMCena = Me.IstMCena
            Jaun!IstComf = Me.IstComf
''            Jaun!TNVeids = Me.TNVeids
''            Jaun!TNKopa = Me.TNKopa
''            Jaun!TNNepiemero = Me.TNNepiemero
            Jaun.Update

''''        DoCmd.GoToControl "Beigas"
            Me.Beigas.SetFocus
            Me.Ieraksts.Enabled = False

        Lstr = "SELECT Max(dbo_viesn_Ligumi.LIGUM_ID) AS LigID FROM dbo_viesn_Ligumi"
        Lstr = Lstr & " WHERE (((dbo_viesn_Ligumi.Ligums)=" & LigNr & "));"

        Set Jaun = MyDB.OpenRecordset(Lstr, dbOpenDynaset, dbSeeChanges)   ' Open table.
        LigID = Jaun!LigID

        Me.LIGUM_ID = LigID

''''''''''        DoCmd.ApplyFilter , "[LIGUM_ID]=" & LigID
''''''''''        Me.Requery

        Forms!LigumsViesn.DefaultEditing = 4
    '''    DoCmd.GoToRecord A_FORM, "LigumsViesn", A_LAST
        Me.Ligum_rep = "Līgums"
        Me.Caurlaide = "Caurlaide"
        Me.Lig_Dat.Locked = True
        Me.Lig_Dat.BackColor = 12632256
        Me.PilnvarotaPersona.Locked = True
        Me.PilnvarotaPersona.BackColor = 12632256
        Me.Piezimes.Locked = True
        Me.Piezimes.BackColor = 12632256
        Me.POSITION.Locked = True
        Me.POSITION.BackColor = 12632256
        Me.Position_Comment.Locked = True
        Me.Position_Comment.BackColor = 12632256
        Me.Valsts.Locked = True
        Me.Valsts.BackColor = 12632256
        Me.Datums_In.Locked = True
        Me.Datums_In.BackColor = 12632256
        Me.Datums_Lidz.Locked = True
        Me.Datums_Lidz.BackColor = 12632256
        Me.Datums_Out.Locked = True
        Me.Datums_Out.BackColor = 12632256
        Me.PersCert.Locked = True
        Me.PersCert.BackColor = 12632256
        Me.PersCertTerm.Locked = True
        Me.PersCertTerm.BackColor = 12632256

        Me.IstVSk.Locked = True
        Me.IstComf.Locked = True

''        Me.TNVeids.Locked = True
''        Me.TNVeids.BackColor = 12632256
''        Me.TNKopa.Locked = True
''        Me.TNKopa.BackColor = 12632256
''        Me.TNNepiemero.Locked = True
''        Me.TNNepiemero.BackColor = 12632256

        Lstr = "SELECT dbo_Personas_Cert.Personas_ID, dbo_Personas_Cert.CertVeids, dbo_Personas_Cert.CertTips, dbo_Personas_Cert.CertDatums, dbo_Personas_Cert.Aud_User, dbo_Personas_Cert.Aud_Date"
        Lstr = Lstr & " FROM dbo_Personas_Cert"
        Lstr = Lstr & " WHERE (((dbo_Personas_Cert.Personas_ID)=" & Me.Pers_ID & ") and ((dbo_Personas_Cert.CertTips)=2));"

        Set Jaun = MyDB.OpenRecordset(Lstr, dbOpenDynaset, dbSeeChanges)
        If Jaun.EOF Then
            Jaun.Close
            Set Jaun = MyDB.OpenRecordset("dbo_Personas_Cert", dbOpenDynaset, dbSeeChanges)
            Jaun.AddNew
                Jaun!Personas_ID = Me.Pers_ID
                Jaun!CertTips = 2
                Jaun!CertVeids = Me.PersCert
                Jaun!CertDatums = Me.PersCertTerm
                Jaun!Aud_User = CurrentUser()
                Jaun!Aud_Date = Now()
            Jaun.Update
        Else
            Jaun.Edit
                Jaun!CertVeids = Me.PersCert
                Jaun!CertDatums = Me.PersCertTerm
                Jaun!Aud_User = CurrentUser()
                Jaun!Aud_Date = Now()
            Jaun.Update
        End If


    ''''    DoCmd.GoToRecord , , acLast
    End If

    Lstr = "SELECT dbo_Viesn_Rezervesana.V_Rez_RID, dbo_Viesn_Rezervesana.Rez_MG, dbo_Viesn_Rezervesana.Ligums"
    Lstr = Lstr & " FROM dbo_Viesn_Rezervesana"
    Lstr = Lstr & " WHERE (((dbo_Viesn_Rezervesana.CKods) = " & Me.Pers_ID & ") And ((dbo_Viesn_Rezervesana.Ligums) Is Null Or (dbo_Viesn_Rezervesana.Ligums) = 0) And ((dbo_Viesn_Rezervesana.Dzests) = 0))"
    Lstr = Lstr & " ORDER BY dbo_Viesn_Rezervesana.Rez_MG DESC;"

    Set Jaun = MyDB.OpenRecordset(Lstr, dbOpenDynaset, dbSeeChanges)

    If Not Jaun.EOF Then
        DoCmd.OpenForm "Rezervisti_PersRezerv"
''        Jaun.MoveFirst
''        a = MsgBox("Personai ir rezervācija, pēdējā uz " & Jaun!Rez_MG & ".gadu. Vai slēgt rezervāciju?", vbQuestion + vbYesNo, "JTM līgumi")
''        If a = vbYes Then
''            Do Until Jaun.EOF
''                Jaun.Edit
''                Jaun!Ligums = 12
''                Jaun.Update
''                Jaun.MoveNext
''            Loop
''        End If

    End If


    Me.Valstis.Enabled = False
    Me.Ieraksts.Enabled = False
    Me.Requery

End Sub


Private Sub IstComf_AfterUpdate()
    Call IstVSk_AfterUpdate
End Sub

Private Sub IstVSk_AfterUpdate()
    Dim Sh As Integer
    If Me.IstComf = -1 Then
        Sh = 3
    Else
        Sh = 0
    End If
         If Me.POSITION = "BAT students" Then
             Me.IstMCena = Val(Me.IstVSk.Column(1 + Sh))
         ElseIf Me.POSITION = "Cita skola" Then
             Me.IstMCena = Val(Me.IstVSk.Column(3 + Sh))
         ElseIf Me.POSITION = "Darbinieks" Then
             Me.IstMCena = Val(Me.IstVSk.Column(1 + Sh))
         ElseIf Me.POSITION = "Pastāvīgs viesis" Then
             Me.IstMCena = Val(Me.IstVSk.Column(2 + Sh))
         ElseIf Me.POSITION = "viesis" Then
             Me.IstMCena = Null 'Val(Me.IstVSk.Column(2))
         Else
             Me.IstMCena = Null
         End If

End Sub

Private Sub Jauns_Click()
If Me.Jauns.Caption = "Jauns" Then
    Jauns.SetFocus
    Me.Jauns.Caption = "Atcelt"
    Me.Vards.Locked = False
    Me.Uzvards.Locked = False
    Me.RecordSource = ""
    Me.MAKSAJUMIbeta.Visible = False
    Me.Vards.BackColor = 16777215
    Me.Uzvards.BackColor = 16777215
    Me.Ligums.BackColor = 12632256
    Me.Lig_Dat.BackColor = 12632256
    Me.Piezimes.BackColor = 12632256
    Me.Vards.ControlSource = ""
    Me.Uzvards.ControlSource = ""
    Me.PK.ControlSource = ""
    Me.Pase.ControlSource = ""
    Me.PILSETA.ControlSource = ""
    Me.Pers_ID.ControlSource = ""
    Me.Novads.ControlSource = ""
    Me.Iela.ControlSource = ""
    Me.Ligums.ControlSource = ""
    Me.Lig_Dat.ControlSource = ""
    Me.POSITION.ControlSource = ""
    Me.Position_Comment.ControlSource = ""
    Me.Piezimes.ControlSource = ""
    Me!PilnvarotaPersona.ControlSource = ""
    Me!Caurlaide.Enabled = False
    Me!Ligum_rep.Enabled = False
    'vards.SetFocus
    Me.Jauns = Click
    Exit Sub
Else
    Me.DefaultEditing = 4
    Me.RecordSource = "LigumaInfo"
    Me.Ieraksts.Enabled = False
    Me.Ligum_rep.Enabled = True
    Me.Caurlaide.Enabled = True
    Me.Ligum_rep = "Līgums"
    Me.Caurlaide = "Caurlaide"
    Forms!LigumsViesn!Vards.ControlSource = "VARDS"
        Forms!LigumsViesn!Uzvards.ControlSource = "UZVARDS"
        Forms!LigumsViesn!PK.ControlSource = "pK"
        Forms!LigumsViesn!Pase.ControlSource = "Pase"
        Forms!LigumsViesn!PILSETA.ControlSource = "PilsEta"
        Forms!LigumsViesn!Novads.ControlSource = "Novads"
        Forms!LigumsViesn!Iela.ControlSource = "Iela"
        Forms!LigumsViesn!Ligums.ControlSource = "LIGUMS"
        Forms!LigumsViesn!Lig_Dat.ControlSource = "lig_dat"
        Forms!LigumsViesn!POSITION.ControlSource = "POSITION"
        Forms!LigumsViesn!Position_Comment.ControlSource = "PositionComment"
        Forms!LigumsViesn!Piezimes.ControlSource = "piezimes"
        Forms!LigumsViesn!PilnvarotaPersona.ControlSource = "Pilnv_Persona"
        Me.MAKSAJUMIbeta.Visible = True
    Me.Vards.BackColor = 12632256
    Me.Uzvards.BackColor = 12632256
    Me.Lig_Dat.BackColor = 12632256
    Me.PilnvarotaPersona.BackColor = 12632256
    Me.Piezimes.BackColor = 12632256
    Me.Lig_Dat.Locked = True
    Me.PilnvarotaPersona.Locked = True
    Me.Piezimes.Locked = True
    Me.Vards.Locked = True
    Me.Uzvards.Locked = True
    Me.Jauns.Caption = "Jauns"
    DoCmd.GoToRecord , , acLast
    Me.Jauns = Click


    DoCmd.Close A_FORM, "LigumsViesn"
    DoCmd.Close A_FORM, "Meklesana_Persona"

End If

End Sub

Private Sub Labot_Click()
    If IsNull(Me.CKods) And IsNull(Me.Pers_ID) Then
        Me.Labot = Not Me.Labot
        Exit Sub
    End If
    If IsNull(Me.CKods) Then
        DoCmd.OpenForm "Personas_dati", , , "[Personas_ID]=" & Me.Pers_ID, acFormEdit
        Forms![Personas_dati].OpenFromViesnLig = 0
        Forms![Personas_dati].OpenFromPersMekl = 0
        Forms![Personas_dati].OpenFromRezervJauns = 0
    Else
        DoCmd.OpenForm "Personas_dati", , , "[Personas_ID]=" & Me.CKods, acFormEdit
        Forms![Personas_dati].OpenFromViesnLig = -1
        Forms![Personas_dati].OpenFromPersMekl = 0
        Forms![Personas_dati].OpenFromRezervJauns = 0
    End If

        If Me.Valsts = "Latvija" Then
            Forms!Personas_dati!PAplVeids.Enabled = False
            Forms!Personas_dati![Pases Nr].Enabled = False
            Forms!Personas_dati!Dok_Izdots_Datums.Enabled = False
            Forms!Personas_dati!Dok_Izdots_Vieta.Enabled = False
            Forms!Personas_dati!DokDerTermins.Enabled = False
            Forms!Personas_dati!Dok_Izdots_Iestade.Enabled = False
            Forms!Personas_dati!Pilsoniba.Enabled = False
            Forms!Personas_dati!LV_Pilsoniba.Enabled = False
            Forms!Personas_dati!ValstsIzvelePils.Enabled = False
''            Forms!Personas_dati!P_Valsts.Enabled = False
''            Forms!Personas_dati!ValstsIzvele_Dekl.Enabled = False
''            Forms!Personas_dati!P_Novads.Enabled = False
''            Forms!Personas_dati!Adr_Novads.Enabled = False
''            Forms!Personas_dati!P_Pagasts.Enabled = False
''            Forms!Personas_dati!Adr_Pagasts.Enabled = False
''            Forms!Personas_dati!P_Pilseta.Enabled = False
''            Forms!Personas_dati!Adr_Pilseta.Enabled = False
''            Forms!Personas_dati!P_Iela.Enabled = False
''            Forms!Personas_dati!P_Indekss.Enabled = False
        Else
            Forms!Personas_dati!PAplVeids.Enabled = True
            Forms!Personas_dati![Pases Nr].Enabled = True
            Forms!Personas_dati!Dok_Izdots_Datums.Enabled = True
            Forms!Personas_dati!Dok_Izdots_Vieta.Enabled = True
            Forms!Personas_dati!DokDerTermins.Enabled = True
            Forms!Personas_dati!Dok_Izdots_Iestade.Enabled = True
            Forms!Personas_dati!Pilsoniba.Enabled = True
            Forms!Personas_dati!LV_Pilsoniba.Enabled = True
            Forms!Personas_dati!ValstsIzvelePils.Enabled = True
''            Forms!Personas_dati!P_Valsts.Enabled = True
''            Forms!Personas_dati!ValstsIzvele_Dekl.Enabled = True
''            Forms!Personas_dati!P_Novads.Enabled = True
''            Forms!Personas_dati!Adr_Novads.Enabled = True
''            Forms!Personas_dati!P_Pagasts.Enabled = True
''            Forms!Personas_dati!Adr_Pagasts.Enabled = True
''            Forms!Personas_dati!P_Pilseta.Enabled = True
''            Forms!Personas_dati!Adr_Pilseta.Enabled = True
''            Forms!Personas_dati!P_Iela.Enabled = True
''            Forms!Personas_dati!P_Indekss.Enabled = True
        End If

        Me.Labot = Not Me.Labot
    Me.POSITION.Locked = False
    Me.POSITION.BackColor = 16777215

    Me.Position_Comment.Locked = False
    Me.Position_Comment.BackColor = 16777215

    Me.PilnvarotaPersona.Locked = False
    Me.PilnvarotaPersona.BackColor = 16777215

    Me.Piezimes.Locked = False
    Me.Piezimes.BackColor = 16777215

''    Me.Valsts.Locked = False
''    Me.Valsts.BackColor = 16777215

    Me.Datums_In.Locked = False
    Me.Datums_In.BackColor = 16777215

    Me.Datums_Lidz.Locked = False
    Me.Datums_Lidz.BackColor = 16777215

    Me.Datums_Out.Locked = False
    Me.Datums_Out.BackColor = 16777215

    Me.PersCert.Locked = False
    Me.PersCert.BackColor = 16777215

    Me.PersCertTerm.Locked = False
    Me.PersCertTerm.BackColor = 16777215

    Me.Maksatajs.Enabled = True

    Me.IstVSk.Locked = False
    Me.IstComf.Locked = False


''    If Forms!LigumsViesn!POSITION = "Pastāvīgs Viesis" Or Forms!LigumsViesn!POSITION = "Viesis" Then
''        Me.TNVeids.Locked = False
''        Me.TNVeids.Enabled = True
''        Me.TNVeids.BackColor = 16777215

''        If Me.TNVeids = 1 Then 'tūrists, jāpiemēro TN
''            Me.TNKopa.Locked = False
''            Me.TNKopa.Enabled = True
''            Me.TNKopa.BackColor = 16777215
''
''            Me.TNNepiemero.Locked = False
''            Me.TNNepiemero.Enabled = True
''            Me.TNNepiemero.BackColor = 16777215
''        End If
''    End If

    Me.TNLabots = 0
    Me.Labosana = -1
    Me.Ieraksts.Enabled = True
    Me.TNGrupa.Enabled = True
    Me.TNGrupa.Locked = False
''    Me.Valsts.Enabled = True
''    Me.Valsts.Locked = True
''    Me.Valstis.Enabled = True

'''    Me.PilnvarotaPersona.Locked = False
'''    Me.PilnvarotaPersona.BackColor = 16777215
'''    Me.Piezimes.Locked = False
'''    Me.Piezimes.BackColor = 16777215

End Sub

Private Sub LIG_DAT_Enter()
    If Me.Jauns.Caption = "Jauns" Then Me.Lig_Dat.Locked = True
End Sub

Private Sub LIG_DAT_Exit(Cancel As Integer)
    Forms!LigumsViesn.Lig_Dat.BackColor = 12632256
    Forms!LigumsViesn.Lig_Dat.Locked = True
End Sub

Private Sub Ligum_rep_AfterUpdate()
    Dim db As Database, JTMLig_rst As Recordset, JTMLig_str As String
    Set db = CurrentDb()
    JTMLig_str = "SELECT dbo_Personas.DokVeids, dbo_Personas.Dok_Derigs_Lidz, dbo_Personas.Dok_Izdots_Datums, dbo_Personas.Dok_Izdots_Vieta"
    JTMLig_str = JTMLig_str & " FROM dbo_Personas"
    JTMLig_str = JTMLig_str & " WHERE (((dbo_Personas.Personas_ID)=" & Me.Pers_ID & "));"

    Set JTMLig_rst = db.OpenRecordset(JTMLig_str, dbOpenSnapshot, dbSeeChanges)

    Me.Dok_Valsts = JTMLig_rst!Dok_Izdots_Vieta
    Me.Dok_Datums = JTMLig_rst!Dok_Izdots_Datums
    Me.Dok_Termins = JTMLig_rst!Dok_Derigs_Lidz
    If JTMLig_rst!DokVeids = 1 Then
        Me.Dok_Veids = "Pase"
        Me.Dok_Veids_Eng = "passport"
    ElseIf JTMLig_rst!DokVeids = 2 Then
        Me.Dok_Veids = "ID karte"
        Me.Dok_Veids_Eng = "ID card"
    Else
        Me.Dok_Veids = " "
    End If

    If Me.POSITION = "BAT students" Then
        Me.Position_ENG = "TU student"
    ElseIf Me.POSITION = "Cita skola" Then
        Me.Position_ENG = "Other school"
    ElseIf Me.POSITION = "Darbinieks" Then
        Me.Position_ENG = "Employee"
    ElseIf Me.POSITION = "Pastāvīgs viesis" Then
        Me.Position_ENG = "Permanent guest"
    ElseIf Me.POSITION = "viesis" Then
        Me.Position_ENG = "Guest"
    Else
        Me.Position_ENG = " "
    End If


    If UCase(Me.Ligum_rep) = "STUDENTA" Then
        DoCmd.OpenReport "Studenta_ligums", A_PREVIEW
    End If
    If UCase(Me.Ligum_rep) = "STUDENTA_ENG" Then
        DoCmd.OpenReport "Studenta_ligums_eng", A_PREVIEW
    End If
    If UCase(Me.Ligum_rep) = "VIESA_RU" Then
        DoCmd.OpenReport "Viesa_ligums_ru", A_PREVIEW
    End If
    If UCase(Me.Ligum_rep) = "VIESA_ENG" Then
        DoCmd.OpenReport "Viesa_ligums_eng", A_PREVIEW
    End If
    If UCase(Me.Ligum_rep) = "VIESA" Then
        DoCmd.OpenReport "Viesa_ligums", A_PREVIEW
    End If
    Me.Ligum_rep = "Līgums"
End Sub


Private Sub LIGUMS_Enter()
    Forms![LigumsViesn]![Ligums].Locked = True
End Sub

Private Sub Maksatajs_Click()
     DoCmd.OpenForm "Meklesana_Persona_Jur"
     Forms!Meklesana_Persona_Jur.OpenFrom = 2

    If IsNull(Me.Maksatajs_PID) Then
         Mysql = "SELECT """" as Vards, """" as Uzvards,  """" as Epasts, """" as Tel1, """" as  PID;"
    Else
        Mysql = "SELECT DISTINCTROW dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Epasts, dbo_Personas.Tel1, dbo_Personas.Personas_ID AS PID  FROM dbo_Personas"
        Mysql = Mysql & " WHERE (dbo_Personas.Personas_ID = " & Me.Maksatajs_PID & ");"
    End If

     Forms!Meklesana_Persona_Jur.RecordSource = Mysql
    Forms!Meklesana_Persona_Jur.Vard.SetFocus
End Sub

Private Sub PE_Konvertets_DblClick(Cancel As Integer)
    Dim db As Database, JTMLig_rst As Recordset, JTMLig_str As String
    Set db = CurrentDb()

    DoCmd.OpenForm "PE_LigumsViesn", , , "[LIGUM_ID]=" & Me.LIGUM_ID

    JTMLig_str = "SELECT LigumaInfo.LIGUM_ID, LigumaInfo.Pers_ID, LigumaInfo.Ligums, LigumaInfo.Lig_Dat, LigumaInfo.Vards, LigumaInfo.Uzvards, LigumaInfo.PE_Konv, "
    JTMLig_str = JTMLig_str & " LigumaInfo.PK , LigumaInfo.Pase, LigumaInfo.Piezimes, LigumaInfo.Valsts, LigumaInfo.Novads, LigumaInfo.Pagasts, LigumaInfo.PILSETA, "
    JTMLig_str = JTMLig_str & " LigumaInfo.Iela , LigumaInfo.POSITION, LigumaInfo.Pilnv_Persona, LigumaInfo.Datums_In, LigumaInfo.Datums_Lidz, LigumaInfo.Datums_Out"
    JTMLig_str = JTMLig_str & " FROM LigumaInfo"
    JTMLig_str = JTMLig_str & " WHERE (((LigumaInfo.LIGUM_ID)=" & Me.LIGUM_ID & "));"

    Set JTMLig_rst = db.OpenRecordset(JTMLig_str, dbOpenSnapshot, dbSeeChanges)

    DoCmd.OpenForm "PE_LigumsViesn"

    With Forms![PE_LigumsViesn]
''        .DefaultEditing = 4
        !Ieraksts.Enabled = False
        !Ligum_rep.Enabled = True
        !Caurlaide.Enabled = True
        !Ligum_rep = "Līgums"
        !Caurlaide = "Caurlaide"

        !Pers_ID = JTMLig_rst!Pers_ID
        !CKods = JTMLig_rst!Pers_ID
        !LIGUM_ID = JTMLig_rst!LIGUM_ID

        !Vards = JTMLig_rst!Vards
        !Uzvards = JTMLig_rst!Uzvards
        !PK = JTMLig_rst!PK
        !Pase = JTMLig_rst!Pase
        !PILSETA = JTMLig_rst!PILSETA

        !Pagasts = JTMLig_rst!Pagasts
        !Novads = JTMLig_rst!Novads
        !Iela = JTMLig_rst!Iela
        !Ligums = JTMLig_rst!Ligums
        !Lig_Dat = JTMLig_rst!Lig_Dat
        !POSITION = JTMLig_rst!POSITION
        !Piezimes = JTMLig_rst!Piezimes
        !PilnvarotaPersona = JTMLig_rst!Pilnv_Persona
        !Valsts = JTMLig_rst!Valsts
        !Datums_In = JTMLig_rst!Datums_In
        !Datums_Lidz = JTMLig_rst!Datums_Lidz
        !Datums_Out = JTMLig_rst!Datums_Out

        !MAKSAJUMIbeta.Visible = True
        !Vards.BackColor = 12632256
        !Uzvards.BackColor = 12632256
        !Lig_Dat.BackColor = 12632256
        !PilnvarotaPersona.BackColor = 12632256
        !Piezimes.BackColor = 12632256
        !Lig_Dat.Locked = True
        !PilnvarotaPersona.Locked = True
        !Piezimes.Locked = True
        !Vards.Locked = True
        !Uzvards.Locked = True
        !Jauns.Caption = "Jauns"
        !Jauns.Enabled = False
        !Valsts.Enabled = False
        !Valstis.Enabled = False


''        If Me.AForma.Column(8) = "Viesis" Then
''            !LSumKopa.Visible = True
''        Else
''            !LSumKopa.Visible = False
''        End If

    End With
''     CheckPersData (Forms!LigumsViesn.Pers_ID)

End Sub

Private Sub PersCert_AfterUpdate()
    If Me.PersCert > 1 Then 'pārslimošanas, terminēts
        Me.PersCertTerm.Enabled = True
    Else
        Me.PersCertTerm.Enabled = False
        Me.PersCertTerm = Null
    End If
End Sub

Private Sub POSITION_AfterUpdate()
    Dim MyDB As Database, Jaun As Recordset, Lstr As String
    Set MyDB = CurrentDb()

    If Forms!LigumsViesn!POSITION = "Cita skola" Then
        Forms!LigumsViesn!Position_Comment.Visible = True
        Me.Position_Comment.Locked = False
        Me.Position_Comment.BackColor = 16777215
        Me.Position_Comment.SetFocus
    Else
        Forms!LigumsViesn!Position_Comment.Visible = False
    End If

    Lstr = "SELECT dbo_viesn_kl_LBData.POSITION, dbo_viesn_kl_LBData.TUA, dbo_viesn_kl_LBData.TN"
    Lstr = Lstr & " FROM dbo_viesn_kl_LBData"
    Lstr = Lstr & " WHERE (((dbo_viesn_kl_LBData.POSITION)=""" & Me.POSITION & """));"
    Set Jaun = MyDB.OpenRecordset(Lstr, dbOpenDynaset, dbSeeChanges)

    If Jaun!TN = -1 Then
        Me.TNAttiecas = -1
        Me.TN_info.Visible = True
        Me.MAKSAJUMIbeta.Form.TNKopa.Enabled = True
        Me.MAKSAJUMIbeta.Form.TNNepiemero18.Enabled = True
        Me.MAKSAJUMIbeta.Form.TNNepiemeroDS.Enabled = True

''        Me.TNVeids.Locked = False
''        Me.TNVeids.Enabled = True
''        Me.TNVeids.BackColor = 16777215
''        Me.TNVeids.SetFocus

''        Me.TNKopa.Locked = False
''        Me.TNKopa.Enabled = True
''        Me.TNKopa.BackColor = 16777215
''
''        Me.TNNepiemero.Locked = False
''        Me.TNNepiemero.Enabled = True
''        Me.TNNepiemero.BackColor = 16777215
    Else
        Me.TNAttiecas = 0
        Me.TN_info.Visible = False
        Me.MAKSAJUMIbeta.Form.TNKopa.Enabled = False
        Me.MAKSAJUMIbeta.Form.TNNepiemero18.Enabled = False
        Me.MAKSAJUMIbeta.Form.TNNepiemeroDS.Enabled = False

''        Me.TNVeids = Null
''        Me.TNVeids.Locked = True
''        Me.TNVeids.Enabled = False
''        Me.TNVeids.BackColor = 12632256

''        Me.TNKopa = Null
''        Me.TNKopa.Locked = True
''        Me.TNKopa.Enabled = False
''        Me.TNKopa.BackColor = 12632256
''
''        Me.TNNepiemero = Null
''        Me.TNNepiemero.Locked = True
''        Me.TNNepiemero.Enabled = False
''        Me.TNNepiemero.BackColor = 12632256
    End If

        If Jaun!TUA = -1 Then
            Me.PersCert.Enabled = True
        Else
            Me.PersCert.Enabled = False
        End If


End Sub

Private Sub POSITION_BeforeUpdate(Cancel As Integer)
    If Forms!LigumsViesn!POSITION = "Viesis" Then
        Forms!LigumsViesn!LSumKopa.Visible = True
    Else
        Forms!LigumsViesn!LSumKopa.Visible = False
    End If

End Sub

Private Sub POSITION_DblClick(Cancel As Integer)
    If CurrentUser = "imants" Or CurrentUser = "iluta" Then
        DoCmd.OpenTable "dbo_viesn_kl_LBData"
    End If
End Sub

Private Sub PrintLV_Click()
    Dim Izdr As Recordset, JTMLig_rst As Recordset, JTMLig_str As String, db As Database
    Set db = CurrentDb()
    qq = "SELECT dbo_viesn_kl_LBData.IzdrForma"
    qq = qq & " FROM dbo_viesn_kl_LBData"
    qq = qq & " WHERE (((dbo_viesn_kl_LBData.POSITION)=""" & Me.POSITION & """));"
    Set Izdr = db.OpenRecordset(qq, DB_OPEN_SNAPSHOT, dbSeeChanges)
    If Izdr.EOF Then
        MsgBox "Nav atrasta izdrukas forma. Pārbaudiet, vai ir pareizi norādīts līguma stāvoklis.", vbExclamation + vbOKOnly, "JTM līgumi"
    Else

         JTMLig_str = "SELECT dbo_Personas.DokVeids, dbo_Personas.Dok_Derigs_Lidz, dbo_Personas.Dok_Izdots_Datums, dbo_Personas.Dok_Izdots_Vieta"
         JTMLig_str = JTMLig_str & " FROM dbo_Personas"
         JTMLig_str = JTMLig_str & " WHERE (((dbo_Personas.Personas_ID)=" & Me.Pers_ID & "));"

         Set JTMLig_rst = db.OpenRecordset(JTMLig_str, dbOpenSnapshot, dbSeeChanges)

         Me.Dok_Valsts = JTMLig_rst!Dok_Izdots_Vieta
         Me.Dok_Datums = JTMLig_rst!Dok_Izdots_Datums
         Me.Dok_Termins = JTMLig_rst!Dok_Derigs_Lidz
         If JTMLig_rst!DokVeids = 1 Then
             Me.Dok_Veids = "Pase"
             Me.Dok_Veids_Eng = "passport"
         ElseIf JTMLig_rst!DokVeids = 2 Then
             Me.Dok_Veids = "ID karte"
             Me.Dok_Veids_Eng = "ID card"
         Else
             Me.Dok_Veids = " "
         End If

         If Me.POSITION = "BAT students" Then
             Me.Position_ENG = "TU student"
         ElseIf Me.POSITION = "Cita skola" Then
             Me.Position_ENG = "Other school"
         ElseIf Me.POSITION = "Darbinieks" Then
             Me.Position_ENG = "Employee"
         ElseIf Me.POSITION = "Pastāvīgs viesis" Then
             Me.Position_ENG = "Permanent guest"
         ElseIf Me.POSITION = "viesis" Then
             Me.Position_ENG = "Guest"
         Else
             Me.Position_ENG = " "
         End If



         DoCmd.OpenReport Izdr!IzdrForma, A_PREVIEW

    End If

End Sub

Private Sub PritVPLV_Click()
    Dim Izdr As Recordset, JTMLig_rst As Recordset, JTMLig_str As String, db As Database
    Set db = CurrentDb()
    qq = "SELECT dbo_viesn_kl_LBData.IzdrFormaVP"
    qq = qq & " FROM dbo_viesn_kl_LBData"
    qq = qq & " WHERE (((dbo_viesn_kl_LBData.POSITION)=""" & Me.POSITION & """));"
    Set Izdr = db.OpenRecordset(qq, DB_OPEN_SNAPSHOT, dbSeeChanges)
    If Izdr.EOF Then
        MsgBox "Nav atrasta izdrukas forma. Pārbaudiet, vai ir pareizi norādīts līguma stāvoklis.", vbExclamation + vbOKOnly, "JTM līgumi"
    ElseIf IsNull(Izdr!IzdrFormaVP) Then
        MsgBox "Šim līguma veidam nav VP formas.", vbExclamation + vbOKOnly, "JTM līgumi"
    Else



    DoCmd.OpenReport Izdr!IzdrFormaVP, A_PREVIEW

    End If

End Sub

Private Sub RezPers_Click()
        DoCmd.OpenForm "Rezervisti_PersRezerv"
End Sub

Private Sub ShowPicture_Click()
If Me.ShowPicture = -1 Then
    Dim TEXT As String, File As String, Filename As String
        Filename = Me.PK

        If ShowPicture = True Then
            If IsNull(Filename) <> True Then

                If IsDate(Filename) Then
                    TEXT = "H:\personas\foto\" & Me.Pers_ID & ".jpg"
                    File = Dir(TEXT)
                End If
                If File = "" Then
                    TEXT = "H:\personas\foto\" & Me.PK & ".jpg"
                    File = Dir(TEXT)
                End If
                If File = "" Then
                    TEXT = "H:\personas\foto\" & Me.Pers_ID & ".jpg"
                    File = Dir(TEXT)
                End If

                If File = "" Then
                    Bilde.Picture = ""
                    Me.PicNotFound.Visible = True
                    Bilde.Visible = False
    '                MsgBox ("Fails '" & Text & "' nav atrasts.")     ' Ziņojums, ka faila nav
                Else
                    Bilde.Picture = TEXT
                    Me.PicNotFound.Visible = False
                    Bilde.Visible = True
                End If
            Else
                Bilde.Picture = ""
                Me.PicNotFound.Visible = True
                Bilde.Visible = False
            End If
        Else
            Bilde.Picture = ""
            Me.PicNotFound.Visible = False
        End If
Else
    Bilde.Picture = ""
    Me.PicNotFound.Visible = False
    Bilde.Visible = False
End If
End Sub

Private Sub STOP_in_Click()
    Dim STOP_ADD As Recordset, db As Database, Iem_ID
    Set db = CurrentDb()
    Iem_ID = 8 'STOP iemesls
    qq = "SELECT dbo_st_Stop.CKods"
    qq = qq & " FROM dbo_st_Stop"
    qq = qq & " WHERE (((dbo_st_Stop.CKods)=" & Me.Pers_ID & ") AND ((dbo_st_Stop.Iemesls_ID)=" & Iem_ID & ") AND ((dbo_st_Stop.Out_Kad) Is Null));"
    Set rec = db.OpenRecordset(qq, DB_OPEN_SNAPSHOT, dbSeeChanges)
    If rec.RecordCount > 0 Then
         MsgBox ("Persona jau ir STOP sarakstā šajā saistībā.")
         Exit Sub
    End If
  If MsgBox("Vai ielikt šo personu STOP sarakstā par nenokārtotām saistībām JTM?", vbYesNo) = vbYes Then
        qq = "select dbo_st_Tiesibas.*, dbo_st_Iemesli.VajagKoment from dbo_st_Tiesibas INNER JOIN dbo_st_Iemesli ON dbo_st_Tiesibas.Iemesls_ID = dbo_st_Iemesli.Iemesls_ID where (dbo_st_Tiesibas.Ielikt = True and dbo_st_Tiesibas.Iemesls_ID = " & Iem_ID & " and dbo_st_Tiesibas.Lietotajs = '" & CurrentUser & "')"
        Set rec = db.OpenRecordset(qq, DB_OPEN_SNAPSHOT, dbSeeChanges)
        If rec.RecordCount = 0 Then
            MsgBox ("Jums nav tiesību ielikt STOP sarakstā šajā saistībā.")
        Else
            If rec!VajagKoment = 1 Then
                Dim pt As String
                pt = InputBox("Ievadiet ielikšanas STOP sarakstā pamatojumu:")
                If pt = "" Then
                    MsgBox ("Ielikt STOP sarakstā šajā saistībā var tikai norādot pamatojumu!")
                    Exit Sub
                End If
            End If

          Set db = DBEngine(0)(0)
          Set STOP_ADD = db.OpenRecordset("dbo_st_Stop", DB_OPEN_DYNASET, dbSeeChanges)
          Dim aa As String
          aa = "select * from dbo_Personas where dbo_Personas.Personas_ID = " & Me.Pers_ID
          Set Persona = db.OpenRecordset(aa, DB_OPEN_DYNASET, dbSeeChanges)
          STOP_ADD.AddNew
           STOP_ADD!CKods = Me.Pers_ID
           STOP_ADD!Uzvards = Persona!Uzvards
           STOP_ADD!Vards = Persona!Vards
           STOP_ADD!PK = Persona!Pers_Kods
           STOP_ADD!Iemesls_ID = Iem_ID
           STOP_ADD!In_Kas = CurrentUser()
           STOP_ADD!In_Kad = Now()
           STOP_ADD!In_Kapec = pt
           STOP_ADD.Update
          STOP_ADD.Close
          Persona.Close
          Me.Requery
        End If
        Me.StSar.Requery

  End If
End Sub

Private Sub STOP_out_Click()
    Dim qq As String, rec As Recordset, db As Database, Iem_ID
    Iem_ID = 8 'STOP iemesls
    Set db = CurrentDb()
    qq = "select dbo_st_Tiesibas.*, dbo_st_Iemesli.VajagKoment from dbo_st_Tiesibas INNER JOIN dbo_st_Iemesli ON dbo_st_Tiesibas.Iemesls_ID = dbo_st_Iemesli.Iemesls_ID where (dbo_st_Tiesibas.Iznemt = True and dbo_st_Tiesibas.Iemesls_ID = " & Iem_ID & " and dbo_st_Tiesibas.Lietotajs = '" & CurrentUser & "')"
    Set rec = db.OpenRecordset(qq, DB_OPEN_SNAPSHOT, dbSeeChanges)
    If rec.RecordCount = 0 Then
        MsgBox ("Jums nav tiesību izņemt no STOP saraksta šajā saistībā.")
        Exit Sub
    Else
        If MsgBox("Izņemt šo personu no STOP saraksta?", vbYesNo) = vbYes Then
            If rec!VajagKoment = 1 Then
                Dim pt As String
                pt = InputBox("Ievadiet izņemšanas no STOP saraksta pamatojumu:")
                If pt = "" Then
                    MsgBox ("Izņemt no STOP saraksta šajā saistībā var tikai norādot pamatojumu!")
                    Exit Sub
                End If
            End If
        Dim DzestNoSTOP As String
        DoCmd.SetWarnings 0
        If pt = "" Then
            DzestNoSTOP = "UPDATE dbo_st_Stop SET dbo_st_Stop.Out_Kas = '" & CurrentUser() & "', dbo_st_Stop.Out_Kad = Now()"
        Else
            DzestNoSTOP = "UPDATE dbo_st_Stop SET dbo_st_Stop.Out_Kapec = '" & pt & "', dbo_st_Stop.Out_Kas = '" & CurrentUser() & "', dbo_st_Stop.Out_Kad = Now()"
        End If
        DzestNoSTOP = DzestNoSTOP & " WHERE (((dbo_st_Stop.Iemesls_ID)=" & Iem_ID & ")  AND ((dbo_st_Stop.CKods) = " & Me.Pers_ID & ") AND ((dbo_st_Stop.Out_Kad) Is Null));"
        DoCmd.RunSQL DzestNoSTOP, 0
        DoCmd.SetWarnings -1
        Me.Requery
        End If
    End If
    Me.StSar.Requery
End Sub

Private Sub StSar_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If IsNull(Me.CKods) Then Exit Sub
    DoCmd.OpenForm "STOP Ar Rokam subform", , , ""
    Forms![STOP Ar Rokam subform].PID = CKods
    Forms![STOP Ar Rokam subform].Requery

End Sub

Private Sub TNKopa_AfterUpdate()
''    Me.TNLabots = -1

End Sub

Private Sub TNNepiemero_AfterUpdate()
''    Me.TNLabots = -1
''
''    Call TN_aprekins
''
End Sub

Private Function TN_aprekins() As Integer

    TN_aprekins = -1

    If Me.TNLabots = 0 Then Exit Function

    TN_aprekins = 0

    Dim db As Database
    Dim VIrst As Recordset, VIstr As String, INVrst As Recordset

    Set db = CurrentDb

    LNR = Me.Ligums

    VIstr = " SELECT dbo_viesn_Maksajumi.Ligums, dbo_viesn_Maksajumi.Ist_Nr, dbo_viesn_Maksajumi.MaksVeids"
    VIstr = VIstr & " FROM dbo_viesn_Maksajumi"
    VIstr = VIstr & " WHERE (((dbo_viesn_Maksajumi.Ligums)=" & LNR & ") AND ((dbo_viesn_Maksajumi.Ist_Nr)=999) AND ((dbo_viesn_Maksajumi.MaksVeids) Is Null) AND ((dbo_viesn_Maksajumi.Stat) Is Null));"
    Set INVrst = db.OpenRecordset(VIstr, dbOpenDynaset)

    If Not INVrst.EOF Then
        MsgBox "Maksājumos ir vismaz viens neapmaksāts tūrisma nodevas ieraksts. Jaunu pievienot nevar!", vbOKOnly, "JTM"
        Exit Function
    End If


''    LNR = Me.Ligums
    dno = Me.Datums_In
    dlidz = Me.Datums_Out
    TNKopa = Me.TNKopa
    If IsNull(dlidz) Then
        a = MsgBox("Nav norādīts izvākšanās datums. Vai piemērot tūrisma nodevu par 10 naktīm?", vbYesNo + vbDefaultButton1, "Līgums")
        If a = vbNo Then Exit Function
        TNNaktis = 10
        dlidz = DateAdd("d", 10, dno)
    ElseIf DateDiff("d", dno, dlidz) > 10 Then
        TNNaktis = 10
        dlidz = DateAdd("d", 10, dno)
    Else
        TNNaktis = dlidz - dno
    End If

    If IsNull(Me.TNNepiemero) Then TNNep = 0 Else TNNep = Me.TNNepiemero
    TNPers = TNKopa - TNNep

    Me.MAKSAJUMIbeta.SetFocus
    DoCmd.GoToRecord , , acNewRec

    Me.MAKSAJUMIbeta.Form.Ligums = LNR
    Me.MAKSAJUMIbeta.Form.DAT_NO = dno
    Me.MAKSAJUMIbeta.Form.DAT_LIDZ = dlidz
    Me.MAKSAJUMIbeta.Form.SK_IST = TNNaktis * TNPers
    Me.MAKSAJUMIbeta.Form.IST_NR = 999
    Me.MAKSAJUMIbeta.Form.MAKS_DAY = 1
    Me.MAKSAJUMIbeta.Form.Kopa = TNNaktis * TNPers
    Me.MAKSAJUMIbeta.Form.TOTAL = TNNaktis * TNPers
    Me.MAKSAJUMIbeta.Form.FABULA = Me.MAKSAJUMIbeta.Form.FABULA & CurrentUser() & Date

    Me.TNKopa.SetFocus

    Me.TNLabots = 0
    TN_aprekins = -1

End Function

Private Sub TNVeids_AfterUpdate()
''    If Me.TNVeids = 1 Then 'tūrists, jāpiemēro TN
''        Me.TNKopa.Locked = False
''        Me.TNKopa.Enabled = True
''        Me.TNKopa.BackColor = 16777215
''
''        Me.TNNepiemero.Locked = False
''        Me.TNNepiemero.Enabled = True
''        Me.TNNepiemero.BackColor = 16777215
''    Else
''        Me.TNKopa = Null
''        Me.TNKopa.Locked = True
''        Me.TNKopa.Enabled = False
''        Me.TNKopa.BackColor = 12632256
''
''        Me.TNNepiemero = Null
''        Me.TNNepiemero.Locked = True
''        Me.TNNepiemero.Enabled = False
''        Me.TNNepiemero.BackColor = 12632256
''    End If
''
''    Me.TNLabots = -1

End Sub

Private Sub UZVARDS_AfterUpdate()
'''    If Me.Jauns.Caption = "Atcelt" Then
'''    q1 = "SELECT DISTINCTROW dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_Personas.Pozicija, dbo_Personas.Dok_Nr,dbo_Personas.Valsts, dbo_Personas.D_Novads, dbo_Personas.D_Pagasts, dbo_Personas.D_Pilseta, dbo_Personas.D_Iela, dbo_Personas.Tel1, dbo_Personas.Personas_ID AS PID  FROM dbo_Personas WHERE (dbo_Personas.Vards Like """
'''    q2 = Me.Vards
'''    q3 = "*"") "
'''    q4 = "AND (dbo_Personas.Uzvards Like """ & Me.Uzvards & "*"") ORDER BY dbo_Personas.Uzvards"
'''    q5 = ";"
'''    If IsNull(Me.Uzvards) Then
'''        qqq = q1 & q2 & q3 & q5
'''    Else
'''        qqq = q1 & q2 & q3 & q4 & q5
'''    End If
'''     DoCmd.OpenForm "Meklesana_Persona"
'''    Forms!Meklesana_Persona.RecordSource = qqq
''''''    Forms!Meklesana_Persona.Requery
'''    Forms!Meklesana_Persona.VS.Caption = " ====>> " & Me.Vards & "  " & Me.Uzvards
'''    Forms!Meklesana_Persona.Tag = qqq
'''    End If
End Sub

Private Sub UZVARDS_Exit(Cancel As Integer)
'''    If IsNull(Me.Uzvards) Then Call UZVARDS_AfterUpdate
End Sub

Private Sub Valstis_Click()
    DoCmd.OpenForm "Valstis_Ligumos", acFormDS
    Forms!Valstis_Ligumos!OpenFrom = 1
End Sub

Private Sub ZAAkts_Click()
    Dim db As Database
    Dim VIrst As Recordset, VIstr As String, INVrst As Recordset, MArst As Recordset, MSaskrst As Recordset, MASatrst As Recordset, LNR, ANR, INR, AID, ASum, ISum

    LNR = Me.Ligums
    Set db = CurrentDb

    VIstr = " SELECT dbo_viesn_Ligumi_Inv.Ligums, dbo_viesn_Ligumi_Inv.Istaba, dbo_viesn_Ligumi_Inv.Inv_ID, dbo_viesn_Ligumi_Inv.Inv_Nos, "
    VIstr = VIstr & " dbo_Viesn_Inventars.Inv_Nos_Eng, dbo_Viesn_Inventars.Inv_Cena, dbo_viesn_Ligumi_Inv.InvSk, dbo_viesn_Ligumi_Inv.InvStat"
    VIstr = VIstr & " FROM dbo_viesn_Ligumi_Inv INNER JOIN dbo_Viesn_Inventars ON dbo_viesn_Ligumi_Inv.Inv_ID = dbo_Viesn_Inventars.Inv_ID"
    VIstr = VIstr & " WHERE (((dbo_viesn_Ligumi_Inv.Ligums)=" & LNR & ") AND ((dbo_viesn_Ligumi_Inv.InvUzMZA)=-1) AND ((dbo_viesn_Ligumi_Inv.InvStat)=-10 Or (dbo_viesn_Ligumi_Inv.InvStat)=-11 Or (dbo_viesn_Ligumi_Inv.InvStat)=-12));"
    Set INVrst = db.OpenRecordset(VIstr, dbOpenDynaset)

    If INVrst.EOF Then
        MsgBox "Nav atzīmēts nenodots inventārs!", vbOKOnly, "JTM"
        Exit Sub
    End If

    VIstr = " SELECT dbo_viesn_Ligumi_Istabas.Istaba FROM dbo_viesn_Ligumi_Istabas"
    VIstr = VIstr & " WHERE ((Not (dbo_viesn_Ligumi_Istabas.Istaba) Is Null) AND ((dbo_viesn_Ligumi_Istabas.LIDat_Lidz) Is Null Or (dbo_viesn_Ligumi_Istabas.LIDat_Lidz) >= #" & Month(Date) & "/" & Day(Date) & "/" & Year(Date) & "#) And ((dbo_viesn_Ligumi_Istabas.Ligums) = " & LNR & "))"
    VIstr = VIstr & " ORDER BY dbo_viesn_Ligumi_Istabas.LIDat_No DESC;"
    Set VIrst = db.OpenRecordset(VIstr, dbOpenDynaset)

    If Not VIrst.EOF Then
        If VIrst.RecordCount > 1 Then
            MsgBox "Uz līgumu ir reģistrētas vairākas istabiņas. Aktā lūdzu norādiet pareizo istabiņu.", vbOKOnly, "JTM"
        Else
            INR = VIrst!Istaba
        End If
    End If


''      2023.janv., automātiski nr.nepiešķir
''    VIstr = " SELECT Max(dbo_Viesn_MZAkts.Nr) AS Nr"
''    VIstr = VIstr & " FROM dbo_Viesn_MZAkts;"
''    Set MArst = db.OpenRecordset(VIstr, dbOpenDynaset)
''    If MArst.EOF Then
''        ANR = 1
''    Else
''        ANR = MArst!Nr + 1
''    End If
''      ==== END ==== 2023.janv., automātiski nr.nepiešķir

'' ====== 2023.jūnijs, piešķir Nr
    VIstr = "SELECT Max(dbo_Viesn_MZAkts.Nr) AS PedNrGG"
    VIstr = VIstr & " FROM dbo_Viesn_MZAkts"
    VIstr = VIstr & " WHERE (((Year([Datums]))=year(now())) AND ((dbo_Viesn_MZAkts.Stat) Is Null Or (dbo_Viesn_MZAkts.Stat)=0));"
    Set MArst = db.OpenRecordset(VIstr, dbOpenDynaset)
    If IsNull(MArst!PedNrGG) Then
        ANR = 1
    Else
        ANR = MArst!PedNrGG + 1
    End If
''      ==== END ==== 2023.jūnijs


    VIstr = " SELECT dbo_Viesn_MZAkts.RID, dbo_Viesn_MZAkts.Nr, dbo_Viesn_MZAkts.Datums, dbo_Viesn_MZAkts.LigNr, dbo_Viesn_MZAkts.LigDatums, "
    VIstr = VIstr & " dbo_Viesn_MZAkts.LigVards, dbo_Viesn_MZAkts.LigUzvards, dbo_Viesn_MZAkts.LigIstaba, dbo_Viesn_MZAkts.LigIrDepozits, "
    VIstr = VIstr & " dbo_Viesn_MZAkts.KomAmats1, dbo_Viesn_MZAkts.KomAmatsEng1, dbo_Viesn_MZAkts.KomVU1, dbo_Viesn_MZAkts.KomAmats2, dbo_Viesn_MZAkts.KomAmatsEng2, dbo_Viesn_MZAkts.KomVU2, "
    VIstr = VIstr & " dbo_Viesn_MZAkts.KomAmats3, dbo_Viesn_MZAkts.KomAmatsEng3, dbo_Viesn_MZAkts.KomVU3, dbo_Viesn_MZAkts.Summa, dbo_Viesn_MZAkts.Samaksats"
    VIstr = VIstr & " FROM dbo_Viesn_MZAkts;"
    Set MArst = db.OpenRecordset(VIstr, dbOpenDynaset, dbSeeChanges)
    MArst.AddNew
        MArst!Nr = ANR
        MArst!Datums = Date
        MArst!LigNr = LNR
        MArst!LigDatums = Me.Lig_Dat
        MArst!LigVards = Me.Vards
        MArst!LigUzvards = Me.Uzvards
        MArst!LigIstaba = INR

        VIstr = "SELECT dbo_Viesn_kl_Saskanotaji.Sask_Amats, dbo_Viesn_kl_Saskanotaji.Sask_Amats_eng, dbo_Viesn_kl_Saskanotaji.Sask_VU"
        VIstr = VIstr & " FROM dbo_Viesn_kl_Saskanotaji"
        VIstr = VIstr & " WHERE (((dbo_Viesn_kl_Saskanotaji.NoklNr)=1));"
        Set MSaskrst = db.OpenRecordset(VIstr, dbOpenDynaset)
        If Not MArst.EOF Then
            MArst!KomAmats1 = MSaskrst!Sask_Amats
            MArst!KomAmatsENG1 = MSaskrst!Sask_Amats_eng
            MArst!KomVU1 = MSaskrst!Sask_VU
        End If

        VIstr = "SELECT dbo_Viesn_kl_Saskanotaji.Sask_Amats, dbo_Viesn_kl_Saskanotaji.Sask_Amats_eng, dbo_Viesn_kl_Saskanotaji.Sask_VU"
        VIstr = VIstr & " FROM dbo_Viesn_kl_Saskanotaji"
        VIstr = VIstr & " WHERE (((dbo_Viesn_kl_Saskanotaji.NoklNr)=2));"
        Set MSaskrst = db.OpenRecordset(VIstr, dbOpenDynaset)
        If Not MArst.EOF Then
            MArst!KomAmats2 = MSaskrst!Sask_Amats
            MArst!KomAmatsENG2 = MSaskrst!Sask_Amats_eng
            MArst!KomVU2 = MSaskrst!Sask_VU
        End If

''        VIstr = "SELECT dbo_Viesn_kl_Saskanotaji.Sask_Amats, dbo_Viesn_kl_Saskanotaji.Sask_Amats_eng, dbo_Viesn_kl_Saskanotaji.Sask_VU"
''        VIstr = VIstr & " FROM dbo_Viesn_kl_Saskanotaji"
''        VIstr = VIstr & " WHERE (((dbo_Viesn_kl_Saskanotaji.NoklNr)=3));"
''        Set MSaskrst = db.OpenRecordset(VIstr, dbOpenDynaset)
''        If Not MArst.EOF Then
''            MArst!KomAmats3 = MSaskrst!Sask_Amats
''            MArst!KomAmatsENG3 = MSaskrst!Sask_Amats_eng
''            MArst!KomVU3 = MSaskrst!Sask_VU
''        End If

    MArst.Update
    MArst.Close

    VIstr = " SELECT Max(dbo_Viesn_MZAkts.RID) AS RID"
    VIstr = VIstr & " FROM dbo_Viesn_MZAkts;"
    Set VIrst = db.OpenRecordset(VIstr, dbOpenDynaset)

    AID = VIrst!RID

    VIstr = " SELECT dbo_Viesn_MZAkts_saturs.RID, dbo_Viesn_MZAkts_saturs.MZA_ID, dbo_Viesn_MZAkts_saturs.Inv_ID, dbo_Viesn_MZAkts_saturs.Inv_Skaits, "
    VIstr = VIstr & " dbo_Viesn_MZAkts_saturs.Inv_Nos, dbo_Viesn_MZAkts_saturs.Inv_Nos_Eng, dbo_Viesn_MZAkts_saturs.Inv_Cena, dbo_Viesn_MZAkts_saturs.Inv_Summa, dbo_Viesn_MZAkts_saturs.Inv_Stat"
    VIstr = VIstr & " FROM dbo_Viesn_MZAkts_saturs;"
    Set MASatrst = db.OpenRecordset(VIstr, dbOpenDynaset, dbSeeChanges)

    ASum = 0
    INVrst.MoveFirst
    Do While Not INVrst.EOF
        MASatrst.AddNew
        MASatrst!MZA_ID = AID
        MASatrst!Inv_ID = INVrst!Inv_ID
        MASatrst!Inv_Nos = INVrst!Inv_Nos
        MASatrst!Inv_Nos_Eng = INVrst!Inv_Nos_Eng
        MASatrst!Inv_Cena = INVrst!Inv_Cena
        MASatrst!Inv_Skaits = INVrst!InvSk
        ISum = Int((INVrst!Inv_Cena * INVrst!InvSk + 0.005005) * 100) / 100
        ASum = ASum + ISum
        MASatrst!Inv_Summa = ISum
        MASatrst!Inv_Stat = INVrst!InvStat
        MASatrst.Update
        INVrst.MoveNext
    Loop

    VIstr = " SELECT dbo_Viesn_MZAkts.Summa"
    VIstr = VIstr & " FROM dbo_Viesn_MZAkts"
    VIstr = VIstr & " WHERE (((dbo_Viesn_MZAkts.RID)=" & AID & "));"
    Set MArst = db.OpenRecordset(VIstr, dbOpenDynaset)
    MArst.Edit
    MArst!Summa = ASum
    MArst.Update

    Me.LigumsViesnIstabinas_MZAkti_sub.Requery
End Sub
