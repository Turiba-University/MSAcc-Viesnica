Operation =1
Option =0
Where ="(((dbo_viesn_Ligumi_Istabas.LIDat_No)<=[forms]![VIA_VietuSkaitsUzdatumu]![DatNo]"
    ") AND ((dbo_viesn_Ligumi_Istabas.LIDat_Lidz) Is Null Or (dbo_viesn_Ligumi_Istaba"
    "s.LIDat_Lidz)>=[forms]![VIA_VietuSkaitsUzdatumu]![DatLidz]))"
Begin InputTables
    Name ="dbo_viesn_Ligumi"
    Name ="dbo_viesn_Ligumi_Istabas"
End
Begin OutputColumns
    Expression ="dbo_viesn_Ligumi.Lig_Dat"
    Expression ="dbo_viesn_Ligumi.Uzvards"
    Expression ="dbo_viesn_Ligumi.Vards"
    Expression ="dbo_viesn_Ligumi.Ligums"
    Alias ="Ist_Nr"
    Expression ="dbo_viesn_Ligumi_Istabas.Istaba"
    Expression ="dbo_viesn_Ligumi.Datums_In"
    Expression ="dbo_viesn_Ligumi.Datums_Out"
End
Begin Joins
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_viesn_Ligumi_Istabas"
    Expression ="dbo_viesn_Ligumi.Ligums = dbo_viesn_Ligumi_Istabas.Ligums"
    Flag =1
End
Begin Groups
    Expression ="dbo_viesn_Ligumi.Lig_Dat"
    GroupLevel =0
    Expression ="dbo_viesn_Ligumi.Uzvards"
    GroupLevel =0
    Expression ="dbo_viesn_Ligumi.Vards"
    GroupLevel =0
    Expression ="dbo_viesn_Ligumi.Ligums"
    GroupLevel =0
    Expression ="dbo_viesn_Ligumi_Istabas.Istaba"
    GroupLevel =0
    Expression ="dbo_viesn_Ligumi.Datums_In"
    GroupLevel =0
    Expression ="dbo_viesn_Ligumi.Datums_Out"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbMemo "OrderBy" ="VIA_LigSam_IstIrLig.Ligums"
Begin
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Ligums"
        dbInteger "ColumnWidth" ="840"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Ist_Nr"
        dbInteger "ColumnWidth" ="675"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Datums_In"
        dbInteger "ColumnWidth" ="1140"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Datums_Out"
        dbInteger "ColumnWidth" ="1290"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Lig_Dat"
        dbInteger "ColumnWidth" ="1110"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =2
    Top =31
    Right =588
    Bottom =674
    Left =-1
    Top =-1
    Right =805
    Bottom =282
    Left =0
    Top =0
    ColumnsShown =543
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
        Right =724
        Bottom =152
        Top =0
        Name ="dbo_viesn_Ligumi_Istabas"
        Name =""
    End
End
