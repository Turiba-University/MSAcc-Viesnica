Operation =1
Option =0
Begin InputTables
    Name ="dbo_viesn_Ligumi_PApr_Maksajumi"
End
Begin OutputColumns
    Expression ="[dbo_viesn_Ligumi_PApr_Maksajumi].[Ligums]"
    Expression ="[dbo_viesn_Ligumi_PApr_Maksajumi].[IstNr]"
    Expression ="[dbo_viesn_Ligumi_PApr_Maksajumi].[PA_Nos]"
    Alias ="Apm_no"
    Expression ="Min([dbo_viesn_Ligumi_PApr_Maksajumi].[Dat_No])"
    Alias ="Apm_Lidz"
    Expression ="Max([dbo_viesn_Ligumi_PApr_Maksajumi].[Dat_Lidz])"
    Alias ="Samaksats"
    Expression ="Sum([dbo_viesn_Ligumi_PApr_Maksajumi].[SamSum])"
End
Begin OrderBy
    Expression ="[dbo_viesn_Ligumi_PApr_Maksajumi].[Ligums]"
    Flag =0
    Expression ="[dbo_viesn_Ligumi_PApr_Maksajumi].[IstNr]"
    Flag =0
    Expression ="[dbo_viesn_Ligumi_PApr_Maksajumi].[PA_Nos]"
    Flag =0
End
Begin Groups
    Expression ="[dbo_viesn_Ligumi_PApr_Maksajumi].[Ligums]"
    GroupLevel =0
    Expression ="[dbo_viesn_Ligumi_PApr_Maksajumi].[IstNr]"
    GroupLevel =0
    Expression ="[dbo_viesn_Ligumi_PApr_Maksajumi].[PA_Nos]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_PApr_Maksajumi.Ligums"
        dbInteger "ColumnWidth" ="840"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_PApr_Maksajumi.IstNr"
        dbInteger "ColumnWidth" ="570"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Apm_no"
        dbInteger "ColumnWidth" ="1110"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Apm_Lidz"
        dbInteger "ColumnWidth" ="1110"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Samaksats"
        dbInteger "ColumnWidth" ="1170"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =134
    Top =116
    Right =1229
    Bottom =626
    Left =-1
    Top =-1
    Right =1084
    Bottom =285
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =263
        Top =1
        Name ="dbo_viesn_Ligumi_PApr_Maksajumi"
        Name =""
    End
End
