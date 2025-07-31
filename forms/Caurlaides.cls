Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database   'Use database order for string comparisons


Private Sub Atgriezties_Click()
DoCmd.Close A_FORM, "Caurlaides"

End Sub

Private Sub Caurlaide_Enter()
    If IsNull(Me.[Caurlaide]) Then
        Forms![Viesnīca]![Caurlaide].Locked = False
    Else
        Forms![Viesnīca]![Caurlaide].Locked = True 'RAKSTĪTĀJS NAV UN NEVAR LABOT LAUKU
    End If
End Sub


Private Sub Derīgums_Enter()
    If USA = 2 Then
        Forms![Viesnīca]![derīgums].Locked = False
    Else
        Forms![Viesnīca]![derīgums].Locked = True 'RAKSTĪTĀJS NAV UN NEVAR LABOT LAUKU
    End If
End Sub

Private Sub Drukāt_Click()
On Error GoTo drukāt_error
DoCmd.OpenReport "Viesn_caurlaide", A_PREVIEW
Me.Drukāt = Click
Exit Sub
drukāt_error:
Me.Drukāt = Click
MsgBox Error
Exit Sub
End Sub



Private Sub GrupaF_AfterUpdate()
    If Not IsNull(grupaf) Then
        DoCmd.ApplyFilter , "[Grupa]=Forms![Viesnīca]![GrupaF]"
        Me![Vārds].SetFocus
    Else
        DoCmd.ShowAllRecords
        Me![Vārds].SetFocus
    End If
End Sub

Private Sub Ierakstīt_Click()
Me.Ierakstīt = Click
If IsNull(Me.IstNr) Then
    MsgBox " Ierakstiet istabas numuriņu!"
    IstNr.SetFocus
    Exit Sub
End If
Dim MyDB As Database, kursi As Recordset, Jauns As Recordset
Set MyDB = DBEngine.Workspaces(0).Databases(0)
Set Jauns = MyDB.OpenRecordset("dbo_viesn_Caurlaides", dbOpenDynaset, dbSeeChanges)              ' Open table.
        Jauns.AddNew
        Jauns!Vards = Me.Vards
        Jauns!Uzvards = Me.Uzvards
        Jauns!IstNr = Me.IstNr
        Jauns!Stavoklis = Me.Stavoklis
        Jauns!Derigums = Me.Derigums
        Select Case UCase(CurrentUser())
            Case Is = "SANDRAK"
                Jauns!ADMINIST = "S.Koļesņikova"
            Case Is = "AINA"
                Jauns!ADMINIST = "A.Grabovska"
            Case Is = "DIANA"
                Jauns!ADMINIST = "D.Dobele"
            Case Is = "LARISA"
                Jauns!ADMINIST = "L.Zelča"
            Case Is = "ILUTA"
                Jauns!ADMINIST = "I.Dūdiņa"
            Case Is = "MARTINS"
                Jauns!ADMINIST = "M.Lūsis"
            Case Else
                Jauns!ADMINIST = "Administrators"
        End Select
        Jauns!Pers_ID = Me.Pers_ID
        Jauns!IzdDat = Format$(Date, "dd-mmm-yy")
        Jauns!CaurlNr = Me.CaurlNr
        Jauns.Update
    Me.RecordSource = "dbo_viesn_Caurlaides"
    Me!Anul.Visible = True
    Me!Vards.ControlSource = "Vards"
    Me!Uzvards.ControlSource = "Uzvards"
    Me!Pers_ID.ControlSource = "Pers_ID"
    Me!Stavoklis.ControlSource = "Stavoklis"
    Me!IstNr.ControlSource = "IstNr"
    Me!Derigums.ControlSource = "Derigums"
    Me!Anul.ControlSource = "Anul"
    Me!CaurlNr.ControlSource = "Caurlnr"
Me.Ierakstīt.Enabled = False
Me!Drukāt.Enabled = True
DoCmd.GoToControl "Drukāt"
Me.DefaultEditing = 4
DoCmd.GoToRecord A_FORM, "Caurlaides", A_LAST
End Sub

Private Sub Istabas_numurs_Enter()
If USA = 2 Then
    Forms![Viesnīca]![Istabas Numurs].Locked = False
        Else: Forms![Viesnīca]![Istabas Numurs].Locked = True 'RAKSTĪTĀJS NAV UN NEVAR LABOT LAUKU

End If

End Sub


Private Sub Stavoklis_Enter()
If Me.Ierakstīt.Enabled = False Then Me.Stavoklis.Locked = True Else Me.Stavoklis.Locked = False

End Sub


Private Sub Uzvards_Enter()
If Me.Ierakstīt.Enabled = False Then Me.Uzvards.Locked = True Else Me.Uzvards.Locked = False
End Sub


Private Sub Vards_Enter()
If Me.Ierakstīt.Enabled = False Then Me.Vards.Locked = True Else Me.Vards.Locked = False
End Sub

Private Sub Vārds_Enter()
If USA = 2 Then
    Forms![Viesnīca]![Vārds].Locked = False
        Else: Forms![Viesnīca]![Vārds].Locked = True 'RAKSTĪTĀJS NAV UN NEVAR LABOT LAUKU

End If

End Sub
