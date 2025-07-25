Operation =6
Option =0
Begin InputTables
    Name ="tmp_ParskatsPaValstim"
End
Begin OutputColumns
    Expression ="tmp_ParskatsPaValstim.Datums"
    GroupLevel =2
    Expression ="tmp_ParskatsPaValstim.Tips"
    GroupLevel =1
    Alias ="PersSk"
    Expression ="Sum(tmp_ParskatsPaValstim.Sk)"
End
Begin OrderBy
    Expression ="tmp_ParskatsPaValstim.Datums"
    Flag =1
    Expression ="tmp_ParskatsPaValstim.Tips"
    Flag =0
End
Begin Groups
    Expression ="tmp_ParskatsPaValstim.Datums"
    GroupLevel =2
    Expression ="tmp_ParskatsPaValstim.Tips"
    GroupLevel =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="Avantis"
        dbInteger "ColumnWidth" ="840"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="BAT students"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Cita skola"
        dbInteger "ColumnWidth" ="1080"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Darbinieks"
        dbInteger "ColumnWidth" ="1155"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Pastāvīgs viesis"
        dbInteger "ColumnWidth" ="1635"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="RSS"
        dbInteger "ColumnWidth" ="555"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Viesis"
        dbInteger "ColumnWidth" ="705"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =106
    Top =17
    Right =791
    Bottom =491
    Left =-1
    Top =-1
    Right =1212
    Bottom =281
    Left =0
    Top =0
    ColumnsShown =559
    Begin
        Left =38
        Top =6
        Right =178
        Bottom =184
        Top =0
        Name ="tmp_ParskatsPaValstim"
        Name =""
    End
End
