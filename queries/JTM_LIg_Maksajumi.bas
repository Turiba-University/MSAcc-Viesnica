Operation =1
Option =8
Where ="((([dbo_viesn_Maksajumi].[Stat]) Is Null Or ([dbo_viesn_Maksajumi].[Stat])<>-1))"
Begin InputTables
    Name ="dbo_viesn_Maksajumi"
End
Begin OutputColumns
    Expression ="dbo_viesn_Maksajumi.*"
    Alias ="Istaba"
    Expression ="IIf([Ist_Nr]>0,\"V\" & [Ist_Nr],IIf([Ist_Nr]<0,\"A\" & -[Ist_Nr]))"
End
Begin OrderBy
    Expression ="[dbo_viesn_Maksajumi].[Dat_No]"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="0"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
Begin
End
Begin
    State =0
    Left =76
    Top =214
    Right =1522
    Bottom =527
    Left =-1
    Top =-1
    Right =1439
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =120
        Top =4
        Name ="dbo_viesn_Maksajumi"
        Name =""
    End
End
