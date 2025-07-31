Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Valstis_Click()
    DoCmd.OpenForm "Valstis_Ligumos", acFormDS
    Forms!Valstis_Ligumos!OpenFrom = 2
End Sub
