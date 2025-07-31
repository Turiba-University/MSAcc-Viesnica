Operation =1
Option =0
Where ="(((dbo_viesn_Ligumi_Istabas.LIDat_No)<=forms!VIA_VietuSkaitsUzdatumu!Stat_Datums"
    ") And ((dbo_viesn_Ligumi_Istabas.LIDat_Lidz) Is Null Or (dbo_viesn_Ligumi_Istaba"
    "s.LIDat_Lidz)>=forms!VIA_VietuSkaitsUzdatumu!Stat_Datums))"
Begin InputTables
    Name ="dbo_viesn_Ligumi"
    Name ="dbo_Personas"
    Name ="dbo_viesn_Ligumi_Istabas"
    Name ="VIA_LigIstApm_PedDat"
    Name ="VIA_LigApm_Sam_Peddatums"
    Name ="VIA_LigIst_Stat_Inv_IKartes_gr"
    Name ="VIA_StudStatData"
    Name ="dbo_Personas_Cert"
    Name ="ViesnLigKoment_LastKoment"
End
Begin OutputColumns
    Expression ="dbo_viesn_Ligumi.Ligums"
    Expression ="dbo_viesn_Ligumi.Lig_Dat"
    Expression ="dbo_viesn_Ligumi.Pers_ID"
    Expression ="dbo_Personas.Vards"
    Expression ="dbo_Personas.Uzvards"
    Expression ="dbo_Personas.Pers_Kods"
    Expression ="dbo_Personas.Valsts"
    Alias ="Statuss"
    Expression ="dbo_viesn_Ligumi.Position"
    Alias ="StatComment"
    Expression ="dbo_viesn_Ligumi.PositionComment"
    Alias ="Cert"
    Expression ="IIf([CertVeids]=1,\"Pārsl.\",IIf([CertVeids]=2,\"Vakc.\",IIf([CertVeids]=0,\"nav"
        "\",Null)))"
    Expression ="dbo_Personas_Cert.CertDatums"
    Expression ="ViesnLigKoment_LastKoment.Komentars"
    Expression ="VIA_StudStatData.StudStat"
    Expression ="VIA_StudStatData.Progr"
    Expression ="VIA_StudStatData.Lim"
    Expression ="dbo_viesn_Ligumi_Istabas.Istaba"
    Expression ="VIA_LigIst_Stat_Inv_IKartes_gr.KSk"
    Expression ="VIA_LigIst_Stat_Inv_IKartes_gr.KNr"
    Alias ="Sum"
    Expression ="Int(([summa]+0.005005)*100)/100"
    Alias ="ApmLidz_Dat"
    Expression ="VIA_LigApm_Sam_Peddatums.V_ApmLidz"
    Expression ="dbo_viesn_Ligumi.Datums_In"
    Expression ="dbo_viesn_Ligumi.Datums_Out"
    Expression ="dbo_viesn_Ligumi_Istabas.LIDat_No"
    Expression ="dbo_viesn_Ligumi_Istabas.LIDat_Lidz"
    Alias ="TelNr"
    Expression ="dbo_Personas.Tel1"
    Expression ="dbo_Personas.Epasts"
End
Begin Joins
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_Personas"
    Expression ="dbo_viesn_Ligumi.Pers_ID = dbo_Personas.Personas_ID"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_viesn_Ligumi_Istabas"
    Expression ="dbo_viesn_Ligumi.Ligums = dbo_viesn_Ligumi_Istabas.Ligums"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi_Istabas"
    RightTable ="VIA_LigIstApm_PedDat"
    Expression ="dbo_viesn_Ligumi_Istabas.Istaba = VIA_LigIstApm_PedDat.Ist_Nr"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi_Istabas"
    RightTable ="VIA_LigIstApm_PedDat"
    Expression ="dbo_viesn_Ligumi_Istabas.Ligums = VIA_LigIstApm_PedDat.Ligums"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="VIA_LigApm_Sam_Peddatums"
    Expression ="dbo_viesn_Ligumi.Ligums = VIA_LigApm_Sam_Peddatums.Ligums"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi_Istabas"
    RightTable ="VIA_LigIst_Stat_Inv_IKartes_gr"
    Expression ="dbo_viesn_Ligumi_Istabas.Ligums = VIA_LigIst_Stat_Inv_IKartes_gr.Ligums"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="VIA_StudStatData"
    Expression ="dbo_viesn_Ligumi.Pers_ID = VIA_StudStatData.CKods"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_Personas_Cert"
    Expression ="dbo_viesn_Ligumi.Pers_ID = dbo_Personas_Cert.Personas_ID"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="ViesnLigKoment_LastKoment"
    Expression ="dbo_viesn_Ligumi.Ligums = ViesnLigKoment_LastKoment.Lig_Nr"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_viesn_Ligumi.Ligums"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbMemo "OrderBy" ="[VIA_LigIstStat_All_LigReg_UzDat].[Istaba]"
