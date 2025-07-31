Operation =1
Option =0
Begin InputTables
    Name ="StStat_MinStat"
End
Begin OutputColumns
    Expression ="[StStat_MinStat].[PID]"
    Alias ="StStatNr"
    Expression ="(IIf([StatNr]=1,20,IIf([StatNr]=2,50,IIf([StatNr]=3,10,IIf([StatNr]=4,30,IIf([St"
        "atNr]=5,40,Null))))))"
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
    Left =64
    Top =83
    Right =1344
    Bottom =388
    Left =-1
    Top =-1
    Right =1273
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =178
        Bottom =90
        Top =0
        Name ="StStat_MinStat"
        Name =""
    End
End
