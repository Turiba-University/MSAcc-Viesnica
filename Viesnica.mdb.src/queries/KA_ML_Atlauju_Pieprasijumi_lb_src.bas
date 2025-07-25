Operation =1
Option =0
Where ="(((dbo_Atlaujas_sag.Statuss)=0) AND ((dbo_Pakalpojumi.web)=1))"
Begin InputTables
    Name ="dbo_Atlaujas_sag"
    Name ="dbo_sl_Stud_kursi"
    Name ="dbo_sl_Macibspeki"
    Name ="dbo_Pakalpojumi"
    Name ="dbo_STUDIJAS"
    Name ="dbo_sl_Katedras"
End
Begin OutputColumns
    Alias ="stUzvards"
    Expression ="dbo_Atlaujas_sag.Uzvards"
    Alias ="stVards"
    Expression ="dbo_Atlaujas_sag.Vards"
    Expression ="dbo_Atlaujas_sag.Lig_Num"
    Expression ="dbo_sl_Stud_kursi.Pr_nos"
    Expression ="dbo_sl_Macibspeki.Vards"
    Expression ="dbo_sl_Macibspeki.Uzvards"
    Expression ="dbo_Pakalpojumi.Pakalpojums"
    Expression ="dbo_Atlaujas_sag.AtlID"
    Expression ="dbo_STUDIJAS.CILVEKS_CKODS"
    Expression ="dbo_STUDIJAS.STUDKODS"
    Expression ="dbo_Atlaujas_sag.Statuss"
    Expression ="dbo_sl_Katedras.Katedra"
    Expression ="dbo_Atlaujas_sag.IzdosanasDat"
    Expression ="dbo_Atlaujas_sag.AtlNr"
    Alias ="A1"
    Expression ="IIf([Statuss]=1,\"Gatavo\",IIf([statuss]=2,[AtlNr],IIf([statuss]=-1,\"atsaukta\""
        ",IIf([statuss]=-2,\"Stud.atc.\",\"\"))))"
    Expression ="dbo_Atlaujas_sag.IzsnID"
    Alias ="A2"
    Expression ="IIf(IsNull([statuss]),IIf([izdosanasdat]<=Date(),1,IIf([izdosanasdat]=Date()+1,2"
        ",3)))"
    Expression ="dbo_Pakalpojumi.web"
End
Begin Joins
    LeftTable ="dbo_Atlaujas_sag"
    RightTable ="dbo_sl_Stud_kursi"
    Expression ="dbo_Atlaujas_sag.StudijuKurss = dbo_sl_Stud_kursi.Pr_ID"
    Flag =2
    LeftTable ="dbo_Atlaujas_sag"
    RightTable ="dbo_sl_Macibspeki"
    Expression ="dbo_Atlaujas_sag.Macibspeks = dbo_sl_Macibspeki.Pasn_ID"
    Flag =2
    LeftTable ="dbo_Atlaujas_sag"
    RightTable ="dbo_Pakalpojumi"
    Expression ="dbo_Atlaujas_sag.Veids = dbo_Pakalpojumi.PakID"
    Flag =2
    LeftTable ="dbo_Atlaujas_sag"
    RightTable ="dbo_STUDIJAS"
    Expression ="dbo_Atlaujas_sag.Lig_Num = dbo_STUDIJAS.LIG_NUM"
    Flag =2
    LeftTable ="dbo_sl_Stud_kursi"
    RightTable ="dbo_sl_Katedras"
    Expression ="dbo_sl_Stud_kursi.Kat_ID = dbo_sl_Katedras.Kat_ID"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_Atlaujas_sag.IzdosanasDat"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="dbo_sl_Stud_kursi.Pr_nos"
        dbInteger "ColumnWidth" ="3255"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_Pakalpojumi.Pakalpojums"
        dbInteger "ColumnWidth" ="5205"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_Atlaujas_sag.AtlID"
        dbInteger "ColumnWidth" ="675"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_STUDIJAS.CILVEKS_CKODS"
        dbInteger "ColumnWidth" ="1785"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =12
    Top =18
    Right =1300
    Bottom =819
    Left =-1
    Top =-1
    Right =1281
    Bottom =144
    Left =0
    Top =10
    ColumnsShown =539
    Begin
        Left =38
        Top =-4
        Right =134
        Bottom =95
        Top =0
        Name ="dbo_Atlaujas_sag"
        Name =""
    End
    Begin
        Left =172
        Top =-4
        Right =268
        Bottom =95
        Top =0
        Name ="dbo_sl_Stud_kursi"
        Name =""
    End
    Begin
        Left =306
        Top =-4
        Right =402
        Bottom =95
        Top =0
        Name ="dbo_sl_Macibspeki"
        Name =""
    End
    Begin
        Left =440
        Top =-4
        Right =536
        Bottom =95
        Top =9
        Name ="dbo_Pakalpojumi"
        Name =""
    End
    Begin
        Left =574
        Top =-4
        Right =670
        Bottom =95
        Top =0
        Name ="dbo_STUDIJAS"
        Name =""
    End
    Begin
        Left =956
        Top =10
        Right =1052
        Bottom =109
        Top =0
        Name ="dbo_sl_Katedras"
        Name =""
    End
End
