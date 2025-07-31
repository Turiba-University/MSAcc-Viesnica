Operation =1
Option =0
Having ="(((Min(IIf([StStat_Nr]=20,1,IIf([StStat_Nr]=50,2,IIf([StStat_Nr]=10,3,IIf([StSta"
    "t_Nr]=30,4,IIf([StStat_Nr]=40,5,Null)))))))>0))"
Begin InputTables
    Name ="tmp_StStat"
End
Begin OutputColumns
    Alias ="PID"
    Expression ="[tmp_StStat].[CKods]"
    Alias ="StatNr"
    Expression ="Min(IIf([StStat_Nr]=20,1,IIf([StStat_Nr]=50,2,IIf([StStat_Nr]=10,3,IIf([StStat_N"
        "r]=30,4,IIf([StStat_Nr]=40,5,Null))))))"
End
Begin Groups
    Expression ="[tmp_StStat].[CKods]"
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
    Left =179
    Top =369
    Right =1459
    Bottom =857
    Left =-1
    Top =-1
    Right =1273
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =105
        Top =5
        Name ="tmp_StStat"
        Name =""
    End
End
