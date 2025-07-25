Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Dim ma


Private Sub Adr_Pagasts_Click()
    DoCmd.OpenForm "STL_kl_Adrese"
    Forms!STL_kl_Adrese.OF = 2
    Raj = Trim(Me.P_Novads)
    Pag = Trim(Me.P_Pagasts)

    Dim RData As String
    RData = "SELECT dbo_kl_Adresem_RPP.Novads, dbo_kl_Adresem_RPP.Pagasts FROM dbo_kl_Adresem_RPP"
    If Not IsNull(Raj) And Not IsNull(Pag) Then
        RData = RData & " WHERE (((dbo_kl_Adresem_RPP.Novads) Like """ & Raj & "*"") And ((dbo_kl_Adresem_RPP.Pagasts) Like """ & Pag & "*""))"
    ElseIf Not IsNull(Raj) Then
        RData = RData & " WHERE (((dbo_kl_Adresem_RPP.Novads) Like """ & Raj & "*"") )"
    ElseIf Not IsNull(Pag) Then
        RData = RData & " WHERE (((dbo_kl_Adresem_RPP.Pagasts) Like """ & Pag & "*""))"
    End If
    RData = RData & " GROUP BY dbo_kl_Adresem_RPP.Novads, dbo_kl_Adresem_RPP.Pagasts"
    RData = RData & " ORDER BY dbo_kl_Adresem_RPP.Novads, dbo_kl_Adresem_RPP.Pagasts;"

    Forms!STL_kl_Adrese.RecordSource = RData
    Forms!STL_kl_Adrese.Pagasts.Visible = True
    Forms!STL_kl_Adrese.Pagasts_Label.Visible = True
    Forms!STL_kl_Adrese.PILSETA.Visible = False
    Forms!STL_kl_Adrese.Pilseta_Label.Visible = False
    Forms!STL_kl_Adrese.Requery
End Sub

Private Sub Adr_Pilseta_Click()
    DoCmd.OpenForm "STL_kl_Adrese"
    Forms!STL_kl_Adrese.OF = 3
    Raj = Trim(Me.P_Novads)
    Pag = Trim(Me.P_Pagasts)
    Pils = Trim(Me.P_Pilseta)

    Dim RData As String
    RData = "SELECT dbo_kl_Adresem_RPP.Novads, dbo_kl_Adresem_RPP.Pagasts , dbo_kl_Adresem_RPP.Pilseta , dbo_kl_Adresem_RPP.PilsTips FROM dbo_kl_Adresem_RPP"


    If Raj <> "" Then
        If ArgCount > 0 Then
            MyCriteria = MyCriteria & " AND "
        End If
        MyCriteria = (MyCriteria & " (Novads  LIKE """ & Raj & "*"")")
        ArgCount = ArgCount + 1
    End If
    If Pag <> "" Then
        If ArgCount > 0 Then
            MyCriteria = MyCriteria & " AND "
        End If
        MyCriteria = (MyCriteria & " (Pagasts  LIKE """ & Pag & "*"")")
        ArgCount = ArgCount + 1
    End If
    If Pils <> "" Then
        If ArgCount > 0 Then
            MyCriteria = MyCriteria & " AND "
        End If
        MyCriteria = (MyCriteria & " (pILSETA  LIKE """ & Pils & "*"")")
        ArgCount = ArgCount + 1
    End If

    If ArgCount > 0 Then
        RData = RData & " WHERE (" & MyCriteria & ")"
    End If

    RData = RData & " GROUP BY dbo_kl_Adresem_RPP.Novads, dbo_kl_Adresem_RPP.Pagasts, dbo_kl_Adresem_RPP.Pilseta, dbo_kl_Adresem_RPP.PilsTips"
    RData = RData & " ORDER BY dbo_kl_Adresem_RPP.Novads, dbo_kl_Adresem_RPP.Pagasts, dbo_kl_Adresem_RPP.Pilseta;"

    Forms!STL_kl_Adrese.RecordSource = RData
    Forms!STL_kl_Adrese.Pagasts.Visible = True
    Forms!STL_kl_Adrese.Pagasts_Label.Visible = True
    Forms!STL_kl_Adrese.PILSETA.Visible = True
    Forms!STL_kl_Adrese.Pilseta_Label.Visible = True
    Forms!STL_kl_Adrese.Requery
End Sub

