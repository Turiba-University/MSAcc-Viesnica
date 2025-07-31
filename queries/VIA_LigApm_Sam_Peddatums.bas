Operation =1
Option =0
Where ="(((IIf(IsNull([Ist_SamSum]),0,[Ist_SamSum])-IIf(IsNull([Total]),0,[total]))>=0) "
    "AND ((dbo_viesn_Maksajumi.Stat) Is Null Or (dbo_viesn_Maksajumi.Stat)<>-1)) OR ("
    "((dbo_viesn_Maksajumi.Stat) Is Null Or (dbo_viesn_Maksajumi.Stat)<>-1) AND ((IIf"
    "(IsNull([KavN_SamSum]),0,[KavN_SamSum])-IIf(IsNull([KavN_Summa]),0,[KavN_Summa])"
    ")>=0))"
Begin InputTables
    Name ="dbo_viesn_Maksajumi"
    Name ="VIA_LigIstAizn_Dat"
End
Begin OutputColumns
    Expression ="dbo_viesn_Maksajumi.Ligums"
    Alias ="V_sk"
    Expression ="Max(dbo_viesn_Maksajumi.Sk_Ist)"
    Alias ="V_ApmLidz"
    Expression ="Max(dbo_viesn_Maksajumi.Dat_Lidz)"
End
Begin Joins
    LeftTable ="dbo_viesn_Maksajumi"
    RightTable ="VIA_LigIstAizn_Dat"
    Expression ="dbo_viesn_Maksajumi.Ligums = VIA_LigIstAizn_Dat.Ligums"
    Flag =1
End
Begin Groups
    Expression ="dbo_viesn_Maksajumi.Ligums"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="V_sk"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="V_ApmLidz"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Maksajumi.Ligums"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[dbo_viesn_Maksajumi].[Ligums]"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =5
    Top =198
    Right =1571
    Bottom =683
    Left =-1
    Top =-1
    Right =1534
    Bottom =265
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =283
        Bottom =240
        Top =0
        Name ="dbo_viesn_Maksajumi"
        Name =""
    End
    Begin
        Left =396
        Top =32
        Right =540
        Bottom =176
        Top =0
        Name ="VIA_LigIstAizn_Dat"
        Name =""
    End
End
