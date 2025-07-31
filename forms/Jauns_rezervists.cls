Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
     Option Compare Database

Private Sub cmdCancel_Click()
    Me.Undo
    DoCmd.Close
End Sub

Private Sub cmdSave_Click()
Dim dbs As Database
Dim rst As Recordset

DoCmd.Hourglass True
Set dbs = CurrentDb
If Me.Caption = "Jauns" Then
''    Set rst = dbs.OpenRecordset("SELECT Rezerves.*, Rezerves.C_Kods FROM Rezerves WHERE (((dbo_Viesn_Rezervesana.Rez_MG)=" & Me.R_MG & ") and ((Rezerves.C_kods)=" & Me.C_Kods & "));", dbOpenDynaset)
    Set rst = dbs.OpenRecordset("SELECT dbo_Viesn_Rezervesana.Istaba, dbo_Viesn_Rezervesana.CKods, dbo_Viesn_Rezervesana.Dzests FROM dbo_Viesn_Rezervesana WHERE (((dbo_Viesn_Rezervesana.Rez_MG)=" & Me.R_MG & ") and ((dbo_Viesn_Rezervesana.CKods)=" & Me.CKods & ") AND ((dbo_Viesn_Rezervesana.Dzests)=0));", DB_OPEN_DYNASET, dbSeeChanges)
    If rst.RecordCount > 0 Then
        MsgBox "Persona ir rezervistu sarakstā. Istaba " & rst!Istaba, , "Rezervisti"
        rst.Close
        dbs.Close
        Me.Undo
        DoCmd.Close
        DoCmd.Hourglass False
        Exit Sub
    End If
    Set rst = dbs.OpenRecordset("dbo_Viesn_Rezervesana", DB_OPEN_DYNASET, dbSeeChanges)

        rst.AddNew
        rst!Istaba = Me.Istaba
        rst!CKods = Me.CKods
        'If Me.C_Kods > 0 Then rst!Lig_Nr = Me.Lig_Nr Else rst!Lig_Nr = -200
        rst!Lig_Dat = Me.Lig_Dat
        rst!Piezimes = Me.Piezimes
        rst!Tips = Me.Tips
        rst!Rez_MG = Me.R_MG
        rst!Ievadits = Now()
        rst!Dzests = False
        rst.Update
        rst.Close
    If Me.CKods > 0 Then
''        If Me.Tag <> Me.Tel1 Then
''            Set rst = dbs.OpenRecordset("SELECT Personas.*, Personas.[Personas ID] FROM Personas WHERE (((Personas.[Personas ID])=" & Me.C_Kods & "));", dbOpenDynaset, dbSeeChanges)
''            If rst.RecordCount = 1 Then
''                rst.Edit
''                rst!Tel1 = Me.Tel1
''                rst.Update
''            End If
''            rst.Close
''        End If
    End If
        dbs.Close


        If Me.OpenFrom = 2 Then
            DoCmd.Close
            Forms!Rezervisti_PersRezerv.Requery
        Else
            DoCmd.Close
            Forms!Rezervisti.Requery
            DoCmd.GoToRecord , , acLast
        End If
Else
    Set rst = dbs.OpenRecordset("SELECT dbo_Viesn_Rezervesana.* FROM dbo_Viesn_Rezervesana WHERE (((dbo_Viesn_Rezervesana.Rez_MG)=" & Me.R_MG & ") and ((dbo_Viesn_Rezervesana.CKods)=" & Me.CKods & ") AND ((dbo_Viesn_Rezervesana.Dzests)=0));", DB_OPEN_DYNASET, dbSeeChanges)

        rst.Edit
        rst!Istaba = Me.Istaba
        rst!Lig_Dat = Me.Lig_Dat
        rst!Piezimes = Me.Piezimes
        rst!Rez_MG = Me.R_MG
        rst!Tips = Me.Tips
        rst.Update
    If Me.CKods > 0 Then
        If Me.Tag <> Me.Tel1 Then
            rst.Close
            Set rst = dbs.OpenRecordset("SELECT Personas.*, Personas.[Personas ID] FROM Personas WHERE (((Personas.[Personas ID])=" & Me.CKods & "));", dbOpenDynaset, dbSeeChanges)
            If rst.RecordCount = 1 Then
                rst.Edit
                rst!Tel1 = Me.Tel1
                rst.Update
            End If
        End If
    End If
        rst.Close
        dbs.Close

        DoCmd.Close
        curec = Forms!Rezervisti.CurrentRecord
        Forms!Rezervisti.Requery
        DoCmd.GoToRecord , , acGoTo, curec
End If
DoCmd.Hourglass False
End Sub

Private Sub Form_Open(Cancel As Integer)
    Me.Istaba.Requery
    Ist_oldVal = Me.Istaba
End Sub

Private Sub Istaba_AfterUpdate()
If Me.Istaba = Me.lbl_ist_nr.Caption Then
    Exit Sub
Else
    If Me.Istaba.Column(3) <= 0 Then
        msg = MsgBox("ISTABĀ NAV VIETU!" & Chr(13) & "Vai jūs tiešām izvēlēsieties šo istabu?", vbYesNo + vbDefaultButton2, "Istaba")
        If msg = vbNo Then
            Me.Istaba = Me.lbl_ist_nr.Caption
        End If
    End If
End If
End Sub

Private Sub R_MG_AfterUpdate()
    Me.Istaba.Requery
End Sub
