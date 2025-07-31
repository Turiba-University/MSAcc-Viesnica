Operation =3
Name ="tmp_ParskatsPaValstim"
Option =0
Where ="((([VIA_LigIstStat_Uzdatumu].[Stat])=\"dzīvo\" Or ([VIA_LigIstStat_Uzdatumu].[St"
    "at])=\"izvācas\"))"
Begin InputTables
    Name ="VIA_LigIstStat_Uzdatumu"
    Name ="dbo_viesn_Ligumi"
    Name ="dbo_Personas"
End
Begin OutputColumns
    Name ="LigNr"
    Expression ="[VIA_LigIstStat_Uzdatumu].[Ligums]"
    Name ="Tips"
    Expression ="[dbo_viesn_Ligumi].[Position]"
    Name ="IstNr"
    Expression ="[VIA_LigIstStat_Uzdatumu].[Ist_Nr]"
    Alias ="Datums"
    Name ="Datums"
    Expression ="[forms]![VIA_VietuSkaitsUzdatumu]![Stat_Datums]"
    Name ="Valsts"
    Expression ="[dbo_viesn_Ligumi].[Valsts]"
    Name ="Pers_ID"
    Expression ="[dbo_viesn_Ligumi].[Pers_ID]"
    Alias ="Sk"
    Name ="Sk"
    Expression ="Sum([VIA_LigIstStat_Uzdatumu].[NSk])"
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
End
Begin Groups
    Expression ="[VIA_LigIstStat_Uzdatumu].[Ligums]"
    GroupLevel =0
    Expression ="[dbo_viesn_Ligumi].[Position]"
    GroupLevel =0
    Expression ="[VIA_LigIstStat_Uzdatumu].[Ist_Nr]"
    GroupLevel =0
    Expression ="[forms]![VIA_VietuSkaitsUzdatumu]![Stat_Datums]"
    GroupLevel =0
    Expression ="[dbo_viesn_Ligumi].[Valsts]"
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
    Left =117
    Top =34
    Right =1347
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
        Bottom =311
        Top =0
        Name ="VIA_LigIstStat_Uzdatumu"
        Name =""
    End
    Begin
        Left =283
        Top =7
        Right =406
        Bottom =294
        Top =0
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
    Begin
        Left =527
        Top =11
        Right =752
        Bottom =283
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
End
