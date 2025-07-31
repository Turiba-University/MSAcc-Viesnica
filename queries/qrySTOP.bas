Operation =1
Option =0
Begin InputTables
    Name ="STOP"
End
Begin OutputColumns
    Expression ="STOP.CILVEKS_CKODS"
    Expression ="STOP.UZVARDS"
    Expression ="STOP.VARDS"
    Alias ="CountOfCILVEKS_CKODS"
    Expression ="Count(STOP.CILVEKS_CKODS)"
End
Begin OrderBy
    Expression ="Count(STOP.CILVEKS_CKODS)"
    Flag =1
End
Begin Groups
    Expression ="STOP.CILVEKS_CKODS"
    GroupLevel =0
    Expression ="STOP.UZVARDS"
    GroupLevel =0
    Expression ="STOP.VARDS"
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
    Left =40
    Top =67
    Right =1002
    Bottom =372
    Left =-1
    Top =-1
    Right =951
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="STOP"
        Name =""
    End
End
