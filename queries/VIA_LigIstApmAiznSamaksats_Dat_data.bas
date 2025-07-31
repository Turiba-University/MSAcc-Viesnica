Operation =1
Option =0
Where ="(((dbo_viesn_Maksajumi.Dat_No)<=forms!VIA_VietuSkaitsUzdatumu!Stat_Datums) And ("
    "(dbo_viesn_Maksajumi.Dat_Lidz)>=forms!VIA_VietuSkaitsUzdatumu!Stat_Datums) And ("
    "(dbo_viesn_Maksajumi.Stat) Is Null Or (dbo_viesn_Maksajumi.Stat)<>-1))"
Having ="((((Sum(IIf(IsNull([Total]),0,[Total]))+Sum(IIf(IsNull([KavN_Summa]),0,[KavN_Sum"
    "ma])))-(Sum(IIf(IsNull([Ist_SamSum]),0,[Ist_SamSum]))+Sum(IIf(IsNull([KavN_SamSu"
    "m]),0,[KavN_SamSum]))))>0))"
Begin InputTables
    Name ="dbo_viesn_Maksajumi"
    Name ="VIA_LigIstAizn_Dat"
End
Begin OutputColumns
    Expression ="dbo_viesn_Maksajumi.Ligums"
    Expression ="dbo_viesn_Maksajumi.Ist_Nr"
    Alias ="AiznDatSam_Vsk"
    Expression ="Max(dbo_viesn_Maksajumi.Sk_Ist)"
    Alias ="AiznDatSam_No"
    Expression ="Min(dbo_viesn_Maksajumi.Dat_No)"
    Alias ="AiznDatSam_Lidz"
    Expression ="Max(dbo_viesn_Maksajumi.Dat_Lidz)"
    Alias ="MStat"
    Expression ="(Sum(IIf(IsNull([Total]),0,[Total]))+Sum(IIf(IsNull([KavN_Summa]),0,[KavN_Summa]"
        ")))-(Sum(IIf(IsNull([Ist_SamSum]),0,[Ist_SamSum]))+Sum(IIf(IsNull([KavN_SamSum])"
        ",0,[KavN_SamSum])))"
End
Begin Joins
    LeftTable ="dbo_viesn_Maksajumi"
    RightTable ="VIA_LigIstAizn_Dat"
    Expression ="dbo_viesn_Maksajumi.Ligums = VIA_LigIstAizn_Dat.Ligums"
    Flag =1
End
Begin Groups
    Expression ="dbo_viesn_Maksajumi.Ligums"
    GroupLevel =0
    Expression ="dbo_viesn_Maksajumi.Ist_Nr"
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
        dbText "Name" ="MStat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="AiznDatSam_Vsk"
        dbInteger "ColumnWidth" ="900"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="AiznDatSam_No"
        dbInteger "ColumnWidth" ="1380"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="AiznDatSam_Lidz"
        dbInteger "ColumnWidth" ="1590"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Maksajumi.Ligums"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Maksajumi.Ist_Nr"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =4
    Top =259
    Right =1537
    Bottom =831
    Left =-1
    Top =-1
    Right =1501
    Bottom =245
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =197
        Bottom =233
        Top =0
        Name ="dbo_viesn_Maksajumi"
        Name =""
    End
    Begin
        Left =334
        Top =44
        Right =478
        Bottom =188
        Top =0
        Name ="VIA_LigIstAizn_Dat"
        Name =""
    End
End
