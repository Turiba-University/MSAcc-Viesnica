Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Dim ma

Private Sub Command64_Click()
    DoCmd.Close
End Sub

Private Sub Slegt_Ligumu_Click()




    If IsNull(Me.Vard) Or IsNull(Me.Uzva) Then
        MsgBox "Aizpildiet obligātos laukus - Nosaukums, Reģistrācijas Nr"
''        Me.okey = Click
        Exit Sub
    End If


    Dim scrcontrol, KONTROLE, kontrole1 As Control, PID As Long
''    If Me.Jaun Then
        Dim db As Database, rst As Recordset, e As String, atb
        Set db = CurrentDb()

        Me.Aud_Comment = ""
        e = "SELECT dbo_Personas.Personas_ID, dbo_Personas.Uzvards FROM dbo_Personas "
        e = e & "WHERE dbo_Personas.Uzvards = '" & Me.Uzva & "';"
        Set rec = db.OpenRecordset(e, dbOpenSnapshot, dbSeeChanges)
        If rec.RecordCount > 0 Then
            If (rec!Personas_ID <> Me.Personas_ID Or IsNull(Me.Personas_ID)) Then
                atb = InputBox("Juridiska persona ar šādu reģistrācijas Nr ir reģistrēta bāzē. Ievadiet pamatojumu, kāpēc persona tiek reģistrēta atkārtoti", "JTM līgumi")
                If atb = "" Then
                    rec.Close
                    DoCmd.Hourglass 0
                    Exit Sub
                Else
                    Me.Aud_Comment = atb
                End If
            End If
        End If
''    End If

    DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70

        Forms!LigumsViesn.Maksatajs_PID = Me.[Personas ID]
        Forms!LigumsViesn.Maksatajs_txt = Me.Vard


        DoCmd.Close
End Sub
