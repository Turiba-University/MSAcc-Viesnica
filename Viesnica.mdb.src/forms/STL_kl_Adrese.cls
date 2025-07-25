Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database



Private Sub Pagasts_DblClick(Cancel As Integer)
    Call Novads_DblClick(0)
End Sub

Private Sub Pilseta_DblClick(Cancel As Integer)
    Call Novads_DblClick(0)
End Sub

Private Sub Novads_DblClick(Cancel As Integer)
    If Me.OF = 1 Then
        Forms!Personas_dati!P_Novads = Me.Novads
        DoCmd.Close
    ElseIf Me.OF = 2 Then
        Forms!Personas_dati!P_Novads = Me.Novads
        Forms!Personas_dati!P_Pagasts = Me.Pagasts
        DoCmd.Close
    ElseIf Me.OF = 3 Then
        If Me.PilsTips = 1 Then
            Forms!Personas_dati!P_Novads = Null
        Else
            Forms!Personas_dati!P_Novads = Me.Novads
        End If
        Forms!Personas_dati!P_Pagasts = Me.Pagasts
        Forms!Personas_dati!P_Pilseta = Me.PILSETA
        DoCmd.Close
    ElseIf Me.OF = 61 Then
        Forms!Personas_dati_abs!A_Novads = Me.Novads
        DoCmd.Close
    ElseIf Me.OF = 62 Then
        Forms!Personas_dati_abs!A_Novads = Me.Novads
        Forms!Personas_dati_abs!A_Pagasts = Me.Pagasts
        DoCmd.Close
    ElseIf Me.OF = 63 Then
        If Me.PilsTips = 1 Then
            Forms!Personas_dati_abs!A_Novads = Null
        Else
            Forms!Personas_dati_abs!A_Novads = Me.Novads
        End If
        Forms!Personas_dati_abs!A_Pagasts = Me.Pagasts
        Forms!Personas_dati_abs!A_Pilseta = Me.PILSETA
        DoCmd.Close
    End If
End Sub
