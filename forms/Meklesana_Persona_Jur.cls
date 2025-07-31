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
    Dim V, U

    V = Forms!Meklesana_Persona_Jur.Vard
    U = Forms!Meklesana_Persona_Jur.Uzva
    DoCmd.Close

    DoCmd.OpenForm "Personas_dati_Jur", , , , acFormAdd
    Forms![Personas_dati_Jur].Vard = V
    Forms![Personas_dati_Jur].Uzva = U

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
Private Sub AddToWherePart(FieldValue As Variant, FieldName As String, MyCriteria As String, ArgCount As Integer)
    If FieldValue <> "" Then
        If ArgCount > 0 Then
            MyCriteria = MyCriteria & " AND "
        End If
        MyCriteria = (MyCriteria & FieldName & " LIKE ""*" & FieldValue & "*"")")
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

    If IsNull(Me.Vard) And IsNull(Me.Uzva) Then
        MsgBox "Jāievada meklēšanas kritēriji!", vbExclamation + vbOKOnly, "JTM līgumi"
        Exit Sub
    End If

        Mysql = "SELECT DISTINCTROW dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Epasts, dbo_Personas.Tel1, dbo_Personas.Personas_ID AS PID  FROM dbo_Personas"
        Mysql = Mysql & " WHERE ("

        MyCriteria = ""

        AddToWherePart [Vard], "(dbo_Personas.Vards", MyCriteria, ArgCount
        AddToWherePart [Uzva], "(dbo_Personas.Uzvards", MyCriteria, ArgCount
        If MyCriteria = "" Then
            MyCriteria = "True"
        End If
        Mysql = Mysql & MyCriteria & ") ORDER BY dbo_Personas.Vards ASC, dbo_Personas.Uzvards ASC;"

    Me.RecordSource = Mysql
End Sub

Private Sub okey_Click()
    If IsNull(Me.Vārds) Or IsNull(Me.Uzvārds) Then
        MsgBox "Aizpildiet obligātos laukus - Nosaukums, Reģistrācijas Nr"
        Me.okey = Click
        Exit Sub
    End If


    If Me.OpenFrom = 2 Then 'maksātāja ievade
        Forms!LigumsViesn.Maksatajs_PID = Me.PID
        Forms!LigumsViesn.Maksatajs_txt = Me.Vārds
    ElseIf Me.OpenFrom = 1 Then 'meklēšana pēc maksātāja
        Forms!Meklesana_Ligumam.Vard = Me.Vārds
        Forms!Meklesana_Ligumam.Uzva = Me.Uzvārds


        Mysql = "SELECT tab.LIGUM_ID, tab.Ligums, tab.Lig_Dat AS Datums, dbo_Personas.Vards AS Vārds, dbo_Personas.Uzvards AS Uzvārds, dbo_Personas.Pers_Kods AS PK, dbo_Personas.Valsts, tab.Datums_In AS Ievācas, tab.Datums_Out AS Izvācas, tab.Position AS Stāvoklis"
        Mysql = Mysql & " FROM dbo_viesn_Ligumi AS tab LEFT JOIN dbo_Personas ON tab.Pers_ID = dbo_Personas.Personas_ID "
        Mysql = Mysql & " WHERE (tab.Maksatajs_PID = " & Me.PID & ") ORDER BY tab.Ligums DESC;"

        Forms!Meklesana_Ligumam!AForma.RowSource = Mysql
        Forms!Meklesana_Ligumam!AForma.Requery

    End If
    'If Me.Jauns = -1 Then
    DoCmd.Close A_FORM, "Meklesana_Persona_Jur"
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
