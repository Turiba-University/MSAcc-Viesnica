Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database


Private Sub Aizvert_Click()
    DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70
    Forms!LigumsViesn!LigumsViesnIstabinas_MZAkti_sub.Requery
    DoCmd.Close
End Sub

Private Sub Command45_Click()
    DoCmd.OpenForm ("MZAkts_Sask")
    Forms!MZAkts_Sask.OpenFrom = 2
End Sub

Private Sub Command46_Click()
    DoCmd.OpenForm ("MZAkts_Sask")
    Forms!MZAkts_Sask.OpenFrom = 3
End Sub

Private Sub Drukat_Click()
On Error GoTo Err_Drukat_Click

    Dim stDocName As String

    DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70

    If Me.IzdrukasValoda = 1 Then
        stDocName = "MZAkts"
    Else
        stDocName = "MZAkts_eng"
    End If

''    DoCmd.OpenReport stDocName, acPreview
    DoCmd.OpenReport stDocName, acViewPreview, , "RID=" & Me.RID

Exit_Drukat_Click:
    Exit Sub

Err_Drukat_Click:
    MsgBox Err.Description
    Resume Exit_Drukat_Click

End Sub
Private Sub Izv1_Click()
    DoCmd.OpenForm ("MZAkts_Sask")
    Forms!MZAkts_Sask.OpenFrom = 1
End Sub

Private Sub Stat_AfterUpdate()
    Dim a
    If Me.Stat = -1 Then
        a = MsgBox("Vai tiešām vēlaties anulēt MZ aktu?", vbQuestion + vbYesNo, "JTM")
        If a = vbNo Then
            Me.Stat = 0
            Exit Sub
        End If
    End If
End Sub
