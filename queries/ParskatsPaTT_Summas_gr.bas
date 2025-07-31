Operation =1
Option =0
Begin InputTables
    Name ="ParskatsPaTT_Summas"
End
Begin OutputColumns
    Expression ="ParskatsPaTT_Summas.TTips"
    Alias ="IstSumA"
    Expression ="Sum(IIf([ITips]=1,Int(([SumOfIst_SamSum]+0.005005)*100)/100,0))"
    Alias ="IstSumV1"
    Expression ="Sum(IIf([ITips]=2,Int(([SumOfIst_SamSum]+0.005005)*100)/100,0))"
    Alias ="IstSumV25"
    Expression ="Sum(IIf([ITips]=3,Int(([SumOfIst_SamSum]+0.005005)*100)/100,0))"
    Alias ="KavNSumA"
    Expression ="Sum(IIf([ITips]=1,Int(([SumOfKavN_SamSum]+0.005005)*100)/100,0))"
    Alias ="KavNSumV1"
    Expression ="Sum(IIf([ITips]=2,Int(([SumOfKavN_SamSum]+0.005005)*100)/100,0))"
    Alias ="KavNSumV25"
    Expression ="Sum(IIf([ITips]=3,Int(([SumOfKavN_SamSum]+0.005005)*100)/100,0))"
End
Begin Groups
    Expression ="ParskatsPaTT_Summas.TTips"
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
    Left =30
    Top =16
    Right =1515
    Bottom =319
    Left =-1
    Top =-1
    Right =1478
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =397
        Top =-2
        Right =574
        Bottom =105
        Top =0
        Name ="ParskatsPaTT_Summas"
        Name =""
    End
End
