Operation =1
Option =0
Where ="(((dbo_viesn_Maksajumi.Dat_No)>forms!VIA_VietuSkaitsUzdatumu!Stat_Datums) And (("
    "dbo_viesn_Maksajumi.Stat) Is Null Or (dbo_viesn_Maksajumi.Stat)<>-1))"
Begin InputTables
    Name ="dbo_viesn_Maksajumi"
    Name ="VIA_LigIstAizn_Dat"
End
Begin OutputColumns
    Expression ="dbo_viesn_Maksajumi.Ligums"
    Expression ="dbo_viesn_Maksajumi.Ist_Nr"
    Alias ="PecDat_dat"
    Expression ="Min(dbo_viesn_Maksajumi.Dat_No)"
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
        dbText "Name" ="PecDat_dat"
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
    Left =365
    Top =114
    Right =1442
    Bottom =588
    Left =-1
    Top =-1
    Right =1045
    Bottom =265
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
        Left =361
        Top =54
        Right =505
        Bottom =198
        Top =0
        Name ="VIA_LigIstAizn_Dat"
        Name =""
    End
End
