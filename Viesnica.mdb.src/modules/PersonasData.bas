Attribute VB_Name = "PersonasData"
Option Compare Database

Public Sub CheckPersData(ID As Long)

With Forms![LigumsViesn]
    If ID = 0 Then
        .StSar.Visible = False
        .PersStat.Visible = False
        .DarbinStat.Visible = False
        .DarbinStat_pmd.Visible = False
        Exit Sub
    End If

    DoCmd.Hourglass -1
    Dim Crit As String, MyRecordSource As String
    .PersStat.Caption = " "

    Crit = "SELECT dbo_stop.CKods, Sum(IIf(([Aizl_ID]=1 or [Aizl_ID]=3 or [Aizl_ID]=9),1,0)) AS Viesn, Sum(IIf([Aizl_ID]=2,1,0)) AS Info, Sum(IIf([Aizl_ID]=2,0,1)) AS Stop  "
    Crit = Crit & "FROM dbo_stop WHERE (((dbo_stop.CKods) = " & ID & ")) GROUP BY dbo_stop.CKods;"
    .StSar.Visible = True
    .StSar.RowSource = Crit

'''''''    If Not IsNull(Me.StSar.Column(1, 1)) Then
'''''''        If Val(Me.StSar.Column(1, 1)) > 0 Then
'''''''            Me.StopBibl.Visible = True
'''''''        Else
'''''''            Me.StopBibl.Visible = False
'''''''        End If
'''''''    Else
'''''''        Me.StopBibl.Visible = False
'''''''    End If

    Dim stLinkCriteria As String, StudID, StStat, Gr_kods, StStat_Nr
    Dim qq As String, rec As Recordset, db As Database
    Set db = CurrentDb()

''''    qq = "SELECT dbo_StStat_StudSar_StudTabLLigData.StStat_Nr, dbo_StStat_StudSar_StudTabLLigData.StStat, dbo_StStat_StudSar_StudTabLLigData.Gr_kods, dbo_StStat_StudSar_StudTabLLigData.Fil_nos"
''''    qq = qq & " FROM dbo_StStat_StudSar_StudTabLLigData"
''''    qq = qq & " WHERE (((dbo_StStat_StudSar_StudTabLLigData.CKods)=" & ID & "))"
''''    qq = qq & " ORDER BY IIf([StStat_Nr]=20,1,IIf([StStat_Nr]=30,2,IIf([StStat_Nr]=50,3,IIf([StStat_Nr]=10,4,5))));"

    qq = "SELECT dbo_StStat_StudSar_StudTab.Stud_ID, dbo_StStat_StudSar_StudTab.StStat_Nr, dbo_StStat_StudSar_StudTab.StStat, dbo_StStat_StudSar_StudTab.Gr_kods"
    qq = qq & " FROM dbo_StStat_StudSar_StudTab"
    qq = qq & " WHERE (((dbo_StStat_StudSar_StudTab.CKods)=" & ID & "))"
    qq = qq & " ORDER BY IIf([StStat_Nr]=20,1,IIf([StStat_Nr]=30,2,IIf([StStat_Nr]=50,3,IIf([StStat_Nr]=10,4,5))));"

    Set rec = db.OpenRecordset(qq, DB_OPEN_SNAPSHOT, dbSeeChanges)

    If rec.EOF Then
        .PersStat.Visible = True
        .PersStat.Caption = "Nav students"
        .PersStat.BackColor = 255
        .Depozits.Caption = "Depozīts: 0.00 EUR; atlikums 0.00 EUR"
        .Depozits_sum = 0
    Else
        rec.MoveFirst
        StudID = rec!Stud_ID
        StStat = rec!StStat
        Gr_kods = rec!Gr_kods
        StStat_Nr = rec!StStat_Nr

        qq = "SELECT Fil_nos, LIG_NUM FROM dbo_stl_Stud_LastMGR_Data WHERE (Stud_ID=" & StudID & ")"
        Set rec = db.OpenRecordset(qq, DB_OPEN_SNAPSHOT, dbSeeChanges)

        .PersStat.Visible = True
