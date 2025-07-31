Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Dim ma

Private Sub Aizvert_Click()
    DoCmd.Close
End Sub

Private Sub Apmaksat_Click()
    Dim db As Database, KData As Recordset, KStr As String

    If IsNull(Me.Vard) Or IsNull(Me.Uzva) Or IsNull(Me.Pers) Or IsNull(Me.ProtSum) Or IsNull(Me.ProtNr) Then
        MsgBox "Jāaizpilda obligātie lauki!", vbOKOnly, "Kase"
        Exit Sub
    End If

    Atst = InStr(1, Me.ProtNr, " ", 1)
    If Atst > 0 Then
        MsgBox "Protokola Nr jābūt ievadītam bez atstarpēm (tukšumiem). Atstarpes tiks izvāktas.", vbOKOnly, "Protokoli"
        Me.ProtNr = Replace(Me.ProtNr, " ", "", , , vbTextCompare)
    End If

    Set db = CurrentDb()

    StrLen = Forms!ka!StrGarums


    KStr = "SELECT dbo_Personas.Personas_ID, dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods"
    KStr = KStr & " FROM dbo_Personas;"
    Set KData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)
    KData.AddNew
    KData!Vards = Me.Vard
    KData!Uzvards = Me.Uzva
    KData!Pers_Kods = Me.Pers
    KData.Update

    KStr = "SELECT dbo_Personas.Personas_ID"
    KStr = KStr & " FROM dbo_Personas"
    KStr = KStr & " WHERE (((dbo_Personas.Vards) = """ & Me.Vard & """) And ((dbo_Personas.Uzvards) = """ & Me.Uzva & """) And ((dbo_Personas.Pers_Kods) = """ & Me.Pers & """))"
    KStr = KStr & " ORDER BY dbo_Personas.Personas_ID DESC;"
    Set KData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)
    PID = KData!Personas_ID

'    KStr = "SELECT dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_Personas.D_Novads, dbo_Personas.D_Pagasts, dbo_Personas.D_Pilseta, dbo_Personas.D_Iela, dbo_Personas.D_Indekss"
'    KStr = KStr & " FROM dbo_Personas"
'    KStr = KStr & " WHERE (((dbo_Personas.Personas_ID)=" & PID & "));"
'
'    Set KData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)

    Dim Adr

    Forms![ka]!PID = PID
    Forms![ka]!fd_VU = Me.Vard & " " & Me.Uzva
    Forms![ka]!fd_PK = Me.Pers
    Forms![ka]!fd_Adrese2 = Null
''    Adr = KData!D_Iela

    If Len(Forms![ka]!fd_VU) > StrLen Then
        Forms![ka]!fd_VU_bt.Visible = True
        Forms![ka]!fd_VU.BackColor = 255
    Else
        Forms![ka]!fd_VU_bt.Visible = False
        Forms![ka]!fd_VU.BackColor = 16777215
    End If
    If Len(Forms![ka]!fd_PK) > StrLen Then
        Forms![ka]!fd_PK_bt.Visible = True
        Forms![ka]!fd_PK.BackColor = 255
    Else
        Forms![ka]!fd_PK_bt.Visible = False
        Forms![ka]!fd_PK.BackColor = 16777215
    End If
    If Len(Forms![ka]!fd_Adrese) > StrLen Then
        Forms![ka]!fd_Adrese_bt.Visible = True
        Forms![ka]!fd_Adrese.BackColor = 255
    Else
        Forms![ka]!fd_Adrese_bt.Visible = False
        Forms![ka]!fd_Adrese.BackColor = 16777215
    End If
    If Len(Forms![ka]!fd_Adrese2) > StrLen Then
        Forms![ka]!fd_Adrese2_bt.Visible = True
        Forms![ka]!fd_Adrese2.BackColor = 255
    Else
        Forms![ka]!fd_Adrese2_bt.Visible = False
        Forms![ka]!fd_Adrese2.BackColor = 16777215
    End If

        KStr = "SELECT tmp_KA_cdata.Nodala, tmp_KA_cdata.Nodala_txt, tmp_KA_cdata.Artikuls, tmp_KA_cdata.Daudzums, tmp_KA_cdata.Cena, tmp_KA_cdata.Summa, tmp_KA_cdata.Valuta, tmp_KA_cdata.Logins, tmp_KA_cdata.Prot_ID, tmp_KA_cdata.Prot_Nr, tmp_KA_cdata.PID"
        KStr = KStr & " FROM tmp_KA_cdata;"

        Set KData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)

        KData.AddNew
        KData!Logins = CurrentUser
        KData!Nodala = Me.c_Nod_ID
        KData!Nodala_txt = Me.c_NodNos
        KData!Artikuls = 1
        KData!Daudzums = 1
        KData!Cena = Me.ProtSum
        KData!Summa = Me.ProtSum
        KData!Prot_Nr = Me.ProtNr
        KData!PID = PID
        KData!Valuta = Forms![ka]!fd_Valuta

        KData.Update

        DoCmd.Close

        Forms!ka!KA_sub_cdata.Requery


    DoCmd.Close acForm, "ka_PersMeklesana"
End Sub

Private Sub pers_AfterUpdate()
Rem Ja darbojas kā funkcija, tad ' no = dim my līdz dim pc un loop ar Tabula.mo
Rem modulis ' dim pc
Rem Jāizmaina personas koda atzīmējums atbilstošajā tabulā (2.vietas)

DoCmd.Hourglass -1
Dim pc As String, Summa As Integer, mag As String, i As Integer, a As String
If IsNull(Me!Pers) Then
    DoCmd.Hourglass False
    Exit Sub
End If
a = Me!Pers
pc = Left(a, 6) + Right(a, 5)
If Len(pc) <> 11 Then
    DoCmd.Hourglass False
    Exit Sub
End If

    Summa = 0
    Rem Maģiskā summa
    For i = 1 To 10
        Summa = Summa + Val(Mid(pc, i, 1)) * Val(Mid("01060307091005080402", i * 2 - 1, 2))
    Next i
    Rem Kontroles summa
    If Not (1 - Summa) - Int((1 - Summa) / 11) * 11 = Right(pc, 1) Then
        ma = MsgBox("Personas kods nav pareizs!!! Ierakstiet pareizu personas kodu vai atstājiet lauku tukšu!", vbExclamation, "Studiju līgumi")
''        DoCmd.GoToControl "pase"
        a = "PK_ir" 'DoCmd.GoToControl "pers"
    End If

    Dim db As Database, rst As Recordset, e As String
    Set db = CurrentDb()

    e = "SELECT dbo_Personas.Personas_ID, dbo_Personas.Pers_Kods FROM dbo_Personas "
    e = e & "WHERE dbo_Personas.Pers_Kods = '" & Me.Pers & "';"
    Set rec = db.OpenRecordset(e, dbOpenSnapshot, dbSeeChanges)
    If rec.RecordCount > 0 Then
        If (rec!Personas_ID <> Me.Personas_ID Or IsNull(Me.Personas_ID)) Then

            If MsgBox("Šāds personas kods jau atrodas bāzē! Vai vēlaties ierakstīt personu atkārtoti?", vbYesNo, "Kļūda") = vbNo Then
                rec.Close
                DoCmd.Hourglass 0
                Exit Sub
            Else
    '            Me.pers = Null
                DoCmd.Hourglass 0
            End If
        End If
    End If
    If a = "PK_ir" Then
        DoCmd.GoToControl "pers"
    End If
    DoCmd.Hourglass 0
End Sub
