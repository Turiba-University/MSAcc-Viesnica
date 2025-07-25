Operation =1
Option =0
Where ="(((dbo_viesn_Ligumi.Ligums) Is Null))"
Begin InputTables
    Name ="dbo_viesn_Ligumi_Istabas"
    Name ="dbo_viesn_Ligumi"
End
Begin OutputColumns
    Expression ="dbo_viesn_Ligumi_Istabas.VLI_ID"
    Expression ="dbo_viesn_Ligumi_Istabas.Ligums"
    Expression ="dbo_viesn_Ligumi_Istabas.Istaba"
    Expression ="dbo_viesn_Ligumi_Istabas.LIDat_No"
    Expression ="dbo_viesn_Ligumi_Istabas.LIDat_Lidz"
    Expression ="dbo_viesn_Ligumi.Ligums"
End
Begin Joins
    LeftTable ="dbo_viesn_Ligumi_Istabas"
    RightTable ="dbo_viesn_Ligumi"
    Expression ="dbo_viesn_Ligumi_Istabas.Ligums = dbo_viesn_Ligumi.Ligums"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbMemo "Filter" ="([Query1].[LIDat_Lidz] Is Null)"
dbMemo "OrderBy" ="[dbo_viesn_Ligumi_Istabas].[Ligums]"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Istabas.LIDat_Lidz"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Ligums"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Istabas.VLI_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Istabas.Ligums"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Istabas.Istaba"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Istabas.LIDat_No"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =524
    Right =1364
    Bottom =827
    Left =-1
    Top =-1
    Right =1332
    Bottom =504
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =122
        Top =148
        Right =286
        Bottom =408
        Top =0
        Name ="dbo_viesn_Ligumi_Istabas"
        Name =""
    End
    Begin
        Left =384
        Top =188
        Right =625
        Bottom =424
        Top =0
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
End
