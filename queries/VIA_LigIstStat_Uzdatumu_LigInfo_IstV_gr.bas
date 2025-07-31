Operation =3
Name ="tmp_ParskatsPaValstim"
Option =0
Where ="((([VIA_LigIstStat_Uzdatumu].[Stat])=\"dzīvo\" Or ([VIA_LigIstStat_Uzdatumu].[St"
    "at])=\"izvācas\") And (Not ([dbo_viesn_Ligumi_VValstis].[VLVV_ID]) Is Null))"
Begin InputTables
    Name ="VIA_LigIstStat_Uzdatumu"
    Name ="dbo_viesn_Ligumi"
    Name ="dbo_Personas"
    Name ="dbo_viesn_Ligumi_VValstis"
End
Begin OutputColumns
    Name ="LigNr"
    Expression ="[VIA_LigIstStat_Uzdatumu].[Ligums]"
    Name ="Tips"
    Expression ="[dbo_viesn_Ligumi].[Position]"
    Alias ="Ist_Nr"
    Name ="IstNr"
    Expression ="[dbo_viesn_Ligumi_VValstis].[Istaba]"
    Alias ="Datums"
    Name ="Datums"
    Expression ="[forms]![VIA_VietuSkaitsUzdatumu]![Stat_Datums]"
    Name ="Valsts"
    Expression ="[dbo_viesn_Ligumi_VValstis].[Valsts]"
    Name ="Pers_ID"
    Expression ="[dbo_viesn_Ligumi].[Pers_ID]"
    Alias ="Sk"
    Name ="Sk"
    Expression ="Sum([dbo_viesn_Ligumi_VValstis].[VSkaits])"
End
Begin Joins
    LeftTable ="VIA_LigIstStat_Uzdatumu"
    RightTable ="dbo_viesn_Ligumi"
    Expression ="[VIA_LigIstStat_Uzdatumu].[Ligums]=[dbo_viesn_Ligumi].[Ligums]"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_Personas"
    Expression ="[dbo_viesn_Ligumi].[Pers_ID]=[dbo_Personas].[Personas_ID]"
    Flag =2
    LeftTable ="VIA_LigIstStat_Uzdatumu"
    RightTable ="dbo_viesn_Ligumi_VValstis"
    Expression ="[VIA_LigIstStat_Uzdatumu].[Ligums]=[dbo_viesn_Ligumi_VValstis].[Ligums]"
    Flag =2
    LeftTable ="VIA_LigIstStat_Uzdatumu"
    RightTable ="dbo_viesn_Ligumi_VValstis"
    Expression ="[VIA_LigIstStat_Uzdatumu].[Ist_Nr]=[dbo_viesn_Ligumi_VValstis].[Istaba]"
    Flag =2
End
Begin Groups
    Expression ="[VIA_LigIstStat_Uzdatumu].[Ligums]"
    GroupLevel =0
    Expression ="[dbo_viesn_Ligumi].[Position]"
    GroupLevel =0
    Expression ="[dbo_viesn_Ligumi_VValstis].[Istaba]"
    GroupLevel =0
    Expression ="[forms]![VIA_VietuSkaitsUzdatumu]![Stat_Datums]"
    GroupLevel =0
    Expression ="[dbo_viesn_Ligumi_VValstis].[Valsts]"
    GroupLevel =0
    Expression ="[dbo_viesn_Ligumi].[Pers_ID]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbBoolean "UseTransaction" ="0"
Begin
End
Begin
    State =0
    Left =32
    Top =34
    Right =1262
    Bottom =602
    Left =-1
    Top =-1
    Right =1223
    Bottom =341
    Left =0
    Top =0
    ColumnsShown =655
    Begin
        Left =42
        Top =9
        Right =223
        Bottom =303
        Top =0
        Name ="VIA_LigIstStat_Uzdatumu"
        Name =""
    End
    Begin
        Left =478
        Top =6
        Right =601
        Bottom =285
        Top =0
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
    Begin
        Left =680
        Top =10
        Right =905
        Bottom =274
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
    Begin
        Left =287
        Top =98
        Right =416
        Bottom =257
        Top =0
        Name ="dbo_viesn_Ligumi_VValstis"
        Name =""
    End
End
