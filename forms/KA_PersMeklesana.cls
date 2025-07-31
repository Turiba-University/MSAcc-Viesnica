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
Private Sub AddToWhereE(FieldValue As Variant, FieldName As String, MyCriteria As String, ArgCount As Integer)
    If FieldValue <> "" Then
        If ArgCount > 0 Then
            MyCriteria = MyCriteria & " AND "
        End If
        If FieldValue = """BAT students""" Then
            MyCriteria = (MyCriteria & "(" & FieldName & " =" & FieldValue & ") or " & FieldName & " = ""Darbinieks"") or " & FieldName & " = ""Viesis-darbin., stud.""))")
        Else
            MyCriteria = (MyCriteria & FieldName & " =" & FieldValue & ")")
        End If
        ArgCount = ArgCount + 1
    End If
End Sub
Private Sub AddToWhereNOT(FieldValue As Variant, FieldName As String, MyCriteria As String, ArgCount As Integer)
    If FieldValue <> "" Then
        If ArgCount > 0 Then
            MyCriteria = MyCriteria & " AND "
        End If
        MyCriteria = (MyCriteria & " NOT (" & FieldName & " =" & FieldValue & "))")
        ArgCount = ArgCount + 1
    End If
End Sub

Private Sub AForma_Click()
    If Me.MeklTips = 40 Or Me.MeklTips = 10 Then 'stāvvietas caurlaides, protokoli
        Me.lb_AtlPiepr = Null
    End If
End Sub

Private Sub Atlaujas_Click()
    If IsNull(Me![AForma]) Then
        MsgBox "Jāizvēlas students", , "Studiju līgumi"
        Exit Sub
    End If

On Error GoTo Err_Sekmes_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Atlauju saraksts 2002"

    stLinkCriteria = "[LIG_NUM]=" & Me![AForma]
    DoCmd.OpenForm stDocName, acFormDS, , stLinkCriteria

Exit_Sekmes_Click:
    Exit Sub

Err_Sekmes_Click:
    MsgBox Err.Description
    Resume Exit_Sekmes_Click

End Sub


Private Sub ClearCriteria_Click()
    Me.AtlaujasNr = Null
    Me.Ligu = Null
    Me.Datu = Null
    Me.Vard = Null
    Me.Uzva = Null
    Me.PK = Null
    Me!AForma.RowSource = ""

End Sub

Private Sub cmdIzveidotAtlauju_Click()

    If IsNull(Me![lb_AtlPiepr].Column(8)) Then
        MsgBox "Jāizvēlās atļaujas sagatave!", vbExclamation, "Kase"
        Exit Sub
    End If

    Dim stLinkCriteria As String
    stLinkCriteria = "[AtlID]=" & Me![lb_AtlPiepr].Column(8)
    DoCmd.OpenForm "Atlauju_Pieprasijumi", , , stLinkCriteria
    Forms!Atlauju_Pieprasijumi!AtlNr = Null
    Me.Atl_Veidot = -1
End Sub

Private Sub Crl_NeregPers_Click()
    DoCmd.Close
    DoCmd.OpenForm "KA_Caurlaides_Reg"
    Forms!KA_Caurlaides_Reg!OpenFrom = 30
    Forms!KA_Caurlaides_Reg!Periods_No = Date
    Forms!KA_Caurlaides_Reg!Datums = Date
End Sub

Private Sub Form_Close()
    Me!AForma.RowSource = ""
    Me!lb_AtlPiepr.RowSource = ""
    Me.AForma.Height = 4500
    Me.lb_AtlPiepr.Visible = False
    Me.lb_AtlPiepr_lbl.Visible = False
    Me.Atl_Veidot = Null
    Me.cmdIzveidotAtlauju.Enabled = False
    Me.Crl_NeregPers.Visible = False
End Sub

Private Sub Form_Open(Cancel As Integer)
    Dim Drikst As Boolean
    Drikst = TiesibasDarbibai(38)
    If Drikst Then

    Else
        MsgBox ("Jums nav tiesību izmantot šo formu.")
        DoCmd.Close
    End If
    Me.Vard.SetFocus
    Me!AForma.RowSource = ""
    Me!lb_AtlPiepr.RowSource = ""
    Me.AForma.Height = 4500
    Me.lb_AtlPiepr.Visible = False
    Me.lb_AtlPiepr_lbl.Visible = False
    Me.Atl_Veidot = Null
    Me.cmdIzveidotAtlauju.Enabled = False
    Me.Crl_NeregPers.Visible = False
End Sub

