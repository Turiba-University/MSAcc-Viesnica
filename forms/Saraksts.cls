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

msg = MsgBox("Vai jūs tiešām vēlaties atjaunot šo personu rezervistu sarakstā?", vbYesNo + vbDefaultButton2, "Dzēst rezervistu")
If msg = vbYes Then
    Set dbs = CurrentDb
    Set rst = dbs.OpenRecordset("SELECT dbo_Viesn_Rezervesana.* FROM dbo_Viesn_Rezervesana " _
        & "WHERE (((dbo_Viesn_Rezervesana.V_Rez_RID)=" & Me.V_Rez_RID & "));", DB_OPEN_DYNASET, dbSeeChanges)
    rst.Edit
    rst!Dzests = 0
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
        Me.SlegtLigumu.Visible = False
        Me.lblAtj.Visible = True
        Me.cmdRestore.Visible = True
        Me.cmdShow.Caption = "Rādīt esošos"
    Else
        Me.RecordSource = "qryRezerv"
        Me.lblAtj.Visible = False
        Me.cmdRestore.Visible = False
        Me.GotoRec.Visible = True
        Me.SlegtLigumu.Visible = True
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
    C_ID = Me.CKods
    DoCmd.Close
    Forms!Rezervisti.CKods.SetFocus
    DoCmd.FindRecord C_ID, acEntire, False, acSearchAll, False, acCurrent
    Forms!Rezervisti.cmdNew.SetFocus
End Sub
Private Sub ActualizeStStat_Click()
    DoCmd.SetWarnings 0
    DoCmd.Hourglass 1
    Dim SStr As String
    Dim db As Database, SRst As Recordset, StRst As Recordset, SttStr As Recordset
    Set db = CurrentDb

    DoCmd.RunSQL "DELETE tmp_StStat.* FROM tmp_StStat;"

