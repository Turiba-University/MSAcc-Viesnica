Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database   'Use database order for string comparisons

Private Sub Beigas_Click()
    DoCmd.Close A_FORM, "PE_LigumsViesn"
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



Private Sub Datums_Out_AfterUpdate()
    If Me.Datums_Out.Locked = True Then Exit Sub
    Dim a, P
'''    a = InputBox("Ievadiet izvākšanās datumu (dd.mm.gggg). Lai izdzēstu datumu, ievadiet atstarpi:", "Līgumi")
'''    If IsDate(a) Or a = " " Then
        Dim MyDB As Database, Jaun As Recordset, Lstr As String
'''        Set MyDB = CurrentDb()
'''        Lstr = "SELECT dbo_viesn_Ligumi.Datums_Out"
'''        Lstr = Lstr & " FROM dbo_viesn_Ligumi"
'''        Lstr = Lstr & " WHERE (((dbo_viesn_Ligumi.LIGUM_ID)=" & Me.LIGUM_ID & "));"
'''        Set Jaun = MyDB.OpenRecordset(Lstr, dbOpenDynaset, dbSeeChanges)
'''        Jaun.Edit
            If IsNull(Me.Datums_Out) Or Me.Datums_Out = " " Then
'''                Jaun!Datums_Out = Null
            Else
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
    Dim MyDB As Database, Jaun As Recordset, Lstr As String, LigID, LigNr
    Set MyDB = CurrentDb()
    If IsNull(Me.POSITION) Or Me.POSITION = "" Then
        MsgBox "Lūdzu norādiet līguma stāvokli", vbExclamation, "Līgums"
        Exit Sub
    End If
    If IsNull(Me.Valsts) Or Me.Valsts = "" Then
        MsgBox "Lūdzu norādiet valsti", vbExclamation, "Līgums"
        Exit Sub
    End If
    If Me.Labosana = -1 Then
        Lstr = "SELECT dbo_viesn_Ligumi.Position, dbo_viesn_Ligumi.Piezimes, dbo_viesn_Ligumi.Pilnv_Persona, dbo_viesn_Ligumi.Valsts, "
        Lstr = Lstr & " dbo_viesn_Ligumi.Datums_In, dbo_viesn_Ligumi.Datums_Lidz, dbo_viesn_Ligumi.Datums_Out"
        Lstr = Lstr & " FROM dbo_viesn_Ligumi"
        Lstr = Lstr & " WHERE (((dbo_viesn_Ligumi.LIGUM_ID)=" & Me.LIGUM_ID & "));"
        Set Jaun = MyDB.OpenRecordset(Lstr, dbOpenDynaset, dbSeeChanges)
        Jaun.Edit
            Jaun!POSITION = Me.POSITION
            Jaun!Piezimes = Me.Piezimes
            Jaun!Pilnv_Persona = Me.PilnvarotaPersona
            Jaun!Valsts = Me.Valsts
            Jaun!Datums_In = Me.Datums_In
            Jaun!Datums_Lidz = Me.Datums_Lidz
            Jaun!Datums_Out = Me.Datums_Out
        Jaun.Update
        Jaun.Close
        Me.PilnvarotaPersona.Locked = True
        Me.PilnvarotaPersona.BackColor = 12632256
        Me.Piezimes.Locked = True
        Me.Piezimes.BackColor = 12632256
        Me.POSITION.Locked = True
        Me.POSITION.BackColor = 12632256
        Me.Valsts.Locked = True
        Me.Valsts.BackColor = 12632256
        Me.Datums_In.Locked = True
        Me.Datums_In.BackColor = 12632256
        Me.Datums_Lidz.Locked = True
        Me.Datums_Lidz.BackColor = 12632256
        Me.Datums_Out.Locked = True
        Me.Datums_Out.BackColor = 12632256

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
            Jaun!Piezimes = Me.Piezimes
            Jaun!Pilnv_Persona = Me.PilnvarotaPersona
            Jaun!Valsts = Me.Valsts
            Jaun!Datums_In = Me.Datums_In
            Jaun!Datums_Lidz = Me.Datums_Lidz
            Jaun!Datums_Out = Me.Datums_Out
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
        Me.Valsts.Locked = True
        Me.Valsts.BackColor = 12632256
        Me.Datums_In.Locked = True
        Me.Datums_In.BackColor = 12632256
        Me.Datums_Lidz.Locked = True
        Me.Datums_Lidz.BackColor = 12632256
        Me.Datums_Out.Locked = True
        Me.Datums_Out.BackColor = 12632256
    ''''    DoCmd.GoToRecord , , acLast
    End If
    Me.Valstis.Enabled = False
    Me.Ieraksts.Enabled = False
    Me.Requery

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
    Me.Labot = Not Me.Labot
    Me.POSITION.Locked = False
    Me.POSITION.BackColor = 16777215

    Me.PilnvarotaPersona.Locked = False
    Me.PilnvarotaPersona.BackColor = 16777215

    Me.Piezimes.Locked = False
    Me.Piezimes.BackColor = 16777215

    Me.Valsts.Locked = False
    Me.Valsts.BackColor = 16777215

    Me.Datums_In.Locked = False
    Me.Datums_In.BackColor = 16777215

    Me.Datums_Lidz.Locked = False
    Me.Datums_Lidz.BackColor = 16777215

    Me.Datums_Out.Locked = False
    Me.Datums_Out.BackColor = 16777215

    Me.Labosana = -1
    Me.Ieraksts.Enabled = True
    Me.Valsts.Enabled = True
    Me.Valsts.Locked = True
    Me.Valstis.Enabled = True

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

