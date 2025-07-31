Operation =1
Option =0
Begin InputTables
    Name ="IstPA_Sar"
    Name ="IstPA_Samaksa"
End
Begin OutputColumns
    Expression ="IstPA_Sar.Ligums"
    Expression ="IstPA_Sar.Istaba"
    Alias ="Nosaukums"
    Expression ="IstPA_Sar.PA_Nos"
    Alias ="Cena"
    Expression ="IstPA_Sar.PA_Cena"
    Expression ="IstPA_Sar.Skaits"
    Expression ="IstPA_Sar.PADat_No"
    Expression ="IstPA_Sar.PADat_Lidz"
    Expression ="IstPA_Samaksa.Apm_no"
    Expression ="IstPA_Samaksa.Apm_Lidz"
    Expression ="IstPA_Samaksa.Samaksats"
    Alias ="Stat"
    Expression ="IIf(IsNull([Apm_Lidz]) Or [Apm_Lidz]<Date(),\"xx\")"
End
Begin Joins
    LeftTable ="IstPA_Sar"
    RightTable ="IstPA_Samaksa"
    Expression ="IstPA_Sar.Ligums = IstPA_Samaksa.Ligums"
    Flag =2
    LeftTable ="IstPA_Sar"
    RightTable ="IstPA_Samaksa"
    Expression ="IstPA_Sar.Istaba = IstPA_Samaksa.IstNr"
    Flag =2
    LeftTable ="IstPA_Sar"
    RightTable ="IstPA_Samaksa"
    Expression ="IstPA_Sar.PA_Nos = IstPA_Samaksa.PA_Nos"
    Flag =2
End
Begin OrderBy
    Expression ="IstPA_Sar.Ligums"
    Flag =0
    Expression ="IstPA_Sar.Istaba"
    Flag =0
    Expression ="IstPA_Sar.PA_Nos"
    Flag =0
    Expression ="IstPA_Sar.PA_Cena"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbMemo "OrderBy" ="IstPA_ApmaksasStavoklis.Istaba"
Begin
    Begin
        dbText "Name" ="Cena"
        dbInteger "ColumnWidth" ="645"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Stat"
        dbInteger "ColumnWidth" ="525"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="IstPA_Sar.Ligums"
        dbInteger "ColumnWidth" ="840"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="IstPA_Sar.Istaba"
        dbInteger "ColumnWidth" ="720"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="IstPA_Sar.PADat_No"
        dbInteger "ColumnWidth" ="1215"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="IstPA_Sar.PADat_Lidz"
        dbInteger "ColumnWidth" ="1245"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =2
    Left =-6
    Top =-25
    Right =930
    Bottom =506
    Left =-1
    Top =-1
    Right =1025
    Bottom =354
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =212
        Bottom =158
        Top =0
        Name ="IstPA_Sar"
        Name =""
    End
    Begin
        Left =338
        Top =41
        Right =481
        Bottom =178
        Top =0
        Name ="IstPA_Samaksa"
        Name =""
    End
End
