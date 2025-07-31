Operation =1
Option =0
Having ="(((dbo_viesn_Ligumi_PApr.PADat_Lidz) Is Null Or (dbo_viesn_Ligumi_PApr.PADat_Lid"
    "z)>=Date()))"
Begin InputTables
    Name ="dbo_viesn_Ligumi_PApr"
End
Begin OutputColumns
    Expression ="[dbo_viesn_Ligumi_PApr].[Ligums]"
    Expression ="[dbo_viesn_Ligumi_PApr].[Istaba]"
    Expression ="[dbo_viesn_Ligumi_PApr].[PA_Nos]"
    Expression ="[dbo_viesn_Ligumi_PApr].[PA_Cena]"
    Alias ="Skaits"
    Expression ="Count([dbo_viesn_Ligumi_PApr].[PA_Nos])"
    Expression ="[dbo_viesn_Ligumi_PApr].[PADat_No]"
    Expression ="[dbo_viesn_Ligumi_PApr].[PADat_Lidz]"
End
Begin OrderBy
    Expression ="[dbo_viesn_Ligumi_PApr].[Ligums]"
    Flag =0
    Expression ="[dbo_viesn_Ligumi_PApr].[Istaba]"
    Flag =0
    Expression ="[dbo_viesn_Ligumi_PApr].[PA_Nos]"
    Flag =0
    Expression ="[dbo_viesn_Ligumi_PApr].[PA_Cena]"
    Flag =0
End
Begin Groups
    Expression ="[dbo_viesn_Ligumi_PApr].[Ligums]"
    GroupLevel =0
    Expression ="[dbo_viesn_Ligumi_PApr].[Istaba]"
    GroupLevel =0
    Expression ="[dbo_viesn_Ligumi_PApr].[PA_Nos]"
    GroupLevel =0
    Expression ="[dbo_viesn_Ligumi_PApr].[PA_Cena]"
    GroupLevel =0
    Expression ="[dbo_viesn_Ligumi_PApr].[PADat_No]"
    GroupLevel =0
    Expression ="[dbo_viesn_Ligumi_PApr].[PADat_Lidz]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_PApr.Ligums"
        dbInteger "ColumnWidth" ="840"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_PApr.Istaba"
        dbInteger "ColumnWidth" ="720"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_PApr.PA_Nos"
        dbInteger "ColumnWidth" ="2130"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_PApr.PA_Cena"
        dbInteger "ColumnWidth" ="1020"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Skaits"
        dbInteger "ColumnWidth" ="720"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_PApr.PADat_No"
        dbInteger "ColumnWidth" ="1110"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_PApr.PADat_Lidz"
        dbInteger "ColumnWidth" ="1245"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =9
    Top =3
    Right =1046
    Bottom =709
    Left =-1
    Top =-1
    Right =1026
    Bottom =313
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =173
        Bottom =286
        Top =0
        Name ="dbo_viesn_Ligumi_PApr"
        Name =""
    End
End
