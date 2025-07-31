Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database   'Use database order for string comparisons
Dim Cap As String

Private Sub Cancel_Click()
Me.Undo
DoCmd.Close , , acSaveNo
End Sub

Private Sub Dažādi_AfterUpdate()
If Not IsNull(Me.Dažādi) Then
    P = Left$(Me.Dažādi, 1)
    pp = UCase(P)
    gar = Len(Me.Dažādi)
    ppp = gar - 1
    pppp = Right(Me.Dažādi, ppp)
    gp = pp + pppp
    Me.Dažādi = gp
End If
End Sub

Private Sub Iela_AfterUpdate()
If Not IsNull(Me.Iela) Then
    P = Left$(Me.Iela, 1)
    pp = UCase(P)
    gar = Len(Me.Iela)
    ppp = gar - 1
    pppp = Right(Me.Iela, ppp)
    gp = pp + pppp
    Me.Iela = gp
End If
End Sub

Private Sub Edit_Locked(Main As Boolean)
    'Me.Vārds.Locked = Main
    'Me.Uzvārds.Locked = Main
    'Me.Pase.Locked = Main
    Me.PK.Locked = Main
    'Me.Novads.Locked = Main
    'Me.Pilsēta.Locked = Main
    'Me.Iela.Locked = Main
    'Me.Tel.Locked = Main
    'Me.Dažādi.Locked = Main
End Sub

Private Sub Jauns_Click()
If Me.Jauns = True Then
    Me.RecordSource = ""
    Me.DefaultEditing = 1
    Me.Uzvārds.ControlSource = ""
    Me.Vārds.ControlSource = ""
    Me.Pase.ControlSource = ""
    Me.PK.ControlSource = ""
    Me.Novads.ControlSource = ""
    Me.Pilsēta.ControlSource = ""
    Me.Iela.ControlSource = ""
    Me.Tel.ControlSource = ""
    Me.Dažādi.ControlSource = ""
    Me.Uzvārds = Forms!meklesana.Uzvards
    Me.Vārds = Forms!meklesana.Vards
    Me.PID.ControlSource = ""
    Cap = Me.VS.Caption
    Me.VS.Caption = " ====>> " & Me.Vārds & " " & Me.Uzvārds
    Edit_Locked (False)
Else
    Me.RecordSource = Me.Tag
    Forms!Pers_meklesana.DefaultEditing = 4
        Me.Uzvārds.ControlSource = "Uzvards"
        Me.Vārds.ControlSource = "Vards"
        Me.Pase.ControlSource = "Dok_Nr"
        Me.PK.ControlSource = "Pers_kods"
        Me.Novads.ControlSource = "D_Novads"
        Me.Pilsēta.ControlSource = "D_Pilseta"
        Me.Iela.ControlSource = "D_iela"
        Me.Tel.ControlSource = "Tel1"
        Me.Dažādi.ControlSource = "Pozicija"
        Me.PID.ControlSource = "Pid"
    Me.Requery
    Me.VS.Caption = Cap
    Edit_Locked (True)
End If
End Sub

Private Sub okey_Click()
If IsNull(Me.Vārds) Or IsNull(Me.Uzvārds) Or IsNull(Me.Dažādi) Then
    MsgBox "Aizpildiet obligātos laukus - Vārds , Uzvārds, Pozīcija"
    Me.okey = Click
    Exit Sub
End If
'Dim kontrole As Control
If Me.Jauns = -1 Then
    Dim MyDB As Database, Jaun As Recordset
    Set MyDB = DBEngine.Workspaces(0).Databases(0)
    Set Jaun = MyDB.OpenRecordset("dbo_Personas", DB_OPEN_DYNASET, dbSeeChanges)
    Jaun.AddNew
    Jaun!Aud_User = CurrentUser()
    Jaun!Aud_Date = Date
    Jaun!Vards = Me.Vārds
    Jaun!Uzvards = Me.Uzvārds
    Jaun!Pers_Kods = Me.PK
    Jaun!Dok_Nr = Me.Pase
    Jaun!D_Pilseta = Me.Pilsēta
    Jaun!D_Novads = Me.Novads
    Jaun!D_Iela = Me.Iela
    Jaun!Tel1 = Me.Tel
    Jaun!Pozicija = Me.Dažādi
    Jaun.Update
    Jaun.MoveLast
    Forms!Jauns_rezervists.C_Kods = Jaun![Personas_ID]
    Jaun.Close
    MyDB.Close