Private Sub IzveletiesLigumu_Click()
    Dim PID, StrLen, VLigNr
    VLigNr = 0

    If Me.MeklTips = 50 Or Me.MeklTips = 60 Then  'JTM līgums
        If IsNull(Me.AForma) Then
            MsgBox "Iezīmējiet līgumu"
            Exit Sub
        End If

        Dim db As Database, JTMLig_rst As Recordset, JTMLig_str As String, Lstr As String, Jaun As Recordset
        Set db = CurrentDb()

        DoCmd.OpenForm "LigumsViesn", , , "[LIGUM_ID]=" & Me.AForma

        JTMLig_str = "SELECT LigumaInfo.LIGUM_ID, LigumaInfo.Pers_ID, LigumaInfo.Ligums, LigumaInfo.Lig_Dat, LigumaInfo.Vards, LigumaInfo.Uzvards, "
        JTMLig_str = JTMLig_str & " LigumaInfo.PK , LigumaInfo.Pase, LigumaInfo.Piezimes, LigumaInfo.Valsts, LigumaInfo.Novads, LigumaInfo.Pagasts, LigumaInfo.PILSETA, "
        JTMLig_str = JTMLig_str & " LigumaInfo.Iela , LigumaInfo.POSITION, LigumaInfo.Pilnv_Persona, LigumaInfo.Datums_In, LigumaInfo.Datums_Lidz, LigumaInfo.Datums_Out"
        JTMLig_str = JTMLig_str & " FROM LigumaInfo"
        JTMLig_str = JTMLig_str & " WHERE (((LigumaInfo.LIGUM_ID)=" & Me.AForma & "));"

        Set JTMLig_rst = db.OpenRecordset(JTMLig_str, dbOpenSnapshot, dbSeeChanges)

        Lstr = "SELECT dbo_viesn_kl_LBData.POSITION, dbo_viesn_kl_LBData.TUA, dbo_viesn_kl_LBData.TN"
        Lstr = Lstr & " FROM dbo_viesn_kl_LBData"
        Lstr = Lstr & " WHERE (((dbo_viesn_kl_LBData.POSITION)=""" & JTMLig_rst!POSITION & """));"
        Set Jaun = db.OpenRecordset(Lstr, dbOpenDynaset, dbSeeChanges)


''        DoCmd.OpenForm "LigumsViesn"
        VLigNr = JTMLig_rst!Ligums

        With Forms![LigumsViesn]
    ''        .DefaultEditing = 4
            !OpenFrom = 10
            !c_Nod_ID = Me.c_Nod_ID
            !c_NodNos = Me.c_NodNos
            !c_MV_ID = Me.c_MV_ID

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
            !Pase = JTMLig_rst!Pase
            !PILSETA = JTMLig_rst!PILSETA

            !Pagasts = JTMLig_rst!Pagasts
            !Novads = JTMLig_rst!Novads
            !Iela = JTMLig_rst!Iela
            !Ligums = JTMLig_rst!Ligums
            !Lig_Dat = JTMLig_rst!Lig_Dat
            !POSITION = JTMLig_rst!POSITION
            !Piezimes = JTMLig_rst!Piezimes
            !PilnvarotaPersona = JTMLig_rst!Pilnv_Persona
            !Valsts = JTMLig_rst!Valsts
            !Datums_In = JTMLig_rst!Datums_In
            !Datums_Lidz = JTMLig_rst!Datums_Lidz
            !Datums_Out = JTMLig_rst!Datums_Out

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
            !Valsts.Enabled = False
            !Valstis.Enabled = False

            If Me.AForma.Column(8) = "Viesis" Then
                !LSumKopa.Visible = True
            Else
                !LSumKopa.Visible = False
            End If

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

        End With

        JTMLig_str = "SELECT dbo_Personas_Cert.Personas_ID, dbo_Personas_Cert.CertVeids, dbo_Personas_Cert.CertDatums, dbo_Personas_Cert.Aud_User, dbo_Personas_Cert.Aud_Date"
        JTMLig_str = JTMLig_str & " FROM dbo_Personas_Cert"
        JTMLig_str = JTMLig_str & " WHERE (((dbo_Personas_Cert.Personas_ID)=" & Forms!LigumsViesn.Pers_ID & "));"
        Set JTMLig_rst = db.OpenRecordset(JTMLig_str, dbOpenDynaset, dbSeeChanges)
        If Not JTMLig_rst.EOF Then
            Forms![LigumsViesn].PersCert = JTMLig_rst!CertVeids
            Forms![LigumsViesn].PersCertTerm = JTMLig_rst!CertDatums
        End If

         CheckPersData (Forms!LigumsViesn.Pers_ID)

        PID = Me![AForma].Column(9)

    ElseIf Me.MeklTips = 40 Then 'stāvvietas caurlaides
        If IsNull(Me.AForma) Then
            PID = Me![lb_AtlPiepr].Column(0)
        Else
            PID = Me![AForma].Column(17)
        End If
    ElseIf Me.MeklTips = 30 Then 'atļaujas
        PID = Me![AForma].Column(8)
    ElseIf Me.MeklTips = 20 Then 'persona
        PID = Me![AForma].Column(0)
    ElseIf Me.MeklTips = 10 Then 'protokols
        If IsNull(Me![AForma]) Then
            PID = Me![lb_AtlPiepr].Column(1)
        Else
            PID = Me![AForma].Column(0)
        End If
    Else
        PID = Me![AForma].Column(0)
    End If

    StrLen = Forms!ka!StrGarums

    If IsNull(PID) Then
''        Dim a
''        a = MsgBox("Vai sagatavot čeku bez personas datiem?", vbQuestion + vbYesNo, "Kase")
''        If a = vbNo Then Exit Sub
        MsgBox "Jānorāda klients", vbExclamation, "Kase"
        Exit Sub
    End If

    If Not Forms![ka]!PID = PID Then
        MsgBox "Čeks ir sākts rakstīt uz citu personu!", vbExclamation, "Kase"
        Exit Sub
    End If

    Dim Addr_Str, Artikuls, STKNos
    Dim KStr As String, KData As Recordset, Sum, ArtSak
    Dim ProtNr, ProtID, PLU
    Set db = CurrentDb()
    STKNos = Null

    Sum = 0
    If Me.c_Nod_ID = 4 And Me.c_MV_ID = 1 Then 'atļaujas
        Sum = InputBox("Ievadiet cenu:", "Kase", Me![AForma].Column(7))
    ElseIf Me.c_Nod_ID = 15 Then 'autostāvvietas atļaujas
    'nedara neko
    ElseIf Me.c_Nod_ID = 11 Then 'protokoli
        If IsNull(Me![lb_AtlPiepr]) Then 'nav norādīts protokols, jāievada Nr
            ProtNr = InputBox("Ievadiet protokola Nr bez atstarpēm:", "Kase")
            If ProtNr = "" Then
                MsgBox "Jānorāda protokola Nr.", vbExclamation, "Kase"
                Exit Sub
            End If
            ProtID = 0
            Sum = InputBox("Ievadiet cenu:", "Kase")
        Else
            ProtID = Me![lb_AtlPiepr].Column(0)
            ProtNr = Me![lb_AtlPiepr].Column(2)
            Sum = Me![lb_AtlPiepr].Column(7)
        End If
    ElseIf Me.c_Nod_ID = 5 Or Me.c_Nod_ID = 6 Then 'JTM līgumi
    'nedara neko
    Else
        Sum = InputBox("Ievadiet cenu:", "Kase")
    End If

    If Not (Me.c_Nod_ID = 15 Or Me.c_Nod_ID = 5 Or Me.c_Nod_ID = 6) Then
        If Not IsNumeric(Sum) Then
            Exit Sub
        ElseIf Sum = 0 Then
            MsgBox "Jānorāda cena", vbExclamation, "Kase"
            Exit Sub
        End If
    End If

'    Me.c_Vajag_LNR

'    Me.c_MV_ID
    KStr = "SELECT dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_Personas.D_Novads, dbo_Personas.D_Pagasts, dbo_Personas.D_Pilseta, dbo_Personas.D_Iela, dbo_Personas.D_Indekss"
    KStr = KStr & " FROM dbo_Personas"
    KStr = KStr & " WHERE (((dbo_Personas.Personas_ID)=" & PID & "));"

    Set KData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)

    Dim Adr

    Forms![ka]!PID = PID
    Forms![ka]!fd_VU = KData!Vards & " " & KData!Uzvards
    Forms![ka]!fd_PK = VLigNr
    Forms![ka]!fd_PK_LNR_h = VLigNr
    Forms![ka]!fd_PK_h = KData!Pers_Kods

    Forms![ka]!fd_Adrese2 = Null
    Adr = KData!D_Iela
    If Len(Adr & ", " & KData!D_Pilseta) > StrLen Then
        Forms![ka]!fd_Adrese = Adr
        Forms![ka]!fd_Adrese2 = KData!D_Pilseta & ", " & KData!D_Pagasts & ", " & KData!D_Novads & ", " & KData!D_Indekss
    Else
        Adr = Adr & ", " & KData!D_Pilseta
        If Len(Adr & ", " & KData!D_Pagasts) > StrLen Then
            Forms![ka]!fd_Adrese = Adr
            Forms![ka]!fd_Adrese2 = KData!D_Pagasts & ", " & KData!D_Novads & ", " & KData!D_Indekss
        Else
            Adr = Adr & ", " & KData!D_Pagasts
            If Len(Adr & ", " & KData!D_Novads & ", " & KData!D_Indekss) > StrLen Then
                Forms![ka]!fd_Adrese = Adr
                Forms![ka]!fd_Adrese2 = KData!D_Novads & ", " & KData!D_Indekss
            Else
                Forms![ka]!fd_Adrese = Adr & ", " & KData!D_Novads & ", " & KData!D_Indekss
            End If
        End If
    End If


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



    Select Case Me.c_Nod_ID  'nodaļa
    Case 1  'studiju maksa
        ArtSak = Null
        If Me.c_MV_ID > 0 Then ArtSak = Me.c_MV_ID

        If IsNull(Me![AForma].Column(10)) Then
            Artikuls = ArtSak & Me![AForma].Column(0)
        Else
            Artikuls = ArtSak & Me![AForma].Column(0) & Me![AForma].Column(10)
        End If
        PLU = Me.c_Nod_ID & Me.c_PLU_txt & " L" & Me![AForma].Column(0)
    Case 2  'kavējuma nauda
        ArtSak = Null
        If Me.c_MV_ID > 0 Then ArtSak = Me.c_MV_ID

        Select Case Me.c_MV_ID  'maksājuma veids nodaļā
        Case 1  'kavējuma nauda - studiju maksa
            PLU = Me.c_Nod_ID & Me.c_PLU_txt
            If IsNull(Me![AForma].Column(10)) Then
                Artikuls = 1 & Me![AForma].Column(0)
            Else
                Artikuls = 1 & Me![AForma].Column(0) & Me![AForma].Column(10)
            End If
        Case 4, 5, 6, 7  'kavējuma nauda: 4-papildresursi; 5-datornoma; 6-aizdevumi; 7-noma, īre
            Artikuls = Me.c_MV_ID
        End Select
        PLU = Me.c_Nod_ID & Me.c_PLU_txt
    Case 4  'papildresurss
        PLU = Me.c_Nod_ID & Me.c_PLU_txt
        Select Case Me.c_MV_ID  'maksājuma veids nodaļā
        Case 1  'atļaujas
            STKNos = Me![AForma].Column(5)
            Artikuls = 1 & Me![AForma].Column(0)
        Case 2, 3, 4, 5  'papildresurss: 2-datorlaiks, Internet; 3-datorizdrukas; 4-par ātrāku atjaunošanos; 5-grupas, kursa maiņa
            Artikuls = Me.c_MV_ID
        End Select
    Case 11  'protokoli
        Artikuls = 1 & ProtID
        PLU = Me.c_Nod_ID & Me.c_PLU_txt & ProtNr
    Case 15  'autostāvvietas atļaujas
            DoCmd.Close
            DoCmd.OpenForm "KA_Caurlaides_Reg"
            Forms!KA_Caurlaides_Reg!PersId = PID
            Forms!KA_Caurlaides_Reg!Vards = KData!Vards
            Forms!KA_Caurlaides_Reg!Uzvards = KData!Uzvards
            Forms!KA_Caurlaides_Reg!Periods_No = Date
            Forms!KA_Caurlaides_Reg!Datums = Date
            Forms!KA_Caurlaides_Reg!OpenFrom = 1
            Exit Sub
        PLU = Me.c_Nod_ID & Me.c_PLU_txt
    Case Else
        Artikuls = Me.c_MV_ID
        PLU = Me.c_Nod_ID & Me.c_PLU_txt
    End Select

    KData.Close

    If Not (Me.c_Nod_ID = 15 Or Me.c_Nod_ID = 5 Or Me.c_Nod_ID = 6) Then 'nav autostāvvietas atļaujas, JTM līgumi
        KStr = "SELECT tmp_KA_cdata.Nodala, tmp_KA_cdata.Nodala_txt, tmp_KA_cdata.PLU_txt, tmp_KA_cdata.Artikuls, tmp_KA_cdata.Daudzums, tmp_KA_cdata.Cena, tmp_KA_cdata.Summa, tmp_KA_cdata.Valuta, tmp_KA_cdata.Logins, tmp_KA_cdata.Prot_ID, tmp_KA_cdata.Art, tmp_KA_cdata.Prot_Nr, tmp_KA_cdata.PID"
        KStr = KStr & " FROM tmp_KA_cdata;"

        Set KData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)

'''     2019.07 noņemts, uz čekiem nedrukā lieko tekstu. IB
'''        If Not IsNull(STKNos) Then
'''            Dim i, STKNosPart, pPos
'''            i = 0
'''            StrLen = Forms!ka!StrGarums
'''
'''            Do Until i = 1
'''                If Len(STKNos) > StrLen Then
'''                    STKNosPart = ""
'''                    Do Until i = 2
'''                        pPos = InStr(1, STKNos, " ")
'''                        If Len(STKNos) > 0 And pPos = 0 Then pPos = Len(STKNos) + 1
'''                        If Len(STKNosPart) + pPos > StrLen Then
'''                            i = 2
'''                        Else
'''                            If STKNosPart = "" Then
'''                                STKNosPart = Left(STKNos, pPos - 1)
'''                            Else
'''                                STKNosPart = STKNosPart & " " & Left(STKNos, pPos - 1)
'''                            End If
'''                            STKNos = Mid(STKNos, pPos + 1)
'''
'''                        End If
'''                    Loop
'''                Else
'''                    STKNosPart = STKNos
'''                    i = 1
'''                End If
'''
'''                KData.AddNew
'''                KData!Logins = CurrentUser
'''                KData!Nodala = -345
'''                KData!Nodala_txt = STKNosPart
'''
'''                KData.Update
'''                If i = 2 Then i = 0
'''            Loop
'''        End If

        KData.AddNew
        KData!Logins = CurrentUser
        KData!Nodala = Me.c_Nod_ID
        KData!Nodala_txt = Me.c_NodNos
        KData!PLU_txt = PLU
        KData!Artikuls = Artikuls
        KData!Daudzums = 1
        KData!Cena = Sum
        KData!Summa = Sum
        KData!Prot_Nr = ProtNr
        KData!Prot_ID = ProtID
        KData!PID = PID
        KData!Valuta = Forms![ka]!fd_Valuta

        KData.Update

        DoCmd.Close

        Forms!ka!KA_sub_cdata.Requery
    Else
        DoCmd.Close acForm, "ka_PersMeklesana"

    End If
End Sub

Private Sub lb_AtlPiepr_Click()
    If Me.MeklTips = 40 Or Me.MeklTips = 10 Then 'stāvvietas caurlaides, protokoli
        Me.AForma = Null
    Else
        Me.cmdIzveidotAtlauju.Enabled = True
    End If

End Sub

Private Sub Ligumi_personai_Click()
    If IsNull(Me![AForma].Column(16)) Then
        MsgBox "Izvēlieties personu no saraksta", , "Studiju līgumi"
        Exit Sub
    End If

    Dim Mysql As String, MyCriteria As String, MyRecordSource As String
    Dim ArgCount As Integer, Tmp As Variant, PID
    ArgCount = 0
    Mysql = "SELECT tab.LIG_NUM AS Līgums, tab.LIG_DAT AS Datums, tab.VARDS AS Vārds, tab.UZVARDS AS Uzvārds, dbo_Personas.Pers_Kods, dbo_Programmas.Gr_kods AS Progr, IIf([Lig_Num]<29600,[KURSS],[StudGads]) AS StGads, IIf(IsNull([Kods]),[TIPS_NODALA],[kods]) AS Nodaļa, stl_Lig_MG_StG_MGR_Data.MGR_Dat, stl_Lig_MG_StG_MGR_Data.MGR_DokNr AS Nr, stl_Lig_MG_StG_MGR_Data.MacGads AS Gads, Format(IIf([Lig_Num]<29600,[LIG_SUM],[StM_Kopeja]),""0.00"") AS Summa, IIf(IsNull([Fil_nos]),[Filiale],[Fil_nos]) AS Filiāle, tab.STUDKODS, tab.Stud_ID, stl_Lig_MG_StG_MGR_Data.MGR_ID, tab.CILVEKS_CKODS"
    Mysql = Mysql & " FROM ((((dbo_studijas AS tab RIGHT JOIN dbo_Personas ON tab.CILVEKS_CKODS = dbo_Personas.Personas_ID) LEFT JOIN dbo_Programmas ON tab.PROGRAMMA_PKODS = dbo_Programmas.Kodif) LEFT JOIN dbo_Spec ON tab.Nod_ID = dbo_Spec.[Spec ID]) LEFT JOIN dbo_STL_Filiales ON tab.Filiale_ID = dbo_STL_Filiales.Fil_ID) LEFT JOIN stl_Lig_MG_StG_MGR_Data ON tab.LIG_NUM = stl_Lig_MG_StG_MGR_Data.LigNr"
    Mysql = Mysql & " WHERE (tab.CILVEKS_CKODS = " & Me![AForma].Column(16)

    MyRecordSource = Mysql & MyCriteria & " AND (Not (dbo_Programmas.Gr_kods) Is Null)) ORDER BY tab.LIG_DAT DESC , stl_Lig_MG_StG_MGR_Data.MGR_Dat DESC , stl_Lig_MG_StG_MGR_Data.MGR_DokNr DESC , stl_Lig_MG_StG_MGR_Data.MacGads DESC;"

    Me!AForma.RowSource = MyRecordSource

    Me!StSar.RowSource = ""

    Me![AForma].SetFocus

End Sub


Private Sub Prot_NeregPers_Click()
    DoCmd.OpenForm "Prot_JaunaPers"
    Forms!Prot_JaunaPers!c_Nod_ID = Me.c_Nod_ID
    Forms!Prot_JaunaPers!c_NodNos = Me.c_NodNos

End Sub

Private Sub Show_Customers_Click()
    Dim Mysql As String, MyCriteria As String, MyRecordSource As String
    Dim ArgCount As Integer, Tmp As Variant, Flt As String
    DoCmd.Hourglass 1
    Me.Crl_NeregPers.Visible = False
    Me.Prot_NeregPers.Visible = False


    If Me.MeklTips = 50 Or Me.MeklTips = 60 Then 'meklēt JTM līgumu

        Me.AForma.Height = 4500
        Me.lb_AtlPiepr.Visible = False
        Me.lb_AtlPiepr_lbl.Visible = False

        ArgCount = 0

        If IsNull(Me.AtlaujasNr) Or Me.AtlaujasNr = "" Then
            Mysql = "SELECT tab.LIGUM_ID, tab.Ligums, tab.Lig_Dat AS Datums, dbo_Personas.Vards AS Vārds, dbo_Personas.Uzvards AS Uzvārds, dbo_Personas.Pers_Kods AS PK, tab.Datums_In AS Ievācas, tab.Datums_Out AS Izvācas, tab.Position AS Stāvoklis, tab.Pers_ID"
            Mysql = Mysql & " FROM dbo_viesn_Ligumi AS tab LEFT JOIN dbo_Personas ON tab.Pers_ID = dbo_Personas.Personas_ID  WHERE ("
            MyCriteria = ""
            AddToWhere [Ligu], "(tab.Ligums", MyCriteria, ArgCount
            AddToWhere [Vard], "(dbo_Personas.VARDS", MyCriteria, ArgCount
            AddToWhere [Uzva], "(dbo_Personas.UZVARDS", MyCriteria, ArgCount
            If Me.MeklTips = 60 Then '"BAT students" vai "Darbinieks" vai "Viesis-darbin., stud."
                AddToWhereE """BAT students""", "(tab.Position", MyCriteria, ArgCount
            Else
                AddToWhereNOT """BAT students""", "(tab.Position", MyCriteria, ArgCount
                AddToWhereNOT """Darbinieks""", "(tab.Position", MyCriteria, ArgCount
                AddToWhereNOT """Viesis-darbin., stud.""", "(tab.Position", MyCriteria, ArgCount
            End If
            If MyCriteria = "" Then
                MyCriteria = "True"
            End If
            MyRecordSource = Mysql & MyCriteria & ") ORDER BY tab.Ligums DESC;"
        Else
            Mysql = "SELECT tab.LIGUM_ID, tab.Ligums, tab.Lig_Dat AS Datums, dbo_Personas.Vards AS Vārds, dbo_Personas.Uzvards AS Uzvārds, dbo_Personas.Pers_Kods AS PK, tab.Datums_In AS Ievācas, tab.Datums_Out AS Izvācas, tab.Position AS Stāvoklis, tab.Pers_ID"
            Mysql = Mysql & " FROM (dbo_viesn_Ligumi AS tab LEFT JOIN dbo_Personas ON tab.Pers_ID = dbo_Personas.Personas_ID) LEFT JOIN dbo_viesn_Ligumi_Istabas ON tab.Ligums = dbo_viesn_Ligumi_Istabas.Ligums  WHERE ("
            MyCriteria = ""
            AddToWhere [AtlaujasNr], "(dbo_viesn_Ligumi_Istabas.Istaba", MyCriteria, ArgCount
            AddToWhere [Ligu], "(tab.Ligums", MyCriteria, ArgCount
            AddToWhere [Vard], "(dbo_Personas.VARDS", MyCriteria, ArgCount
            AddToWhere [Uzva], "(dbo_Personas.UZVARDS", MyCriteria, ArgCount
            If Me.MeklTips = 60 Then '"BAT students"
                AddToWhereE """BAT students""", "(tab.Position", MyCriteria, ArgCount
            Else
                AddToWhereNOT """BAT students""", "(tab.Position", MyCriteria, ArgCount
                AddToWhereNOT """Darbinieks""", "(tab.Position", MyCriteria, ArgCount
            End If
            If MyCriteria = "" Then
                MyCriteria = "True"
            End If
            MyRecordSource = Mysql & MyCriteria & ") ORDER BY tab.Ligums DESC;"
        End If


        Me.AForma.ColumnCount = 9
        Me.AForma.ColumnWidths = "0cm;1.3cm;2cm;2cm;3cm;3cm;2cm;2cm;2cm;0cm"


    ElseIf Me.MeklTips = 40 Then 'meklēt personu autostāvvietas kartēm

        Me.AForma.Height = 2111
        Me.lb_AtlPiepr.Visible = True
        Me.lb_AtlPiepr_lbl.Visible = True
        Me.lb_AtlPiepr_lbl.Caption = "PIC kursanti:"

        ArgCount = 0
        Mysql = "SELECT stl_PersLigData.Līgums, stl_PersLigData.Datums, stl_PersLigData.Vārds, stl_PersLigData.Uzvārds, stl_PersLigData.Pers_Kods, stl_PersLigData.Progr, stl_PersLigData.StGads, stl_PersLigData.Nodaļa, stl_PersLigData.MGR_Dat, stl_PersLigData.Nr, stl_PersLigData.Gads, stl_PersLigData.Summa, stl_PersLigData.Val, stl_PersLigData.Filiāle, stl_PersLigData.STUDKODS, stl_PersLigData.Stud_ID, stl_PersLigData.MGR_ID, stl_PersLigData.CILVEKS_CKODS"
        Mysql = Mysql & " FROM stl_PersLigData"
        Mysql = Mysql & " WHERE ("

        MyCriteria = ""
        AddToWhereE [Ligu], "(stl_PersLigData.Līgums", MyCriteria, ArgCount
        AddToWhere [Datu], "(stl_PersLigData.Datums", MyCriteria, ArgCount
        AddToWhere [Vard], "(stl_PersLigData.Vārds", MyCriteria, ArgCount
        AddToWhere [Uzva], "(stl_PersLigData.Uzvārds", MyCriteria, ArgCount
        AddToWhere [PK], "(stl_PersLigData.Pers_Kods", MyCriteria, ArgCount
        If MyCriteria = "" Then
            MyCriteria = "True"
        End If
        MyRecordSource = Mysql & MyCriteria & ");"

        Me.AForma.ColumnCount = 18
        Me.AForma.ColumnWidths = "1.3cm;1.709cm;2.575cm;3cm;2.2cm;1cm;1cm;1.2cm;0cm;0cm;0cm;0cm;0cm;0cm;0cm;0cm;0cm;0cm"

        ArgCount = 0
        Mysql = "SELECT KA_Kursanti.Personas_ID, KA_Kursanti.Vārds, KA_Kursanti.Uzvārds, KA_Kursanti.Grupa, "
        Mysql = Mysql & " KA_Kursanti.Mācības_sāk, KA_Kursanti.Mācības_beidz, KA_Kursanti.Statuss,  "
        Mysql = Mysql & " KA_Kursanti.Stat"
        Mysql = Mysql & " FROM KA_Kursanti"
        Mysql = Mysql & " WHERE ("
        MyCriteria = ""
        AddToWhere [Vard], "(Vārds", MyCriteria, ArgCount
        AddToWhere [Uzva], "(Uzvārds", MyCriteria, ArgCount
        If MyCriteria = "" Then
            MyCriteria = "True"
        End If
        Mysql = Mysql & MyCriteria & ");"

        Me.lb_AtlPiepr.ColumnCount = 8
        Me.lb_AtlPiepr.ColumnWidths = "0cm;2.403cm;3cm;2.108cm;2.2cm;2.2cm;2.505cm;0cm"

        Me!lb_AtlPiepr.RowSource = Mysql
        Me.Crl_NeregPers.Visible = True

    ElseIf Me.MeklTips = 30 Then 'meklēt atļaujas

        Me.AForma.Height = 2111
        Me.lb_AtlPiepr.Visible = True
        Me.lb_AtlPiepr_lbl.Visible = True
        Me.lb_AtlPiepr_lbl.Caption = "Atļauju-norīkojumu pieprasījumi no BATIS:"

        Mysql = "SELECT dbo_Atlaujas.AtlNr, dbo_Atlaujas.IzdosanasDat, dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_sl_Stud_kursi.Pr_nos, dbo_Pakalpojumi.Pakalpojums, dbo_Atlaujas.Maksa, dbo_Atlaujas.CILVEKS_CKODS"
        Mysql = Mysql & " FROM ((dbo_Atlaujas LEFT JOIN dbo_Personas ON dbo_Atlaujas.Cilveks_Ckods = dbo_Personas.Personas_ID) LEFT JOIN dbo_sl_Stud_kursi ON dbo_Atlaujas.StudijuKurss = dbo_sl_Stud_kursi.Pr_ID) LEFT JOIN dbo_Pakalpojumi ON dbo_Atlaujas.Veids = dbo_Pakalpojumi.PakID"
        Mysql = Mysql & " WHERE ("
        MyCriteria = ""
        AddToWhereE [AtlaujasNr], "(dbo_Atlaujas.AtlNr", MyCriteria, ArgCount
''        AddToWhereE [Ligu], "(stl_PersLigData.Līgums", MyCriteria, ArgCount
''        AddToWhere [DATU], "(stl_PersLigData.Datums", MyCriteria, ArgCount
        AddToWhere [Vard], "(dbo_Personas.Vards", MyCriteria, ArgCount
        AddToWhere [Uzva], "(dbo_Personas.Uzvards", MyCriteria, ArgCount
        AddToWhere [PK], "(dbo_Personas.Pers_Kods", MyCriteria, ArgCount
        If MyCriteria = "" Then
            MyCriteria = "True"
        End If
        MyRecordSource = Mysql & MyCriteria & ");"

        Me.AForma.ColumnCount = 9
        Me.AForma.ColumnWidths = "1.508cm;1.81cm;2.6cm;3cm;2.2cm;5cm;5cm;1.3cm;0cm"

        ArgCount = 0
        Mysql = "SELECT stVards AS Vārds, stUzvards AS Uzvārds, Lig_Num AS LīgNr, Pr_nos AS Studiju_kurss, Pakalpojums, "
        Mysql = Mysql & " Vards AS Pasn_vārds, Uzvards AS Pasn_uzvārds, IzdosanasDat AS AtļDatums, "
        Mysql = Mysql & " AtlID, CILVEKS_CKODS, STUDKODS, IzsnID"
        Mysql = Mysql & " FROM KA_ML_Atlauju_Pieprasijumi_lb_src"
        Mysql = Mysql & " WHERE ("
        MyCriteria = ""
        AddToWhere [Vard], "(stVards", MyCriteria, ArgCount
        AddToWhere [Uzva], "(stUzvards", MyCriteria, ArgCount
        If MyCriteria = "" Then
            MyCriteria = "True"
        End If
        Mysql = Mysql & MyCriteria & ");"

        Me.lb_AtlPiepr.ColumnCount = 12
        Me.lb_AtlPiepr.ColumnWidths = "2.403cm;3cm;1.108cm;5cm;4.505cm;2.505cm;2.507cm;1.701cm;0cm;0cm;0cm;0cm;0cm"

        Me!lb_AtlPiepr.RowSource = Mysql

    ElseIf Me.MeklTips = 20 Then 'meklēt personu
        Me.AForma.Height = 4500
        Me.lb_AtlPiepr.Visible = False
        Me.lb_AtlPiepr_lbl.Visible = False

        Mysql = "SELECT dbo_Personas.Personas_ID, dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_Personas.D_Indekss, dbo_Personas.D_Novads, dbo_Personas.D_Pagasts,dbo_Personas.D_Pilseta, dbo_Personas.D_Iela"
        Mysql = Mysql & " FROM dbo_Personas"
        Mysql = Mysql & " WHERE ("
        MyCriteria = ""
''        AddToWhereE [AtlaujasNr], "(dbo_Atlaujas.AtlNr", MyCriteria, ArgCount
''        AddToWhereE [Ligu], "(stl_PersLigData.Līgums", MyCriteria, ArgCount
''        AddToWhere [DATU], "(stl_PersLigData.Datums", MyCriteria, ArgCount
        AddToWhere [Vard], "(dbo_Personas.Vards", MyCriteria, ArgCount
        AddToWhere [Uzva], "(dbo_Personas.Uzvards", MyCriteria, ArgCount
        AddToWhere [PK], "(dbo_Personas.Pers_Kods", MyCriteria, ArgCount
        If MyCriteria = "" Then
            MyCriteria = "True"
        End If
        MyRecordSource = Mysql & MyCriteria & ");"

        Me.AForma.ColumnCount = 9
        Me.AForma.ColumnWidths = "0cm;1.508cm;1.81cm;2.6cm;2cm;2.2cm;2.2cm;2.2cm;5cm"
    ElseIf Me.MeklTips = 10 Then 'meklēt personu vai protokolu
        Me.AForma.Height = 2111
        Me.lb_AtlPiepr.Visible = True
        Me.lb_AtlPiepr_lbl.Visible = True
        Me.lb_AtlPiepr_lbl.Caption = "Protokoli:"

        Me.Prot_NeregPers.Visible = True

        ArgCount = 0
        Mysql = "SELECT dbo_Personas.Personas_ID, dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_Personas.D_Indekss, dbo_Personas.D_Novads, dbo_Personas.D_Pagasts,dbo_Personas.D_Pilseta, dbo_Personas.D_Iela"
        Mysql = Mysql & " FROM dbo_Personas"
        Mysql = Mysql & " WHERE ("

        MyCriteria = ""
''        AddToWhereE [Ligu], "(stl_PersLigData.Līgums", MyCriteria, ArgCount
''        AddToWhere [Datu], "(stl_PersLigData.Datums", MyCriteria, ArgCount
        AddToWhere [Vard], "(dbo_Personas.Vards", MyCriteria, ArgCount
        AddToWhere [Uzva], "(dbo_Personas.Uzvards", MyCriteria, ArgCount
        AddToWhere [PK], "(dbo_Personas.Pers_Kods", MyCriteria, ArgCount
        If MyCriteria = "" Then
            MyCriteria = "True"
        End If
        MyRecordSource = Mysql & MyCriteria & ");"

        Me.AForma.ColumnCount = 9
        Me.AForma.ColumnWidths = "0cm;1.508cm;1.81cm;2.6cm;2cm;2.2cm;2.2cm;2.2cm;5cm"

        ArgCount = 0
        Mysql = "SELECT dbo_prot_Protokoli.ID, dbo_prot_Protokoli.P_PID, dbo_prot_Protokoli.Pr_Nr, dbo_prot_Protokoli.Pr_Datums, dbo_prot_Protokoli.P_Vards, dbo_prot_Protokoli.P_Uzvards,"
        Mysql = Mysql & "  dbo_prot_Protokoli.P_Grupa as Pers_Kods,dbo_prot_Protokoli.Sods, dbo_prot_Protokoli.Nomaksas_term, dbo_prot_Protokoli.Nomaksas_datums"
        Mysql = Mysql & " FROM dbo_prot_Protokoli"
        Mysql = Mysql & " WHERE ("
        MyCriteria = ""
        If Not IsNull(Me.AtlaujasNr) Then AddToWhereE """" & [AtlaujasNr] & """", "(Pr_Nr", MyCriteria, ArgCount
        AddToWhere [Vard], "(P_Vards", MyCriteria, ArgCount
        AddToWhere [Uzva], "(P_Uzvards", MyCriteria, ArgCount
        AddToWhere [PK], "(P_Grupa", MyCriteria, ArgCount
        If MyCriteria = "" Then
            MyCriteria = "True"
        End If
        Mysql = Mysql & MyCriteria & ") ORDER BY dbo_prot_Protokoli.Pr_Datums DESC;"

        Me.lb_AtlPiepr.ColumnCount = 10
        Me.lb_AtlPiepr.ColumnWidths = "0cm;0cm;2.403cm;2.403cm;2.5cm;2.5cm;2.5cm;1cm;2.5cm;2.5cm"

        Me!lb_AtlPiepr.RowSource = Mysql

    Else
        Me.AForma.Height = 4500
        Me.lb_AtlPiepr.Visible = False
        Me.lb_AtlPiepr_lbl.Visible = False

        ArgCount = 0
        Mysql = "SELECT dbo_Personas.Personas_ID, dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_Personas.D_Indekss, dbo_Personas.D_Novads, dbo_Personas.D_Pagasts,dbo_Personas.D_Pilseta, dbo_Personas.D_Iela"
        Mysql = Mysql & " FROM dbo_Personas"
        Mysql = Mysql & " WHERE ("

        MyCriteria = ""
''        AddToWhereE [Ligu], "(stl_PersLigData.Līgums", MyCriteria, ArgCount
''        AddToWhere [Datu], "(stl_PersLigData.Datums", MyCriteria, ArgCount
        AddToWhere [Vard], "(dbo_Personas.Vards", MyCriteria, ArgCount
        AddToWhere [Uzva], "(dbo_Personas.Uzvards", MyCriteria, ArgCount
        AddToWhere [PK], "(dbo_Personas.Pers_Kods", MyCriteria, ArgCount
        If MyCriteria = "" Then
            MyCriteria = "True"
        End If
        MyRecordSource = Mysql & MyCriteria & ");"

        Me.AForma.ColumnCount = 9
        Me.AForma.ColumnWidths = "0cm;1.508cm;1.81cm;2.6cm;2cm;2.2cm;2.2cm;2.2cm;5cm"


'''        Me.AForma.Height = 4500
'''        Me.lb_AtlPiepr.Visible = False
'''        Me.lb_AtlPiepr_lbl.Visible = False
'''
'''        ArgCount = 0
'''        Mysql = "SELECT stl_PersLigData.Līgums, stl_PersLigData.Datums, stl_PersLigData.Vārds, stl_PersLigData.Uzvārds, stl_PersLigData.Pers_Kods, stl_PersLigData.Progr, stl_PersLigData.StGads, stl_PersLigData.Nodaļa, stl_PersLigData.MGR_Dat, stl_PersLigData.Nr, stl_PersLigData.Gads, stl_PersLigData.Summa, stl_PersLigData.Val, stl_PersLigData.Filiāle, stl_PersLigData.STUDKODS, stl_PersLigData.Stud_ID, stl_PersLigData.MGR_ID, stl_PersLigData.CILVEKS_CKODS"
'''        Mysql = Mysql & " FROM stl_PersLigData"
'''        Mysql = Mysql & " WHERE ("
'''
'''        MyCriteria = ""
'''        AddToWhereE [Ligu], "(stl_PersLigData.Līgums", MyCriteria, ArgCount
'''        AddToWhere [Datu], "(stl_PersLigData.Datums", MyCriteria, ArgCount
'''        AddToWhere [Vard], "(stl_PersLigData.Vārds", MyCriteria, ArgCount
'''        AddToWhere [Uzva], "(stl_PersLigData.Uzvārds", MyCriteria, ArgCount
'''        AddToWhere [PK], "(stl_PersLigData.Pers_Kods", MyCriteria, ArgCount
'''        If MyCriteria = "" Then
'''            MyCriteria = "True"
'''        End If
'''        MyRecordSource = Mysql & MyCriteria & ");"
'''
'''        Me.AForma.ColumnCount = 18
'''        Me.AForma.ColumnWidths = "1.3cm;1.709cm;2.575cm;3cm;2.2cm;1cm;1cm;1.2cm;1.702cm;1cm;1.512cm;1.6cm;0.805cm;2cm;0cm;0cm;0cm;0cm"
    End If

    Me!AForma.RowSource = MyRecordSource


    Me![AForma].SetFocus

    DoCmd.Hourglass 0
End Sub
Private Sub Apmaksas_Termini_Click()
    If IsNull(Me![AForma]) Then
        MsgBox "Jāizvēlas students", , "Studiju līgumi"
        Exit Sub
    End If


On Error GoTo Err_Apmaksas_Termini_Click

    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Apmaksas termini"
    If IsNull(Me![AForma]) Then
        MsgBox ("Jāizvēlas līgums")
    ElseIf Me![AForma] < 1 Then
        MsgBox ("Līguma Nr jābūt lielākam par 0")
    ElseIf Me![AForma] < 29600 Then
        stLinkCriteria = "[LIG_NUM]=" & Me![AForma]
        DoCmd.OpenForm "ApmTerm_old", , , stLinkCriteria
        Forms![ApmTerm_old]!Ligu.SetFocus
    Else
        Me.MGRid = Me![AForma].Column(16)
        stLinkCriteria = "[LIG_NUM]=" & Me![AForma]
        DoCmd.OpenForm "Apmaksas termini", , , stLinkCriteria
        Forms![Apmaksas termini]!Ligu.SetFocus
        Forms![Apmaksas termini]!MGR_ID_radit = Me![AForma].Column(16)

    End If
Exit_Apmaksas_Termini_Click:
    Exit Sub

Err_Apmaksas_Termini_Click:
    MsgBox Err.Description
    Resume Exit_Apmaksas_Termini_Click

End Sub

Private Sub Aizvert_Click()
    DoCmd.Close
End Sub

Private Sub MekletPersonu_Click()
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "Meklet_Personu"
    DoCmd.OpenForm stDocName, , , stLinkCriteria

    Forms!Meklet_Personu!Vards = Me.Vard
    Forms!Meklet_Personu!Uzvards = Me.Uzva

    If IsNull(Me.Vard) And IsNull(Me.Uzva) Then

    Else
        Dim Mysql As String, MyCriteria As String, MyRecordSource As String
        Dim ArgCount As Integer, Tmp As Variant
        Mysql = "SELECT dbo_Personas.Personas_ID, dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_Personas.Pozicija, dbo_Personas.Tel1 FROM dbo_Personas WHERE ("
        MyCriteria = ""
        AddToWhere Me.Vard, "(dbo_Personas.vards", MyCriteria, ArgCount
        AddToWhere Me.Uzva, "(dbo_Personas.uzvards", MyCriteria, ArgCount
        If MyCriteria = "" Then
            MyCriteria = "True"
        End If
        MyRecordSource = Mysql & MyCriteria & ") ORDER BY dbo_Personas.Pers_Kods DESC;"
        Forms!Meklet_Personu!AForma.RowSource = MyRecordSource
        Forms!Meklet_Personu!AForma.Requery
    End If


    Forms!Meklet_Personu!StSar.RowSource = ""

    Forms!Meklet_Personu![AForma].SetFocus

End Sub
