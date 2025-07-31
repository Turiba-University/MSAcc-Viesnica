Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub BridPazinSaraksts_Click()
    DoCmd.OpenForm "MPazinojumi"
End Sub

Private Sub Form_Close()
    DoCmd.SetWarnings 0
    DoCmd.RunSQL "DELETE tmp_ParskatsPaValstim.* FROM tmp_ParskatsPaValstim;"
    DoCmd.SetWarnings 1
End Sub

Private Sub Form_Open(Cancel As Integer)
    Me.Stat_Datums = Date
    Me.Requery
End Sub

Private Sub Isk_brivs_DblClick(Cancel As Integer)
    DoCmd.ApplyFilter , "BrIst > 0"
End Sub

Private Sub Isk_Dbrivs_DblClick(Cancel As Integer)
    DoCmd.ApplyFilter , "DBrIst > 0"

End Sub

Private Sub Isk_kopa_DblClick(Cancel As Integer)
    DoCmd.ShowAllRecords
End Sub

Private Sub IstAiznSar_Click()
    DoCmd.OpenQuery "VIA_Ist_vsk_Uzdatumu_sar"
End Sub

Private Sub kl_Istabas_Click()
    DoCmd.OpenTable ("dbo_viesn_kl_Istabas")
End Sub

Private Sub LigSar_all_Click()
    DoCmd.OpenQuery "VIA_LigIstStat_All_LigReg"
End Sub

Private Sub LigSar_all_Ligumi_Click()
    DoCmd.OpenQuery "VIA_LigIstStat_All_LigReg_Ligumi"

End Sub

Private Sub LigSar_Click()
    DoCmd.OpenQuery "VIA_LigIstStat_Uzdatumu_LigReg"
End Sub

Private Sub LigSarUzDat_Click()
    DoCmd.OpenQuery "VIA_LigIstStat_All_LigReg_UzDat"

End Sub

Private Sub Nesamaksajusie_Click()
    DoCmd.SetWarnings 0
    DoCmd.RunSQL "DELETE tmp_ApmParadnieki_UzDat.Lietotajs, * FROM tmp_ApmParadnieki_UzDat;"
    DoCmd.OpenQuery "ApmaksasParadnieki_Uzdatumu_app"
    DoCmd.SetWarnings 1

    DoCmd.OpenForm "ApmaksasParadnieki_UzDat"
End Sub

Private Sub ParskatsMaksajumi_Click()
    Dim ii As Integer

    ii = SavaktDatusParskatiem
    If ii = 1 Then Exit Sub

    ii = MaksajamasSummasParskatam
    If ii = 1 Then Exit Sub

    DoCmd.OpenQuery "ParskatsIst_Maks"

End Sub

Private Sub ParskatsPaTipiem_Click()
    Dim ii As Integer
    ii = SavaktDatusParskatiem


    If ii = 1 Then Exit Sub

    DoCmd.OpenQuery "ParskatsPaTipiem"
''    DoCmd.OpenQuery "ParskatsIst_Maks"

End Sub

Private Sub ParskatsPaValstim_Click()
    Dim ii As Integer
    ii = SavaktDatusParskatiem

    If ii = 1 Then Exit Sub

    DoCmd.OpenForm "ParskatsPaValstim", acFormDS

End Sub

Function SavaktDatusParskatiem() As Integer
    Dim DSt As Date, DEnd As Date, DCur As Date, a
    SavaktDatusParskatiem = 1
