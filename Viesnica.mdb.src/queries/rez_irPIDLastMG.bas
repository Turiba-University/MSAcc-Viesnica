Operation =1
Option =0
Where ="(((dbo_Viesn_Rezervesana.Dzests) Is Null Or (dbo_Viesn_Rezervesana.Dzests)=0) AN"
    "D ((dbo_Viesn_Rezervesana.Rez_MG)=2023))"
Begin InputTables
    Name ="dbo_Viesn_Rezervesana"
End
Begin OutputColumns
    Expression ="dbo_Viesn_Rezervesana.CKods"
    Alias ="sk"
    Expression ="Count(dbo_Viesn_Rezervesana.CKods)"
    Alias ="Ist"
    Expression ="First(dbo_Viesn_Rezervesana.Istaba)"
End
Begin Groups
    Expression ="dbo_Viesn_Rezervesana.CKods"
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
        dbText "Name" ="dbo_Viesn_Rezervesana.CKods"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="sk"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Istaba"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FirstOfIstaba"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ist"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =86
    Top =142
    Right =1408
    Bottom =771
    Left =-1
    Top =-1
    Right =1299
    Bottom =313
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =48
        Top =12
        Right =382
        Bottom =321
        Top =0
        Name ="dbo_Viesn_Rezervesana"
        Name =""
    End
End
