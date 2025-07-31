Operation =1
Option =0
Where ="(((dbo_viesn_Ligumi_Inv.InvTips)=2) AND ((dbo_viesn_Ligumi_Inv.Inv_ID)=11) AND ("
    "(dbo_viesn_Ligumi_Inv.InvStat)=0))"
Begin InputTables
    Name ="dbo_viesn_Ligumi_Inv"
End
Begin OutputColumns
    Expression ="dbo_viesn_Ligumi_Inv.Ligums"
    Expression ="dbo_viesn_Ligumi_Inv.Istaba"
    Expression ="dbo_viesn_Ligumi_Inv.InvTips"
    Expression ="dbo_viesn_Ligumi_Inv.Inv_ID"
    Expression ="dbo_viesn_Ligumi_Inv.Inv_Nos"
    Alias ="Inv_NosComm"
    Expression ="IIf(IsNull([InvComment]),[Inv_Nos],[Inv_Nos] & \", \" & [InvComment])"
    Expression ="dbo_viesn_Ligumi_Inv.InvComment"
    Expression ="dbo_viesn_Ligumi_Inv.InvSk"
    Expression ="dbo_viesn_Ligumi_Inv.InvStat"
    Alias ="NavNod"
    Expression ="IIf([InvStat]=-10,-1,0)"
    Alias ="Bojats"
    Expression ="IIf([InvStat]=-11,-1,0)"
    Alias ="Zudis"
    Expression ="IIf([InvStat]=-12,-1,0)"
    Alias ="Atdots"
    Expression ="IIf([InvStat]=-20,-1,0)"
End
Begin OrderBy
    Expression ="dbo_viesn_Ligumi_Inv.Istaba"
    Flag =0
    Expression ="dbo_viesn_Ligumi_Inv.Inv_Nos"
    Flag =0
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
        dbText "Name" ="dbo_viesn_Ligumi_Inv.VLI_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Inv.Ligums"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Inv.Istaba"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Inv.InvTips"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Zudis"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Inv.Inv_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Inv.InvStat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Inv.Inv_Nos"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="NavNod"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Atdots"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Inv_NosComm"
        dbInteger "ColumnWidth" ="3225"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Inv.InvComment"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Inv.InvSk"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Bojats"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =179
    Top =248
    Right =1553
    Bottom =798
    Left =-1
    Top =-1
    Right =1342
    Bottom =300
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="dbo_viesn_Ligumi_Inv"
        Name =""
    End
End
