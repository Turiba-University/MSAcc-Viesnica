Operation =1
Option =0
Begin InputTables
    Name ="VIA_Ist_vsk_Uzdatumu"
End
Begin OutputColumns
    Expression ="VIA_Ist_vsk_Uzdatumu.IstabasNr"
    Expression ="VIA_Ist_vsk_Uzdatumu.Vietas"
    Expression ="VIA_Ist_vsk_Uzdatumu.Aizn"
    Expression ="VIA_Ist_vsk_Uzdatumu.DzS"
    Expression ="VIA_Ist_vsk_Uzdatumu.DzV"
    Expression ="VIA_Ist_vsk_Uzdatumu.DzLV"
    Expression ="VIA_Ist_vsk_Uzdatumu.[DzNe-LV]"
    Expression ="VIA_Ist_vsk_Uzdatumu.Brivas"
    Alias ="Rez"
    Expression ="VIA_Ist_vsk_Uzdatumu.RezVietasIst"
    Expression ="VIA_Ist_vsk_Uzdatumu.BrivasNeRez"
    Expression ="VIA_Ist_vsk_Uzdatumu.S"
    Expression ="VIA_Ist_vsk_Uzdatumu.V"
    Expression ="VIA_Ist_vsk_Uzdatumu.LV"
    Expression ="VIA_Ist_vsk_Uzdatumu.[ne-LV]"
End
Begin OrderBy
    Expression ="VIA_Ist_vsk_Uzdatumu.IstabasNr"
    Flag =0
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
        dbText "Name" ="VIA_Ist_vsk_Uzdatumu.IstabasNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_Ist_vsk_Uzdatumu.Brivas"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="975"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Rez"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="750"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="VIA_Ist_vsk_Uzdatumu.Vietas"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_Ist_vsk_Uzdatumu.Aizn"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="825"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="VIA_Ist_vsk_Uzdatumu.BrivasNeRez"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1575"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="VIA_Ist_vsk_Uzdatumu.DzV"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="780"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="VIA_Ist_vsk_Uzdatumu.[ne-LV]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_Ist_vsk_Uzdatumu.[DzNe-LV]"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1215"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="VIA_Ist_vsk_Uzdatumu.DzS"
        dbInteger "ColumnWidth" ="750"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_Ist_vsk_Uzdatumu.V"
        dbInteger "ColumnWidth" ="555"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_Ist_vsk_Uzdatumu.S"
        dbInteger "ColumnWidth" ="525"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_Ist_vsk_Uzdatumu.DzLV"
        dbInteger "ColumnWidth" ="870"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_Ist_vsk_Uzdatumu.LV"
        dbInteger "ColumnWidth" ="645"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =2
    Top =81
    Right =1382
    Bottom =762
    Left =-1
    Top =-1
    Right =1348
    Bottom =404
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =19
        Top =9
        Right =354
        Bottom =395
        Top =0
        Name ="VIA_Ist_vsk_Uzdatumu"
        Name =""
    End
End
