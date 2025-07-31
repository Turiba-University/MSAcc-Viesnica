Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database


Private Sub Dzest_Click()
    Dim db As Database
    Dim VIrst As Recordset, VIstr As String

    If Forms!LigumsViesn!LigumsViesnIstabinas_InvIst_sub!VLI_ID > 0 Then
        VIstr = " SELECT dbo_viesn_Ligumi_Inv.InvStat FROM dbo_viesn_Ligumi_Inv "
        VIstr = VIstr & " WHERE (((dbo_viesn_Ligumi_Inv.VLI_ID)=" & Forms!LigumsViesn!LigumsViesnIstabinas_InvIst_sub!VLI_ID & "));"

        Set db = CurrentDb

        Set VIrst = db.OpenRecordset(VIstr, dbOpenDynaset)
        VIrst.Edit
        VIrst!InvStat = -1
        VIrst.Update
        Me.Requery
    End If

End Sub

Private Sub Form_AfterUpdate()
'''    Forms!LigumsViesn!MAKSAJUMIbeta!IST_NR.Requery
End Sub

Private Sub Inv_sar_Click()
    DoCmd.OpenForm "LigumsViesn_Inv_sar"
    Forms!LigumsViesn_Inv_sar!OpenFrom = 10
    Forms!LigumsViesn_Inv_sar.RecordSource = "SELECT dbo_Viesn_Inventars.Inv_ID, dbo_Viesn_Inventars.Inv_Nos, dbo_Viesn_Inventars.Inv_Cena FROM dbo_Viesn_Inventars WHERE (((dbo_Viesn_Inventars.InvTips)=1));"
    Forms!LigumsViesn_Inv_sar.Requery
    Forms!LigumsViesn_Inv_sar!InvNos.Caption = "Inventārs istabā"
End Sub


Private Sub PA_Nos_Click()
'''    If IsNull(Me.PA_Nos) Then
'''        Forms.LigumsViesn.LigumsViesnIstabinas_PASar_Samaksa_sub.Form.FilterOn = False
'''    Else
'''        Forms.LigumsViesn.LigumsViesnIstabinas_PASar_Samaksa_sub.Form.Filter = " [PA_Nos] = """ & Me.PA_Nos & """"
'''        Forms.LigumsViesn.LigumsViesnIstabinas_PASar_Samaksa_sub.Form.FilterOn = True
'''    End If
End Sub

Private Sub InvSanem_Atdots_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim db As Database
    Dim VIrst As Recordset, VIstr As String

    If Me.VLI_ID > 0 Then
        VIstr = " SELECT dbo_viesn_Ligumi_Inv.InvStat FROM dbo_viesn_Ligumi_Inv "
        VIstr = VIstr & " WHERE (((dbo_viesn_Ligumi_Inv.VLI_ID)=" & Me.VLI_ID & "));"

        Set db = CurrentDb

        Set VIrst = db.OpenRecordset(VIstr, dbOpenDynaset)
        VIrst.Edit
        VIrst!InvStat = 0
        VIrst.Update
        Me.Requery
    End If
End Sub

Private Sub InvSanem_Bojats_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim db As Database
    Dim VIrst As Recordset, VIstr As String

    If Me.VLI_ID > 0 Then
        VIstr = " SELECT dbo_viesn_Ligumi_Inv.InvStat FROM dbo_viesn_Ligumi_Inv "
        VIstr = VIstr & " WHERE (((dbo_viesn_Ligumi_Inv.VLI_ID)=" & Me.VLI_ID & "));"

        Set db = CurrentDb

        Set VIrst = db.OpenRecordset(VIstr, dbOpenDynaset)
        VIrst.Edit
        VIrst!InvStat = -11
        VIrst.Update
        Me.Requery
    End If

End Sub

Private Sub InvSanem_Pazaudets_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Dim db As Database
    Dim VIrst As Recordset, VIstr As String

    If Me.VLI_ID > 0 Then
        VIstr = " SELECT dbo_viesn_Ligumi_Inv.InvStat FROM dbo_viesn_Ligumi_Inv "
        VIstr = VIstr & " WHERE (((dbo_viesn_Ligumi_Inv.VLI_ID)=" & Me.VLI_ID & "));"

        Set db = CurrentDb

        Set VIrst = db.OpenRecordset(VIstr, dbOpenDynaset)
        VIrst.Edit
        VIrst!InvStat = -12
        VIrst.Update
        Me.Requery
    End If
End Sub
