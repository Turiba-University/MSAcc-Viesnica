Operation =1
Option =0
Where ="((Not (dbo_crl_Caurlaides.Nr) Is Null) AND ((dbo_crl_Caurlaides.Datums)>=#9/1/20"
    "08#)) OR ((Not (dbo_crl_Caurlaides.Nr) Is Null) AND ((dbo_crl_Caurlaides.Periods"
    "_Lidz)>=Date()))"
Begin InputTables
    Name ="dbo_crl_Caurlaides"
    Name ="dbo_crl_KlientuTipi"
    Name ="dbo_crl_Veidi"
    Name ="dbo_Personas"
End
Begin OutputColumns
    Expression ="dbo_crl_Caurlaides.crl_Karte_ID"
    Expression ="dbo_crl_Caurlaides.Nr"
    Expression ="dbo_crl_Caurlaides.Datums"
    Expression ="dbo_crl_Caurlaides.Vards"
    Expression ="dbo_crl_Caurlaides.Uzvards"
    Expression ="dbo_Personas.Pers_Kods"
    Expression ="dbo_crl_Caurlaides.AutoNr"
    Expression ="dbo_crl_Caurlaides.Periods_No"
    Expression ="dbo_crl_Caurlaides.Periods_Lidz"
    Expression ="dbo_crl_Caurlaides.Cena"
    Expression ="dbo_crl_Veidi.Tips"
    Expression ="dbo_crl_Caurlaides.Stat"
    Expression ="dbo_crl_Caurlaides.Comment"
End
Begin Joins
    LeftTable ="dbo_crl_Caurlaides"
    RightTable ="dbo_crl_KlientuTipi"
    Expression ="dbo_crl_Caurlaides.KlTips_ID = dbo_crl_KlientuTipi.kl_ID"
    Flag =2
    LeftTable ="dbo_crl_Caurlaides"
    RightTable ="dbo_crl_Veidi"
    Expression ="dbo_crl_Caurlaides.KartesTips = dbo_crl_Veidi.Crl_ID"
    Flag =2
    LeftTable ="dbo_crl_Caurlaides"
    RightTable ="dbo_Personas"
    Expression ="dbo_crl_Caurlaides.PersID = dbo_Personas.Personas_ID"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_crl_Caurlaides.Datums"
    Flag =1
    Expression ="dbo_crl_Caurlaides.Nr"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbMemo "Filter" ="((Query2.Stat Is Not Null))"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="dbo_crl_Caurlaides.crl_Karte_ID"
        dbInteger "ColumnWidth" ="1305"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_crl_Veidi.Tips"
        dbInteger "ColumnWidth" ="2325"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_crl_Caurlaides.Nr"
        dbInteger "ColumnWidth" ="675"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_crl_Caurlaides.Datums"
        dbInteger "ColumnWidth" ="1110"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_crl_Caurlaides.Cena"
        dbInteger "ColumnWidth" ="645"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_crl_Caurlaides.AutoNr"
        dbInteger "ColumnWidth" ="1815"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_crl_Caurlaides.Stat"
        dbInteger "ColumnWidth" ="525"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =6
    Top =66
    Right =1151
    Bottom =743
    Left =-1
    Top =-1
    Right =1138
    Bottom =402
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =3
        Top =6
        Right =134
        Bottom =300
        Top =1
        Name ="dbo_crl_Caurlaides"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =359
        Bottom =90
        Top =0
        Name ="dbo_crl_KlientuTipi"
        Name =""
    End
    Begin
        Left =374
        Top =10
        Right =536
        Bottom =154
        Top =0
        Name ="dbo_crl_Veidi"
        Name =""
    End
    Begin
        Left =574
        Top =6
        Right =799
        Bottom =330
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
End
