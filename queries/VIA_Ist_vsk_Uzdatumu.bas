Operation =1
Option =0
Begin InputTables
    Name ="dbo_viesn_kl_Istabas"
    Name ="VIA_IstAizn_vsk_Uzdatumu"
    Name ="VIA_LigIstAizn_Dat_IstLigSk"
    Name ="qryBrivasVietas_sar_R_19_nenosl"
End
Begin OutputColumns
    Expression ="dbo_viesn_kl_Istabas.IstabasNr"
    Alias ="Ist_Nr"
    Expression ="dbo_viesn_kl_Istabas.Istaba"
    Alias ="Vietas"
    Expression ="dbo_viesn_kl_Istabas.VietuSk"
    Alias ="Aizn"
    Expression ="IIf(IsNull([Vsk_aizn]),0,[Vsk_aizn])"
    Alias ="DzS"
    Expression ="VIA_IstAizn_vsk_Uzdatumu.S"
    Alias ="DzV"
    Expression ="VIA_IstAizn_vsk_Uzdatumu.V"
    Expression ="VIA_IstAizn_vsk_Uzdatumu.DzLV"
    Expression ="VIA_IstAizn_vsk_Uzdatumu.[DzNe-LV]"
    Expression ="VIA_IstAizn_vsk_Uzdatumu.Iev"
    Expression ="VIA_IstAizn_vsk_Uzdatumu.Dz"
    Expression ="VIA_IstAizn_vsk_Uzdatumu.Izv"
    Alias ="Nakts"
    Expression ="[Dz]+[izv]"
    Alias ="Brivas"
    Expression ="[VietuSk]-IIf(IsNull([Vsk_Aizn]),0,[Vsk_Aizn])+IIf(IsNull([Izv]),0,[Izv])"
    Alias ="BrivasNeRez"
    Expression ="[VietuSk]-IIf(IsNull([Vsk_Aizn]),0,[Vsk_Aizn])+IIf(IsNull([Izv]),0,[Izv])-IIf(Is"
        "Null([RezVietas]),0,[RezVietas])"
    Alias ="BrIst"
    Expression ="IIf(IsNull([Aizn]) Or [Aizn]=0,1,Null)"
    Alias ="BrIst_Vsk"
    Expression ="IIf(IsNull([Aizn]) Or [Aizn]=0,[VietuSk],Null)"
    Alias ="DBrIst"
    Expression ="IIf([Vsk_Aizn]>0 And [VietuSk]>0 And [VietuSk]-IIf(IsNull([Vsk_Aizn]),0,[Vsk_Aiz"
        "n])>0,1,Null)"
    Alias ="DBrIst_Vsk"
    Expression ="IIf([Vsk_Aizn]>0 And [VietuSk]>0 And [VietuSk]-IIf(IsNull([Vsk_Aizn]),0,[Vsk_Aiz"
        "n])>0,[VietuSk]-IIf(IsNull([Vsk_Aizn]),0,[Vsk_Aizn]),Null)"
    Alias ="PIst"
    Expression ="IIf([VietuSk]>0 And [VietuSk]=IIf(IsNull([Vsk_Aizn]),0,[Vsk_Aizn]),1,Null)"
    Alias ="PIst_Vsk"
    Expression ="IIf([VietuSk]>0 And [VietuSk]=IIf(IsNull([Vsk_Aizn]),0,[Vsk_Aizn]),[VietuSk],Nul"
        "l)"
    Alias ="PpIst"
    Expression ="IIf([VietuSk]>0 And [VietuSk]<IIf(IsNull([Vsk_Aizn]),0,[Vsk_Aizn]),1,Null)"
    Alias ="PpIst_Vsk"
    Expression ="IIf([VietuSk]>0 And [VietuSk]<IIf(IsNull([Vsk_Aizn]),0,[Vsk_Aizn]),IIf(IsNull([V"
        "sk_Aizn]),0,[Vsk_Aizn])-[VietuSk],Null)"
    Expression ="VIA_LigIstAizn_Dat_IstLigSk.IstLigSk"
    Alias ="LigSkStarp"
    Expression ="IIf(IsNull([Vsk_aizn]),0,[Vsk_aizn])-IIf(IsNull([IstLigSk]),0,[IstLigSk])"
    Alias ="RezVietasIst"
    Expression ="IIf(IsNull([RezVietas]),0,[RezVietas])"
    Expression ="qryBrivasVietas_sar_R_19_nenosl.S"
    Expression ="qryBrivasVietas_sar_R_19_nenosl.V"
    Expression ="qryBrivasVietas_sar_R_19_nenosl.LV"
    Expression ="qryBrivasVietas_sar_R_19_nenosl.[ne-LV]"
