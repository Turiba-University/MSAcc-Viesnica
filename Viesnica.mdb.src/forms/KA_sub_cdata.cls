Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Artikuls_AfterUpdate()
    Me.Logins = CurrentUser
End Sub

Private Sub Cena_AfterUpdate()
    Me.Logins = CurrentUser
    Me.Summa = Int((Me.Daudzums * Me.Cena + 0.005005) * 100) / 100
End Sub

Private Sub Daudzums_AfterUpdate()
    Me.Logins = CurrentUser
    Me.Summa = Int((Me.Daudzums * Me.Cena + 0.005005) * 100) / 100
End Sub

Private Sub Form_Open(Cancel As Integer)
''    Call EventRec("Form", Me.Name, CurrentUser())
End Sub

Private Sub Nodala_AfterUpdate()
    Me.Logins = CurrentUser
End Sub

Private Sub Nodala_txt_AfterUpdate()
    Me.Logins = CurrentUser
End Sub

Private Sub Summa_AfterUpdate()
    Me.Logins = CurrentUser
    Me.Summa = Int((Me.Daudzums * Me.Cena + 0.005005) * 100) / 100
End Sub
