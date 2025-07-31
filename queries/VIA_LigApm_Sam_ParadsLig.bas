Operation =1
Option =0
Where ="(((IIf(IsNull([Ist_SamSum]),0,[Ist_SamSum])-IIf(IsNull([Total]),0,[total]))<0) A"
    "nd (([dbo_viesn_Maksajumi].[Stat]) Is Null Or ([dbo_viesn_Maksajumi].[Stat])<>-1"
    ")) Or ((([dbo_viesn_Maksajumi].[Stat]) Is Null Or ([dbo_viesn_Maksajumi].[Stat])"
    "<>-1) And ((IIf(IsNull([KavN_SamSum]),0,[KavN_SamSum])-IIf(IsNull([KavN_Summa]),"
    "0,[KavN_Summa]))<0))"
Begin InputTables
    Name ="dbo_viesn_Maksajumi"
End
Begin OutputColumns
    Expression ="[dbo_viesn_Maksajumi].[Ligums]"
    Alias ="V_sk"
    Expression ="Max([dbo_viesn_Maksajumi].[Sk_Ist])"
    Alias ="ParadsLig"
    Expression ="Sum(IIf(IsNull([Ist_SamSum]),0,[Ist_SamSum])-IIf(IsNull([Total]),0,[total])+IIf("
        "IsNull([KavN_SamSum]),0,[KavN_SamSum])-IIf(IsNull([KavN_Summa]),0,[KavN_Summa]))"
End
Begin Groups
    Expression ="[dbo_viesn_Maksajumi].[Ligums]"
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
End
