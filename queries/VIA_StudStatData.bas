Operation =1
Option =0
Where ="((([dbo_StStat_StudSar_StudTab].[StStat_Nr])=10 Or ([dbo_StStat_StudSar_StudTab]"
    ".[StStat_Nr])=20 Or ([dbo_StStat_StudSar_StudTab].[StStat_Nr])=30 Or ([dbo_StSta"
    "t_StudSar_StudTab].[StStat_Nr])=50))"
Begin InputTables
    Name ="dbo_StStat_StudSar_StudTab"
End
Begin OutputColumns
    Expression ="[dbo_StStat_StudSar_StudTab].[CKods]"
    Expression ="[dbo_StStat_StudSar_StudTab].[StStat_Nr]"
    Alias ="FirstOfStStat_Nr"
    Expression ="First([dbo_StStat_StudSar_StudTab].[StStat_Nr])"
    Alias ="StudStat"
    Expression ="First([dbo_StStat_StudSar_StudTab].[StStat])"
    Alias ="Progr"
    Expression ="First([dbo_StStat_StudSar_StudTab].[Gr_kods])"
    Alias ="Lim"
    Expression ="First([dbo_StStat_StudSar_StudTab].[Grupesana])"
End
Begin OrderBy
    Expression ="[dbo_StStat_StudSar_StudTab].[StStat_Nr]"
    Flag =1
End
Begin Groups
    Expression ="[dbo_StStat_StudSar_StudTab].[CKods]"
    GroupLevel =0
    Expression ="[dbo_StStat_StudSar_StudTab].[StStat_Nr]"
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
        dbText "Name" ="dbo_StStat_StudSar_StudTab.StStat_Nr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_StStat_StudSar_StudTab.CKods"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FirstOfStStat_Nr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Progr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Lim"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="StudStat"
        dbInteger "ColumnWidth" ="2385"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =95
    Right =1451
    Bottom =820
    Left =-1
    Top =-1
    Right =1419
    Bottom =149
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =39
        Top =29
        Right =183
        Bottom =173
        Top =0
        Name ="dbo_StStat_StudSar_StudTab"
        Name =""
    End
End
