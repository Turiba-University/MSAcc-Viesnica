Operation =1
Option =8
Where ="((([dbo_viesn_Ligumi_Inv].[InvTips])=1) And (([dbo_viesn_Ligumi_Inv].[InvStat]) "
    "Is Null Or ([dbo_viesn_Ligumi_Inv].[InvStat])=0))"
Begin InputTables
    Name ="dbo_viesn_Ligumi_Inv"
    Name ="dbo_Viesn_Inventars"
End
Begin OutputColumns
    Expression ="[dbo_viesn_Ligumi_Inv].[Ligums]"
    Expression ="[dbo_viesn_Ligumi_Inv].[Istaba]"
    Expression ="[dbo_viesn_Ligumi_Inv].[Inv_Nos]"
    Expression ="[dbo_Viesn_Inventars].[Inv_Nos_Eng]"
    Expression ="[dbo_viesn_Ligumi_Inv].[InvSk]"
    Expression ="[dbo_viesn_Ligumi_Inv].[InvTips]"
    Expression ="[dbo_viesn_Ligumi_Inv].[InvStat]"
End
Begin Joins
    LeftTable ="dbo_viesn_Ligumi_Inv"
    RightTable ="dbo_Viesn_Inventars"
    Expression ="[dbo_viesn_Ligumi_Inv].[Inv_ID]=[dbo_Viesn_Inventars].[Inv_ID]"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="0"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
End
Begin
    State =0
    Left =76
    Top =162
    Right =1522
    Bottom =475
    Left =-1
    Top =-1
    Right =1439
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =172
        Top =6
        Right =334
        Bottom =120
        Top =4
        Name ="dbo_viesn_Ligumi_Inv"
        Name =""
    End
    Begin
        Left =424
        Top =-1
        Right =520
        Bottom =113
        Top =0
        Name ="dbo_Viesn_Inventars"
        Name =""
    End
End
