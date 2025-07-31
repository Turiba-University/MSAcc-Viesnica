Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Aizvert_Click()
On Error GoTo Err_Aizvert_Click


    DoCmd.Close

Exit_Aizvert_Click:
    Exit Sub

Err_Aizvert_Click:
    MsgBox Err.Description
    Resume Exit_Aizvert_Click

End Sub

Private Sub Drukat_ENG_Click()
    DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70
    If IsNull(Me.JTMPazID) Then
        MsgBox "Jāizvēlas drukājamais paziņojums.", , "JTM"
        Exit Sub
    End If
    If IsNull(Me.Termins) Then
        MsgBox "Jānorāda termiņš!", , "JTM"
        Exit Sub
    End If

    If Me.Tips = 2 Then
        DoCmd.OpenReport "JTM_Pazinojums_eng", acViewPreview, , "JTMPazID=" & Me.JTMPazID
    Else
        DoCmd.OpenReport "JTM_Bridinajums_eng", acViewPreview, , "JTMPazID=" & Me.JTMPazID
    End If
End Sub

Private Sub Drukat_LV_Click()
    DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70
    If IsNull(Me.JTMPazID) Then
        MsgBox "Jāizvēlas drukājamais paziņojums.", , "JTM"
        Exit Sub
    End If
    If IsNull(Me.Termins) Then
        MsgBox "Jānorāda termiņš!", , "JTM"
        Exit Sub
    End If

    If Me.Tips = 2 Then
        DoCmd.OpenReport "JTM_Pazinojums", acViewPreview, , "JTMPazID=" & Me.JTMPazID
    Else
        DoCmd.OpenReport "JTM_Bridinajums", acViewPreview, , "JTMPazID=" & Me.JTMPazID
    End If
End Sub

Private Sub Paraksta_AfterUpdate()
    Me.Paraksta_VU = Me.Paraksta.Column(0)
    Me.Paraksta_Amats = Me.Paraksta.Column(1)
    Me.Paraksta_Amats_eng = Me.Paraksta.Column(2)
End Sub

Private Sub Sagatavoja_lst_AfterUpdate()
    Me.Sagatavoja = Me.Sagatavoja_lst.Column(0)
End Sub
