Operation =1
Option =0
Where ="((([dbo_viesn_Maksajumi].[Last_Dat])>=[forms]![VIA_VietuSkaitsUzdatumu]![DatNo] "
    "And ([dbo_viesn_Maksajumi].[Last_Dat])<=[forms]![VIA_VietuSkaitsUzdatumu]![DatLi"
    "dz]))"
Begin InputTables
    Name ="dbo_Personas"
    Name ="dbo_viesn_Ligumi"
    Name ="dbo_viesn_Ligumi_Istabas"
    Name ="dbo_viesn_Ligumi_VValstis"
    Name ="dbo_viesn_Maksajumi"
End
Begin OutputColumns
    Expression ="[dbo_viesn_Ligumi].[Ligums]"
    Alias ="Ist_Nr"
    Expression ="[dbo_viesn_Ligumi_Istabas].[Istaba]"
    Expression ="[dbo_Personas].[Uzvards]"
    Expression ="[dbo_Personas].[Vards]"
    Expression ="[dbo_Personas].[Pers_Kods]"
    Expression ="[dbo_Personas].[Tel1]"
    Expression ="[dbo_viesn_Ligumi].[Datums_In]"
    Expression ="[dbo_viesn_Ligumi].[Datums_Out]"
    Alias ="Valst"
    Expression ="IIf(IsNull([dbo_viesn_Ligumi_VValstis].[Valsts]),IIf(IsNull([dbo_viesn_Ligumi].["
        "Valsts]),\"Latvija\",[dbo_viesn_Ligumi].[Valsts]),[dbo_viesn_Ligumi_VValstis].[V"
        "alsts])"
    Alias ="SumOfIst_SamSum"
    Expression ="Sum([dbo_viesn_Maksajumi].[Ist_SamSum])"
    Alias ="SumOfKavN_SamSum"
    Expression ="Sum([dbo_viesn_Maksajumi].[KavN_SamSum])"
End
Begin Joins
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_viesn_Ligumi_Istabas"
    Expression ="[dbo_viesn_Ligumi].[Ligums]=[dbo_viesn_Ligumi_Istabas].[Ligums]"
    Flag =2
    LeftTable ="dbo_Personas"
    RightTable ="dbo_viesn_Ligumi"
    Expression ="[dbo_Personas].[Personas_ID]=[dbo_viesn_Ligumi].[Pers_ID]"
    Flag =3
    LeftTable ="dbo_viesn_Ligumi_Istabas"
    RightTable ="dbo_viesn_Ligumi_VValstis"
    Expression ="[dbo_viesn_Ligumi_Istabas].[Ligums]=[dbo_viesn_Ligumi_VValstis].[Ligums]"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi_Istabas"
    RightTable ="dbo_viesn_Ligumi_VValstis"
    Expression ="[dbo_viesn_Ligumi_Istabas].[Istaba]=[dbo_viesn_Ligumi_VValstis].[Istaba]"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi_Istabas"
    RightTable ="dbo_viesn_Maksajumi"
    Expression ="[dbo_viesn_Ligumi_Istabas].[Ligums]=[dbo_viesn_Maksajumi].[Ligums]"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi_Istabas"
    RightTable ="dbo_viesn_Maksajumi"
    Expression ="[dbo_viesn_Ligumi_Istabas].[Istaba]=[dbo_viesn_Maksajumi].[Ist_Nr]"
    Flag =2
End
Begin Groups
    Expression ="[dbo_viesn_Ligumi].[Ligums]"
    GroupLevel =0
    Expression ="[dbo_viesn_Ligumi_Istabas].[Istaba]"
    GroupLevel =0
    Expression ="[dbo_Personas].[Uzvards]"
    GroupLevel =0
    Expression ="[dbo_Personas].[Vards]"
    GroupLevel =0
    Expression ="[dbo_Personas].[Pers_Kods]"
    GroupLevel =0
    Expression ="[dbo_Personas].[Tel1]"
    GroupLevel =0
    Expression ="[dbo_viesn_Ligumi].[Datums_In]"
    GroupLevel =0
    Expression ="[dbo_viesn_Ligumi].[Datums_Out]"
    GroupLevel =0
    Expression ="IIf(IsNull([dbo_viesn_Ligumi_VValstis].[Valsts]),IIf(IsNull([dbo_viesn_Ligumi].["
        "Valsts]),\"Latvija\",[dbo_viesn_Ligumi].[Valsts]),[dbo_viesn_Ligumi_VValstis].[V"
        "alsts])"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
End
Begin
    State =0
    Left =1
    Top =165
    Right =1485
    Bottom =670
    Left =-1
    Top =-1
    Right =1477
    Bottom =282
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =234
        Bottom =210
        Top =16
        Name ="dbo_Personas"
        Name =""
    End
    Begin
        Left =270
        Top =5
        Right =453
        Bottom =239
        Top =9
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
    Begin
        Left =491
        Top =6
        Right =741
        Bottom =135
        Top =0
        Name ="dbo_viesn_Ligumi_Istabas"
        Name =""
    End
    Begin
        Left =806
        Top =47
        Right =968
        Bottom =206
        Top =0
        Name ="dbo_viesn_Ligumi_VValstis"
        Name =""
    End
    Begin
        Left =1023
        Top =5
        Right =1266
        Bottom =209
        Top =11
        Name ="dbo_viesn_Maksajumi"
        Name =""
    End
End
