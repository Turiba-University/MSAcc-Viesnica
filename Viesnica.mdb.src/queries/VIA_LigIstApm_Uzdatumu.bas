Operation =1
Option =0
Where ="((([dbo_viesn_Maksajumi].[Dat_No])<=[forms]![VIA_VietuSkaitsUzdatumu]![Stat_Datu"
    "ms]) And (([dbo_viesn_Maksajumi].[Dat_Lidz])>=[forms]![VIA_VietuSkaitsUzdatumu]!"
    "[Stat_Datums]) And (([dbo_viesn_Maksajumi].[Stat]) Is Null Or Not ([dbo_viesn_Ma"
    "ksajumi].[Stat])=-1))"
Begin InputTables
    Name ="dbo_viesn_Maksajumi"
End
Begin OutputColumns
    Expression ="[dbo_viesn_Maksajumi].[Ligums]"
    Expression ="[dbo_viesn_Maksajumi].[Ist_Nr]"
    Alias ="V_sk"
    Expression ="Max([dbo_viesn_Maksajumi].[Sk_Ist])"
    Alias ="MinOfDat_No"
    Expression ="Min([dbo_viesn_Maksajumi].[Dat_No])"
    Alias ="MaxOfDat_Lidz"
    Expression ="Max([dbo_viesn_Maksajumi].[Dat_Lidz])"
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
    Left =4
    Top =350
    Right =1026
    Bottom =883
    Left =-1
    Top =-1
    Right =1015
    Bottom =238
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
End
