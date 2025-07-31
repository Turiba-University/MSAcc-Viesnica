Operation =1
Option =0
Where ="(((IIf(IsNull([Ist_SamSum]),0,[Ist_SamSum])-IIf(IsNull([Total]),0,[total]))=0) A"
    "nd ((IIf(IsNull([KavN_SamSum]),0,[KavN_SamSum])-IIf(IsNull([KavN_Summa]),0,[KavN"
    "_Summa]))=0) And (([dbo_viesn_Maksajumi].[Stat]) Is Null Or ([dbo_viesn_Maksajum"
    "i].[Stat])<>-1))"
Begin InputTables
    Name ="dbo_viesn_Maksajumi"
End
Begin OutputColumns
    Expression ="[dbo_viesn_Maksajumi].[Ligums]"
    Expression ="[dbo_viesn_Maksajumi].[Ist_Nr]"
    Alias ="V_sk"
    Expression ="Max([dbo_viesn_Maksajumi].[Sk_Ist])"
    Alias ="V_ApmLidz"
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
    Left =5
    Top =198
    Right =717
    Bottom =656
    Left =-1
    Top =-1
    Right =705
    Bottom =282
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =283
        Bottom =240
        Top =7
        Name ="dbo_viesn_Maksajumi"
        Name =""
    End
End
