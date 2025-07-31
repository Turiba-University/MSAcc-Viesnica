Operation =1
Option =0
Where ="((([dbo_viesn_Ligumi].[Ligums])>0) And (([dbo_viesn_Ligumi_Istabas].[LIDat_Lidz]"
    ") Is Null Or (([dbo_viesn_Ligumi_Istabas].[LIDat_Lidz])>=Date() And ([dbo_viesn_"
    "Ligumi_Istabas].[LIDat_Lidz])>=DateSerial([forms]![rezervisti]![r_mg],9,1))))"
Begin InputTables
    Name ="dbo_viesn_Ligumi"
    Name ="dbo_viesn_Ligumi_Istabas"
End
Begin OutputColumns
    Expression ="[dbo_viesn_Ligumi].[Ligums]"
    Expression ="[dbo_viesn_Ligumi].[Pers_ID]"
    Expression ="[dbo_viesn_Ligumi].[Lig_Dat]"
    Expression ="[dbo_viesn_Ligumi].[Vards]"
    Expression ="[dbo_viesn_Ligumi].[Uzvards]"
    Expression ="[dbo_viesn_Ligumi].[Datums_In]"
    Expression ="[dbo_viesn_Ligumi].[Datums_Out]"
    Expression ="[dbo_viesn_Ligumi_Istabas].[Istaba]"
    Expression ="[dbo_viesn_Ligumi_Istabas].[LIDat_No]"
    Expression ="[dbo_viesn_Ligumi_Istabas].[LIDat_Lidz]"
End
Begin Joins
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_viesn_Ligumi_Istabas"
    Expression ="[dbo_viesn_Ligumi].[Ligums]=[dbo_viesn_Ligumi_Istabas].[Ligums]"
    Flag =1
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
    Left =48
    Top =128
    Right =1446
    Bottom =811
    Left =-1
    Top =-1
    Right =1391
    Bottom =350
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =262
        Bottom =300
        Top =5
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
    Begin
        Left =300
        Top =6
        Right =488
        Bottom =135
        Top =0
        Name ="dbo_viesn_Ligumi_Istabas"
        Name =""
    End
End
