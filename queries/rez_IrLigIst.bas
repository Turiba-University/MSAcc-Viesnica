Operation =1
Option =0
Where ="(((dbo_viesn_Ligumi.Ligums)>0) And ((dbo_viesn_Ligumi.Datums_Out) Is Null)) Or ("
    "((dbo_viesn_Ligumi.Ligums)>0) And ((dbo_viesn_Ligumi.Datums_Out)>=Date() And (db"
    "o_viesn_Ligumi.Datums_Out)>=DateSerial(forms!rezervisti!r_mg,9,1))) Or (((dbo_vi"
    "esn_Ligumi.Ligums)>0) And (Not (rez_IrIstaba.Ligums) Is Null))"
Begin InputTables
    Name ="dbo_viesn_Ligumi"
    Name ="rez_IrIstaba"
End
Begin OutputColumns
    Expression ="dbo_viesn_Ligumi.Pers_ID"
    Expression ="dbo_viesn_Ligumi.Vards"
    Expression ="dbo_viesn_Ligumi.Uzvards"
    Expression ="dbo_viesn_Ligumi.PK"
    Expression ="dbo_viesn_Ligumi.Ligums"
    Expression ="dbo_viesn_Ligumi.Lig_Dat"
    Expression ="dbo_viesn_Ligumi.Datums_In"
    Expression ="dbo_viesn_Ligumi.Datums_Out"
    Expression ="rez_IrIstaba.Istaba"
    Expression ="rez_IrIstaba.LIDat_No"
    Expression ="rez_IrIstaba.LIDat_Lidz"
End
Begin Joins
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="rez_IrIstaba"
    Expression ="dbo_viesn_Ligumi.[Ligums] = rez_IrIstaba.[Ligums]"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbMemo "OrderBy" ="[rez_IrLigIst].[Istaba]"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="[dbo_viesn_Ligumi].[Lig_Dat]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[dbo_viesn_Ligumi].[Pers_ID]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[dbo_viesn_Ligumi].[Datums_In]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[dbo_viesn_Ligumi].[Vards]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[dbo_viesn_Ligumi].[Datums_Out]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[dbo_viesn_Ligumi].[Uzvards]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[rez_IrIstaba].[Istaba]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[dbo_viesn_Ligumi].[PK]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[dbo_viesn_Ligumi].[Ligums]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[rez_IrIstaba].[LIDat_No]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[rez_IrIstaba].[LIDat_Lidz]"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =13
    Top =145
    Right =1561
    Bottom =740
    Left =-1
    Top =-1
    Right =1524
    Bottom =311
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =209
        Bottom =225
        Top =0
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
    Begin
        Left =538
        Top =6
        Right =731
        Bottom =249
        Top =0
        Name ="rez_IrIstaba"
        Name =""
    End
End
