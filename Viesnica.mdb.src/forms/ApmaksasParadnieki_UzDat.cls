Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Aizvert_Click()
On Error GoTo Err_Aizvert_Click


    If Me.Dirty Then Me.Dirty = False
    DoCmd.Close

Exit_Aizvert_Click:
    Exit Sub

Err_Aizvert_Click:
    MsgBox Err.Description
    Resume Exit_Aizvert_Click

End Sub
Private Sub IeliktSTOP_Click()
    Dim STOP_ADD As Recordset, rec  As Recordset, db As Database, Iem_ID, a
    Set db = CurrentDb()
    Iem_ID = 8 'STOP iemesls


    qq = "SELECT tmp_ApmParadnieki_UzDat.PID, tmp_ApmParadnieki_UzDat.Vards, tmp_ApmParadnieki_UzDat.Uzvards, tmp_ApmParadnieki_UzDat.Pers_Kods"
    qq = qq & " FROM tmp_ApmParadnieki_UzDat"
    qq = qq & " WHERE (((tmp_ApmParadnieki_UzDat.Mark)=-1));"
    Set rec = db.OpenRecordset(qq, DB_OPEN_SNAPSHOT, dbSeeChanges)
    If Not rec.RecordCount > 0 Then
         MsgBox "Nav atzīmēta neviena persona ielikšanai STOP sarakstā.", vbOKOnly, "JTM"
         Exit Sub
    Else
        rec.MoveLast
        a = MsgBox("STOP sarakstā tiks ievietotas " & rec.RecordCount & " personas.", vbYesNo, "JTM")
        If a = vbNo Then
            Exit Sub
        End If
    End If

    Set STOP_ADD = db.OpenRecordset("dbo_st_Stop", DB_OPEN_DYNASET, dbSeeChanges)

    rec.MoveFirst
    Do While Not rec.EOF
          Dim aa As String
          STOP_ADD.AddNew
           STOP_ADD!CKods = rec!PID
           STOP_ADD!Uzvards = rec!Uzvards
           STOP_ADD!Vards = rec!Vards
           STOP_ADD!PK = rec!Pers_Kods
           STOP_ADD!Iemesls_ID = Iem_ID
           STOP_ADD!In_Kas = CurrentUser()
           STOP_ADD!In_Kad = Now()
           STOP_ADD.Update

        rec.MoveNext
    Loop
    STOP_ADD.Close
    rec.Close


    DoCmd.SetWarnings 0
    DoCmd.RunSQL "DELETE tmp_ApmParadnieki_UzDat.Lietotajs, * FROM tmp_ApmParadnieki_UzDat;"
    DoCmd.OpenQuery "ApmaksasParadnieki_Uzdatumu_app"
    DoCmd.SetWarnings 1

    Me.ApmaksasParadnieki_Uzdatumu.Requery

End Sub
