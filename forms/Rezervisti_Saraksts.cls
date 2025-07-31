Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Dim Filtr(3) As String


Private Sub Filtrs()
Dim filtSum As String
filtSum = ""
    For X = 1 To 3
        If filtSum = "" And Filtr(X) <> "" Then
            filtSum = Filtr(X)
        ElseIf Filtr(X) <> "" Then
            filtSum = filtSum + " and " + Filtr(X)
        End If
    Next X
    If filtSum = "" Then
        DoCmd.ShowAllRecords
        Me.Filter = ""
    Else
        DoCmd.ApplyFilter , filtSum
    End If
End Sub

Private Sub cmdClose_Click()
    DoCmd.Close
End Sub

Private Sub cmdRestore_Click()
Dim dbs As Database
Dim rst As Recordset

msg = MsgBox("Vai jūs tiešām vēlaties atkaunot šo personu sarakstā?", vbYesNo + vbDefaultButton2, "Dzēst rezervistu")
If msg = vbYes Then
    Set dbs = CurrentDb
    Set rst = dbs.OpenRecordset("SELECT Rezerves.*, Rezerves.C_Kods FROM Rezerves " _
        & "WHERE (((Rezerves.C_kods)=" & Me.C_Kods & "));", dbOpenDynaset)
    rst.Edit
    rst!Dzests = False
    rst.Update
    rst.Close
    dbs.Close
    Me.Requery
End If
End Sub

Private Sub cmdShow_Click()
    DoCmd.Hourglass True
    If Me.cmdShow.Caption = "Rādīt dzēstos" Then
        Me.RecordSource = "qryRez_dzestie"
        Me.GotoRec.Visible = False
        Me.lblAtj.Visible = True
        Me.cmdRestore.Visible = True
        Me.cmdShow.Caption = "Rādīt esošos"
    Else
        Me.RecordSource = "qryRezerv"
        Me.lblAtj.Visible = False
        Me.cmdRestore.Visible = False
        Me.GotoRec.Visible = True
        Me.cmdShow.Caption = "Rādīt dzēstos"
    End If
    DoCmd.Hourglass False
End Sub

Private Sub combKurs_AfterUpdate()
    If Me.combKurs = "Visi" Then
        Filtr(1) = ""
    Else
       Filtr(1) = "Kurss=" + str(Me.combKurs)
    End If

    Call Filtrs
End Sub

Private Sub combLig_AfterUpdate()
    If Me.combLig = "Visi" Then
        Filtr(2) = ""
    ElseIf Me.combLig = "Jaunie" Then
        Filtr(2) = "Lig_nr>=22200"
    Else
        Filtr(2) = "isnull(Lig_nr) or lig_nr<22200"
    End If

    Call Filtrs
End Sub

Private Sub combStat_AfterUpdate()
    If Me.combStat = "Jebkurš" Then
        Filtr(3) = ""
    ElseIf Me.combStat = "Rinda" Then
        Filtr(3) = "Istaba is Null"
    Else
        Filtr(3) = "Istaba is not Null"
    End If

    Call Filtrs
End Sub

Private Sub Form_Close()
    Me.OrderByOn = False
End Sub

Private Sub Form_Current()
    Me.combLig.Requery
    Me.combStat.Requery
    Me.combKurs.Requery
    If Me.FilterOn = False Then
        Me.combLig = "Visi"
        Me.combStat = "Jebkurš"
        Me.combKurs = "Visi"
    End If
End Sub

Private Sub GotoRec_Click()
    C_ID = Me.C_Kods
    DoCmd.Close
    Forms!Rezervisti.C_Kods.SetFocus
    DoCmd.FindRecord C_ID, acEntire, False, acSearchAll, False, acCurrent
    Forms!Rezervisti.cmdNew.SetFocus
End Sub
Private Sub ActualizeStStat_Click()
    DoCmd.SetWarnings 0
    DoCmd.Hourglass 1
    Dim SStr As String

    DoCmd.RunSQL "DELETE tmp_StStat.* FROM tmp_StStat;"

'''    DoCmd.RunSQL "INSERT INTO tmp_StStat ( DL ) SELECT dbo_StStat_StudSar_iss.*, Now() AS DL FROM dbo_StStat_StudSar_iss;"
    SStr = "INSERT INTO tmp_StStat ( Stud_ID, CKods, Pers_Kods, Stp_Vards, Stp_Uzvards, StStat, StStat_Nr, DL ) "
    SStr = SStr & " SELECT dbo_StStat_StudSar_StudTab.Stud_ID, dbo_StStat_StudSar_StudTab.CKods, dbo_Personas.Pers_Kods, dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_StStat_StudSar_StudTab.StStat, dbo_StStat_StudSar_StudTab.StStat_Nr, Now() AS DL "
    SStr = SStr & " FROM dbo_StStat_StudSar_StudTab INNER JOIN dbo_Personas ON dbo_StStat_StudSar_StudTab.CKods = dbo_Personas.Personas_ID;"
    DoCmd.RunSQL SStr

    Me.Requery

    DoCmd.SetWarnings 1
    DoCmd.Hourglass 0


End Sub
