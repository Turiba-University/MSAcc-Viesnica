Operation =1
Option =0
Where ="(((dbo_viesn_Maksajumi.Dat_No)<=forms!VIA_VietuSkaitsUzdatumu!Stat_Datums) And ("
    "(dbo_viesn_Maksajumi.Dat_Lidz)>=forms!VIA_VietuSkaitsUzdatumu!Stat_Datums) And ("
    "(dbo_viesn_Maksajumi.Stat) Is Null Or (dbo_viesn_Maksajumi.Stat)<>-1))"
Begin InputTables
    Name ="dbo_viesn_Maksajumi"
    Name ="VIA_LigIstAizn_Dat"
End
Begin OutputColumns
    Expression ="dbo_viesn_Maksajumi.Ligums"
    Expression ="dbo_viesn_Maksajumi.Ist_Nr"
    Alias ="AiznDat_Vsk"
    Expression ="Max(dbo_viesn_Maksajumi.Sk_Ist)"
    Alias ="AiznDat_No"
    Expression ="Min(dbo_viesn_Maksajumi.Dat_No)"
    Alias ="AiznDat_Lidz"
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
        dbText "Name" ="AiznDat_Vsk"
        dbInteger "ColumnWidth" ="900"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="AiznDat_No"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="AiznDat_Lidz"
        dbInteger "ColumnWidth" ="1590"
        dbBoolean "ColumnHidden" ="0"
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
    Left =4
    Top =309
    Right =1537
    Bottom =883
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
        Right =228
        Bottom =240
        Top =0
        Name ="dbo_viesn_Maksajumi"
        Name =""
    End
    Begin
        Left =333
        Top =18
        Right =477
        Bottom =162
        Top =0
        Name ="VIA_LigIstAizn_Dat"
        Name =""
    End
End