Private Sub Adr_Novads_Click()
    DoCmd.OpenForm "STL_kl_Adrese"
    Dim RData As String
    RData = "SELECT dbo_kl_Adresem_RPP.Novads FROM dbo_kl_Adresem_RPP GROUP BY dbo_kl_Adresem_RPP.Novads ORDER BY dbo_kl_Adresem_RPP.Novads;"
    Forms!STL_kl_Adrese.RecordSource = RData
    Forms!STL_kl_Adrese.Pagasts.Visible = False
    Forms!STL_kl_Adrese.Pagasts_Label.Visible = False
    Forms!STL_kl_Adrese.PILSETA.Visible = False
    Forms!STL_kl_Adrese.Pilseta_Label.Visible = False
    Forms!STL_kl_Adrese.OF = 1
    Forms!STL_kl_Adrese.Requery
End Sub

Private Sub DokDerBezterm_AfterUpdate()
    If Me.DokDerBezterm Then
        Me.DokDerTermins = 0
        Me.DokDerTermins.Enabled = False
    Else
        Me.DokDerTermins = Null
        Me.DokDerTermins.Enabled = True
    End If
End Sub

Private Sub Form_Close()
    Me.Modal = False
End Sub

Private Sub Form_Open(Cancel As Integer)
    Me.ShowPicture = 0
    Call ShowPicture_AfterUpdate
End Sub

Private Sub LV_D_Valsts_Click()
    Me.P_Valsts = "Latvija"
End Sub

Private Sub LV_Pilsoniba_Click()
    Me.Pilsoniba = "Latvija"
End Sub

Private Sub LV_Valsts_Click()
    Me.Valsts = "Latvija"

    Me.PAplVeids.Enabled = False
    Me.[Pases Nr].Enabled = False
    Me.Dok_Izdots_Datums.Enabled = False
    Me.Dok_Izdots_Vieta.Enabled = False
    Me.DokDerTermins.Enabled = False
    Me.Dok_Izdots_Iestade.Enabled = False
    Me.Pilsoniba.Enabled = False
    Me.LV_Pilsoniba.Enabled = False
    Me.ValstsIzvelePils.Enabled = False
''    Me.P_Valsts.Enabled = False
''    Me.ValstsIzvele_Dekl.Enabled = False
''    Me.P_Novads.Enabled = False
''    Me.Adr_Novads.Enabled = False
''    Me.P_Pagasts.Enabled = False
''    Me.Adr_Pagasts.Enabled = False
''    Me.P_Pilseta.Enabled = False
''    Me.Adr_Pilseta.Enabled = False
''    Me.P_Iela.Enabled = False
''    Me.P_Indekss.Enabled = False
End Sub

Private Sub pers_AfterUpdate()
Rem Ja darbojas kā funkcija, tad ' no = dim my līdz dim pc un loop ar Tabula.mo
Rem modulis ' dim pc
Rem Jāizmaina personas koda atzīmējums atbilstošajā tabulā (2.vietas)

DoCmd.Hourglass -1
Dim pc As String, Summa As Integer, mag As String, i As Integer, a As String
If IsNull(Me!Pers) Then Exit Sub
a = Me!Pers
pc = Left(a, 6) + Right(a, 5)
If Len(pc) <> 11 Then Exit Sub
    Summa = 0
    Rem Maģiskā summa
    For i = 1 To 10
        Summa = Summa + Val(Mid(pc, i, 1)) * Val(Mid("01060307091005080402", i * 2 - 1, 2))
    Next i
    Rem Kontroles summa
