Operation =1
Option =0
Begin InputTables
    Name ="dbo_viesn_Ligumi"
    Name ="z_ib_VIA_DzivoUzSodienu"
End
Begin OutputColumns
    Expression ="z_ib_VIA_DzivoUzSodienu.Pers_ID"
    Expression ="z_ib_VIA_DzivoUzSodienu.Vards"
    Expression ="z_ib_VIA_DzivoUzSodienu.Uzvards"
    Expression ="z_ib_VIA_DzivoUzSodienu.Pers_Kods"
    Expression ="dbo_viesn_Ligumi.Ligums"
    Expression ="dbo_viesn_Ligumi.Lig_Dat"
    Expression ="dbo_viesn_Ligumi.Datums_In"
    Expression ="dbo_viesn_Ligumi.Datums_Out"
End
Begin Joins
    LeftTable ="z_ib_VIA_DzivoUzSodienu"
    RightTable ="dbo_viesn_Ligumi"
    Expression ="z_ib_VIA_DzivoUzSodienu.Pers_ID = dbo_viesn_Ligumi.Pers_ID"
    Flag =1
End
Begin OrderBy
    Expression ="z_ib_VIA_DzivoUzSodienu.Pers_ID"
    Flag =0
    Expression ="dbo_viesn_Ligumi.Datums_In"
    Flag =1
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
        dbText "Name" ="z_ib_VIA_DzivoUzSodienu.Pers_Kods"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="z_ib_VIA_DzivoUzSodienu.Pers_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Lig_Dat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Datums_In"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Datums_Out"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="z_ib_VIA_DzivoUzSodienu.Vards"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="z_ib_VIA_DzivoUzSodienu.Uzvards"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Ligums"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =86
    Top =142
    Right =1438
    Bottom =845
    Left =-1
    Top =-1
    Right =1320
    Bottom =420
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =305
        Top =64
        Right =499
        Bottom =353
        Top =0
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
    Begin
        Left =43
        Top =68
        Right =187
        Bottom =212
        Top =0
        Name ="z_ib_VIA_DzivoUzSodienu"
        Name =""
    End
End
