Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Valsts_DblClick(Cancel As Integer)
    If Me.OpenFrom = 1 Then
        Forms!LigumsViesn.Valsts = Me.Valsts
    ElseIf Me.OpenFrom = 2 Then
        Forms!LigumsViesn!LigumsViesnIstValstis_sub!Valsts = Me.Valsts
    End If
    DoCmd.Close
End Sub
