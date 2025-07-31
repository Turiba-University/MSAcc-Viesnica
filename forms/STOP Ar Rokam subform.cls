Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Kategor_AfterUpdate()
Dim a As String
'a = Me.TEXT
If Me.Kategor = 3 Then
Me.TEXT = InputBox("Ievadiet aizliegto pakalpojumu un termiņu.", "Stop saraksts")
Else
End If
End Sub
Private Sub Command17_Click()
'izņemšana no STOP saraksta.

    Dim qq As String, rec As Recordset, db As Database
    Set db = CurrentDb()
    qq = "select dbo_st_Tiesibas.*, dbo_st_Iemesli.VajagKoment from dbo_st_Tiesibas INNER JOIN dbo_st_Iemesli ON dbo_st_Tiesibas.Iemesls_ID = dbo_st_Iemesli.Iemesls_ID where (dbo_st_Tiesibas.Iznemt = True and dbo_st_Tiesibas.Iemesls_ID = " & Me.Iemesls_ID & " and dbo_st_Tiesibas.Lietotajs = '" & CurrentUser & "')"
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
        DzestNoSTOP = "UPDATE dbo_st_Stop SET dbo_st_Stop.Out_Kapec = '" & pt & "', dbo_st_Stop.Out_Kas = '" & CurrentUser() & "', dbo_st_Stop.Out_Kad = Now()"
        DzestNoSTOP = DzestNoSTOP & " WHERE (((dbo_st_Stop.ST_ID)=" & Me.STOP_ID & ") AND ((dbo_st_Stop.Out_Kad) Is Null));"
        DoCmd.RunSQL DzestNoSTOP, 0
        DoCmd.SetWarnings -1
        Me.Requery
        End If
    End If
End Sub
Private Sub Aizvert_Click()
''On Error GoTo Err_Aizvert_Click
''
''
    DoCmd.Close
''        Forms![Apmaksas termini].Refresh
''
''Exit_Aizvert_Click:
''    Exit Sub
''
''Err_Aizvert_Click:
''    MsgBox Err.Description
''    Resume Exit_Aizvert_Click
''
End Sub
Private Sub Command25_Click()
On Error GoTo Err_Command25_Click


    Screen.PreviousControl.SetFocus
    DoCmd.FindNext

Exit_Command25_Click:
    Exit Sub

Err_Command25_Click:
    MsgBox Err.Description
    Resume Exit_Command25_Click

End Sub

Private Sub Ielikt_STOP_Click()

End Sub

Private Sub Form_Open(Cancel As Integer)
    Dim rStr As String
    rStr = "SELECT dbo_st_Stop.ST_ID, dbo_st_Stop.CKods, dbo_st_Stop.Uzvards, dbo_st_Stop.Vards, dbo_st_Iemesli.Iem_Nosaukums, dbo_st_Stop.PK, dbo_st_Stop.Iemesls_ID, dbo_st_Stop.In_Kas, dbo_st_Stop.In_Kad, dbo_st_Stop.Out_Kas, dbo_st_Stop.Out_Kad, dbo_st_Stop.Out_Kapec"
    rStr = rStr & " FROM dbo_st_Stop LEFT JOIN dbo_st_Iemesli ON dbo_st_Stop.Iemesls_ID = dbo_st_Iemesli.Iemesls_ID"
    rStr = rStr & " WHERE (((dbo_st_Stop.CKods) = [Forms]![STOP Ar Rokam subform]![PID]) AND ((dbo_st_Stop.Out_Kad) Is Null Or (dbo_st_Stop.Out_Kad)>=Date()))"
    rStr = rStr & " ORDER BY dbo_st_Stop.Uzvards, dbo_st_Stop.Vards, dbo_st_Iemesli.Iem_Nosaukums;"
    Me.RecordSource = rStr
    Me.Requery
    Me.FormFooter.Visible = False
    Me.Aizvert.SetFocus
End Sub


