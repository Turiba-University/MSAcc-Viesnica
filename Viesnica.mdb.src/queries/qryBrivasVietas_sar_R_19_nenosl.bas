Operation =1
Option =0
Where ="(((Rezervisti_19_nenosl.Ligums) Is Null Or (Rezervisti_19_nenosl.Ligums)=0))"
Begin InputTables
    Name ="dbo_viesn_kl_Istabas"
    Name ="Rezervisti_19_nenosl"
    Name ="VIA_StudStatData"
End
Begin OutputColumns
    Expression ="dbo_viesn_kl_Istabas.Istaba"
    Expression ="dbo_viesn_kl_Istabas.IstabasNr"
    Alias ="Vietu skaits"
    Expression ="dbo_viesn_kl_Istabas.VietuSk"
    Alias ="RezVietas"
    Expression ="(select Count([dbo_Viesn_Rezervesana].[Istaba]) from dbo_Viesn_Rezervesana where"
        " dbo_Viesn_Rezervesana.Rez_MG=2024 and dbo_Viesn_Rezervesana.Dzests=0 and [dbo_V"
        "iesn_Rezervesana].[Istaba]=dbo_viesn_kl_Istabas.istaba AND ((dbo_Viesn_Rezervesa"
        "na.Ligums)=0 or (dbo_Viesn_Rezervesana.Ligums) Is Null);)"
    Alias ="Brīvās vietas"
    Expression ="[dbo_viesn_kl_Istabas].[vietusk]-(select Count([dbo_Viesn_Rezervesana].[Istaba])"
        " from dbo_Viesn_Rezervesana where dbo_Viesn_Rezervesana.Rez_MG=2024 and dbo_Vies"
        "n_Rezervesana.Dzests=0 and [dbo_Viesn_Rezervesana].[Istaba]=dbo_viesn_kl_Istabas"
        ".istaba AND ((dbo_Viesn_Rezervesana.Ligums)=0 or (dbo_Viesn_Rezervesana.Ligums) "
        "Is Null);)"
    Alias ="S"
    Expression ="Sum(IIf([Dzimums]=\"S\",1,Null))"
    Alias ="V"
    Expression ="Sum(IIf([Dzimums]=\"V\",1,Null))"
    Alias ="LV"
    Expression ="Sum(IIf([Valsts]=\"Latvija\",1,Null))"
    Alias ="ne-LV"
    Expression ="Sum(IIf([Valsts]=\"Latvija\",Null,IIf(IsNull([Rezervisti_19_nenosl].[CKods]),Nul"
        "l,1)))"
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
    Expression ="Sum(IIf(IsNull([dbo_Viesn_Rezervesana].[Tips]),IIf(IsNull([Rezervisti_19_nenosl]"
        ".[CKods]),Null,1),Null))"
End
Begin Joins
    LeftTable ="dbo_viesn_kl_Istabas"
    RightTable ="Rezervisti_19_nenosl"
    Expression ="dbo_viesn_kl_Istabas.[Istaba] = Rezervisti_19_nenosl.[Istaba]"
    Flag =2
    LeftTable ="Rezervisti_19_nenosl"
    RightTable ="VIA_StudStatData"
    Expression ="Rezervisti_19_nenosl.CKods = VIA_StudStatData.CKods"
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
        dbInteger "ColumnWidth" ="525"
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
        dbText "Name" ="V"
        dbInteger "ColumnWidth" ="600"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Vietu skaits"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BAT_M"
        dbInteger "ColumnWidth" ="975"
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
        dbText "Name" ="Brīvās vietas"
        dbInteger "ColumnWidth" ="1560"
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
        dbText "Name" ="ne-LV"
        dbInteger "ColumnWidth" ="960"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_kl_Istabas.IstabasNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BAT_K"
        dbInteger "ColumnWidth" ="975"
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
        dbText "Name" ="BAT_D"
        dbInteger "ColumnWidth" ="975"
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
        dbText "Name" ="dbo_viesn_kl_Istabas.Istaba"
        dbInteger "ColumnWidth" ="975"
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
        dbText "Name" ="RezVietas"
        dbInteger "ColumnWidth" ="1560"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Rezervisti_19_nenosl.Ligums"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =33
    Top =121
    Right =1355
    Bottom =784
    Left =-1
    Top =-1
    Right =1299
    Bottom =168
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =51
        Top =23
        Right =298
        Bottom =247
        Top =0
        Name ="dbo_viesn_kl_Istabas"
        Name =""
    End
    Begin
        Left =346
        Top =12
        Right =582
        Bottom =259
        Top =0
        Name ="Rezervisti_19_nenosl"
        Name =""
    End
    Begin
        Left =953
        Top =11
        Right =1134
        Bottom =202
        Top =0
        Name ="VIA_StudStatData"
        Name =""
    End
End
