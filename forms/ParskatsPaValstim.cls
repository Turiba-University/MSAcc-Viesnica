Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database


Private Sub Valsts__DblClick(Cancel As Integer)
    DoCmd.OpenForm "Parskats_LabotValsti", acFormDS, , "[Valsts] = """ & Me.Valsts & """"
End Sub
