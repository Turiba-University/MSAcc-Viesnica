Operation =1
Option =0
Where ="(((dbo_viesn_Ligumi_Inv.Inv_ID)=11) AND ((dbo_viesn_Ligumi_Inv.InvStat)<>-1))"
Begin InputTables
    Name ="dbo_viesn_Ligumi"
    Name ="dbo_viesn_Ligumi_Inv"
End
Begin OutputColumns
    Expression ="dbo_viesn_Ligumi_Inv.Inv_Nos"
    Expression ="dbo_viesn_Ligumi.Vards"
    Expression ="dbo_viesn_Ligumi.Uzvards"
    Expression ="dbo_viesn_Ligumi.PK"
    Expression ="dbo_viesn_Ligumi_Inv.Ligums"
    Expression ="dbo_viesn_Ligumi.Datums_In"
    Expression ="dbo_viesn_Ligumi.Datums_Out"
    Expression ="dbo_viesn_Ligumi_Inv.Istaba"
    Alias ="KartesNr"
    Expression ="dbo_viesn_Ligumi_Inv.InvComment"
    Alias ="Stat"
    Expression ="IIf([InvStat]=0,\"izsniegta\",IIf([InvStat]=-20,\"Atdots\",IIf([InvStat]=-12,\"Z"
        "udis\",IIf([InvStat]=-11,\"Bojāts\",IIf([InvStat]=-10,\"Nav nodots\")))))"
    Alias ="Izdota"
    Expression ="dbo_viesn_Ligumi_Inv.Aud_Date"
End
Begin Joins
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_viesn_Ligumi_Inv"
    Expression ="dbo_viesn_Ligumi.[Ligums] = dbo_viesn_Ligumi_Inv.[Ligums]"
    Flag =3
End
Begin OrderBy
    Expression ="dbo_viesn_Ligumi_Inv.Aud_Date"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbMemo "Filter" ="([JTM_IeejasKartes].[KartesNr]=\"35066\")"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="Izdota"
        dbInteger "ColumnWidth" ="1920"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[dbo_viesn_Ligumi_Inv].[Inv_Nos]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[dbo_viesn_Ligumi].[Vards]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="KartesNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[dbo_viesn_Ligumi].[Uzvards]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[dbo_viesn_Ligumi].[Datums_In]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[dbo_viesn_Ligumi].[PK]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[dbo_viesn_Ligumi].[Datums_Out]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[dbo_viesn_Ligumi_Inv].[Istaba]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[dbo_viesn_Ligumi_Inv].[Ligums]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Stat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Inv.Inv_Nos"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.PK"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Datums_Out"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Inv.Istaba"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Vards"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2580"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Inv.Ligums"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Uzvards"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Datums_In"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =61
    Top =91
    Right =1258
    Bottom =815
    Left =-1
    Top =-1
    Right =1173
    Bottom =46
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =82
        Top =16
        Right =248
        Bottom =190
        Top =0
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
    Begin
        Left =344
        Top =22
        Right =516
        Bottom =196
        Top =0
        Name ="dbo_viesn_Ligumi_Inv"
        Name =""
    End
End