''    On Error Resume Next
''    DSt = InputBox("Ievadiet pārskata perioda sākuma datumu (dd.mm.gggg):", "JTM")
''    If Err = 13 Then
''        MsgBox "Jāievada datums", , "JTM"
''        Exit Function
''    End If
''
''    DEnd = InputBox("Pārskata perioda sākuma datums: " & DSt & ". Ievadiet pārskata perioda beigu datumu (dd.mm.gggg):", "JTM")
''    If Err = 13 Then
''        MsgBox "Jāievada datums", , "JTM"
''        Exit Function
''    End If
''    On Error GoTo 0

    DSt = Me.DatNo
    DEnd = Me.DatLidz

    iMax = DateDiff("d", DSt, DEnd) + 1

    If iMax <= 0 Then
        MsgBox "Perioda beigu datums ir mazāks par sākuma datumu. Mēģiniet vēlreiz.", , "JTM"
        Exit Function
    End If

    If iMax > 31 Then
        a = MsgBox("Norādītajā periodā no " & DSt & " līdz " & DEnd & " ir vairāk par 31 dienu. Vai esat pārliecināti ka periods norādīts pareizi?", vbQuestion + vbYesNo, "JTM")
        If a = vbNo Then Exit Function
    End If

    DoCmd.SetWarnings 0
    DoCmd.Hourglass 1

    DoCmd.RunSQL "DELETE tmp_ParskatsPaValstim.* FROM tmp_ParskatsPaValstim;"

    DCur = DSt
    For i = 1 To iMax
        Me.Stat_Datums = DCur
