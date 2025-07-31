Operation =1
Option =0
Begin InputTables
    Name ="VIA_LigIstStat_Uzdatumu"
End
Begin OutputColumns
    Expression ="VIA_LigIstStat_Uzdatumu.Ist_Nr"
    Alias ="Vsk_aizn"
    Expression ="Sum(VIA_LigIstStat_Uzdatumu.Vsk)"
    Alias ="Iev"
    Expression ="Sum(VIA_LigIstStat_Uzdatumu.[In])"
    Alias ="Dz"
    Expression ="Sum(VIA_LigIstStat_Uzdatumu.Dz)"
    Alias ="Izv"
    Expression ="Sum(VIA_LigIstStat_Uzdatumu.Out)"
    Alias ="S"
    Expression ="Sum(VIA_LigIstStat_Uzdatumu.S)"
    Alias ="V"
    Expression ="Sum(VIA_LigIstStat_Uzdatumu.V)"
    Alias ="DzLV"
    Expression ="Sum(IIf([Valsts]=\"Latvija\",1,0))"
    Alias ="DzNe-LV"
    Expression ="Sum(IIf([Valsts]=\"Latvija\",0,1))"
End
Begin Groups
    Expression ="VIA_LigIstStat_Uzdatumu.Ist_Nr"
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
        dbText "Name" ="Vsk_aizn"
        dbInteger "ColumnWidth" ="990"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_LigIstStat_Uzdatumu.Ist_Nr"
        dbInteger "ColumnWidth" ="675"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Iev"
        dbInteger "ColumnWidth" ="960"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Dz"
        dbInteger "ColumnWidth" ="810"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Izv"
        dbInteger "ColumnWidth" ="990"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="V"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="S"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DzNe-LV"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="DzLV"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =129
    Top =62
    Right =1321
    Bottom =611
    Left =-1
    Top =-1
    Right =1169
    Bottom =242
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =258
        Bottom =248
        Top =0
        Name ="VIA_LigIstStat_Uzdatumu"
        Name =""
    End
End
