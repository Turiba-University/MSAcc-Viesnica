Operation =1
Option =0
Where ="(((dbo_viesn_Maksajumi.Dat_No)<=forms!VIA_VietuSkaitsUzdatumu!Stat_Datums) And ("
    "(dbo_viesn_Maksajumi.Dat_Lidz)>=forms!VIA_VietuSkaitsUzdatumu!Stat_Datums) And ("
    "(dbo_viesn_Maksajumi.Stat) Is Null Or (dbo_viesn_Maksajumi.Stat)<>-1) And ((IIf("
    "IIf(IsNull([Ist_SamSum]),0,[Ist_SamSum])>=[Total],1,0))=1))"
Begin InputTables
    Name ="dbo_viesn_Maksajumi"
    Name ="VIA_LigIstAizn_Dat"
End
Begin OutputColumns
    Expression ="dbo_viesn_Maksajumi.Ligums"
    Expression ="dbo_viesn_Maksajumi.Ist_Nr"
    Alias ="Dat_Vsk"
    Expression ="Max(dbo_viesn_Maksajumi.Sk_Ist)"
    Alias ="MinOfDat_No"
    Expression ="Min(dbo_viesn_Maksajumi.Dat_No)"
    Alias ="MaxOfDat_Lidz"
    Expression ="Max(dbo_viesn_Maksajumi.Dat_Lidz)"
    Alias ="Ist_SamSum"
    Expression ="Sum(dbo_viesn_Maksajumi.Ist_SamSum)"
    Alias ="Total"
    Expression ="Sum(dbo_viesn_Maksajumi.Total)"
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
    Expression ="dbo_viesn_Maksajumi.Ist_Nr"
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
        dbText "Name" ="Dat_Vsk"
        dbInteger "ColumnWidth" ="900"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MinOfDat_No"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MaxOfDat_Lidz"
        dbInteger "ColumnWidth" ="1590"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ist_SamSum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Total"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Maksajumi.Ligums"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Maksajumi.Ist_Nr"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =-2
    Top =284
    Right =1531
    Bottom =858
    Left =-1
    Top =-1
    Right =1501
    Bottom =245
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =197
        Bottom =240
        Top =0
        Name ="dbo_viesn_Maksajumi"
        Name =""
    End
    Begin
        Left =263
        Top =38
        Right =407
        Bottom =182
        Top =0
        Name ="VIA_LigIstAizn_Dat"
        Name =""
    End
End
