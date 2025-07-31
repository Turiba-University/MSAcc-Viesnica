Operation =1
Option =0
Begin InputTables
    Name ="dbo_viesn_kl_Istabas"
    Name ="Rezervisti_21"
    Name ="dbo_Personas"
    Name ="VIA_StudStatData"
End
Begin OutputColumns
    Expression ="dbo_viesn_kl_Istabas.Istaba"
    Expression ="dbo_viesn_kl_Istabas.IstabasNr"
    Alias ="Vietu skaits"
    Expression ="dbo_viesn_kl_Istabas.VietuSk"
    Alias ="Brīvās vietas"
    Expression ="[dbo_viesn_kl_Istabas].[vietusk]-(select Count([dbo_Viesn_Rezervesana].[Istaba])"
        " from dbo_Viesn_Rezervesana where dbo_Viesn_Rezervesana.Rez_MG=2021 and dbo_Vies"
        "n_Rezervesana.Dzests=0 and [dbo_Viesn_Rezervesana].[Istaba]=dbo_viesn_kl_Istabas"
        ".istaba;)"
    Alias ="S"
    Expression ="Sum(IIf([Dzimums]=\"S\",1,Null))"
    Alias ="V"
    Expression ="Sum(IIf([Dzimums]=\"V\",1,Null))"
    Alias ="LV"
    Expression ="Sum(IIf([Valsts]=\"Latvija\",1,Null))"
    Alias ="ne-LV"
    Expression ="Sum(IIf([Valsts]=\"Latvija\",Null,IIf(IsNull([Rezervisti_21].[CKods]),Null,1)))"
    Alias ="BATStud"
    Expression ="Sum(IIf([dbo_Viesn_Rezervesana].[Tips]=\"BAT students\",1,Null))"
    Alias ="BAT_K"
    Expression ="Sum(IIf([VIA_StudStatData].[Lim]=\"K\",1,Null))"
    Alias ="BAT_B"
    Expression ="Sum(IIf([VIA_StudStatData].[Lim]=\"B\",1,Null))"
    Alias ="BAT_M"
    Expression ="Sum(IIf([VIA_StudStatData].[Lim]=\"M\",1,Null))"
    Alias ="BAT_D"
    Expression ="Sum(IIf([VIA_StudStatData].[Lim]=\"D\",1,Null))"
    Alias ="BATDarbin"
    Expression ="Sum(IIf([dbo_Viesn_Rezervesana].[Tips]=\"BAT darbinieks\",1,Null))"
    Alias ="CitsStud"
    Expression ="Sum(IIf([dbo_Viesn_Rezervesana].[Tips]=\"Cita augstskola\",1,Null))"
    Alias ="Turists"
    Expression ="Sum(IIf([dbo_Viesn_Rezervesana].[Tips]=\"Tūrists\",1,Null))"
    Alias ="cits"
    Expression ="Sum(IIf(IsNull([dbo_Viesn_Rezervesana].[Tips]),IIf(IsNull([Rezervisti_21].[CKods"
        "]),Null,1),Null))"
End
Begin Joins
    LeftTable ="Rezervisti_21"
    RightTable ="dbo_Personas"
    Expression ="Rezervisti_21.CKods = dbo_Personas.Personas_ID"
    Flag =2
    LeftTable ="dbo_viesn_kl_Istabas"
    RightTable ="Rezervisti_21"
    Expression ="dbo_viesn_kl_Istabas.Istaba = Rezervisti_21.Istaba"
    Flag =2
    LeftTable ="Rezervisti_21"
    RightTable ="VIA_StudStatData"
    Expression ="Rezervisti_21.CKods = VIA_StudStatData.CKods"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_viesn_kl_Istabas.IstabasNr"
    Flag =0
End
Begin Groups
    Expression ="dbo_viesn_kl_Istabas.Istaba"
    GroupLevel =0
    Expression ="dbo_viesn_kl_Istabas.IstabasNr"
    GroupLevel =0
    Expression ="dbo_viesn_kl_Istabas.VietuSk"
    GroupLevel =0
    Expression ="dbo_viesn_kl_Istabas.Istaba"
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
        dbText "Name" ="S"
        dbInteger "ColumnWidth" ="600"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="V"
        dbInteger "ColumnWidth" ="600"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="LV"
        dbInteger "ColumnWidth" ="600"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ne-LV"
        dbInteger "ColumnWidth" ="960"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BAtStud"
        dbInteger "ColumnWidth" ="1200"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BATDarbin"
        dbInteger "ColumnWidth" ="1170"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="CitsStud"
        dbInteger "ColumnWidth" ="930"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Turists"
        dbInteger "ColumnWidth" ="765"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="cits"
        dbInteger "ColumnWidth" ="765"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Vietu skaits"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Brīvās vietas"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1560"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_kl_Istabas.IstabasNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BAT_M"
        dbInteger "ColumnWidth" ="975"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BAT_B"
        dbInteger "ColumnWidth" ="975"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BAT_K"
        dbInteger "ColumnWidth" ="975"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BAT_D"
        dbInteger "ColumnWidth" ="975"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_kl_Istabas.Istaba"
        dbInteger "ColumnWidth" ="975"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =20
    Top =129
    Right =1312
    Bottom =738
    Left =-1
    Top =-1
    Right =1260
    Bottom =157
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =51
        Top =23
        Right =298
        Bottom =145
        Top =0
        Name ="dbo_viesn_kl_Istabas"
        Name =""
    End
    Begin
        Left =346
        Top =12
        Right =490
        Bottom =156
        Top =0
        Name ="Rezervisti_21"
        Name =""
    End
    Begin
        Left =705
        Top =106
        Right =948
        Bottom =348
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
    Begin
        Left =981
        Top =9
        Right =1162
        Bottom =190
        Top =0
        Name ="VIA_StudStatData"
        Name =""
    End
End
