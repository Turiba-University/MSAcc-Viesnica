Operation =1
Option =0
Where ="((([dbo_viesn_Ligumi_Istabas].[LIDat_No])<=[forms]![VIA_VietuSkaitsUzdatumu]![St"
    "at_Datums]) And (([dbo_viesn_Ligumi_Istabas].[LIDat_Lidz]) Is Null Or ([dbo_vies"
    "n_Ligumi_Istabas].[LIDat_Lidz])>=[forms]![VIA_VietuSkaitsUzdatumu]![Stat_Datums]"
    "))"
Begin InputTables
    Name ="dbo_viesn_Ligumi_Istabas"
End
Begin OutputColumns
    Expression ="[dbo_viesn_Ligumi_Istabas].[Ligums]"
    Expression ="[dbo_viesn_Ligumi_Istabas].[Istaba]"
    Alias ="LIDat_No"
    Expression ="Min([dbo_viesn_Ligumi_Istabas].[LIDat_No])"
    Alias ="LIDat_Lidz"
    Expression ="Max([dbo_viesn_Ligumi_Istabas].[LIDat_Lidz])"
End
Begin Groups
    Expression ="[dbo_viesn_Ligumi_Istabas].[Ligums]"
    GroupLevel =0
    Expression ="[dbo_viesn_Ligumi_Istabas].[Istaba]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Istabas.Ligums"
        dbInteger "ColumnWidth" ="840"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Istabas.Istaba"
        dbInteger "ColumnWidth" ="720"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="LIDat_No"
        dbInteger "ColumnWidth" ="1110"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="LIDat_Lidz"
        dbInteger "ColumnWidth" ="1050"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =151
    Top =372
    Right =1199
    Bottom =812
    Left =-1
    Top =-1
    Right =1041
    Bottom =238
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =235
        Top =6
        Right =380
        Bottom =128
        Top =0
        Name ="dbo_viesn_Ligumi_Istabas"
        Name =""
    End
End
