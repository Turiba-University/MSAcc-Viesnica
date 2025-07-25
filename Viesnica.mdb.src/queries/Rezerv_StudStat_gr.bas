Operation =1
Option =0
Begin InputTables
    Name ="tmp_RezStudStat"
End
Begin OutputColumns
    Expression ="tmp_RezStudStat.CKods"
    Alias ="FirstOfSt"
    Expression ="First(tmp_RezStudStat.St)"
    Alias ="FirstOfMG"
    Expression ="First(tmp_RezStudStat.MG)"
    Alias ="FirstOfStudStat"
    Expression ="First(tmp_RezStudStat.StudStat)"
    Alias ="FirstOfProgr"
    Expression ="First(tmp_RezStudStat.Progr)"
    Alias ="FirstOfLim"
    Expression ="First(tmp_RezStudStat.Lim)"
    Alias ="FirstOfStat"
    Expression ="First(tmp_RezStudStat.Stat)"
End
Begin OrderBy
    Expression ="tmp_RezStudStat.CKods"
    Flag =0
    Expression ="First(tmp_RezStudStat.St)"
    Flag =0
    Expression ="First(tmp_RezStudStat.MG)"
    Flag =1
End
Begin Groups
    Expression ="tmp_RezStudStat.CKods"
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
        dbText "Name" ="Rezerv_StudStat.CKods"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Rezerv_StudStat.MG"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_RezStudStat.St"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FirstOfSt"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_RezStudStat.CKods"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FirstOfMG"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_RezStudStat.MG"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FirstOfStudStat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_RezStudStat.StudStat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FirstOfLim"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_RezStudStat.Progr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_RezStudStat.Lim"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FirstOfProgr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FirstOfStat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="tmp_RezStudStat.Stat"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =192
    Top =169
    Right =1446
    Bottom =687
    Left =-1
    Top =-1
    Right =1222
    Bottom =220
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =283
        Top =36
        Right =427
        Bottom =232
        Top =0
        Name ="tmp_RezStudStat"
        Name =""
    End
End