Private Sub PievienotSTOP_Click()
'''    If MsgBox("Ielikt šo personu STOP sarakstā?", vbYesNo) = vbYes Then
    If IsNull(Me.kapec) Then
        MsgBox ("Izvēlieties iemeslu ielikšanai STOP sarakstā")
    Else

        Dim STOP_ADD As Recordset, db As Database
        Set db = CurrentDb()
        qq = "select dbo_st_Tiesibas.*, dbo_st_Iemesli.VajagKoment from dbo_st_Tiesibas INNER JOIN dbo_st_Iemesli ON dbo_st_Tiesibas.Iemesls_ID = dbo_st_Iemesli.Iemesls_ID where (dbo_st_Tiesibas.Ielikt = True and dbo_st_Tiesibas.Iemesls_ID = " & Me.kapec & " and dbo_st_Tiesibas.Lietotajs = '" & CurrentUser & "')"
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
          aa = "select * from dbo_Personas where dbo_Personas.Personas_ID = " & Me.PID
          Set Persona = db.OpenRecordset(aa)
          STOP_ADD.AddNew
           STOP_ADD!CKods = Me.PID
           STOP_ADD!Uzvards = Persona!Uzvards
           STOP_ADD!Vards = Persona!Vards
           STOP_ADD!PK = Persona!Pers_Kods
           STOP_ADD!Iemesls_ID = Me.kapec
           STOP_ADD!In_Kas = CurrentUser()
           STOP_ADD!In_Kad = Now()
           STOP_ADD!In_Kapec = pt
           STOP_ADD.Update
          STOP_ADD.Close
          Persona.Close
          Me.Requery
        End If
    End If

End Sub

Private Sub RaditAizliegumus_AfterUpdate()
    Dim Rsrc As String
    If Me.RaditStavokli = 1 Then
        If Me.RaditAizliegumus Then
            rStr = "SELECT dbo_st_STOP_fp.Aizl_Nosaukums AS Aizliegums, Min(dbo_st_STOP_fp.In_Kad) AS Ielikts"
            rStr = rStr & " FROM dbo_st_STOP_fp"
            rStr = rStr & " WHERE (((dbo_st_STOP_fp.Out_Kad) Is Null) And ((dbo_st_STOP_fp.CKods) =  " & Me.PID & " ))"
            rStr = rStr & " GROUP BY dbo_st_STOP_fp.Aizl_Nosaukums"
            rStr = rStr & " ORDER BY dbo_st_STOP_fp.Aizl_Nosaukums;"
            Me.Aizliegumi.RowSource = rStr
            Me.Aizliegumi.Requery
            Me.Refresh
            Me.FormFooter.Visible = True
            Me.FormFooter.Height = 3.4
        Else
            Me.FormFooter.Visible = False
        End If
    Else
        If Me.RaditAizliegumus Then
            rStr = "SELECT dbo_st_STOP_fp.Aizl_Nosaukums AS Aizliegums, dbo_st_STOP_fp.In_Kad AS Ielikts, dbo_st_STOP_fp.Out_Kad AS Izņemts"
            rStr = rStr & " FROM dbo_st_STOP_fp"
            rStr = rStr & " WHERE (((dbo_st_STOP_fp.CKods) = " & Me.PID & " ))"
            rStr = rStr & " ORDER BY dbo_st_STOP_fp.Aizl_Nosaukums, dbo_st_STOP_fp.In_Kad DESC , dbo_st_STOP_fp.Out_Kad DESC;"
            Me.Aizliegumi.RowSource = rStr
            Me.Aizliegumi.Requery
            Me.Refresh
            Me.FormFooter.Visible = True
            Me.FormFooter.Height = 3.4
        Else
            Me.FormFooter.Visible = False
        End If
    End If

End Sub

Private Sub RaditStavokli_AfterUpdate()
    Dim Drikst As Boolean
    Drikst = TiesibasDarbibai(20)
    If Not Drikst Then
''        MsgBox "Atvainojiet, Jums nav tiesību reģistrēt dokumentus."
        Me.RaditStavokli = 1
        Exit Sub
    End If
        Dim rStr As String
    If Me.RaditStavokli = 1 Then
        rStr = "SELECT dbo_st_Stop.ST_ID, dbo_st_Stop.CKods, dbo_st_Stop.Uzvards, dbo_st_Stop.Vards, dbo_st_Iemesli.Iem_Nosaukums, dbo_st_Stop.PK, dbo_st_Stop.Iemesls_ID, dbo_st_Stop.In_Kas, dbo_st_Stop.In_Kad, dbo_st_Stop.Out_Kas, dbo_st_Stop.Out_Kad, dbo_st_Stop.Out_Kapec"
        rStr = rStr & " FROM dbo_st_Stop LEFT JOIN dbo_st_Iemesli ON dbo_st_Stop.Iemesls_ID = dbo_st_Iemesli.Iemesls_ID"
        rStr = rStr & " WHERE (((dbo_st_Stop.CKods) = [Forms]![STOP Ar Rokam subform]![PID]) And ((dbo_st_Stop.Out_Kad) Is Null))"
        rStr = rStr & " ORDER BY  dbo_st_Iemesli.Iem_Nosaukums;"
        Me.RecordSource = rStr
        Me.Requery
        Me.RaditUzDatumu = Null
    ElseIf Me.RaditStavokli = 2 Then
        rStr = "SELECT dbo_st_Stop.ST_ID, dbo_st_Stop.CKods, dbo_st_Stop.Uzvards, dbo_st_Stop.Vards, dbo_st_Iemesli.Iem_Nosaukums, dbo_st_Stop.PK, dbo_st_Stop.Iemesls_ID, dbo_st_Stop.In_Kas, dbo_st_Stop.In_Kad, dbo_st_Stop.Out_Kas, dbo_st_Stop.Out_Kad, dbo_st_Stop.Out_Kapec"
        rStr = rStr & " FROM dbo_st_Stop LEFT JOIN dbo_st_Iemesli ON dbo_st_Stop.Iemesls_ID = dbo_st_Iemesli.Iemesls_ID"
        rStr = rStr & " WHERE (((dbo_st_Stop.CKods) = [Forms]![STOP Ar Rokam subform]![PID]) )"
        rStr = rStr & " ORDER BY dbo_st_Stop.In_Kad desc, dbo_st_Iemesli.Iem_Nosaukums;"
        Me.RecordSource = rStr
        Me.Requery
        Me.RaditUzDatumu = Null
    End If
    Me.RaditAizliegumus = False
    Me.FormFooter.Visible = False
End Sub

Private Sub RaditUzDatumu_AfterUpdate()
    Dim Drikst As Boolean
    Drikst = TiesibasDarbibai(20)
    If Not Drikst Then
''        MsgBox "Atvainojiet, Jums nav tiesību reģistrēt dokumentus."
        Me.RaditStavokli = 1
        Me.RaditUzDatumu = ""
        Exit Sub
    End If
    Me.RaditStavokli = 3
    rStr = "SELECT dbo_st_Stop.ST_ID, dbo_st_Stop.CKods, dbo_st_Stop.Uzvards, dbo_st_Stop.Vards, dbo_st_Iemesli.Iem_Nosaukums, dbo_st_Stop.PK, dbo_st_Stop.Iemesls_ID, dbo_st_Stop.In_Kas, dbo_st_Stop.In_Kad, dbo_st_Stop.Out_Kas, dbo_st_Stop.Out_Kad, dbo_st_Stop.Out_Kapec"
    rStr = rStr & " FROM dbo_st_Stop LEFT JOIN dbo_st_Iemesli ON dbo_st_Stop.Iemesls_ID = dbo_st_Iemesli.Iemesls_ID"
    rStr = rStr & " WHERE (((dbo_st_Stop.CKods) = [Forms]![STOP Ar Rokam subform]![PID]) And ((dbo_st_Stop.In_Kad) <= ([Forms]![STOP Ar Rokam subform]![RaditUzDatumu]+1)) And ((dbo_st_Stop.Out_Kad) Is Null Or (dbo_st_Stop.Out_Kad) > [Forms]![STOP Ar Rokam subform]![RaditUzDatumu]))"
    rStr = rStr & " ORDER BY dbo_st_Stop.In_Kad DESC , dbo_st_Iemesli.Iem_Nosaukums;"
    Me.RecordSource = rStr
    Me.Requery
End Sub