Else
    Forms!Jauns_rezervists.C_Kods = Me.PID
End If
Forms!Jauns_rezervists.Vards = Me.Vārds
Forms!Jauns_rezervists.Uzvards = Me.Uzvārds
'Forms!LigumsViesn.Vards.BackColor = 12632256
'Forms!LigumsViesn.Uzvards.BackColor = 12632256
'Forms!LigumsViesn.Lig_Dat.BackColor = 16777215
'Forms!LigumsViesn.Piezimes.BackColor = 16777215
'Forms!LigumsViesn.PilnvarotaPersona.BackColor = 16777215
'Forms!LigumsViesn.Piezimes.Locked = False
'Forms!LigumsViesn.PilnvarotaPersona.Locked = False
'Forms!LigumsViesn.Ligums = DMax("[LIgums]", "LigumsViesn") + 1
'DoCmd.Minimize
'Set kontrole = Forms!LigumsViesn.Lig_Dat
'kontrole.SetFocus
'Forms!LigumsViesn.Lig_Dat = Format(Now, "dd-mm-yyyy")
'Forms!LigumsViesn.Lig_Dat.Locked = False
'Forms!LigumsViesn.Ieraksts.Enabled = True
'Forms!LigumsViesn.MAKSAJUMIbeta.Visible = True
'Forms!LigumsViesn.Vards.Locked = True
'Forms!LigumsViesn.Uzvards.Locked = True
''If Me.Jauns = -1 Then
Forms!Jauns_rezervists.Tel1 = Me.Tel
If IsNull(Me.Tel) Then Forms!Jauns_rezervists.Tag = "" Else Forms!Jauns_rezervists.Tag = Me.Tel
Forms!Jauns_rezervists.Ievadits = Now()
Forms!meklesana.List.RowSource = ""
DoCmd.Close A_FORM, "Meklesana"
DoCmd.Close A_FORM, "Pers_meklesana"
End Sub

Private Sub Pilsēta_AfterUpdate()
If Not IsNull(Me.Pilsēta) Then
    P = Left$(Me.Pilsēta, 1)
    pp = UCase(P)
    gar = Len(Me.Pilsēta)
    ppp = gar - 1
    pppp = Right(Me.Pilsēta, ppp)
    gp = pp + pppp
    Me.Pilsēta = gp
End If
End Sub

