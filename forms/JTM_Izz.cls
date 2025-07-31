Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Aizvert_Click()
    DoCmd.Close

End Sub

Private Sub Dat_Lidz_AfterUpdate()
    If Not IsNull(Me.DAT_LIDZ) Then
        If Me.DAT_LIDZ < Me.DAT_NO Then
            MsgBox "Šim datumam jābūt lielākam par 'Dzīvos JTM no' datumu.", vbExclamation + vbOKOnly, "JTM"
            Me.DAT_LIDZ = Null
            Exit Sub
        End If
    End If
End Sub

Private Sub Drukat_Click()
    Dim stDocName As String

    Call Saglabat_Click

    If Me.Stat = 1 Then
        If Me.IzdrVal = 1 Then
            stDocName = "JTM_Izz_Dzivo"
        ElseIf Me.IzdrVal = 2 Then
            stDocName = "JTM_Izz_Dzivo_eng"
        End If
        DoCmd.OpenReport stDocName, acViewPreview, , "RID=" & Me.RID
    End If

End Sub

Private Sub Izv1_Click()
    DoCmd.OpenForm "MZAkts_Sask", , , "[par_Izzinas]=-1"

    Forms!MZAkts_Sask.OpenFrom = 4

End Sub

Private Sub Saglabat_Click()
    If IsNull(Me.Izz_Nr) Or IsNull(Me.DAT_LIDZ) Or IsNull(Me.Paraksta_Amats) Or IsNull(Me.Paraksta_VU) Then
        MsgBox "Lai saglabātu izziņu ir jābūt norādītam līdz kuram datumam uzturas JTM, izziņas nr un izziņas parakstītājs.", vbExclamation + vbOKOnly, "JTM"
        Exit Sub
    End If
    Me.Stat = 1
    DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70

End Sub
