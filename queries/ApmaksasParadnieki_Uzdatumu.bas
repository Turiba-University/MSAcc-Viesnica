Operation =1
Option =0
Where ="((([VIA_LigIstStat_Uzdatumu].[Dat_Vsk]) Is Null)) Or ((([VIA_LigIstStat_Uzdatumu"
    "].[Dat_Vsk_Sam])=1)) Or ((([ApmaksasParadnieki_Stop].[sk])>0))"
Begin InputTables
    Name ="VIA_LigIstStat_Uzdatumu"
    Name ="ApmaksasParadnieki_Stop"
    Name ="VIA_LigApm_Sam_ParadsLig"
    Name ="VIA_LigApm_Sam_ParadsPers"
End
Begin OutputColumns
    Expression ="[VIA_LigIstStat_Uzdatumu].[Ligums]"
    Expression ="[VIA_LigIstStat_Uzdatumu].[Vards]"
    Expression ="[VIA_LigIstStat_Uzdatumu].[Uzvards]"
    Expression ="[VIA_LigIstStat_Uzdatumu].[Pers_Kods]"
    Expression ="[VIA_LigIstStat_Uzdatumu].[Valsts]"
    Expression ="[VIA_LigIstStat_Uzdatumu].[Tel1]"
    Alias ="Ievācās"
    Expression ="[VIA_LigIstStat_Uzdatumu].[Datums_In]"
    Expression ="[VIA_LigIstStat_Uzdatumu].[Ist_Nr]"
    Alias ="Istabā_No"
    Expression ="[VIA_LigIstStat_Uzdatumu].[LIDat_No]"
    Alias ="Istabā_Līdz"
    Expression ="[VIA_LigIstStat_Uzdatumu].[LIDat_Lidz]"
    Alias ="Vietas"
    Expression ="[VIA_LigIstStat_Uzdatumu].[Vsk]"
    Alias ="ApmaksaLīdz"
    Expression ="[VIA_LigIstStat_Uzdatumu].[PirmsDat_dat]"
    Expression ="[VIA_LigIstStat_Uzdatumu].[V_ApmLidz]"
    Alias ="STOP"
    Expression ="[ApmaksasParadnieki_Stop].[sk]"
    Alias ="Termins"
    Expression ="IIf([V_ApmLidz]<Date(),\"nokavēts\",Null)"
    Expression ="[VIA_LigApm_Sam_ParadsLig].[ParadsLig]"
    Expression ="[VIA_LigApm_Sam_ParadsPers].[ParadsPers]"
End
Begin Joins
    LeftTable ="VIA_LigIstStat_Uzdatumu"
    RightTable ="ApmaksasParadnieki_Stop"
    Expression ="[VIA_LigIstStat_Uzdatumu].[Pers_ID]=[ApmaksasParadnieki_Stop].[CKods]"
    Flag =2
    LeftTable ="VIA_LigIstStat_Uzdatumu"
    RightTable ="VIA_LigApm_Sam_ParadsLig"
    Expression ="[VIA_LigIstStat_Uzdatumu].[Ligums]=[VIA_LigApm_Sam_ParadsLig].[Ligums]"
    Flag =2
    LeftTable ="VIA_LigIstStat_Uzdatumu"
    RightTable ="VIA_LigApm_Sam_ParadsPers"
    Expression ="[VIA_LigIstStat_Uzdatumu].[Pers_ID]=[VIA_LigApm_Sam_ParadsPers].[Personas_ID]"
    Flag =2
End
Begin OrderBy
    Expression ="[VIA_LigIstStat_Uzdatumu].[Ist_Nr]"
    Flag =0
    Expression ="[VIA_LigIstStat_Uzdatumu].[Ligums]"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="Ievācās"
        dbInteger "ColumnWidth" ="1110"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Istabā_Līdz"
        dbInteger "ColumnWidth" ="1230"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Vietas"
        dbInteger "ColumnWidth" ="735"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="ApmaksaLīdz"
        dbInteger "ColumnWidth" ="1425"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="STOP"
        dbInteger "ColumnWidth" ="690"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =-1
    Top =86
    Right =1481
    Bottom =837
    Left =-1
    Top =-1
    Right =1471
    Bottom =248
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =324
        Bottom =210
        Top =0
        Name ="VIA_LigIstStat_Uzdatumu"
        Name =""
    End
    Begin
        Left =387
        Top =10
        Right =483
        Bottom =124
        Top =0
        Name ="ApmaksasParadnieki_Stop"
        Name =""
    End
    Begin
        Left =612
        Top =23
        Right =708
        Bottom =122
        Top =0
        Name ="VIA_LigApm_Sam_ParadsLig"
        Name =""
    End
    Begin
        Left =1021
        Top =94
        Right =1117
        Bottom =208
        Top =2
        Name ="VIA_LigApm_Sam_ParadsPers"
        Name =""
    End
End
