Operation =1
Option =0
Begin InputTables
    Name ="ParskatsPaTT"
End
Begin OutputColumns
    Alias ="MG"
    Expression ="Year([datums]) & \"-\" & Format(Month([Datums]),\"00\")"
    Expression ="ParskatsPaTT.TTips"
    Alias ="NaktisPersA"
    Expression ="Sum(IIf([ITips]=1,[Sk],0))"
    Alias ="NaktisPersV1"
    Expression ="Sum(IIf([ITips]=2,[Sk],0))"
    Alias ="NaktisPersV25"
    Expression ="Sum(IIf([ITips]=3,[Sk],0))"
End
Begin OrderBy
    Expression ="Year([datums]) & \"-\" & Format(Month([Datums]),\"00\")"
    Flag =1
    Expression ="ParskatsPaTT.TTips"
    Flag =0
End
Begin Groups
    Expression ="Year([datums]) & \"-\" & Format(Month([Datums]),\"00\")"
    GroupLevel =0
    Expression ="ParskatsPaTT.TTips"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="NaktisPersA"
        dbInteger "ColumnWidth" ="1275"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="NaktisPersV1"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="NaktisPersV25"
        dbInteger "ColumnWidth" ="1485"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =129
    Top =91
    Right =1352
    Bottom =655
    Left =-1
    Top =-1
    Right =1212
    Bottom =281
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =267
        Top =0
        Right =498
        Bottom =212
        Top =0
        Name ="ParskatsPaTT"
        Name =""
    End
End
