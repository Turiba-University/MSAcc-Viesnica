Operation =1
Option =0
Where ="((([dbo_viesn_Maksajumi].[Stat]) Is Null Or Not ([dbo_viesn_Maksajumi].[Stat])=-"
    "1))"
Begin InputTables
    Name ="dbo_viesn_Maksajumi"
    Name ="VIA_LigIstApm_PirmsDat"
End
Begin OutputColumns
    Expression ="[dbo_viesn_Maksajumi].[Ligums]"
    Expression ="[dbo_viesn_Maksajumi].[Ist_Nr]"
    Alias ="PirmsDat_Vsk"
    Expression ="Max([dbo_viesn_Maksajumi].[Sk_Ist])"
    Alias ="PirmsDat_dat"
    Expression ="Max([dbo_viesn_Maksajumi].[Dat_Lidz])"
End
Begin Joins
    LeftTable ="dbo_viesn_Maksajumi"
    RightTable ="VIA_LigIstApm_PirmsDat"
    Expression ="[dbo_viesn_Maksajumi].[Ligums]=[VIA_LigIstApm_PirmsDat].[Ligums]"
    Flag =1
    LeftTable ="dbo_viesn_Maksajumi"
    RightTable ="VIA_LigIstApm_PirmsDat"
    Expression ="[dbo_viesn_Maksajumi].[Ist_Nr]=[VIA_LigIstApm_PirmsDat].[Ist_Nr]"
    Flag =1
    LeftTable ="dbo_viesn_Maksajumi"
    RightTable ="VIA_LigIstApm_PirmsDat"
    Expression ="[dbo_viesn_Maksajumi].[Dat_Lidz]=[VIA_LigIstApm_PirmsDat].[PirmsDat_dat]"
    Flag =1
End
Begin Groups
    Expression ="[dbo_viesn_Maksajumi].[Ligums]"
    GroupLevel =0
    Expression ="[dbo_viesn_Maksajumi].[Ist_Nr]"
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
    Left =588
    Top =31
    Right =1580
    Bottom =511
    Left =-1
    Top =-1
    Right =985
    Bottom =282
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =197
        Bottom =240
        Top =0
        Name ="dbo_viesn_Maksajumi"
        Name =""
    End
    Begin
        Left =235
        Top =6
        Right =461
        Bottom =105
        Top =0
        Name ="VIA_LigIstApm_PirmsDat"
        Name =""
    End
End
