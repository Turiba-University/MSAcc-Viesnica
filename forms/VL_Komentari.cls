Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database



Private Sub Aizvert_Click()
    DoCmd.Close
End Sub

Private Sub Form_Close()
    Forms!LigumsViesn!Child145.Requery
    Me.AllowAdditions = False
    Me.DataEntry = False
End Sub


Private Sub Kateg_AfterUpdate()
    If Me.Kateg = 2 Then
        Me.EndDate = Date + 3
        Me.Status = 1
    End If
End Sub

Private Sub Komentars_AfterUpdate()
    If Not IsNull(Me.Komentars.OldValue) Then
        Dim atb
        atb = MsgBox("Vai esat pārliecināti, ka gribat LABOT komentāra tekstu?", vbYesNo + vbDefaultButton2, "JTM līgumi")
        If atb = vbNo Then
            Me.Komentars = Me.Komentars.OldValue
        End If
    End If

End Sub
