Operation =1
Option =0
Begin InputTables
    Name ="dbo_viesn_Maksajumi"
End
Begin OutputColumns
    Expression ="[dbo_viesn_Maksajumi].[Ligums]"
    Alias ="PE_Konv"
    Expression ="Max([dbo_viesn_Maksajumi].[PE_Kovertets])"
End
Begin Groups
    Expression ="[dbo_viesn_Maksajumi].[Ligums]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbMemo "Filter" ="((Not Query1.PE_Konv=0))"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
End
Begin
    State =0
    Left =134
    Top =116
    Right =1474
    Bottom =429
    Left =-1
    Top =-1
    Right =1333
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =162
        Bottom =120
        Top =25
        Name ="dbo_viesn_Maksajumi"
        Name =""
    End
End
