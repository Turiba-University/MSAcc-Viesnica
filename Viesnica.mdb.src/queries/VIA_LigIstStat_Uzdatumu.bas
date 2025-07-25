Operation =1
Option =0
Begin InputTables
    Name ="VIA_LigIstIrLig_Uzdatumu"
    Name ="VIA_LigIstApm_PirmsDat_data"
    Name ="VIA_LigIstApm_PecDat_data"
    Name ="VIA_LigIstApm_Dat_data"
    Name ="VIA_LigIstAizn_Dat_data"
    Name ="VIA_LigIstApmAizn_Dat_data"
    Name ="VIA_LigIstApmAiznSamaksats_Dat_data"
    Name ="VIA_LigApm_Sam_Peddatums"
End
Begin OutputColumns
    Expression ="VIA_LigIstIrLig_Uzdatumu.Ligums"
    Expression ="VIA_LigIstIrLig_Uzdatumu.Pers_ID"
    Expression ="VIA_LigIstIrLig_Uzdatumu.Uzvards"
    Expression ="VIA_LigIstIrLig_Uzdatumu.Vards"
    Expression ="VIA_LigIstIrLig_Uzdatumu.Pers_Kods"
    Expression ="VIA_LigIstIrLig_Uzdatumu.Valsts"
    Expression ="VIA_LigIstIrLig_Uzdatumu.Tel1"
    Expression ="VIA_LigIstIrLig_Uzdatumu.Datums_In"
    Expression ="VIA_LigIstIrLig_Uzdatumu.Datums_Out"
    Expression ="VIA_LigIstIrLig_Uzdatumu.Ist_Nr"
    Expression ="VIA_LigIstAizn_Dat_data.LIDat_No"
    Expression ="VIA_LigIstAizn_Dat_data.LIDat_Lidz"
    Alias ="Vsk"
    Expression ="IIf(IsNull([VIA_LigIstAizn_Dat_data].[ligums]),Null,IIf([AiznDat_Vsk]>0,[AiznDat"
        "_Vsk],[PirmsDat_Vsk]))"
    Expression ="VIA_LigIstApm_PirmsDat_data.PirmsDat_Vsk"
    Expression ="VIA_LigIstApm_PirmsDat_data.PirmsDat_dat"
    Alias ="Dat_Vsk"
    Expression ="VIA_LigIstApmAizn_Dat_data.AiznDat_Vsk"
    Alias ="Dat_Vsk_Sam"
    Expression ="IIf([MStat]>0,1,Null)"
    Expression ="VIA_LigIstApm_PecDat_data.PecDat_Vsk"
    Expression ="VIA_LigIstApm_PecDat_data.PecDat_dat"
    Expression ="VIA_LigIstAizn_Dat_data.Stat"
    Alias ="In"
    Expression ="IIf([Stat]=\"ievācas\",[Vsk],0)"
    Alias ="Dz"
    Expression ="IIf([Stat]=\"dzīvo\",[Vsk],0)"
    Alias ="Out"
    Expression ="IIf([Stat]=\"izvācas\",[Vsk],0)"
    Alias ="NSk"
    Expression ="IIf([Stat]=\"dzīvo\",[Vsk],0)+IIf([Stat]=\"izvācas\",[Vsk],0)"
    Expression ="VIA_LigApm_Sam_Peddatums.V_ApmLidz"
    Expression ="VIA_LigIstIrLig_Uzdatumu.S"
    Expression ="VIA_LigIstIrLig_Uzdatumu.V"
