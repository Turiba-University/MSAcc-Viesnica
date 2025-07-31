Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database  '  Use database order for string comparisons.
Option Explicit

Private Sub AddToWhere(FieldValue As Variant, FieldName As String, MyCriteria As String, ArgCount As Integer)
    If FieldValue <> "" Then
        If ArgCount > 0 Then
            MyCriteria = MyCriteria & " AND "
        End If
        MyCriteria = (MyCriteria & FieldName & " LIKE """ & FieldValue & "*"")")
        ArgCount = ArgCount + 1
    End If
End Sub

Private Sub ClearCrit_Click()
    Me.Istaba = Null
    Me.Ligu = Null
    Me.Vard = Null
    Me.Uzva = Null

    Me.Mekl_Irnieks = True
    Me.Mekl_Maksatajs = False

    Me.Istaba.Enabled = True
    Me.Istaba_Sodien.Enabled = True
    Me.Ligu.Enabled = True

    Me.Vard_txt.Caption = "Vārds"
    Me.Uzva_txt.Caption = "Uzvārds"

    Me.Vard.SetFocus
End Sub

Private Sub cmdRez_Click()
    DoCmd.OpenForm "Rezervisti", acNormal
    Me.cmdRez = 0
End Sub



Private Sub Command101_Click()
DoCmd.OpenForm "JTM_Izz_sar", acFormDS
End Sub

Private Sub Form_Open(Cancel As Integer)
    Me!AForma.RowSource = ""
End Sub


Private Sub IstStatUzDatumu_Click()
    DoCmd.OpenForm "VIA_VietuSkaitsUzdatumu"
End Sub

Private Sub Izzin_Jauns_Click()
    If IsNull(Me.AForma) Then
        MsgBox "Izvēlieties personu, kurai veidot izziņu.", vbOKOnly, "JTM"
        Exit Sub
    End If

    Dim db As Database, JTMLig_rst As Recordset, rec  As Recordset, JTMLig_str As String
    Set db = CurrentDb()

''    DoCmd.OpenForm "LigumsViesn", , , "[LIGUM_ID]=" & Me.AForma


    JTMLig_str = "SELECT dbo_Personas.Vards, dbo_viesn_Ligumi.Pers_ID, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_Personas.DzDatums, dbo_viesn_Ligumi.Datums_In, dbo_viesn_Ligumi.Datums_Lidz, dbo_viesn_Ligumi.Datums_Out"
    JTMLig_str = JTMLig_str & " FROM dbo_viesn_Ligumi LEFT JOIN dbo_Personas ON dbo_viesn_Ligumi.Pers_ID = dbo_Personas.Personas_ID"
    JTMLig_str = JTMLig_str & " WHERE (((dbo_viesn_Ligumi.LIGUM_ID)=" & Me.AForma & "));"

    Set JTMLig_rst = db.OpenRecordset(JTMLig_str, dbOpenSnapshot, dbSeeChanges)

''    DoCmd.OpenForm "JTM_Izz"
    DoCmd.OpenForm "JTM_Izz", , , , acFormAdd


    With Forms![JTM_Izz]
        !Izz_Datums = Date
''        Set rec = db.OpenRecordset("SELECT Max(dbo_Viesn_Izzinas.Izz_Nr) AS IzzNr FROM dbo_Viesn_Izzinas;", dbOpenSnapshot, dbSeeChanges)
        Set rec = db.OpenRecordset("SELECT Max(dbo_Viesn_Izzinas.Izz_Nr) AS IzzNr FROM dbo_Viesn_Izzinas WHERE (((Year([Izz_Datums]))=Year(Now()) and Stat=1));", dbOpenSnapshot, dbSeeChanges)
        If rec.EOF Then
            !Izz_Nr = 1
        Else
            !Izz_Nr = rec!IzzNr + 1
        End If
        !DAT_NO = JTMLig_rst!Datums_In
        !DAT_LIDZ = JTMLig_rst!Datums_Lidz
        !Pers_ID = JTMLig_rst!Pers_ID
        !Vards = JTMLig_rst!Vards
        !Uzvards = JTMLig_rst!Uzvards
        If IsNull(JTMLig_rst!Pers_Kods) Then
            If IsNull(JTMLig_rst!DzDatums) Then
                MsgBox "Personai nav norādīti ne PK ne dzimšanas datums. Izziņu sagatavot nevar.", vbExclamation + vbOKOnly, "JTM"
                Exit Sub
            Else
                !PK = JTMLig_rst!DzDatums
            End If
        Else
            !PK = JTMLig_rst!Pers_Kods
        End If

        !Aud_User = CurrentUser()
        !Aud_Date = Date

    End With


