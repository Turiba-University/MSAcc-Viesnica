Operation =1
Option =0
Where ="(((dbo_viesn_Ligumi.Datums_Out) Is Null Or (dbo_viesn_Ligumi.Datums_Out)>Date())"
    ")"
Begin InputTables
    Name ="dbo_viesn_Ligumi"
    Name ="dbo_Personas"
End
Begin OutputColumns
    Expression ="dbo_viesn_Ligumi.Pers_ID"
    Expression ="dbo_Personas.Vards"
    Expression ="dbo_Personas.Uzvards"
    Expression ="dbo_Personas.Pers_Kods"
End
Begin Joins
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_Personas"
    Expression ="dbo_viesn_Ligumi.Pers_ID = dbo_Personas.Personas_ID"
    Flag =1
End
Begin OrderBy
    Expression ="dbo_viesn_Ligumi.Pers_ID"
    Flag =1
End
Begin Groups
    Expression ="dbo_viesn_Ligumi.Pers_ID"
    GroupLevel =0
    Expression ="dbo_Personas.Vards"
    GroupLevel =0
    Expression ="dbo_Personas.Uzvards"
    GroupLevel =0
    Expression ="dbo_Personas.Pers_Kods"
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
        dbText "Name" ="dbo_viesn_Ligumi.Pers_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Uzvards"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Pers_Kods"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Datums_In"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Datums_Out"
        dbInteger "ColumnWidth" ="1575"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Vards"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =35
    Top =97
    Right =1438
    Bottom =845
    Left =-1
    Top =-1
    Right =1371
    Bottom =471
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =154
        Top =96
        Right =445
        Bottom =361
        Top =0
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
    Begin
        Left =534
        Top =58
        Right =756
        Bottom =414
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
End
