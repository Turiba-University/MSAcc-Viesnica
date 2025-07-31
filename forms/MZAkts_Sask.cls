Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Aizvert_Click()
    DoCmd.Close
End Sub
Private Sub Ielikt_Click()
    If Me.OpenFrom = 1 Then
        Forms!MZAkts.KomAmats1 = Me.Sask_Amats
        Forms!MZAkts.KomAmatsENG1 = Me.Sask_Amats_eng
        Forms!MZAkts.KomVU1 = Me.Sask_VU
    ElseIf Me.OpenFrom = 2 Then
        Forms!MZAkts.KomAmats2 = Me.Sask_Amats
        Forms!MZAkts.KomAmatsENG2 = Me.Sask_Amats_eng
        Forms!MZAkts.KomVU2 = Me.Sask_VU
    ElseIf Me.OpenFrom = 3 Then
        Forms!MZAkts.KomAmats3 = Me.Sask_Amats
        Forms!MZAkts.KomAmatsENG3 = Me.Sask_Amats_eng
        Forms!MZAkts.KomVU3 = Me.Sask_VU
    ElseIf Me.OpenFrom = 4 Then
        Forms!JTM_Izz.Paraksta_Amats = Me.Sask_Amats
        Forms!JTM_Izz.Paraksta_Amats_eng = Me.Sask_Amats_eng
        Forms!JTM_Izz.Paraksta_VU = Me.Sask_VU
    End If
    DoCmd.Close
End Sub

Private Sub Sask_Amats_DblClick(Cancel As Integer)
    Call Ielikt_Click
End Sub

Private Sub Sask_VU_DblClick(Cancel As Integer)
    Call Ielikt_Click
End Sub
