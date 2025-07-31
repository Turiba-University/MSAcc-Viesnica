Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub ir_ES_DblClick(Cancel As Integer)
    Valsts_DblClick
End Sub

Private Sub Valsts_DblClick(Cancel As Integer)
    Dim OF As Integer
    OF = Me.OpenFrom
    If OF = 1 Then
        If Me.Valsts = "Latvijas nepilsonis" Then
            MsgBox "Šo tekstu var izmantot tikai pilsonības laukā", , "Studiju līgumi"
            Exit Sub
        End If
        Forms!Personas_dati!Valsts = Me.Valsts
        Forms!Personas_dati!LV_Valsts = Null

        If Me.Valsts = "Latvija" Then
            Forms!Personas_dati!PAplVeids.Enabled = False
            Forms!Personas_dati![Pases Nr].Enabled = False
            Forms!Personas_dati!Dok_Izdots_Datums.Enabled = False
            Forms!Personas_dati!Dok_Izdots_Vieta.Enabled = False
            Forms!Personas_dati!DokDerTermins.Enabled = False
            Forms!Personas_dati!Dok_Izdots_Iestade.Enabled = False
            Forms!Personas_dati!Pilsoniba.Enabled = False
            Forms!Personas_dati!LV_Pilsoniba.Enabled = False
            Forms!Personas_dati!ValstsIzvelePils.Enabled = False
''            Forms!Personas_dati!P_Valsts.Enabled = False
''            Forms!Personas_dati!ValstsIzvele_Dekl.Enabled = False
''            Forms!Personas_dati!P_Novads.Enabled = False
''            Forms!Personas_dati!Adr_Novads.Enabled = False
''            Forms!Personas_dati!P_Pagasts.Enabled = False
''            Forms!Personas_dati!Adr_Pagasts.Enabled = False
''            Forms!Personas_dati!P_Pilseta.Enabled = False
''            Forms!Personas_dati!Adr_Pilseta.Enabled = False
''            Forms!Personas_dati!P_Iela.Enabled = False
''            Forms!Personas_dati!P_Indekss.Enabled = False
        Else
            Forms!Personas_dati!PAplVeids.Enabled = True
            Forms!Personas_dati![Pases Nr].Enabled = True
            Forms!Personas_dati!Dok_Izdots_Datums.Enabled = True
            Forms!Personas_dati!Dok_Izdots_Vieta.Enabled = True
            Forms!Personas_dati!DokDerTermins.Enabled = True
            Forms!Personas_dati!Dok_Izdots_Iestade.Enabled = True
            Forms!Personas_dati!Pilsoniba.Enabled = True
            Forms!Personas_dati!LV_Pilsoniba.Enabled = True
            Forms!Personas_dati!ValstsIzvelePils.Enabled = True
''            Forms!Personas_dati!P_Valsts.Enabled = True
''            Forms!Personas_dati!ValstsIzvele_Dekl.Enabled = True
''            Forms!Personas_dati!P_Novads.Enabled = True
''            Forms!Personas_dati!Adr_Novads.Enabled = True
''            Forms!Personas_dati!P_Pagasts.Enabled = True
''            Forms!Personas_dati!Adr_Pagasts.Enabled = True
''            Forms!Personas_dati!P_Pilseta.Enabled = True
''            Forms!Personas_dati!Adr_Pilseta.Enabled = True
''            Forms!Personas_dati!P_Iela.Enabled = True
''            Forms!Personas_dati!P_Indekss.Enabled = True
        End If
    ElseIf OF = 2 Then
        Forms!Personas_dati!Pilsoniba = Me.Valsts
        Forms!Personas_dati!LV_Pilsoniba = Null
    ElseIf OF = 3 Then
        If Me.Valsts = "Latvijas nepilsonis" Then
            MsgBox "Šo tekstu var izmantot tikai pilsonības laukā", , "Studiju līgumi"
            Exit Sub
        End If
        Forms![Jauns ligums]!IzglIeguta = Me.Valsts
        Forms![Jauns ligums]!IzglIeguta_LV = Null
    ElseIf OF = 4 Then
        If Me.Valsts = "Latvijas nepilsonis" Then
            MsgBox "Šo tekstu var izmantot tikai pilsonības laukā", , "Studiju līgumi"
            Exit Sub
        End If
        Forms![Jauns ligums]!VI_valsts = Me.Valsts
        Forms![Jauns ligums]!VI_LV = Null
    ElseIf OF = 5 Then
        If Me.Valsts = "Latvijas nepilsonis" Then
            MsgBox "Šo tekstu var izmantot tikai pilsonības laukā", , "Studiju līgumi"
            Exit Sub
        End If
        Forms![Personas_dati]!P_Valsts = Me.Valsts
        Forms![Personas_dati]!LV_D_Valsts = Null
    ElseIf OF = 6 Then
        If Me.Valsts = "Latvijas nepilsonis" Then
            MsgBox "Šo tekstu var izmantot tikai pilsonības laukā", , "Studiju līgumi"
            Exit Sub
        End If
        Forms![Personas_dati_abs]!A_Valsts = Me.Valsts
        Forms![Personas_dati_abs]!LV_D_Valsts = Null
    End If
    DoCmd.Close
    If OF = 4 Then
        If Not IsNull(Forms![Jauns ligums]!VidIzgl_DokDat) Then
            Forms![Jauns ligums]!VidIzgl_DokDat = Null
            MsgBox "Lūdzu ievadiet vēlreiz vidējās izglītības dokumenta datumu.", , "Studiju līgumi"
            Forms![Jauns ligums]!VidIzgl_DokDat.SetFocus
        End If
    End If
End Sub