End
Begin Joins
    LeftTable ="dbo_viesn_kl_Istabas"
    RightTable ="VIA_IstAizn_vsk_Uzdatumu"
    Expression ="dbo_viesn_kl_Istabas.[Istaba] = VIA_IstAizn_vsk_Uzdatumu.[Ist_Nr]"
    Flag =2
    LeftTable ="dbo_viesn_kl_Istabas"
    RightTable ="VIA_LigIstAizn_Dat_IstLigSk"
    Expression ="dbo_viesn_kl_Istabas.[Istaba] = VIA_LigIstAizn_Dat_IstLigSk.[Istaba]"
    Flag =2
    LeftTable ="dbo_viesn_kl_Istabas"
    RightTable ="qryBrivasVietas_sar_R_19_nenosl"
    Expression ="dbo_viesn_kl_Istabas.[Istaba] = qryBrivasVietas_sar_R_19_nenosl.[Istaba]"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_viesn_kl_Istabas.IstabasNr"
    Flag =0
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
        dbText "Name" ="Ist_Nr"
        dbInteger "ColumnWidth" ="975"
        dbBoolean "ColumnHidden" ="-1"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="2"
    End
    Begin
        dbText "Name" ="Vietas"
        dbInteger "ColumnWidth" ="1005"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="3"
    End
    Begin
        dbText "Name" ="Aizn"
        dbInteger "ColumnWidth" ="825"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="4"
    End
    Begin
        dbText "Name" ="Brivas"
        dbInteger "ColumnWidth" ="975"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="13"
    End
    Begin
        dbText "Name" ="DBrIst"
        dbInteger "ColumnWidth" ="705"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="16"
    End
    Begin
        dbText "Name" ="DBrIst_Vsk"
        dbInteger "ColumnWidth" ="1140"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="17"
    End
    Begin
        dbText "Name" ="BrIst"
        dbInteger "ColumnWidth" ="570"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="14"
    End
    Begin
        dbText "Name" ="BrIst_Vsk"
        dbInteger "ColumnWidth" ="1005"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="15"
    End
    Begin
        dbText "Name" ="PIst"
        dbInteger "ColumnWidth" ="495"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="18"
    End
    Begin
        dbText "Name" ="PIst_Vsk"
        dbInteger "ColumnWidth" ="930"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="19"
    End
    Begin
        dbText "Name" ="PpIst"
        dbInteger "ColumnWidth" ="615"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="20"
    End
    Begin
        dbText "Name" ="PpIst_Vsk"
        dbInteger "ColumnWidth" ="1050"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="21"
    End
    Begin
        dbText "Name" ="qryBrivasVietas_sar_R_19_nenosl.[ne-LV]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryBrivasVietas_sar_R_19_nenosl.S"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryBrivasVietas_sar_R_19_nenosl.V"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryBrivasVietas_sar_R_19_nenosl.LV"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="BrivasNeRez"
        dbInteger "ColumnWidth" ="1575"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnOrder" ="8"
    End
    Begin
        dbText "Name" ="DzS"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="750"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="5"
    End
    Begin
        dbText "Name" ="DzV"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="780"
        dbBoolean "ColumnHidden" ="0"
        dbInteger "ColumnOrder" ="6"
    End
    Begin
        dbText "Name" ="[VIA_IstAizn_vsk_Uzdatumu].[Izv]"
        dbInteger "ColumnWidth" ="420"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Nakts"
        dbInteger "ColumnWidth" ="660"
        dbInteger "ColumnOrder" ="12"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_kl_Istabas.IstabasNr"
        dbInteger "ColumnWidth" ="1290"
        dbInteger "ColumnOrder" ="1"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="LigSkStarp"
        dbInteger "ColumnWidth" ="570"
        dbInteger "ColumnOrder" ="23"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="RezVietasIst"
        dbInteger "ColumnWidth" ="1560"
        dbInteger "ColumnOrder" ="7"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[VIA_IstAizn_vsk_Uzdatumu].[Dz]"
        dbInteger "ColumnWidth" ="390"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_IstAizn_vsk_Uzdatumu.Izv"
        dbInteger "ColumnWidth" ="615"
        dbInteger "ColumnOrder" ="11"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[VIA_IstAizn_vsk_Uzdatumu].[Iev]"
        dbInteger "ColumnWidth" ="435"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_IstAizn_vsk_Uzdatumu.Dz"
        dbInteger "ColumnWidth" ="615"
        dbInteger "ColumnOrder" ="10"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_IstAizn_vsk_Uzdatumu.Iev"
        dbInteger "ColumnWidth" ="615"
        dbInteger "ColumnOrder" ="9"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_LigIstAizn_Dat_IstLigSk.IstLigSk"
        dbInteger "ColumnOrder" ="22"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_IstAizn_vsk_Uzdatumu.[DzNe-LV]"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_IstAizn_vsk_Uzdatumu.DzLV"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =150
    Top =131
    Right =1384
    Bottom =760
    Left =-1
    Top =-1
    Right =1211
    Bottom =165
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =306
        Top =6
        Right =470
        Bottom =146
        Top =0
        Name ="dbo_viesn_kl_Istabas"
        Name =""
    End
    Begin
        Left =54
        Top =6
        Right =268
        Bottom =135
        Top =0
        Name ="VIA_IstAizn_vsk_Uzdatumu"
        Name =""
    End
    Begin
        Left =529
        Top =12
        Right =788
        Bottom =143
        Top =0
        Name ="VIA_LigIstAizn_Dat_IstLigSk"
        Name =""
    End
    Begin
        Left =888
        Top =7
        Right =1141
        Bottom =151
        Top =0
        Name ="qryBrivasVietas_sar_R_19_nenosl"
        Name =""
    End
End