End
Begin Joins
    LeftTable ="VIA_LigIstIrLig_Uzdatumu"
    RightTable ="VIA_LigIstApm_PirmsDat_data"
    Expression ="VIA_LigIstIrLig_Uzdatumu.[Ligums] = VIA_LigIstApm_PirmsDat_data.[Ligums]"
    Flag =2
    LeftTable ="VIA_LigIstIrLig_Uzdatumu"
    RightTable ="VIA_LigIstApm_PirmsDat_data"
    Expression ="VIA_LigIstIrLig_Uzdatumu.[Ist_Nr] = VIA_LigIstApm_PirmsDat_data.[Ist_Nr]"
    Flag =2
    LeftTable ="VIA_LigIstIrLig_Uzdatumu"
    RightTable ="VIA_LigIstApm_PecDat_data"
    Expression ="VIA_LigIstIrLig_Uzdatumu.[Ligums] = VIA_LigIstApm_PecDat_data.[Ligums]"
    Flag =2
    LeftTable ="VIA_LigIstIrLig_Uzdatumu"
    RightTable ="VIA_LigIstApm_PecDat_data"
    Expression ="VIA_LigIstIrLig_Uzdatumu.[Ist_Nr] = VIA_LigIstApm_PecDat_data.[Ist_Nr]"
    Flag =2
    LeftTable ="VIA_LigIstIrLig_Uzdatumu"
    RightTable ="VIA_LigIstApm_Dat_data"
    Expression ="VIA_LigIstIrLig_Uzdatumu.[Ligums] = VIA_LigIstApm_Dat_data.[Ligums]"
    Flag =2
    LeftTable ="VIA_LigIstIrLig_Uzdatumu"
    RightTable ="VIA_LigIstApm_Dat_data"
    Expression ="VIA_LigIstIrLig_Uzdatumu.[Ist_Nr] = VIA_LigIstApm_Dat_data.[Ist_Nr]"
    Flag =2
    LeftTable ="VIA_LigIstIrLig_Uzdatumu"
    RightTable ="VIA_LigIstAizn_Dat_data"
    Expression ="VIA_LigIstIrLig_Uzdatumu.[Ligums] = VIA_LigIstAizn_Dat_data.[Ligums]"
    Flag =2
    LeftTable ="VIA_LigIstIrLig_Uzdatumu"
    RightTable ="VIA_LigIstAizn_Dat_data"
    Expression ="VIA_LigIstIrLig_Uzdatumu.[Ist_Nr] = VIA_LigIstAizn_Dat_data.[Istaba]"
    Flag =2
    LeftTable ="VIA_LigIstIrLig_Uzdatumu"
    RightTable ="VIA_LigIstApmAizn_Dat_data"
    Expression ="VIA_LigIstIrLig_Uzdatumu.[Ligums] = VIA_LigIstApmAizn_Dat_data.[Ligums]"
    Flag =2
    LeftTable ="VIA_LigIstIrLig_Uzdatumu"
    RightTable ="VIA_LigIstApmAizn_Dat_data"
    Expression ="VIA_LigIstIrLig_Uzdatumu.[Ist_Nr] = VIA_LigIstApmAizn_Dat_data.[Ist_Nr]"
    Flag =2
    LeftTable ="VIA_LigIstIrLig_Uzdatumu"
    RightTable ="VIA_LigIstApmAiznSamaksats_Dat_data"
    Expression ="VIA_LigIstIrLig_Uzdatumu.[Ligums] = VIA_LigIstApmAiznSamaksats_Dat_data.[Ligums]"
    Flag =2
    LeftTable ="VIA_LigIstIrLig_Uzdatumu"
    RightTable ="VIA_LigIstApmAiznSamaksats_Dat_data"
    Expression ="VIA_LigIstIrLig_Uzdatumu.[Ist_Nr] = VIA_LigIstApmAiznSamaksats_Dat_data.[Ist_Nr]"
    Flag =2
    LeftTable ="VIA_LigIstIrLig_Uzdatumu"
    RightTable ="VIA_LigApm_Sam_Peddatums"
    Expression ="VIA_LigIstIrLig_Uzdatumu.[Ligums] = VIA_LigApm_Sam_Peddatums.[Ligums]"
    Flag =2
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
        dbText "Name" ="VIA_LigIstIrLig_Uzdatumu.Ligums"
        dbInteger "ColumnWidth" ="840"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_LigIstIrLig_Uzdatumu.Datums_In"
        dbInteger "ColumnWidth" ="1140"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_LigIstIrLig_Uzdatumu.Datums_Out"
        dbInteger "ColumnWidth" ="1290"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_LigIstApm_PirmsDat_data.PirmsDat_Vsk"
        dbInteger "ColumnWidth" ="1440"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_LigIstApm_PecDat_data.PecDat_Vsk"
        dbInteger "ColumnWidth" ="1260"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Vsk"
        dbInteger "ColumnWidth" ="480"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[VIA_LigIstIrLig_Uzdatumu].[Ligums]"
        dbInteger "ColumnWidth" ="840"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[VIA_LigIstIrLig_Uzdatumu].[Datums_In]"
        dbInteger "ColumnWidth" ="1140"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[VIA_LigIstIrLig_Uzdatumu].[Datums_Out]"
        dbInteger "ColumnWidth" ="1290"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[VIA_LigIstIrLig_Uzdatumu].[Ist_Nr]"
        dbInteger "ColumnWidth" ="675"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[VIA_LigIstApm_PecDat_data].[PecDat_Vsk]"
        dbInteger "ColumnWidth" ="1260"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[VIA_LigIstApm_PecDat_data].[PecDat_dat]"
        dbInteger "ColumnWidth" ="1230"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[VIA_LigIstAizn_Dat_data].[LIDat_Lidz]"
        dbInteger "ColumnWidth" ="1155"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_LigIstAizn_Dat_data.Stat"
        dbInteger "ColumnWidth" ="795"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="In"
        dbInteger "ColumnWidth" ="330"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Dz"
        dbInteger "ColumnWidth" ="390"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Out"
        dbInteger "ColumnWidth" ="480"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="NSk"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Dat_Vsk"
        dbInteger "ColumnWidth" ="900"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Dat_Vsk_Sam"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_LigIstIrLig_Uzdatumu.Ist_Nr"
        dbInteger "ColumnWidth" ="675"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_LigIstIrLig_Uzdatumu.V"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =39
    Top =71
    Right =1563
    Bottom =866
    Left =-1
    Top =-1
    Right =1492
    Bottom =195
    Left =0
    Top =17
    ColumnsShown =539
    Begin
        Left =38
        Top =-11
        Right =257
        Bottom =156
        Top =0
        Name ="VIA_LigIstIrLig_Uzdatumu"
        Name =""
    End
    Begin
        Left =274
        Top =34
        Right =480
        Bottom =141
        Top =0
        Name ="VIA_LigIstApm_PirmsDat_data"
        Name =""
    End
    Begin
        Left =487
        Top =-4
        Right =694
        Bottom =103
        Top =0
        Name ="VIA_LigIstApm_PecDat_data"
        Name =""
    End
    Begin
        Left =713
        Top =4
        Right =910
        Bottom =156
        Top =0
        Name ="VIA_LigIstApm_Dat_data"
        Name =""
    End
    Begin
        Left =955
        Top =21
        Right =1171
        Bottom =143
        Top =0
        Name ="VIA_LigIstAizn_Dat_data"
        Name =""
    End
    Begin
        Left =1184
        Top =-10
        Right =1411
        Bottom =112
        Top =0
        Name ="VIA_LigIstApmAizn_Dat_data"
        Name =""
    End
    Begin
        Left =932
        Top =49
        Right =1263
        Bottom =186
        Top =0
        Name ="VIA_LigIstApmAiznSamaksats_Dat_data"
        Name =""
    End
    Begin
        Left =514
        Top =64
        Right =610
        Bottom =156
        Top =0
        Name ="VIA_LigApm_Sam_Peddatums"
        Name =""
    End
End