''    If Not (1 - Summa) - Int((1 - Summa) / 11) * 11 = Right(pc, 1) Then
''        ma = MsgBox("Personas kods nav pareizs!!! Ierakstiet pareizu personas kodu vai atstājiet lauku tukšu!", vbExclamation, "Studiju līgumi")
''''        DoCmd.GoToControl "pase"
''        a = "PK_ir" 'DoCmd.GoToControl "pers"
''    End If

    If Not (1 - Summa) - Int((1 - Summa) / 11) * 11 = Right(pc, 1) Then
        ma = MsgBox("Personas kods nav pareizs!!! Ierakstiet pareizu personas kodu vai atstājiet lauku tukšu!", vbExclamation, "Studiju līgumi")
''        DoCmd.GoToControl "pase"
        a = "PK_ir" 'DoCmd.GoToControl "pers"
    Else
        If Val(Mid(pc, 1, 2)) < 32 Then
            Me.DzDatums = DateSerial(Val(Mid(pc, 5, 2)), Val(Mid(pc, 3, 2)), Val(Mid(pc, 1, 2)))
        End If
    End If


    Dim db As Database, rst As Recordset, e As String
    Set db = CurrentDb()

    e = "SELECT dbo_Personas.Personas_ID, dbo_Personas.Pers_Kods FROM dbo_Personas "
    e = e & "WHERE dbo_Personas.Pers_Kods = '" & Me.Pers & "';"
    Set rec = db.OpenRecordset(e, dbOpenSnapshot, dbSeeChanges)
    If rec.RecordCount > 0 Then
        If (rec!Personas_ID <> Me.Personas_ID Or IsNull(Me.Personas_ID)) Then

''''''''''    Set Jauns = MYDB.OpenRecordset("Personas", DB_OPEN_DYNASET, dbSeeChanges)
''''''''''    Set dbs = CurrentDb()
''''''''''    Set rst = dbs.OpenRecordset("Personas", dbOpenDynaset, dbSeeChanges)
''''''''''
''''''''''    'strKods = Left(Me.pers, 6) + "-" + Right(Me.pers, 5)
''''''''''    rst.FindFirst "[Personas kods] = '" & Me.pers & "'"
''''''''''Dim rec As Recordset, e   As String, db As Database
''''''''''Dim msg, msg0, msg1, msg2, St_vards, St_uzvards As String
''''''''''    e = "SELECT vards, uzvards, Kapec, Aizliegts, Aizl_ID FROM dbo_Stop WHERE CKods = " & persid & " GROUP BY vards, uzvards, Kapec, Aizliegts, Aizl_ID having (Aizl_ID = 1 or Aizl_ID = 2 or Aizl_ID = " & aizlieguma_id & ");"
''''''''''Set db = CurrentDb()
''''''''''Set rec = db.OpenRecordset(e, dbOpenSnapshot, dbSeeChanges)
''''''''''If rec.RecordCount > 0 Then

''''''''''    ID = rst![Personas ID]
''''''''''    If rst.NoMatch = False And (ID <> Me.Personas_ID Or IsNull(Me.Personas_ID)) Then
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
        DoCmd.GoToControl "pozi"
        DoCmd.GoToControl "pers"
    End If
    DoCmd.Hourglass 0
End Sub

Private Sub PierAddr_to_DzvAddr_Click()
    If PierAddr_to_DzvAddr = -1 Then
        Dz_Novads = P_Novads
        Dz_Pilseta = P_Pilseta
        Dz_Iela = P_Iela
        Dz_Indekss = P_Indekss
    Else
        Dz_Novads = Null
        Dz_Pilseta = Null
        Dz_Iela = Null
        Dz_Indekss = Null
    End If
End Sub

Private Sub ShowPicture_AfterUpdate()
If IsNull(Me.Pers) Then
    Me.ShowPicture = 0
    Exit Sub
End If
If Me.ShowPicture = -1 Then
    Dim TEXT As String, File As String, Filename As String
        Filename = Me.Pers

        If ShowPicture = True Then
            If IsNull(Filename) <> True Then
                TEXT = Filename
                TEXT = "H:\personas\foto\" & TEXT & ".jpg"
                File = Dir(TEXT)                                        ' Pārbaudam, vai tāds fails eksistē.

                If File = "" Then
                    Bilde.Picture = ""
                    Me.PicNotFound.Visible = True
                    Bilde.Visible = False
    '                MsgBox ("Fails '" & Text & "' nav atrasts.")     ' Ziņojums, ka faila nav
                Else
                    Bilde.Picture = TEXT
                    Me.PicNotFound.Visible = False
                    Bilde.Visible = True
                End If
            Else
                Bilde.Picture = ""
                Me.PicNotFound.Visible = True
                Bilde.Visible = False
            End If
        Else
            Bilde.Picture = ""
            Me.PicNotFound.Visible = False
        End If
Else
    Bilde.Picture = ""
    Me.PicNotFound.Visible = False
    Bilde.Visible = False
End If

End Sub
Private Sub Command64_Click()
    Dim da
    Dim FromViesnLig
    Dim MyDB As Database, Jaun As Recordset, Lstr As String

    FromViesnLig = Me.OpenFromViesnLig
    If FromViesnLig = -1 Then
        Set MyDB = CurrentDb()
        DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70
        Forms!LigumsViesn.Valsts = Me.Valsts
        Forms!LigumsViesn.Pilsoniba = Me.Pilsoniba

        Lstr = "SELECT dbo_viesn_Ligumi.Valsts "
        Lstr = Lstr & " FROM dbo_viesn_Ligumi"
        Lstr = Lstr & " WHERE (((dbo_viesn_Ligumi.LIGUM_ID)=" & Forms!LigumsViesn.LIGUM_ID & "));"
        Set Jaun = MyDB.OpenRecordset(Lstr, dbOpenDynaset, dbSeeChanges)
        Jaun.Edit
            Jaun!Valsts = Me.Valsts
        Jaun.Update
        Jaun.Close
        Forms!LigumsViesn.Requery
    End If
    DoCmd.Close
End Sub

Private Sub Slegt_Ligumu_Click()

    Dim FromViesnLig
    Dim MyDB As Database, Jaun As Recordset, Lstr As String, rec As Recordset
    Set MyDB = CurrentDb()

    FromViesnLig = Me.OpenFromViesnLig
    If OpenFromPersMekl = -1 Then
        If IsNull(Me.Vard) Or IsNull(Me.Uzva) Or IsNull(Me.Valsts) Then
            ma = MsgBox("Aizpildiet obligātos laukus (vārds, uzvārds, valsts)!", vbExclamation, "Personas dati")
            Exit Sub
        End If
        DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70
        DoCmd.Close
        Exit Sub
    End If

    If FromViesnLig = -1 Then
        DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70
        Forms!LigumsViesn.Valsts = Me.Valsts
        Forms!LigumsViesn.Pilsoniba = Me.Pilsoniba

        Lstr = "SELECT dbo_viesn_Ligumi.Valsts "
''        Lstr = Lstr & " dbo_viesn_Ligumi.Datums_In, dbo_viesn_Ligumi.Datums_Lidz, dbo_viesn_Ligumi.Datums_Out"
        Lstr = Lstr & " FROM dbo_viesn_Ligumi"
        Lstr = Lstr & " WHERE (((dbo_viesn_Ligumi.LIGUM_ID)=" & Forms!LigumsViesn.LIGUM_ID & "));"
        Set Jaun = MyDB.OpenRecordset(Lstr, dbOpenDynaset, dbSeeChanges)
        Jaun.Edit
            Jaun!Valsts = Me.Valsts
        Jaun.Update
        Jaun.Close



        Forms!LigumsViesn.TelNr = Me.Tel1
        Forms!LigumsViesn.Epasts = Me.Epasts

        DoCmd.Close
        Forms!LigumsViesn.Requery
        Exit Sub
    End If

    If OpenFromRezervJauns = -1 Then
        DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70
        DoCmd.Close
        Forms!meklesana.Requery
        Exit Sub
    End If

'''''''pers_AfterUpdate
Dim scrcontrol, KONTROLE, kontrole1 As Control, PID As Long
'==== saglabā labojumus
    If Me.Jaun Then
        Dim db As Database, rst As Recordset, e As String, atb
        Set db = CurrentDb()

        Me.Aud_Comment = ""
        e = "SELECT dbo_Personas.Personas_ID, dbo_Personas.Pers_Kods FROM dbo_Personas "
        e = e & "WHERE dbo_Personas.Pers_Kods = '" & Me.Pers & "';"
        Set rec = db.OpenRecordset(e, dbOpenSnapshot, dbSeeChanges)
        If rec.RecordCount > 0 Then
            If (rec!Personas_ID <> Me.Personas_ID Or IsNull(Me.Personas_ID)) Then
                atb = InputBox("Persona ar šādu personas kodu ir reģistrēta bāzē. Ievadiet pamatojumu, kāpēc persona tiek reģistrēta atkārtoti", "JTM līgumi")
                If atb = "" Then
                    rec.Close
                    DoCmd.Hourglass 0
                    Exit Sub
                Else
                    Me.Aud_Comment = atb
                End If
            End If
        End If
    End If

    Dim sv_PID, sv_Vards, sv_Uzvards, sv_PK

    sv_Vards = Me!Vard
    sv_Uzvards = Me!Uzva
    sv_PK = Me!Pers

    DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70

    e = "SELECT dbo_Personas.Personas_ID"
    e = e & " FROM dbo_Personas"
    e = e & " WHERE (((dbo_Personas.Vards) = '" & sv_Vards & "') And ((dbo_Personas.Uzvards) = '" & sv_Uzvards & "') "
    If IsNull(sv_PK) Then
        e = e & " And ((dbo_Personas.Pers_Kods) is null))"
    Else
        e = e & " And ((dbo_Personas.Pers_Kods) = '" & sv_PK & "'))"
    End If
    e = e & " ORDER BY dbo_Personas.Personas_ID DESC;"
    Set rec = MyDB.OpenRecordset(e, dbOpenSnapshot, dbSeeChanges)

    sv_PID = rec!Personas_ID    'Me.Personas_ID
    Me.Requery
    Me.Filter = "Personas_ID = " & sv_PID
    Me.FilterOn = True

    Forms!LigumsViesn.Vards = Me.Vard
    Forms!LigumsViesn.Uzvards = Me.Uzva
    Forms!LigumsViesn.PK = Me.Pers
    Forms!LigumsViesn.PILSETA = Me.P_Pilseta
    Forms!LigumsViesn.Iela = Me.P_Iela
    Forms!LigumsViesn.Pase = Me.Pases_Nr
''    Forms!LigumsViesn.POSITION = Null
    Forms!LigumsViesn.Pers_ID = Me.Personas_ID
    Forms!LigumsViesn.Valsts = Me.Valsts
    Forms!LigumsViesn.Datums_In = Date

    Forms!LigumsViesn.TelNr = Me.Tel1
    Forms!LigumsViesn.Epasts = Me.Epasts

    Forms!LigumsViesn.Novads = Me.P_Novads
    Forms!LigumsViesn.Pagasts = Me.P_Pagasts
    Forms!LigumsViesn.Vards.BackColor = 12632256
    Forms!LigumsViesn.Uzvards.BackColor = 12632256
    Forms!LigumsViesn.Lig_Dat.BackColor = 16777215
    Forms!LigumsViesn.Piezimes.Locked = False
    Forms!LigumsViesn.Piezimes.BackColor = 16777215
    Forms!LigumsViesn.PilnvarotaPersona.Locked = False
    Forms!LigumsViesn.PilnvarotaPersona.BackColor = 16777215
    Forms!LigumsViesn.POSITION.BackColor = 16777215
    Forms!LigumsViesn.POSITION.Locked = False
    Forms!LigumsViesn.Valsts.Locked = False
    Forms!LigumsViesn.Valsts.BackColor = 16777215
    Forms!LigumsViesn.Datums_In.Locked = False
    Forms!LigumsViesn.Datums_In.BackColor = 16777215
    Forms!LigumsViesn.Datums_Lidz.Locked = False
    Forms!LigumsViesn.Datums_Lidz.BackColor = 16777215
    Forms!LigumsViesn.Datums_Out.Locked = False
    Forms!LigumsViesn.Datums_Out.BackColor = 16777215

    Forms!LigumsViesn.Labot.Enabled = True
    Forms!LigumsViesn.Ieraksts.Enabled = False
    Forms!LigumsViesn.Valstis.Enabled = False

    Forms!LigumsViesn.Ligums = DMax("[Ligums]", "dbo_viesn_Ligumi") + 1
    Set KONTROLE = Forms!LigumsViesn.Lig_Dat
    KONTROLE.SetFocus
    Forms!LigumsViesn.Lig_Dat = Date           'Format(Now, "dd-mm-yyyy")
    Forms!LigumsViesn.Lig_Dat.Locked = False
    Forms!LigumsViesn.Ieraksts.Enabled = True
    Forms!LigumsViesn.MAKSAJUMIbeta.Visible = True
    Forms!LigumsViesn.Vards.Locked = True
    Forms!LigumsViesn.Uzvards.Locked = True

        Forms![LigumsViesn].PersCert.Enabled = True
        Forms![LigumsViesn].PersCertTerm.Enabled = True
        Forms![LigumsViesn].PersCert.Locked = False
        Forms![LigumsViesn].PersCertTerm.Locked = False
        Forms![LigumsViesn].PersCert.BackColor = 16777215
        Forms![LigumsViesn].PersCertTerm.BackColor = 16777215


    Forms!LigumsViesn.Labosana = Null

DoCmd.Close A_FORM, "Personas_dati"

End Sub


Private Sub ValstsIzvele_Click()
    DoCmd.OpenForm "STL_kl_Valsts", acFormDS, , stLinkCriteria
    Forms!STL_kl_Valsts!OpenFrom = 1
End Sub

Private Sub ValstsIzvele_Dekl_Click()
    DoCmd.OpenForm "STL_kl_Valsts", acFormDS, , stLinkCriteria
    Forms!STL_kl_Valsts!OpenFrom = 5
End Sub

Private Sub ValstsIzvelePils_Click()
    DoCmd.OpenForm "STL_kl_Valsts", acFormDS, , stLinkCriteria
    Forms!STL_kl_Valsts!OpenFrom = 2
End Sub
