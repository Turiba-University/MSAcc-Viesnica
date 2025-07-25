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
    Dim V, U, K

    V = Forms!Meklesana_Persona.Vard
    U = Forms!Meklesana_Persona.Uzva
    K = Forms!Meklesana_Persona.PKods
    DoCmd.Close

    DoCmd.OpenForm "Personas_dati", , , , acFormAdd
    Forms![Personas_dati].Jaun = -1
    Forms![Personas_dati].OpenFromViesnLig = 0
    Forms![Personas_dati].OpenFromPersMekl = 0
    Forms![Personas_dati].OpenFromRezervJauns = 0
    Forms![Personas_dati].DokDerTermins.Enabled = True
    Forms![Personas_dati].Vard = V
    Forms![Personas_dati].Uzva = U
    Forms![Personas_dati].Pers = K

End Sub
Private Sub AddToWhere(FieldValue As Variant, FieldName As String, MyCriteria As String, ArgCount As Integer)
    If FieldValue <> "" Then
        If ArgCount > 0 Then
            MyCriteria = MyCriteria & " AND "
        End If
        MyCriteria = (MyCriteria & FieldName & " LIKE """ & FieldValue & "*"")")
        ArgCount = ArgCount + 1
    End If
End Sub

Private Sub AddToWhereD(FieldValue As Variant, FieldName As String, MyCriteria As String, ArgCount As Integer)
    If FieldValue <> "" Then
        If ArgCount > 0 Then
            MyCriteria = MyCriteria & " AND "
        End If
        MyCriteria = (MyCriteria & FieldName & " = #" & Month(FieldValue) & "/" & Day(FieldValue) & "/" & Year(FieldValue) & "#)")
        ArgCount = ArgCount + 1
    End If
End Sub


Private Sub Meklet_Click()
    Dim db As Database
    Dim Mysql As String, MyCriteria As String, ArgCount As Integer, LNR As Long, rst As Recordset

    If IsNull(Me.StudLigNr) And IsNull(Me.Vard) And IsNull(Me.Uzva) And IsNull(Me.PKods) And IsNull(Me.DzDatums) Then
        MsgBox "Jāievada meklēšanas kritēriji!", vbExclamation + vbOKOnly, "JTM līgumi"
        Exit Sub
    End If

    If IsNull(Me.StudLigNr) Then
        Mysql = "SELECT DISTINCTROW dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_Personas.Pozicija, dbo_Personas.Dok_Nr,dbo_Personas.Valsts, dbo_Personas.D_Novads, dbo_Personas.D_Pagasts, dbo_Personas.D_Pilseta, dbo_Personas.D_Iela, dbo_Personas.Tel1, dbo_Personas.Epasts, dbo_Personas.Pilsoniba, dbo_Personas.Personas_ID AS PID  FROM dbo_Personas"
        Mysql = Mysql & " WHERE ("

        MyCriteria = ""

        AddToWhere [Vard], "(dbo_Personas.Vards", MyCriteria, ArgCount
        AddToWhere [Uzva], "(dbo_Personas.Uzvards", MyCriteria, ArgCount
        AddToWhere [PKods], "(dbo_Personas.Pers_Kods", MyCriteria, ArgCount
        AddToWhereD [DzDatums], "(dbo_Personas.DzDatums", MyCriteria, ArgCount
        If MyCriteria = "" Then
            MyCriteria = "True"
        End If
        Mysql = Mysql & MyCriteria & ") ORDER BY dbo_Personas.Uzvards ASC, dbo_Personas.Vards ASC, dbo_Personas.Pers_Kods ASC;"
    ElseIf Not IsNull(Me.StudLigNr) Then

        Set db = CurrentDb()
        Mysql = "SELECT dbo_STL_PersLigData.LIG_NUM, dbo_STL_PersLigData.CILVEKS_CKODS"
        Mysql = Mysql & " FROM dbo_STL_PersLigData"
        Mysql = Mysql & " WHERE (((dbo_STL_PersLigData.LIG_NUM)=" & Me.StudLigNr & "));"

        Set rst = db.OpenRecordset(Mysql, dbOpenSnapshot, dbReadOnly)

        If rst.RecordCount = 0 Then
           Exit Sub
        End If

        LNR = rst!CILVEKS_CKODS

        Mysql = "SELECT DISTINCTROW dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_Personas.Pozicija, dbo_Personas.Dok_Nr,dbo_Personas.Valsts, dbo_Personas.D_Novads, dbo_Personas.D_Pagasts, dbo_Personas.D_Pilseta, dbo_Personas.D_Iela, dbo_Personas.Tel1, dbo_Personas.Epasts, dbo_Personas.Pilsoniba, dbo_Personas.Personas_ID AS PID  FROM dbo_Personas"
        Mysql = Mysql & " WHERE (((dbo_Personas.Personas_ID)=" & LNR & "));"

    End If

    Me.RecordSource = Mysql