Private Sub PK_AfterUpdate()
Dim dbs As Database
Dim rst As Recordset
Dim strKods As String
Dim ID As Long

    If IsNull(Me.PK) Then Exit Sub
    Set dbs = CurrentDb()

    DoCmd.Hourglass True
    strKods = Left(Me.PK, 6) + "-" + Right(Me.PK, 5)
    PKStr = "SELECT dbo_Personas.Personas_ID, dbo_Personas.Pers_Kods FROM dbo_Personas"
    PKStr = PKStr & " WHERE (((dbo_Personas.Pers_Kods)=""" & strKods & """));"

    Set rst = dbs.OpenRecordset(PKStr, dbOpenSnapshot, dbReadOnly)
'''    Set rst = dbs.OpenRecordset("Personas", dbOpenDynaset, dbSeeChanges)

'''    DoCmd.Hourglass True
'''    strKods = Left(Me.PK, 6) + "-" + Right(Me.PK, 5)
'''    rst.FindFirst "[Personas kods] = '" & strKods & "'"
'''    ID = rst![Personas ID]
'''    If rst.NoMatch = False And (ID <> Me.PID Or IsNull(Me.PID)) Then
    If rst.RecordCount > 0 Then
        MsgBox "Šāds personas kods jau atrodas bāzē!", , "Kļūda"
'''        If ID <> Me.PID Then
'''            Me.Undo
            Me.PK = Left(Me.PK, 6) + "-" + Right(Me.PK, 5)
            PK_LostFocus
'''        End If
        Edit_Locked (True)
    q1 = "SELECT DISTINCTROW dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_Personas.Pozicija, dbo_Personas.Dok_Nr,dbo_Personas.D_Novads, dbo_Personas.D_Pilseta, dbo_Personas.D_Iela, dbo_Personas.Tel1, dbo_Personas.Personas_ID AS PID  FROM dbo_Personas"
    q2 = " WHERE ((dbo_Personas.Pers_Kods = """ & strKods
    q3 = """)) ORDER BY dbo_Personas.Uzvards;"

'''        q1 = "SELECT DISTINCTROW Personas.Vārds, Personas.Uzvārds, Personas.[Personas Kods], Personas.Dažādi as [Grupa], Personas.[Pases Nr],Personas.Novads, Personas.Pilsēta, Personas.Iela, Personas.Dažādi, Personas.Tel1, Personas.[Personas ID] AS PID  FROM Personas WHERE ((Personas.[Personas kods] = """
'''        q2 = strKods
'''        q3 = """)) ORDER BY Personas.Uzvārds;"


        qqq = q1 & q2 & q3
        Me.Tag = qqq
        Me.RecordSource = qqq
        Me.Requery
        Me.VS.Caption = " ====>> " & strKods

        Forms!Pers_meklesana.DefaultEditing = 4
        Me.Uzvārds.ControlSource = "Uzvards"
        Me.Vārds.ControlSource = "Vards"
        Me.Pase.ControlSource = "Dok_Nr"
        Me.PK.ControlSource = "Pers_kods"
        Me.Novads.ControlSource = "D_Novads"
        Me.Pilsēta.ControlSource = "D_Pilseta"
        Me.Iela.ControlSource = "D_iela"
        Me.Tel.ControlSource = "Tel1"
        Me.Dažādi.ControlSource = "Pozicija"
        Me.PID.ControlSource = "Pid"
        Me.Jauns = False
    End If
    rst.Close
    dbs.Close
    DoCmd.Hourglass False
End Sub

Private Sub PK_LostFocus()
Rem Ja darbojas kā funkcija, tad ' no = dim my līdz dim pc un loop ar Tabula.mo
Rem modulis ' dim pc
Rem Jāizmaina personas koda atzīmējums atbilstošajā tabulā (2.vietas)
    a = Me.PK
    If IsNull(a) Then Exit Sub
    Dim pc As String, Summa As Integer, mag As String, i As Integer
    If Len(Me.PK) = 11 Then Me.PK = Left(a, 6) + "-" + Right(a, 5)
    pc = Left(a, 6) + Right(a, 5)

    If Len(pc) <> 11 Then Exit Sub
    Summa = 0
    Rem Maģiskā summa
    For i = 1 To 10
        Summa = Summa + Val(Mid(pc, i, 1)) * Val(Mid("01060307091005080402", i * 2 - 1, 2))
    Next i
    Rem Kontroles summa
    If (1 - Summa) - Int((1 - Summa) / 11) * 11 = Right(pc, 1) Then
        'MsgBox pc '"Personas kods ir pareizs!"
        Else
        MsgBox "Personas kods nav pareizs!!! Ierakstiet pareizu personas kodu vai atstājiet lauku tukšu!"
        DoCmd.GoToControl "pase" '.SetFocus ' = ""'Debug.Print Tabula!perskods
          DoCmd.GoToControl "pk"
    End If

End Sub

Private Sub Novads_AfterUpdate()
If Not IsNull(Me.Novads) Then
    P = Left$(Me.Novads, 1)
    pp = UCase(P)
    gar = Len(Me.Novads)
    ppp = gar - 1
    pppp = Right(Me.Novads, ppp)
    gp = pp + pppp
    Me.Novads = gp
End If
End Sub

Private Sub Uzvārds_AfterUpdate()
If Not IsNull(Me.Uzvārds) Then
    P = Left$(Me.Uzvārds, 1)
    pp = UCase(P)
    gar = Len(Me.Uzvārds)
    ppp = gar - 1
    pppp = Right(Me.Uzvārds, ppp)
    gp = pp + pppp
    Me.Uzvārds = gp
End If
End Sub

Private Sub Vārds_AfterUpdate()
If Not IsNull(Me.Vārds) Then
    P = Left$(Me.Vārds, 1)
    pp = UCase(P)
    gar = Len(Me.Vārds)
    ppp = gar - 1
    pppp = Right(Me.Vārds, ppp)
    gp = pp + pppp
    Me.Vārds = gp
End If
End Sub
