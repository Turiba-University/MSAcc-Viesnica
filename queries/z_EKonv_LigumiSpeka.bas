Operation =1
Option =0
Where ="((([dbo_viesn_Ligumi].[Ligums])>0) And (([dbo_viesn_Ligumi].[Datums_Out]) Is Nul"
    "l Or ([dbo_viesn_Ligumi].[Datums_Out])>#12/31/2013#))"
Begin InputTables
    Name ="dbo_viesn_Ligumi"
End
Begin OutputColumns
    Expression ="[dbo_viesn_Ligumi].[LIGUM_ID]"
    Expression ="[dbo_viesn_Ligumi].[Ligums]"
    Expression ="[dbo_viesn_Ligumi].[Lig_Dat]"
    Expression ="[dbo_viesn_Ligumi].[Vards]"
    Expression ="[dbo_viesn_Ligumi].[Uzvards]"
    Expression ="[dbo_viesn_Ligumi].[Datums_In]"
    Expression ="[dbo_viesn_Ligumi].[Datums_Out]"
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
    Left =93
    Top =178
    Right =1589
    Bottom =797
    Left =-1
    Top =-1
    Right =1485
    Bottom =221
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =306
        Bottom =199
        Top =12
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
End