Private Sub POSITION_AfterUpdate()
    If Forms!LigumsViesn!POSITION = "Viesis" Then
        Forms!LigumsViesn!LSumKopa.Visible = True
    Else
        Forms!LigumsViesn!LSumKopa.Visible = False
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

Private Sub StSar_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If IsNull(Me.CKods) Then Exit Sub
    DoCmd.OpenForm "STOP Ar Rokam subform", , , ""
    Forms![STOP Ar Rokam subform].PID = CKods
    Forms![STOP Ar Rokam subform].Requery

End Sub

Private Sub UZVARDS_AfterUpdate()
    If Me.Jauns.Caption = "Atcelt" Then
    q1 = "SELECT DISTINCTROW dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_Personas.Pozicija, dbo_Personas.Dok_Nr,dbo_Personas.Valsts, dbo_Personas.D_Novads, dbo_Personas.D_Pagasts, dbo_Personas.D_Pilseta, dbo_Personas.D_Iela, dbo_Personas.Tel1, dbo_Personas.Personas_ID AS PID  FROM dbo_Personas WHERE (dbo_Personas.Vards Like """
    q2 = Me.Vards
    q3 = "*"") "
    q4 = "AND (dbo_Personas.Uzvards Like """ & Me.Uzvards & "*"") ORDER BY dbo_Personas.Uzvards"
    q5 = ";"
    If IsNull(Me.Uzvards) Then
        qqq = q1 & q2 & q3 & q5
    Else
        qqq = q1 & q2 & q3 & q4 & q5
    End If
     DoCmd.OpenForm "Meklesana_Persona"
    Forms!Meklesana_Persona.RecordSource = qqq
'''    Forms!Meklesana_Persona.Requery
    Forms!Meklesana_Persona.VS.Caption = " ====>> " & Me.Vards & "  " & Me.Uzvards
    Forms!Meklesana_Persona.Tag = qqq
    End If
End Sub

Private Sub UZVARDS_Exit(Cancel As Integer)
    If IsNull(Me.Uzvards) Then Call UZVARDS_AfterUpdate
End Sub

Private Sub Valstis_Click()
    DoCmd.OpenForm "Valstis_Ligumos", acFormDS
    Forms!Valstis_Ligumos!OpenFrom = 1
End Sub
