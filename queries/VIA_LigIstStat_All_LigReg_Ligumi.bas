Operation =1
Option =0
Begin InputTables
    Name ="dbo_viesn_Ligumi"
    Name ="dbo_Personas"
    Name ="dbo_Personas_Cert"
End
Begin OutputColumns
    Expression ="dbo_viesn_Ligumi.Ligums"
    Expression ="dbo_viesn_Ligumi.Lig_Dat"
    Expression ="dbo_Personas.Vards"
    Expression ="dbo_Personas.Uzvards"
    Expression ="dbo_Personas.Pers_Kods"
    Expression ="dbo_Personas.Valsts"
    Alias ="Statuss"
    Expression ="dbo_viesn_Ligumi.Position"
    Alias ="Cert"
    Expression ="IIf([CertVeids]=1,\"Pārsl.\",IIf([CertVeids]=2,\"Vakc.\",IIf([CertVeids]=0,\"nav"
        "\",Null)))"
    Expression ="dbo_Personas_Cert.CertDatums"
End
Begin Joins
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_Personas"
    Expression ="dbo_viesn_Ligumi.Pers_ID = dbo_Personas.Personas_ID"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_Personas_Cert"
    Expression ="dbo_viesn_Ligumi.Pers_ID = dbo_Personas_Cert.Personas_ID"
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
dbMemo "Filter" ="(((VIA_LigIstStat_All_LigReg_Ligumi.Lig_Dat>#1/1/2014#))) AND ((VIA_LigIstStat_A"
    "ll_LigReg_Ligumi.Lig_Dat<#1/1/2015#))"
dbMemo "OrderBy" ="VIA_LigIstStat_All_LigReg_Ligumi.Lig_Dat"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Ligums"
        dbInteger "ColumnWidth" ="840"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =43
    Top =91
    Right =870
    Bottom =784
    Left =-1
    Top =-1
    Right =795
    Bottom =295
    Left =0
    Top =7
    ColumnsShown =539
    Begin
        Left =213
        Top =1
        Right =405
        Bottom =247
        Top =0
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
    Begin
        Left =869
        Top =12
        Right =1056
        Bottom =201
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="dbo_Personas_Cert"
        Name =""
    End
End
