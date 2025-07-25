Operation =1
Option =0
Begin InputTables
    Name ="tmp_ParskatsPaValstim"
End
Begin OutputColumns
    Expression ="[tmp_ParskatsPaValstim].[Valsts]"
    Alias ="NaktisPers"
    Expression ="Sum([tmp_ParskatsPaValstim].[Sk])"
End
Begin Groups
    Expression ="[tmp_ParskatsPaValstim].[Valsts]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
End
Begin
    State =0
    Left =129
    Top =39
    Right =1352
    Bottom =603
    Left =-1
    Top =-1
    Right =1216
    Bottom =281
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =178
        Bottom =143
        Top =0
        Name ="tmp_ParskatsPaValstim"
        Name =""
    End
End