End Sub

Private Sub JTM_IK_sar_Click()
    DoCmd.OpenQuery "JTM_IeejasKartes"

End Sub

Private Sub Kase_Click()
    DoCmd.OpenForm "KA"
End Sub

Private Sub Mekl_Irnieks_AfterUpdate()
    Me.Mekl_Irnieks = True
    Me.Mekl_Maksatajs = False

    Me.Istaba.Enabled = True
    Me.Istaba_Sodien.Enabled = True
    Me.Ligu.Enabled = True

    Me.Vard_txt.Caption = "Vārds"
    Me.Uzva_txt.Caption = "Uzvārds"
End Sub

Private Sub Mekl_Maksatajs_AfterUpdate()
Dim Mysql As String
    Me.Mekl_Irnieks = False
    Me.Mekl_Maksatajs = True

    Me.Istaba.Enabled = False
    Me.Istaba_Sodien.Enabled = False
    Me.Ligu.Enabled = False

    Me.Vard_txt.Caption = "Nosaukums"
    Me.Uzva_txt.Caption = "Reģ.Nr"

    DoCmd.OpenForm "Meklesana_Persona_Jur"
    Forms!Meklesana_Persona_Jur.OpenFrom = 1

    Mysql = "SELECT """" as Vards, """" as Uzvards,  """" as Epasts, """" as Tel1, """" as  PID;"

    Forms!Meklesana_Persona_Jur.RecordSource = Mysql
    Forms!Meklesana_Persona_Jur.Vard.SetFocus

End Sub

Private Sub MekletLigumus_Click()
    Dim Mysql As String, MyCriteria As String, MyRecordSource As String
    Dim ArgCount As Integer, Tmp As Variant
    ArgCount = 0

    If Me.Mekl_Irnieks Then
        If IsNull(Me.Istaba) Or Me.Istaba = "" Then
            Mysql = "SELECT tab.LIGUM_ID, tab.Ligums, tab.Lig_Dat AS Datums, dbo_Personas.Vards AS Vārds, dbo_Personas.Uzvards AS Uzvārds, dbo_Personas.Pers_Kods AS PK, dbo_Personas.Valsts, tab.Datums_In AS Ievācas, tab.Datums_Out AS Izvācas, tab.Position AS Stāvoklis"
            Mysql = Mysql & " FROM dbo_viesn_Ligumi AS tab LEFT JOIN dbo_Personas ON tab.Pers_ID = dbo_Personas.Personas_ID  WHERE ("
            MyCriteria = ""
            AddToWhere [Ligu], "(tab.Ligums", MyCriteria, ArgCount
            AddToWhere [Vard], "(dbo_Personas.VARDS", MyCriteria, ArgCount
            AddToWhere [Uzva], "(dbo_Personas.UZVARDS", MyCriteria, ArgCount
            If MyCriteria = "" Then
                MyCriteria = "True"
            End If
            MyRecordSource = Mysql & MyCriteria & ") ORDER BY tab.Ligums DESC;"
        Else
            Mysql = "SELECT tab.LIGUM_ID, tab.Ligums, tab.Lig_Dat AS Datums, dbo_Personas.Vards AS Vārds, dbo_Personas.Uzvards AS Uzvārds, dbo_Personas.Pers_Kods AS PK, dbo_Personas.Valsts, tab.Datums_In AS Ievācas, tab.Datums_Out AS Izvācas, tab.Position AS Stāvoklis"
            Mysql = Mysql & " FROM (dbo_viesn_Ligumi AS tab LEFT JOIN dbo_Personas ON tab.Pers_ID = dbo_Personas.Personas_ID) LEFT JOIN dbo_viesn_Ligumi_Istabas ON tab.Ligums = dbo_viesn_Ligumi_Istabas.Ligums  WHERE ("
            MyCriteria = ""
            AddToWhere [Istaba], "(dbo_viesn_Ligumi_Istabas.Istaba", MyCriteria, ArgCount
            AddToWhere [Ligu], "(tab.Ligums", MyCriteria, ArgCount
            AddToWhere [Vard], "(dbo_Personas.VARDS", MyCriteria, ArgCount
            AddToWhere [Uzva], "(dbo_Personas.UZVARDS", MyCriteria, ArgCount

            If Istaba_Sodien Then
                If Not MyCriteria = "" Then
                    MyCriteria = MyCriteria & " AND "
                End If
                MyCriteria = (MyCriteria & " ((dbo_viesn_Ligumi_Istabas.LIDat_No)<=Date()) AND ((dbo_viesn_Ligumi_Istabas.LIDat_Lidz) Is Null Or (dbo_viesn_Ligumi_Istabas.LIDat_Lidz)>Date())")
            End If

            If MyCriteria = "" Then
                MyCriteria = "True"
            End If
            MyRecordSource = Mysql & MyCriteria & ") ORDER BY tab.Ligums DESC;"
        End If

        Me!AForma.RowSource = MyRecordSource

        Me![AForma].SetFocus
    ElseIf Me.Mekl_Maksatajs Then

    End If
End Sub

Private Sub MZakti_saraksts_Click()
    DoCmd.OpenForm "MZAkti_sar"

End Sub

Private Sub PA_apmaksa_Click()
    DoCmd.OpenQuery "IstPA_ApmaksasStavoklis"
End Sub

Private Sub PA_Apmaksa_quest_Click()
    DoCmd.OpenQuery "IstPA_ApmaksasQuest"

End Sub

Private Sub Skatit_Ligumu_Click()
    If IsNull(Me.AForma) Then
        MsgBox "Iezīmējiet līgumu"
        Exit Sub
    End If

    Dim db As Database, JTMLig_rst As Recordset, JTMLig_str As String, Jaun As Recordset, Lstr As String
    Set db = CurrentDb()

    DoCmd.OpenForm "LigumsViesn", , , "[LIGUM_ID]=" & Me.AForma

    JTMLig_str = "SELECT LigumaInfo.LIGUM_ID, LigumaInfo.Pers_ID, LigumaInfo.Ligums, LigumaInfo.Lig_Dat, LigumaInfo.Vards, LigumaInfo.Uzvards, LigumaInfo.PE_Konv, "
    JTMLig_str = JTMLig_str & " LigumaInfo.PK , LigumaInfo.Pase, LigumaInfo.Piezimes, LigumaInfo.D_Valsts, LigumaInfo.Novads, LigumaInfo.Pagasts, LigumaInfo.PILSETA, "
    JTMLig_str = JTMLig_str & " LigumaInfo.Iela , LigumaInfo.POSITION, LigumaInfo.Pilnv_Persona, LigumaInfo.Datums_In, LigumaInfo.Datums_Lidz, LigumaInfo.Datums_Out, "
    JTMLig_str = JTMLig_str & " LigumaInfo.DzDatums , LigumaInfo.Tel1, LigumaInfo.Epasts, LigumaInfo.Pilsoniba, LigumaInfo.Valsts, LigumaInfo.Maksatajs_PID, LigumaInfo.Maksatajs_Nos, "
    JTMLig_str = JTMLig_str & " dbo_viesn_Ligumi.IstVSk, dbo_viesn_Ligumi.IstMCena, dbo_viesn_Ligumi.IstComf, dbo_viesn_Ligumi.PositionComment, dbo_viesn_Ligumi.TNVeids, dbo_viesn_Ligumi.TNKopa, dbo_viesn_Ligumi.TNNepiemero, LigumaInfo.TNGrupa"
    JTMLig_str = JTMLig_str & " FROM LigumaInfo"
    JTMLig_str = JTMLig_str & " WHERE (((LigumaInfo.LIGUM_ID)=" & Me.AForma & "));"

    Set JTMLig_rst = db.OpenRecordset(JTMLig_str, dbOpenSnapshot, dbSeeChanges)

    Lstr = "SELECT dbo_viesn_kl_LBData.POSITION, dbo_viesn_kl_LBData.TUA, dbo_viesn_kl_LBData.TN"
    Lstr = Lstr & " FROM dbo_viesn_kl_LBData"
    Lstr = Lstr & " WHERE (((dbo_viesn_kl_LBData.POSITION)=""" & JTMLig_rst!POSITION & """));"
    Set Jaun = db.OpenRecordset(Lstr, dbOpenDynaset, dbSeeChanges)



    DoCmd.OpenForm "LigumsViesn"

    With Forms![LigumsViesn]
''        .DefaultEditing = 4
        !Ieraksts.Enabled = False
        !Ligum_rep.Enabled = True
        !Caurlaide.Enabled = True
        !Ligum_rep = "Līgums"
        !Caurlaide = "Caurlaide"

        !Pers_ID = JTMLig_rst!Pers_ID
        !CKods = JTMLig_rst!Pers_ID
        !LIGUM_ID = JTMLig_rst!LIGUM_ID

        !Vards = JTMLig_rst!Vards
        !Uzvards = JTMLig_rst!Uzvards
        !PK = JTMLig_rst!PK
        !DzDat = JTMLig_rst!DzDatums
        !TelNr = JTMLig_rst!Tel1
        !Epasts = JTMLig_rst!Epasts
        !Pase = JTMLig_rst!Pase
        !PILSETA = JTMLig_rst!PILSETA

        !D_Valsts = JTMLig_rst!D_Valsts
        !Pagasts = JTMLig_rst!Pagasts
        !Novads = JTMLig_rst!Novads
        !Iela = JTMLig_rst!Iela
        !Ligums = JTMLig_rst!Ligums
        !Lig_Dat = JTMLig_rst!Lig_Dat
        !POSITION = JTMLig_rst!POSITION
        !Position_Comment = JTMLig_rst!PositionComment
        !Piezimes = JTMLig_rst!Piezimes
        !PilnvarotaPersona = JTMLig_rst!Pilnv_Persona
        !Valsts = JTMLig_rst!Valsts
        !Pilsoniba = JTMLig_rst!Pilsoniba
        !Datums_In = JTMLig_rst!Datums_In
        !Datums_Lidz = JTMLig_rst!Datums_Lidz
        !Datums_Out = JTMLig_rst!Datums_Out
        !Maksatajs_PID = JTMLig_rst!Maksatajs_PID
        !Maksatajs_txt = JTMLig_rst!Maksatajs_Nos
        !IstVSk = JTMLig_rst!IstVSk
        !IstMCena = JTMLig_rst!IstMCena
        !IstComf = JTMLig_rst!IstComf

        If Jaun!TN = -1 Then
        !TNAttiecas = -1
        !TN_info.Visible = True
        !MAKSAJUMIbeta.Form.TNKopa.Enabled = True
        !MAKSAJUMIbeta.Form.TNNepiemero18.Enabled = True
        !MAKSAJUMIbeta.Form.TNNepiemeroDS.Enabled = True
        Else
        !TNAttiecas = 0
        !TN_info.Visible = False
        !MAKSAJUMIbeta.Form.TNKopa.Enabled = False
        !MAKSAJUMIbeta.Form.TNNepiemero18.Enabled = False
        !MAKSAJUMIbeta.Form.TNNepiemeroDS.Enabled = False
        End If

''        !TNVeids = JTMLig_rst!TNVeids
''        !TNKopa = JTMLig_rst!TNKopa
''        !TNNepiemero = JTMLig_rst!TNNepiemero
        !TNGrupa = JTMLig_rst!TNGrupa


        !MAKSAJUMIbeta.Visible = True
        !Vards.BackColor = 12632256
        !Uzvards.BackColor = 12632256
        !Lig_Dat.BackColor = 12632256
        !PilnvarotaPersona.BackColor = 12632256
        !Piezimes.BackColor = 12632256
        !Lig_Dat.Locked = True
        !PilnvarotaPersona.Locked = True
        !Piezimes.Locked = True
        !Vards.Locked = True
        !Uzvards.Locked = True
        !Jauns.Caption = "Jauns"
        !Jauns.Enabled = False
        !Valsts.Locked = True
        !Pilsoniba.Locked = True
''        !Valstis.Enabled = False
        !TNGrupa.Locked = True

        If JTMLig_rst!PE_Konv = 1 Then
            !PE_Konvertets.Visible = True
        Else
            !PE_Konvertets.Visible = False
        End If

        If JTMLig_rst!PositionComment = "Cita skola" Then
            !Position_Comment.Visible = False
        Else
            !Position_Comment.Visible = True
        End If

        If Me.AForma.Column(8) = "Viesis" Then
            !LSumKopa.Visible = True
        Else
            !LSumKopa.Visible = False
        End If

    End With

        JTMLig_str = "SELECT dbo_Personas_Cert.Personas_ID, dbo_Personas_Cert.CertVeids, dbo_Personas_Cert.CertDatums, dbo_Personas_Cert.Aud_User, dbo_Personas_Cert.Aud_Date"
        JTMLig_str = JTMLig_str & " FROM dbo_Personas_Cert"
        JTMLig_str = JTMLig_str & " WHERE (((dbo_Personas_Cert.Personas_ID)=" & Forms!LigumsViesn.Pers_ID & ")and ((dbo_Personas_Cert.CertTips)=2));"
        Set JTMLig_rst = db.OpenRecordset(JTMLig_str, dbOpenDynaset, dbSeeChanges)
        If Not JTMLig_rst.EOF Then
            Forms![LigumsViesn].PersCert = JTMLig_rst!CertVeids
            Forms![LigumsViesn].PersCertTerm = JTMLig_rst!CertDatums
        End If


     CheckPersData (Forms!LigumsViesn.Pers_ID)

End Sub
Private Sub Jauns_Ligums_Click()

    If CurrentProject.AllForms("LigumsViesn").IsLoaded = True Then
       MsgBox "Ir atvērta līguma apskates forma. Aizveriet to, tad mēģiniet vēlreiz.", vbOKOnly, "JTM līgumi"
       Exit Sub
    End If

    Dim stLinkCriteria As String, Mysql

    DoCmd.OpenForm "LigumsViesn", , , stLinkCriteria

    CheckPersData (0)

    With Forms![LigumsViesn]
        !Jauns.Caption = "Atcelt"
'        !Vards.Locked = False
'        !Uzvards.Locked = False
        !MAKSAJUMIbeta.Visible = False
''        !Vards.BackColor = 16777215
''        !Uzvards.BackColor = 16777215
        !Vards.BackColor = 12632256
        !Uzvards.BackColor = 12632256
        !Ligums.BackColor = 12632256
        !Lig_Dat.BackColor = 12632256
        !Piezimes.BackColor = 12632256
        !Vards.ControlSource = ""
        !Uzvards.ControlSource = ""
        !PK.ControlSource = ""
        !Pase.ControlSource = ""
        !PILSETA.ControlSource = ""
        !Pers_ID.ControlSource = ""
        !Novads.ControlSource = ""
        !Iela.ControlSource = ""
        !Ligums.ControlSource = ""
        !Lig_Dat.ControlSource = ""
        !POSITION.ControlSource = ""
        !Piezimes.ControlSource = ""
        !PilnvarotaPersona.ControlSource = ""
        !Valsts.ControlSource = ""
        !Datums_In.ControlSource = ""
        !Datums_Lidz.ControlSource = ""
        !Datums_Out.ControlSource = ""
        !Caurlaide.Enabled = False
                 !Ligum_rep.Enabled = False
        !Maksatajs.Enabled = False
        !Labot.Enabled = False
        !LIGUM_ID.ControlSource = ""
        !LIGUM_ID = Null

        'vards.SetFocus
'''        .Jauns = Click
    End With

     DoCmd.OpenForm "Meklesana_Persona"
     Forms!Meklesana_Persona.OpenFrom = 1

     Mysql = "SELECT """" as Vards, """" as Uzvards, """" as Pers_Kods, """" as Pozicija, """" as Dok_Nr,"""" as Valsts, """" as D_Novads, """" as D_Pagasts, """" as D_Pilseta, """" as D_Iela, """" as Tel1, """" as  PID;"

     Forms!Meklesana_Persona.RecordSource = Mysql
'     Forms!Meklesana_Persona!Detail.Visible = False
     Forms!Meklesana_Persona.Vard = Me.Vard
     Forms!Meklesana_Persona.Uzva = Me.Uzva
     Forms!Meklesana_Persona.Requery
     Forms!Meklesana_Persona!Vard.SetFocus
End Sub
Private Sub Aizvert_Click()
    If MsgBox("Vai vēlaties aizvērt datubāzi?", vbYesNo, "JTM") = vbNo Then
        Exit Sub
    Else
        DoCmd.Close
        DoCmd.Quit
    End If
End Sub

Private Sub Skatit_Ligumu_Enter()

End Sub

Private Sub TNSaraksts_Click()
    DoCmd.OpenQuery "TN_saraksts"

End Sub