''    Dim Mysql As String, MyCriteria As String, MyRecordSource As String
''    Dim ArgCount As Integer, Tmp As Variant
''    DoCmd.Hourglass 1
''
''    ArgCount = 0
''    Mysql = "SELECT stl_PersLigData.Līgums, stl_PersLigData.Datums, stl_PersLigData.Vārds, stl_PersLigData.Uzvārds, stl_PersLigData.Pers_Kods, "
''    Mysql = Mysql & " stl_PersLigData.Progr, stl_PersLigData.StGads as StG, stl_PersLigData.Nodaļa as FV, stl_PersLigData.SakSem as SSem, stl_PersLigData.MGR_Dat, "
''    Mysql = Mysql & " stl_PersLigData.Nr, stl_PersLigData.Gads, stl_PersLigData.Summa, stl_PersLigData.Val, IIf([Val_ID]=2,[Summa],Int(([summa]/0.702804+0.005005)*100)/100) AS SumEur, "
''    Mysql = Mysql & " stl_PersLigData.STUDKODS, stl_PersLigData.Stud_ID, stl_PersLigData.MGR_ID, stl_PersLigData.CILVEKS_CKODS, stl_PersLigData.Filiāle, stl_PersLigData.St_Ilgums as StIlg"
''    Mysql = Mysql & " FROM stl_PersLigData"
''    Mysql = Mysql & " WHERE ("
''
''    'IIf([Val_ID]=2,[Summa],Int(([summa]/0.702804+0.005005)*100)/100) AS SumEur
''
''    MyCriteria = ""
''    AddToWhereE [Ligu], "(stl_PersLigData.Līgums", MyCriteria, ArgCount
''    AddToWhere [Datu], "(stl_PersLigData.Datums", MyCriteria, ArgCount
''    AddToWhere [Vard], "(stl_PersLigData.Vārds", MyCriteria, ArgCount
''    AddToWhere [Uzva], "(stl_PersLigData.Uzvārds", MyCriteria, ArgCount
''    AddToWhere [PK], "(stl_PersLigData.Pers_Kods", MyCriteria, ArgCount
''    If MyCriteria = "" Then
''        MyCriteria = "True"
''    End If
''    MyRecordSource = Mysql & MyCriteria & ") ORDER BY stl_PersLigData.Datums DESC, stl_PersLigData.MGR_Dat DESC;"
''    Me!AForma.RowSource = MyRecordSource


End Sub