'''    DoCmd.RunSQL "INSERT INTO tmp_StStat ( DL ) SELECT dbo_StStat_StudSar_iss.*, Now() AS DL FROM dbo_StStat_StudSar_iss;"
    SStr = "INSERT INTO tmp_StStat ( Stud_ID, CKods, Pers_Kods, Stp_Vards, Stp_Uzvards, StStat, StStat_Nr, DL ) "
    SStr = SStr & " SELECT dbo_StStat_StudSar_StudTab.Stud_ID, dbo_StStat_StudSar_StudTab.CKods, dbo_Personas.Pers_Kods, dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_StStat_StudSar_StudTab.StStat, dbo_StStat_StudSar_StudTab.StStat_Nr, Now() AS DL "
    SStr = SStr & " FROM dbo_StStat_StudSar_StudTab INNER JOIN dbo_Personas ON dbo_StStat_StudSar_StudTab.CKods = dbo_Personas.Personas_ID;"
    DoCmd.RunSQL SStr

    DoCmd.RunSQL "DELETE tmp_RezStudStat.* FROM tmp_RezStudStat;"

    DoCmd.OpenQuery "Rezerv_StudStat"


''    SStr = "SELECT tmp_StStat.Stud_ID"
''    SStr = SStr & " FROM dbo_Viesn_Rezervesana INNER JOIN tmp_StStat ON dbo_Viesn_Rezervesana.CKods = tmp_StStat.CKods"
''    SStr = SStr & " WHERE (((tmp_StStat.Stud_ID)>0));"
''
''    Set SRst = db.OpenRecordset(SStr, dbOpenSnapshot, dbSeeChanges)
''    SRst.MoveFirst
''
''    Do While Not SRst.EOF
''        SStr = "SELECT dbo_stl_Stud_LastMGR_Data.MacGads"
''        SStr = SStr & " FROM dbo_stl_Stud_LastMGR_Data"
''        SStr = SStr & " WHERE (((dbo_stl_Stud_LastMGR_Data.Stud_ID)=" & SRst!Stud_ID & "));"
''        Set StRst = db.OpenRecordset(SStr, dbOpenSnapshot, dbSeeChanges)
''
''        If StRst.EOF Then
''            SStr = "UPDATE tmp_StStat SET tmp_StStat.MG =  Null  WHERE (((tmp_StStat.Stud_ID)=" & SRst!Stud_ID & "));"
''        Else
''            SStr = "UPDATE tmp_StStat SET tmp_StStat.MG = " & StRst!MacGads & " WHERE (((tmp_StStat.Stud_ID)=" & SRst!Stud_ID & "));"
''        End If
''        DoCmd.RunSQL SStr
''        SRst.MoveNext
''    Loop
''

    Me.Requery

    DoCmd.SetWarnings 1
    DoCmd.Hourglass 0


End Sub



Private Sub IrLig_DblClick(Cancel As Integer)
    Dim db As Database, Rez_rst As Recordset, Rez_str As String, a

''    a = InputBox("Ievadiet rezervācijas noslēgtā līguma datumu (dd.mm.gggg):", "Kase")
'    a = MsgBox("Vai esat pārliecināti, ka šai rezervācijai ir noslēgts līgums?", vbQuestion + vbYesNo, "JTM līgumi")
    If IsNull(Me.LigNo) Or Me.IrLig = 1 Then
''        MsgBox "Jānorāda datums!", vbExclamation + vbOKOnly, "JTM līgumi"
        Exit Sub
    End If


    Set db = CurrentDb()

    Rez_str = "SELECT dbo_Viesn_Rezervesana.Ligums"
    Rez_str = Rez_str & " FROM dbo_Viesn_Rezervesana"
    Rez_str = Rez_str & " WHERE (((dbo_Viesn_Rezervesana.V_Rez_RID)=" & Me.V_Rez_RID & "));"

    Set Rez_rst = db.OpenRecordset(Rez_str, dbOpenDynaset, dbSeeChanges)

    Rez_rst.Edit
    Rez_rst!Ligums = 11
    Rez_rst.Update

    Me.Requery
End Sub

Private Sub ParceltRezUzNakMG_Click()
    Dim MGprev, MGnew
    Dim db As Database, Rez_rst As Recordset, Rez_str As String, a
    MGprev = 2023
    MGnew = 2024

    If Me.Rez_MG = MGnew Then
        MsgBox "Rezervistus var pārcelt tikai no " & MGprev & ".gada uz " & MGnew & ".gadu, izvēlētais ir " & Me.Rez_MG & ".gada rezervists.", vbExclamation + vbOKOnly, "JTM līgumi"
        Exit Sub
    End If

    Set db = CurrentDb()

    Rez_str = "SELECT dbo_Viesn_Rezervesana.CKods, dbo_Viesn_Rezervesana.Istaba"
    Rez_str = Rez_str & " FROM dbo_Viesn_Rezervesana"
    Rez_str = Rez_str & " WHERE (((dbo_Viesn_Rezervesana.Dzests) Is Null Or (dbo_Viesn_Rezervesana.Dzests)=0) "
    Rez_str = Rez_str & " AND (dbo_Viesn_Rezervesana.CKods=" & Me.CKods & ") AND((dbo_Viesn_Rezervesana.Rez_MG)=" & MGnew & "));"

    Set Rez_rst = db.OpenRecordset(Rez_str, dbOpenDynaset, dbSeeChanges)

    If Not Rez_rst.RecordCount = 0 Then
        a = MsgBox(Me.Vards & " " & Me.Uzvards & " jau ir rezervistu sarakstā uz " & MGnew & ",gadu, istaba " & Rez_rst!Istaba & ". " & Chr(13) & "Vai reģistrēsiet šo personu vēlreiz kā rezervistu?", vbQuestion + vbYesNo, "JTM līgumi")
        If a = vbNo Then Exit Sub
    End If

    DoCmd.OpenForm "Jauns_rezervists", acNormal
    Forms!Jauns_rezervists.Caption = "Jauns"

        Forms!Jauns_rezervists.CKods = Me.CKods
        Forms!Jauns_rezervists.Vards = Me.Vards
        Forms!Jauns_rezervists.Uzvards = Me.Uzvards
        Forms!Jauns_rezervists.Pers_Kods = Me.Pers_Kods
        Forms!Jauns_rezervists.Tel1 = Me.Tel1
        Forms!Jauns_rezervists.Dzimums = Me.Dzimums
        Forms!Jauns_rezervists.MValsts = Me.Valsts
        Forms!Jauns_rezervists.Tips = Me.Tips
        Forms!Jauns_rezervists.R_MG = MGnew
        Forms!Jauns_rezervists.Istaba = Me.Istaba
        Forms!Jauns_rezervists.Ievadits = Now()
        Forms!Jauns_rezervists.OpenFrom = 1


End Sub

Private Sub SlegtLigumu_Click()
    If CurrentProject.AllForms("LigumsViesn").IsLoaded = True Then
       MsgBox "Ir atvērta līguma apskates forma. Aizveriet to, tad mēģiniet vēlreiz.", vbOKOnly, "JTM līgumi"
       Exit Sub
    End If

    If IsNull(Me.CKods) Then
        MsgBox "Nevar atrast personu", vbOKOnly, "Personas"
        Exit Sub
    End If


    DoCmd.Echo 1, "Pārbaude uz STOP sarakstu..."
    If StopSaraksts(IIf(IsNull(Me.CKods), 0, Me.CKods), 3) > 0 Then
         Exit Sub
    End If
    DoCmd.Echo 1, ""

    Dim db As Database, PersRst As Recordset, PersStr As String, LigNr
    Set db = CurrentDb

    PersStr = "SELECT dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_Personas.D_Novads, dbo_Personas.D_Pagasts, dbo_Personas.D_Pilseta, dbo_Personas.D_Iela, "
    PersStr = PersStr & " dbo_Personas.Dok_Nr, dbo_Personas.Valsts, dbo_Personas.Tel1, dbo_Personas.Epasts, dbo_Personas.Pilsoniba"
    PersStr = PersStr & " FROM dbo_Personas"
    PersStr = PersStr & " WHERE (((dbo_Personas.Personas_ID)=" & Me.CKods & "));"

    Set PersRst = db.OpenRecordset(PersStr, dbOpenSnapshot, dbSeeChanges)

    DoCmd.OpenForm "LigumsViesn"
    Forms!LigumsViesn.Vards = PersRst!Vards
    Forms!LigumsViesn.Uzvards = PersRst!Uzvards
    Forms!LigumsViesn.PK = PersRst!Pers_Kods
    Forms!LigumsViesn.PILSETA = PersRst!D_Pilseta
    Forms!LigumsViesn.Iela = PersRst!D_Iela
    Forms!LigumsViesn.Novads = PersRst!D_Novads
    Forms!LigumsViesn.Pagasts = PersRst!D_Pagasts
    Forms!LigumsViesn.Pase = PersRst!Dok_Nr
    Forms!LigumsViesn.Valsts = PersRst!Valsts
    Forms!LigumsViesn.POSITION = Null
    Forms!LigumsViesn.Pers_ID = Me.CKods
    Forms!LigumsViesn.CKods = Null
    Forms!LigumsViesn.Datums_In = Date
    Forms!LigumsViesn.TelNr = PersRst!Tel1
    Forms!LigumsViesn.Epasts = PersRst!Epasts
    Forms!LigumsViesn.Pilsoniba = PersRst!Pilsoniba

    Forms!LigumsViesn.Vards.BackColor = 12632256
    Forms!LigumsViesn.Uzvards.BackColor = 12632256
    Forms!LigumsViesn.Lig_Dat.BackColor = 16777215
    Forms!LigumsViesn.Piezimes.BackColor = 16777215
    Forms!LigumsViesn.Piezimes.Locked = False
    Forms!LigumsViesn.PilnvarotaPersona.BackColor = 16777215
    Forms!LigumsViesn.PilnvarotaPersona.Locked = False
    Forms!LigumsViesn.POSITION.BackColor = 16777215
    Forms!LigumsViesn.POSITION.Locked = False
    Forms!LigumsViesn.Valsts.BackColor = 16777215
    Forms!LigumsViesn.Valsts.Locked = False
    Forms!LigumsViesn.Datums_In.BackColor = 16777215
    Forms!LigumsViesn.Datums_In.Locked = False
    Forms!LigumsViesn.Datums_Lidz.BackColor = 16777215
    Forms!LigumsViesn.Datums_Lidz.Locked = False
    Forms!LigumsViesn.Datums_Out.BackColor = 16777215
    Forms!LigumsViesn.Datums_Out.Locked = False

    Forms!LigumsViesn.IstVSk.Locked = False
    Forms!LigumsViesn.IstComf.Locked = False

    LigNr = DMax("[Ligums]", "dbo_viesn_Ligumi") + 1
    Forms!LigumsViesn.Ligums = LigNr

    DoCmd.SetWarnings 0

    DoCmd.RunSQL ("Delete dbo_viesn_Ligumi_Istabas.Ligums FROM dbo_viesn_Ligumi_Istabas WHERE (((dbo_viesn_Ligumi_Istabas.Ligums)=" & LigNr & "));")

    DoCmd.RunSQL ("INSERT INTO dbo_viesn_Ligumi_Istabas ( Ligums, Istaba, LIDat_No ) SELECT " & LigNr & " AS lnr, " & Me.Istaba & " AS ist, Date() AS dat;")
    DoCmd.SetWarnings 1


    Set KONTROLE = Forms!LigumsViesn.Lig_Dat
    KONTROLE.SetFocus
    Forms!LigumsViesn.Lig_Dat = Date           'Format(Now, "dd-mm-yyyy")
    Forms!LigumsViesn.Lig_Dat.Locked = False
    Forms!LigumsViesn.Ieraksts.Enabled = True
    Forms!LigumsViesn.MAKSAJUMIbeta.Visible = True
    Forms!LigumsViesn.Vards.Locked = True
    Forms!LigumsViesn.Uzvards.Locked = True

    Forms!LigumsViesn.Labot.Enabled = True

    Forms!LigumsViesn.Labosana = Null

    Forms!LigumsViesn.Valstis.Enabled = False

    CheckPersData (Forms!LigumsViesn.Pers_ID)

    'If Me.Jauns = -1 Then
''    DoCmd.Close A_FORM, "Meklesana_Persona"
End Sub
Private Sub DzestRez_Click()
Dim dbs As Database
Dim rst As Recordset

msg = MsgBox("Vai jūs tiešām vēlaties izdzēst rezervistu?", vbYesNo + vbDefaultButton2, "Dzēst rezervistu")
If msg = vbYes Then
    Set dbs = CurrentDb
''    Set rst = dbs.OpenRecordset("SELECT dbo_Viesn_Rezervesana.* FROM dbo_Viesn_Rezervesana " _
''        & "WHERE (((dbo_Viesn_Rezervesana.Ckods)=" & Me.CKods & "));", DB_OPEN_DYNASET, dbSeeChanges)
    Set rst = dbs.OpenRecordset("SELECT dbo_Viesn_Rezervesana.* FROM dbo_Viesn_Rezervesana " _
        & "WHERE (((dbo_Viesn_Rezervesana.Ckods)=" & Me.CKods & ") and dbo_Viesn_Rezervesana.Rez_MG = " & Me.Rez_MG & " and dbo_Viesn_Rezervesana.Dzests =0);", DB_OPEN_DYNASET, dbSeeChanges)

    Do While Not rst.EOF
        rst.Edit
        rst!Dzests = -1
        rst.Update
        rst.MoveNext
    Loop
    rst.Close
    dbs.Close
    Me.Requery
End If
End Sub
