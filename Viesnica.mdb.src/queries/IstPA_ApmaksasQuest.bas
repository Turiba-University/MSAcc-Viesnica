Operation =1
Option =0
Where ="((Not (IstPA_Samaksa.IstNr) Is Null) AND ((IstPA_Sar.Ligums) Is Null)) OR ((Not "
    "(IstPA_Samaksa.PA_Nos) Is Null) AND ((IstPA_Sar.Ligums) Is Null))"
Begin InputTables
    Name ="IstPA_Sar"
    Name ="IstPA_Samaksa"
End
Begin OutputColumns
    Expression ="IstPA_Samaksa.Ligums"
    Expression ="IstPA_Samaksa.IstNr"
    Alias ="Nosaukums"
    Expression ="IstPA_Samaksa.PA_Nos"
    Expression ="IstPA_Samaksa.Apm_no"
    Expression ="IstPA_Samaksa.Apm_Lidz"
    Expression ="IstPA_Samaksa.Samaksats"
End
Begin Joins
    LeftTable ="IstPA_Sar"
    RightTable ="IstPA_Samaksa"
    Expression ="IstPA_Sar.Ligums = IstPA_Samaksa.Ligums"
    Flag =3
    LeftTable ="IstPA_Sar"
    RightTable ="IstPA_Samaksa"
    Expression ="IstPA_Sar.Istaba = IstPA_Samaksa.IstNr"
    Flag =3
    LeftTable ="IstPA_Sar"
    RightTable ="IstPA_Samaksa"
    Expression ="IstPA_Sar.PA_Nos = IstPA_Samaksa.PA_Nos"
    Flag =3
End
Begin OrderBy
    Expression ="IstPA_Samaksa.Ligums"
    Flag =0
    Expression ="IstPA_Samaksa.IstNr"
    Flag =0
    Expression ="IstPA_Samaksa.PA_Nos"
    Flag =0
    Expression ="IstPA_Samaksa.Apm_no"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="[IstPA_Samaksa].[Ligums]"
        dbInteger "ColumnWidth" ="840"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="[IstPA_Samaksa].[IstNr]"
        dbInteger "ColumnWidth" ="570"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =6
    Top =38
    Right =678
    Bottom =626
    Left =-1
    Top =-1
    Right =1126
    Bottom =354
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =212
        Bottom =165
        Top =0
        Name ="IstPA_Sar"
        Name =""
    End
    Begin
        Left =338
        Top =41
        Right =481
        Bottom =185
        Top =0
        Name ="IstPA_Samaksa"
        Name =""
    End
End
