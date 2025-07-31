Operation =1
Option =0
Where ="(((IIf(IsNull([Ist_SamSum]),0,[Ist_SamSum])-IIf(IsNull([Total]),0,[total]))<0) A"
    "nd (([dbo_viesn_Maksajumi].[Stat]) Is Null Or ([dbo_viesn_Maksajumi].[Stat])<>-1"
    ")) Or ((([dbo_viesn_Maksajumi].[Stat]) Is Null Or ([dbo_viesn_Maksajumi].[Stat])"
    "<>-1) And ((IIf(IsNull([KavN_SamSum]),0,[KavN_SamSum])-IIf(IsNull([KavN_Summa]),"
    "0,[KavN_Summa]))<0))"
Begin InputTables
    Name ="dbo_viesn_Maksajumi"
    Name ="dbo_viesn_Ligumi"
    Name ="dbo_Personas"
End
Begin OutputColumns
    Expression ="[dbo_Personas].[Personas_ID]"
    Expression ="[dbo_Personas].[Vards]"
    Expression ="[dbo_Personas].[Uzvards]"
    Expression ="[dbo_Personas].[Pers_Kods]"
    Alias ="V_sk"
    Expression ="Max([dbo_viesn_Maksajumi].[Sk_Ist])"
    Alias ="ParadsPers"
    Expression ="Sum(IIf(IsNull([Ist_SamSum]),0,[Ist_SamSum])-IIf(IsNull([Total]),0,[total])+IIf("
        "IsNull([KavN_SamSum]),0,[KavN_SamSum])-IIf(IsNull([KavN_Summa]),0,[KavN_Summa]))"
End
Begin Joins
    LeftTable ="dbo_viesn_Maksajumi"
    RightTable ="dbo_viesn_Ligumi"
    Expression ="[dbo_viesn_Maksajumi].[Ligums]=[dbo_viesn_Ligumi].[Ligums]"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_Personas"
    Expression ="[dbo_viesn_Ligumi].[Pers_ID]=[dbo_Personas].[Personas_ID]"
    Flag =2
End
Begin Groups
    Expression ="[dbo_Personas].[Personas_ID]"
    GroupLevel =0
    Expression ="[dbo_Personas].[Vards]"
    GroupLevel =0
    Expression ="[dbo_Personas].[Uzvards]"
    GroupLevel =0
    Expression ="[dbo_Personas].[Pers_Kods]"
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
    Left =5
    Top =198
    Right =1571
    Bottom =683
    Left =-1
    Top =-1
    Right =1559
    Bottom =282
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =283
        Bottom =240
        Top =0
        Name ="dbo_viesn_Maksajumi"
        Name =""
    End
    Begin
        Left =383
        Top =26
        Right =582
        Bottom =215
        Top =0
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
    Begin
        Left =662
        Top =25
        Right =758
        Bottom =214
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
End
