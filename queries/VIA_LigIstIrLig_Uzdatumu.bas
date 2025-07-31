Operation =1
Option =0
Where ="(((dbo_viesn_Ligumi_Istabas.LIDat_No)<=forms!VIA_VietuSkaitsUzdatumu!Stat_Datums"
    ") And ((dbo_viesn_Ligumi_Istabas.LIDat_Lidz) Is Null Or (dbo_viesn_Ligumi_Istaba"
    "s.LIDat_Lidz)>=forms!VIA_VietuSkaitsUzdatumu!Stat_Datums))"
Begin InputTables
    Name ="dbo_Personas"
    Name ="dbo_viesn_Ligumi"
    Name ="dbo_viesn_Ligumi_Istabas"
End
Begin OutputColumns
    Expression ="dbo_viesn_Ligumi.Pers_ID"
    Expression ="dbo_viesn_Ligumi.Ligums"
    Alias ="Ist_Nr"
    Expression ="dbo_viesn_Ligumi_Istabas.Istaba"
    Expression ="dbo_Personas.Uzvards"
    Expression ="dbo_Personas.Vards"
    Expression ="dbo_Personas.Valsts"
    Expression ="dbo_Personas.Pers_Kods"
    Expression ="dbo_Personas.Tel1"
    Expression ="dbo_viesn_Ligumi.Datums_In"
    Expression ="dbo_viesn_Ligumi.Datums_Out"
    Alias ="S"
    Expression ="Sum(IIf([Dzimums]=\"s\",1,Null))"
    Alias ="V"
    Expression ="Sum(IIf([Dzimums]=\"v\",1,Null))"
End
Begin Joins
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_viesn_Ligumi_Istabas"
    Expression ="dbo_viesn_Ligumi.[Ligums] = dbo_viesn_Ligumi_Istabas.[Ligums]"
    Flag =1
    LeftTable ="dbo_Personas"
    RightTable ="dbo_viesn_Ligumi"
    Expression ="dbo_Personas.[Personas_ID] = dbo_viesn_Ligumi.[Pers_ID]"
    Flag =3
End
Begin Groups
    Expression ="dbo_viesn_Ligumi.Pers_ID"
    GroupLevel =0
    Expression ="dbo_viesn_Ligumi.Ligums"
    GroupLevel =0
    Expression ="dbo_viesn_Ligumi_Istabas.Istaba"
    GroupLevel =0
    Expression ="dbo_Personas.Uzvards"
    GroupLevel =0
    Expression ="dbo_Personas.Vards"
    GroupLevel =0
    Expression ="dbo_Personas.Valsts"
    GroupLevel =0
    Expression ="dbo_Personas.Pers_Kods"
    GroupLevel =0
    Expression ="dbo_Personas.Tel1"
    GroupLevel =0
    Expression ="dbo_viesn_Ligumi.Datums_In"
    GroupLevel =0
    Expression ="dbo_viesn_Ligumi.Datums_Out"
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
        dbText "Name" ="Ist_Nr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Pers_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="V"
        dbInteger "ColumnWidth" ="555"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Ligums"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Valsts"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Datums_In"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="S"
        dbInteger "ColumnWidth" ="525"
        dbBoolean "ColumnHidden" ="0"
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
        dbText "Name" ="dbo_viesn_Ligumi.Datums_Out"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Vards"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Tel1"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =4
    Top =3
    Right =1081
    Bottom =477
    Left =-1
    Top =-1
    Right =1045
    Bottom =265
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =234
        Bottom =210
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
    Begin
        Left =270
        Top =5
        Right =453
        Bottom =239
        Top =0
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
    Begin
        Left =491
        Top =6
        Right =677
        Bottom =120
        Top =0
        Name ="dbo_viesn_Ligumi_Istabas"
        Name =""
    End
End