'''        DoCmd.OpenQuery "VIA_LigIstStat_Uzdatumu_LigInfo_gr"
        DoCmd.OpenQuery "VIA_LigIstStat_Uzdatumu_LigInfo_LigV_gr"
        DoCmd.OpenQuery "VIA_LigIstStat_Uzdatumu_LigInfo_IstV_gr"
        DCur = DateAdd("d", 1, DCur)
    Next i

    SavaktDatusParskatiem = 0
    DoCmd.Hourglass 0
    DoCmd.SetWarnings 1
End Function

Function MaksajamasSummasParskatam() As Integer
    Dim db As Database, d As Recordset, DM As Recordset, DStr As String
    Set db = DBEngine.Workspaces(0).Databases(0)

    DStr = "SELECT tmp_ParskatsPaValstim.Datums, tmp_ParskatsPaValstim.LigNr, tmp_ParskatsPaValstim.IstNr, tmp_ParskatsPaValstim.Sk, tmp_ParskatsPaValstim.SumJamaksa, tmp_ParskatsPaValstim.SumNoIepr, tmp_ParskatsPaValstim.MaksVeids, tmp_ParskatsPaValstim.MaksTermTips FROM tmp_ParskatsPaValstim;"
    Set d = db.OpenRecordset(DStr, dbOpenDynaset, dbSeeChanges)

    DoCmd.SetWarnings 0
    DoCmd.Hourglass 1
    PerNo = Me.DatNo
    PerLidz = Me.DatLidz

    Do While Not d.EOF
        MDat = d!Datums
        MLigNr = d!LigNr
        MIstNr = d!IstNr
        MSk = d!Sk
        SI = 0

        If Not (IsNull(MDat) Or IsNull(MLigNr) Or IsNull(MIstNr)) Then 'vai ir maksājums kas sakrīt ar pārskata periodu

            DStr = "SELECT dbo_viesn_Maksajumi.Dat_No, dbo_viesn_Maksajumi.Dat_Lidz, dbo_viesn_Maksajumi.Maks_Day, dbo_viesn_Maksajumi.Maks_Men, dbo_viesn_Maksajumi.Total, dbo_viesn_Maksajumi.MaksVeids, dbo_viesn_Maksajumi.LAST_DAT  FROM dbo_viesn_Maksajumi"
            DStr = DStr & " WHERE (((dbo_viesn_Maksajumi.Ligums)=" & MLigNr & ") AND ((dbo_viesn_Maksajumi.Ist_Nr)=" & MIstNr & ") "
            DStr = DStr & " AND ((dbo_viesn_Maksajumi.Dat_No)=#" & Month(PerNo) & "/" & Day(PerNo) & "/" & Year(PerNo) & "#) "
            DStr = DStr & " AND ((dbo_viesn_Maksajumi.Dat_Lidz)=#" & Month(PerLidz) & "/" & Day(PerLidz) & "/" & Year(PerLidz) & "#));"
            Set DM = db.OpenRecordset(DStr, dbOpenDynaset, dbSeeChanges)

            If DM.EOF Then 'vai ir maksājums šajā datumā
                DStr = "SELECT dbo_viesn_Maksajumi.Dat_No, dbo_viesn_Maksajumi.Dat_Lidz, dbo_viesn_Maksajumi.Maks_Day, dbo_viesn_Maksajumi.Maks_Men, dbo_viesn_Maksajumi.Total, dbo_viesn_Maksajumi.MaksVeids, dbo_viesn_Maksajumi.LAST_DAT  FROM dbo_viesn_Maksajumi"
                DStr = DStr & " WHERE (((dbo_viesn_Maksajumi.Ligums)=" & MLigNr & ") AND ((dbo_viesn_Maksajumi.Ist_Nr)=" & MIstNr & ") "
                DStr = DStr & " AND ((dbo_viesn_Maksajumi.Dat_No)<=#" & Month(MDat) & "/" & Day(MDat) & "/" & Year(MDat) & "#) "
                DStr = DStr & " AND ((dbo_viesn_Maksajumi.Dat_Lidz)>=#" & Month(MDat) & "/" & Day(MDat) & "/" & Year(MDat) & "#));"
                Set DM = db.OpenRecordset(DStr, dbOpenDynaset, dbSeeChanges)

                If DM.EOF Then
                    DStr = "SELECT Max(dbo_viesn_Maksajumi.Dat_Lidz) AS MaxOfDat_Lidz FROM dbo_viesn_Maksajumi"
                    DStr = DStr & " WHERE (((dbo_viesn_Maksajumi.Ligums)=" & MLigNr & ") AND ((dbo_viesn_Maksajumi.Ist_Nr)=" & MIstNr & ") "
                    DStr = DStr & " AND ((dbo_viesn_Maksajumi.Dat_Lidz)<#" & Month(MDat) & "/" & Day(MDat) & "/" & Year(MDat) & "#));"
                    Set DM = db.OpenRecordset(DStr, dbOpenDynaset, dbSeeChanges)

                    If Not DM.EOF Then 'meklē iepriekšējo maksājumu
                        MDat = DM!MaxOfDat_Lidz
                        If IsNull(MDat) Then
                            DM.MoveLast
                            DM.MoveNext
                        Else
                            DStr = "SELECT dbo_viesn_Maksajumi.Dat_No, dbo_viesn_Maksajumi.Dat_Lidz, dbo_viesn_Maksajumi.Maks_Day, dbo_viesn_Maksajumi.Maks_Men, dbo_viesn_Maksajumi.Total, dbo_viesn_Maksajumi.MaksVeids, dbo_viesn_Maksajumi.LAST_DAT  FROM dbo_viesn_Maksajumi"
                            DStr = DStr & " WHERE (((dbo_viesn_Maksajumi.Ligums)=" & MLigNr & ") AND ((dbo_viesn_Maksajumi.Ist_Nr)=" & MIstNr & ") "
                            DStr = DStr & " AND ((dbo_viesn_Maksajumi.Dat_No)<=#" & Month(MDat) & "/" & Day(MDat) & "/" & Year(MDat) & "#) "
                            DStr = DStr & " AND ((dbo_viesn_Maksajumi.Dat_Lidz)>=#" & Month(MDat) & "/" & Day(MDat) & "/" & Year(MDat) & "#));"
                            Set DM = db.OpenRecordset(DStr, dbOpenDynaset, dbSeeChanges)
                            SI = -1
                        End If
                    End If
                End If
            End If

            If Not DM.EOF Then
                MDay = DM!MAKS_DAY
                MJam = DM!TOTAL
                If IsNull(MDay) Then
                    MPer = DM!TOTAL
                    If SI = -1 Then
                        MPNo = PerNo
                        MPLidz = PerLidz
                    Else
                        MPNo = DM!DAT_NO
                        MPLidz = DM!DAT_LIDZ
                    End If
                    DSk = DateDiff("d", MPNo, MPLidz) + 1
                    MDay = Int((MPer / DSk + 0.000000005005) * 100000000) / 100000000
                End If
                d.Edit
                d!SumJamaksa = Int((MDay * MSk + 0.000000005005) * 100000000) / 100000000
                d!SumNoIepr = SI
                d!MaksVeids = DM!MaksVeids
                If DM!LAST_DAT < PerNo Then 'samaksāts pirms pārsk. perioda
                    d!MaksTermTips = 1
                ElseIf DM!LAST_DAT > PerLidz Then 'samaksāts pēc pārsk. perioda
                    d!MaksTermTips = 3
                Else                             'samaksāts  pārsk. periodā
                    d!MaksTermTips = 2
                End If
                d.Update

            Else

            End If
        End If
        d.MoveNext
    Loop

    DoCmd.Hourglass 0
    DoCmd.SetWarnings 1
    MaksajamasSummasParskatam = 0
End Function

Private Sub ParskatsSumPaValstim_Click()
    DoCmd.OpenQuery "VIA_LigIstIrLig_Uzdatumu_Summas_gr3"
End Sub

Private Sub Refresh_Click()
    Me.Requery

''''Dim DB As Database, D As Recordset, DStr As String
''''Set DB = DBEngine.Workspaces(0).Databases(0)
''''
''''
''''DStr = "SELECT Count(VIA_Ist_vsk_Uzdatumu.Ist_Nr) AS CountOfIst_Nr, Sum(VIA_Ist_vsk_Uzdatumu.Vietas) AS SumOfVietas"
''''DStr = DStr & " FROM VIA_Ist_vsk_Uzdatumu;"
''''Set D = DB.OpenRecordset(DStr, dbOpenDynaset, dbSeeChanges)
''''Isk_kopa = D!CountOfIst_Nr
''''Vsk_kopa = D!SumOfVietas
''''
''''
''''DStr = "SELECT Count(VIA_Ist_vsk_Uzdatumu.Ist_Nr) AS CountOfIst_Nr, Sum(VIA_Ist_vsk_Uzdatumu.Vietas) AS SumOfVietas"
''''DStr = DStr & " FROM VIA_Ist_vsk_Uzdatumu"
''''DStr = DStr & " WHERE (((VIA_Ist_vsk_Uzdatumu.Aizn) Is Null Or (VIA_Ist_vsk_Uzdatumu.Aizn)=0));"
''''Isk_brivs = D!CountOfIst_Nr
''''Vsk_brIst = D!SumOfVietas
''''
''''
''''DStr = "SELECT Count(VIA_Ist_vsk_Uzdatumu.Ist_Nr) AS CountOfIst_Nr, Sum(VIA_Ist_vsk_Uzdatumu.Vietas) AS SumOfVietas"
''''DStr = DStr & " FROM VIA_Ist_vsk_Uzdatumu"
''''DStr = DStr & " WHERE (((VIA_Ist_vsk_Uzdatumu.Aizn)>0) AND ((VIA_Ist_vsk_Uzdatumu.Brivas)>0));"
''''Isk_Dbrivs = D!CountOfIst_Nr
''''Vsk_DbrIst = D!SumOfVietas
''''
End Sub

Private Sub Stat_Datums_AfterUpdate()
''    Me.Requery
End Sub

Private Sub Text26_DblClick(Cancel As Integer)
    DoCmd.ApplyFilter , "PIst > 0"

End Sub

Private Sub Text29_DblClick(Cancel As Integer)
    DoCmd.ApplyFilter , "PpIst > 0"

End Sub
