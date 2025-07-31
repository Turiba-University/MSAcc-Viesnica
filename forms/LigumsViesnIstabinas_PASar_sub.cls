Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database


Private Sub Form_AfterUpdate()
    Forms!LigumsViesn!MAKSAJUMIbeta!IST_NR.Requery
End Sub

Private Sub Istaba_AfterUpdate()
    If IsNull(Me.PADat_No) Then Me.PADat_No = Date
End Sub

Private Sub PA_Nos_Click()
    If IsNull(Me.PA_Nos) Then
        Forms.LigumsViesn.LigumsViesnIstabinas_PASar_Samaksa_sub.Form.FilterOn = False
    Else
        Forms.LigumsViesn.LigumsViesnIstabinas_PASar_Samaksa_sub.Form.Filter = " [PA_Nos] = """ & Me.PA_Nos & """"
        Forms.LigumsViesn.LigumsViesnIstabinas_PASar_Samaksa_sub.Form.FilterOn = True
    End If
End Sub

Private Sub PA_sar_Click()
    DoCmd.OpenForm "LigumsViesn_PA_sar"
    Forms!LigumsViesn_PA_sar!OpenFrom = 10
End Sub
