Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Aizvert_Click()
    DoCmd.Close

End Sub

Private Sub Drukat_Click()
    Dim stDocName As String

    DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70

    stDocName = "JTM_Izz_Dzivo"
    DoCmd.OpenReport stDocName, acViewPreview, , "RID=" & Me.RID

End Sub

Private Sub Izv1_Click()
    DoCmd.OpenForm ("MZAkts_Sask")
    Forms!MZAkts_Sask.OpenFrom = 4

End Sub

Private Sub Saglabat_Click()
    DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70

End Sub

Private Sub Dat_Lidz_DblClick(Cancel As Integer)
    Call Izz_Datums_DblClick(0)
End Sub

Private Sub Dat_No_DblClick(Cancel As Integer)
    Call Izz_Datums_DblClick(0)
End Sub

Private Sub Izz_Datums_DblClick(Cancel As Integer)
    DoCmd.OpenForm "JTM_Izz", , , "[RID]=" & Me.RID
End Sub

Private Sub Izz_Nr_DblClick(Cancel As Integer)
    Call Izz_Datums_DblClick(0)
End Sub

Private Sub Paraksta_Amats_DblClick(Cancel As Integer)
    Call Izz_Datums_DblClick(0)
End Sub

Private Sub Paraksta_VU_DblClick(Cancel As Integer)
    Call Izz_Datums_DblClick(0)
End Sub

Private Sub PK_DblClick(Cancel As Integer)
    Call Izz_Datums_DblClick(0)
End Sub

Private Sub Uzvards_DblClick(Cancel As Integer)
    Call Izz_Datums_DblClick(0)
End Sub

Private Sub Vards_DblClick(Cancel As Integer)
    Call Izz_Datums_DblClick(0)
End Sub