''        Me.StudStat_Nr = rec!StStat_Nr
        If rec.EOF Then
            If StStat_Nr = 30 Then
                .PersStat.Caption = StStat & ", " & Gr_kods
            Else
                .PersStat.Caption = StStat & ", " & Gr_kods
            End If
        Else
            If StStat_Nr = 30 Then
                .PersStat.Caption = StStat & ", " & Gr_kods & ", " & rec!Fil_nos
            Else
                .PersStat.Caption = StStat & ", " & Gr_kods & ", " & rec!Fil_nos
            End If
        End If
        If StStat_Nr = 20 Or StStat_Nr = 30 Or StStat_Nr = 50 Then
            .PersStat.BackColor = 16776960
        Else
            .PersStat.BackColor = 255
        End If

        If rec.RecordCount > 0 Then
            qq = "SELECT IIf(IsNull([AV_Depozits_sum]),0,[AV_Depozits_sum]) AS D_M, IIf(IsNull([D_Sam]),0,[D_Sam]) AS D_S FROM dbo_sm_DepLig WHERE (LIG_NUM=" & rec!LIG_NUM & ")"
            Set rec = db.OpenRecordset(qq, DB_OPEN_SNAPSHOT, dbSeeChanges)
            .Depozits.Caption = "Depozīts: " & Format(rec!D_M, "0.00") & " EUR; atlikums " & Format(rec!D_S, "0.00") & " EUR"
            .Depozits_sum = rec!D_M
        End If

        qq = "SELECT Max(dbo_Abs_IzsnDiplSar.Datums) AS PedDiplDat"
        qq = qq & " FROM dbo_Abs_IzsnDiplSar"
        qq = qq & " WHERE ((Not (dbo_Abs_IzsnDiplSar.Datums) Is Null))"
        qq = qq & " GROUP BY dbo_Abs_IzsnDiplSar.CKods"
        qq = qq & " HAVING (((dbo_Abs_IzsnDiplSar.CKods)=" & ID & "));"

        Set rec = db.OpenRecordset(qq, DB_OPEN_SNAPSHOT, dbSeeChanges)

        If Not rec.EOF Then
            .PersStat.Caption = .PersStat.Caption & ", pēd.diploms " & rec!PedDiplDat
        End If



    End If


    qq = "SELECT dbo_pd_PA_ZK.PersID, dbo_pd_PA_ZK.NTA_Sk, dbo_pd_PA_ZK.MaxDBeigas, dbo_pd_PA_ZK.pmd_NTA_Sk, dbo_pd_PA_ZK.pmd_MaxDBeigas"
    qq = qq & " FROM dbo_pd_PA_ZK"
    qq = qq & " WHERE (((dbo_pd_PA_ZK.PersID)=" & ID & "));"
    Set rec = db.OpenRecordset(qq, DB_OPEN_SNAPSHOT, dbSeeChanges)

    If rec.EOF Then
        .DarbinStat.Visible = True
        .DarbinStat.Caption = "Nav darba attiecības ar BAT"
        .DarbinStat.BackColor = 255
        .DarbinStat_pmd.Visible = False
    Else
        rec.MoveFirst
        .DarbinStat.Visible = True
        .DarbinStat.BackColor = 16776960
        .DarbinStat.Caption = "Strādā BAT"
        If rec!pmd_NTA_Sk > 0 Then
            .DarbinStat_pmd.Visible = True
            .DarbinStat_pmd.Caption = "Līgums pamatdarbā beztermiņa"
        ElseIf rec!pmd_MaxDBeigas > Date Then
            .DarbinStat_pmd.Visible = True
            .DarbinStat_pmd.Caption = "Līgums pamatdarbā līdz " & rec!MaxDBeigas
        Else
            .DarbinStat_pmd.Visible = True
            .DarbinStat_pmd.BackColor = 255
            .DarbinStat_pmd.Caption = "Līgums pamatdarbā nav"
        End If

        If rec!NTA_Sk > 0 Then
            .DarbinStat.Caption = "Strādā BAT. Līgums beztermiņa"
        ElseIf rec!MaxDBeigas > Date Then
            .DarbinStat.Caption = "Strādā BAT. Līgums līdz " & rec!MaxDBeigas
        Else
            .DarbinStat.Caption = "Strādā BAT. Līguma termiņš nav zināms"
        End If
    End If

    DoCmd.Hourglass 0
End With


End Sub
