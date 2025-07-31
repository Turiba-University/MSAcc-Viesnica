Operation =1
Option =0
Where ="((([dbo_viesn_Maksajumi].[Stat]) Is Null Or Not ([dbo_viesn_Maksajumi].[Stat])=-"
    "1))"
Begin InputTables
    Name ="dbo_viesn_Maksajumi"
    Name ="VIA_LigIstApm_PecDat"
End
Begin OutputColumns
    Expression ="[dbo_viesn_Maksajumi].[Ligums]"
    Expression ="[dbo_viesn_Maksajumi].[Ist_Nr]"
    Alias ="PecDat_Vsk"
    Expression ="Max([dbo_viesn_Maksajumi].[Sk_Ist])"
    Alias ="PecDat_dat"
    Expression ="Min([dbo_viesn_Maksajumi].[Dat_Lidz])"
End
Begin Joins
    LeftTable ="dbo_viesn_Maksajumi"
    RightTable ="VIA_LigIstApm_PecDat"
    Expression ="[dbo_viesn_Maksajumi].[Ist_Nr]=[VIA_LigIstApm_PecDat].[Ist_Nr]"
    Flag =1
    LeftTable ="dbo_viesn_Maksajumi"
    RightTable ="VIA_LigIstApm_PecDat"
    Expression ="[dbo_viesn_Maksajumi].[Dat_No]=[VIA_LigIstApm_PecDat].[PecDat_dat]"
    Flag =1
    LeftTable ="dbo_viesn_Maksajumi"
    RightTable ="VIA_LigIstApm_PecDat"
    Expression ="[dbo_viesn_Maksajumi].[Ligums]=[VIA_LigIstApm_PecDat].[Ligums]"
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
    Left =364
    Top =380
    Right =1356
    Bottom =860
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
        Left =341
        Top =50
        Right =531
        Bottom =134
        Top =0
        Name ="VIA_LigIstApm_PecDat"
        Name =""
    End
End