Private Sub okey_Click()
    If IsNull(Me.Vārds) Or IsNull(Me.Uzvārds) Then
        MsgBox "Aizpildiet obligātos laukus - Vārds , Uzvārds"
        Me.okey = Click
        Exit Sub
    End If

    Dim dbs As Database
    Dim rst As Recordset
    Dim PKStr As String

    Set dbs = CurrentDb()

    If Me.OpenFrom = 1 Then
        Dim KONTROLE As Control

        DoCmd.Echo 1, "Pārbaude uz STOP sarakstu..."
        If StopSaraksts(IIf(IsNull(Me.PID), 0, Me.PID), 3) > 0 Then
            If MsgBox("Vai vēlaties turpināt?", vbYesNo + vbDefaultButton2) = vbNo Then Me.okey = False: Exit Sub
        End If
        DoCmd.Echo 1, ""

        Forms!LigumsViesn.Vards = Me.Vārds
        Forms!LigumsViesn.Uzvards = Me.Uzvārds
        Forms!LigumsViesn.PK = Me.PK
        Forms!LigumsViesn.PILSETA = Me.Pilsēta
        Forms!LigumsViesn.Iela = Me.Iela
        Forms!LigumsViesn.Pase = Me.Pase
        Forms!LigumsViesn.POSITION = Null
        Forms!LigumsViesn.Pers_ID = Me.PID
        Forms!LigumsViesn.CKods = Me.PID
        Forms!LigumsViesn.Valsts = Me.Valsts
        Forms!LigumsViesn.Datums_In = Date
        Forms!LigumsViesn.TelNr = Me.Tel
        Forms!LigumsViesn.Epasts = Me.Epasts
        Forms!LigumsViesn.Pilsoniba = Me.Pilsoniba

        Forms!LigumsViesn.Novads = Me.Novads
        Forms!LigumsViesn.Vards.BackColor = 12632256
        Forms!LigumsViesn.Uzvards.BackColor = 12632256
        Forms!LigumsViesn.Lig_Dat.BackColor = 16777215
        Forms!LigumsViesn.Piezimes.BackColor = 16777215
        Forms!LigumsViesn.Piezimes.Locked = False
        Forms!LigumsViesn.PilnvarotaPersona.BackColor = 16777215
        Forms!LigumsViesn.PilnvarotaPersona.Locked = False
        Forms!LigumsViesn.POSITION.BackColor = 16777215
        Forms!LigumsViesn.POSITION.Locked = False
        Forms!LigumsViesn.Valsts.BackColor = 12632256
        Forms!LigumsViesn.Valsts.Locked = True
        Forms!LigumsViesn.Datums_In.BackColor = 16777215
        Forms!LigumsViesn.Datums_In.Locked = False
        Forms!LigumsViesn.Datums_Lidz.BackColor = 16777215
        Forms!LigumsViesn.Datums_Lidz.Locked = False
        Forms!LigumsViesn.Datums_Out.BackColor = 16777215
        Forms!LigumsViesn.Datums_Out.Locked = False

        Forms!LigumsViesn.IstVSk.Locked = False
        Forms!LigumsViesn.IstComf.Locked = False

        Forms!LigumsViesn.Ligums = DMax("[Ligums]", "dbo_viesn_Ligumi") + 1
        Set KONTROLE = Forms!LigumsViesn.Lig_Dat
        KONTROLE.SetFocus
        Forms!LigumsViesn.Lig_Dat = Date           'Format(Now, "dd-mm-yyyy")
        Forms!LigumsViesn.Lig_Dat.Locked = False
        Forms!LigumsViesn.Ieraksts.Enabled = True
        Forms!LigumsViesn.MAKSAJUMIbeta.Visible = True
        Forms!LigumsViesn.Vards.Locked = True
        Forms!LigumsViesn.Uzvards.Locked = True
        Forms!LigumsViesn.Maksatajs.Enabled = True

        Forms!LigumsViesn.Labot.Enabled = True

        Forms!LigumsViesn.Labosana = Null

        Forms!LigumsViesn.Valstis.Enabled = False

        PKStr = "SELECT dbo_Personas_Cert.Personas_ID, dbo_Personas_Cert.CertVeids, dbo_Personas_Cert.CertDatums, dbo_Personas_Cert.Aud_User, dbo_Personas_Cert.Aud_Date"
        PKStr = PKStr & " FROM dbo_Personas_Cert"
        PKStr = PKStr & " WHERE (((dbo_Personas_Cert.Personas_ID)=" & Me.PID & "));"
        Set rst = dbs.OpenRecordset(PKStr, dbOpenDynaset, dbSeeChanges)
        If Not rst.EOF Then
            Forms![LigumsViesn].PersCert = rst!CertVeids
            Forms![LigumsViesn].PersCertTerm = rst!CertDatums
        End If

        Forms![LigumsViesn].PersCert.Enabled = True
        Forms![LigumsViesn].PersCertTerm.Enabled = True
        Forms![LigumsViesn].PersCert.Locked = False
        Forms![LigumsViesn].PersCertTerm.Locked = False
        Forms![LigumsViesn].PersCert.BackColor = 16777215
        Forms![LigumsViesn].PersCertTerm.BackColor = 16777215

        CheckPersData (Forms!LigumsViesn.Pers_ID)
    ElseIf Me.OpenFrom = 2 Then 'maksātāja ievade
        Forms!LigumsViesn.Maksatajs_PID = Me.PID
        Forms!LigumsViesn.Maksatajs_txt = Me.Vārds
    End If
    'If Me.Jauns = -1 Then
    DoCmd.Close A_FORM, "Meklesana_Persona"
End Sub


Private Sub PK_AfterUpdate()
Dim dbs As Database
Dim rst As Recordset
Dim strKods As String, PKStr As String
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
            PK_LostFocus_
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

        Forms!Meklesana_Persona.DefaultEditing = 4
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

Private Sub PK_LostFocus_()
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




Private Sub StudLigNr_Change()
    Me.Vard = Null
    Me.Uzva = Null
    Me.PKods = Null
End Sub
