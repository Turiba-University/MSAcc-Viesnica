Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Atz_AfterUpdate()
    If Not IsNull(Me.stop) Then
        Me.Atz = Null
    Else
        DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70
    End If
End Sub

Private Sub Ligums__DblClick(Cancel As Integer)
    Dim db As Database, JTMLig_rst As Recordset, JTMLig_str As String, LigID, Pos
    Set db = CurrentDb()


    JTMLig_str = "SELECT dbo_viesn_Ligumi.LIGUM_ID, Position"
    JTMLig_str = JTMLig_str & " FROM dbo_viesn_Ligumi"
    JTMLig_str = JTMLig_str & " WHERE (((dbo_viesn_Ligumi.Ligums)=" & Me.Ligums_ & "));"

    Set JTMLig_rst = db.OpenRecordset(JTMLig_str, dbOpenSnapshot, dbSeeChanges)
    LigID = JTMLig_rst!LIGUM_ID
    Pos = JTMLig_rst!POSITION

    DoCmd.OpenForm "LigumsViesn", , , "[LIGUM_ID]=" & LigID

    JTMLig_str = "SELECT LigumaInfo.LIGUM_ID, LigumaInfo.Pers_ID, LigumaInfo.Ligums, LigumaInfo.Lig_Dat, LigumaInfo.Vards, LigumaInfo.Uzvards, "
    JTMLig_str = JTMLig_str & " LigumaInfo.PK , LigumaInfo.Pase, LigumaInfo.Piezimes, LigumaInfo.Valsts, LigumaInfo.Novads, LigumaInfo.Pagasts, LigumaInfo.PILSETA, "
    JTMLig_str = JTMLig_str & " LigumaInfo.Iela , LigumaInfo.POSITION, LigumaInfo.Pilnv_Persona, LigumaInfo.Datums_In, LigumaInfo.Datums_Lidz, LigumaInfo.Datums_Out"
    JTMLig_str = JTMLig_str & " FROM LigumaInfo"
    JTMLig_str = JTMLig_str & " WHERE (((LigumaInfo.LIGUM_ID)=" & LigID & "));"

    Set JTMLig_rst = db.OpenRecordset(JTMLig_str, dbOpenSnapshot, dbSeeChanges)

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

        If Pos = "Viesis" Then
            !LSumKopa.Visible = True
        Else
            !LSumKopa.Visible = False
        End If

    End With
     CheckPersData (Forms!LigumsViesn.Pers_ID)

End Sub