dbMemo "Filter" ="([VIA_LigIstStat_All_LigReg_UzDat].[Statuss]=\"Cita skola\")"
Begin
    Begin
        dbText "Name" ="Sum"
        dbText "Format" ="Standard"
        dbByte "DecimalPlaces" ="2"
        dbInteger "ColumnWidth" ="990"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Ligums"
        dbInteger "ColumnWidth" ="840"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Istabas.Istaba"
        dbInteger "ColumnWidth" ="570"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="4"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Lig_Dat"
        dbInteger "ColumnWidth" ="1185"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Uzvards"
        dbInteger "ColumnWidth" ="1365"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="6"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Datums_Out"
        dbInteger "ColumnWidth" ="1575"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Istabas.LIDat_No"
        dbInteger "ColumnWidth" ="1035"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Pers_ID"
        dbInteger "ColumnOrder" ="3"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Vards"
        dbInteger "ColumnOrder" ="5"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Pers_Kods"
        dbInteger "ColumnOrder" ="7"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Valsts"
        dbInteger "ColumnOrder" ="8"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="975"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Statuss"
        dbInteger "ColumnOrder" ="9"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Epasts"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Datums_In"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Istabas.LIDat_Lidz"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TelNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ApmLidz_Dat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_LigIst_Stat_Inv_IKartes_gr.KNr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1020"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="VIA_LigIst_Stat_Inv_IKartes_gr.KSk"
        dbInteger "ColumnWidth" ="750"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_StudStatData.Lim"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="750"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="VIA_StudStatData.StudStat"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1440"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="VIA_StudStatData.Progr"
        dbInteger "ColumnWidth" ="915"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Cert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ViesnLigKoment_LastKoment.Komentars"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas_Cert.CertDatums"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="StatComment"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1695"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =73
    Top =106
    Right =1898
    Bottom =827
    Left =-1
    Top =-1
    Right =1802
    Bottom =195
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =32
        Top =17
        Right =224
        Bottom =238
        Top =0
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
    Begin
        Left =499
        Top =11
        Right =731
        Bottom =122
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
    Begin
        Left =289
        Top =103
        Right =482
        Bottom =248
        Top =0
        Name ="dbo_viesn_Ligumi_Istabas"
        Name =""
    End
    Begin
        Left =660
        Top =168
        Right =915
        Bottom =294
        Top =0
        Name ="VIA_LigIstApm_PedDat"
        Name =""
    End
    Begin
        Left =828
        Top =22
        Right =1074
        Bottom =194
        Top =0
        Name ="VIA_LigApm_Sam_Peddatums"
        Name =""
    End
    Begin
        Left =763
        Top =98
        Right =1037
        Bottom =242
        Top =0
        Name ="VIA_LigIst_Stat_Inv_IKartes_gr"
        Name =""
    End
    Begin
        Left =1145
        Top =80
        Right =1289
        Bottom =287
        Top =0
        Name ="VIA_StudStatData"
        Name =""
    End
    Begin
        Left =333
        Top =29
        Right =477
        Bottom =173
        Top =0
        Name ="dbo_Personas_Cert"
        Name =""
    End
    Begin
        Left =534
        Top =98
        Right =678
        Bottom =242
        Top =0
        Name ="ViesnLigKoment_LastKoment"
        Name =""
    End
End
