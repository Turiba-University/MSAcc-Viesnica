Operation =4
Option =0
Begin InputTables
    Name ="z_EKonv_LigumiSpeka"
    Name ="dbo_viesn_Maksajumi"
End
Begin OutputColumns
    Name ="dbo_viesn_Maksajumi.Valuta_ID"
    Expression ="2"
    Name ="dbo_viesn_Maksajumi.PE_Kovertets"
    Expression ="1"
    Name ="dbo_viesn_Maksajumi.PE_Maks_Day"
    Expression ="IIf(IsNull([Maks_Day]),0,[Maks_Day])"
    Name ="dbo_viesn_Maksajumi.PE_Maks_Men"
    Expression ="IIf(IsNull([Maks_Men]),0,[Maks_Men])"
    Name ="dbo_viesn_Maksajumi.PE_PVN_Sum"
    Expression ="IIf(IsNull([PVN_Sum]),0,[PVN_Sum])"
    Name ="dbo_viesn_Maksajumi.PE_Kopa"
    Expression ="IIf(IsNull([Kopa]),0,[Kopa])"
    Name ="dbo_viesn_Maksajumi.PE_Total"
    Expression ="IIf(IsNull([Total]),0,[Total])"
    Name ="dbo_viesn_Maksajumi.PE_Ist_SamSum"
    Expression ="IIf(IsNull([Ist_SamSum]),0,[Ist_SamSum])"
    Name ="dbo_viesn_Maksajumi.PE_KavN_Summa"
    Expression ="IIf(IsNull([KavN_Summa]),0,[KavN_Summa])"
    Name ="dbo_viesn_Maksajumi.PE_KavN_SamSum"
    Expression ="IIf(IsNull([KavN_SamSum]),0,[KavN_SamSum])"
End
Begin Joins
    LeftTable ="z_EKonv_LigumiSpeka"
    RightTable ="dbo_viesn_Maksajumi"
    Expression ="[z_EKonv_LigumiSpeka].[Ligums]=[dbo_viesn_Maksajumi].[Ligums]"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbBoolean "FailOnError" ="0"
dbByte "Orientation" ="0"
Begin
End
Begin
    State =0
    Left =12
    Top =274
    Right =1601
    Bottom =817
    Left =-1
    Top =-1
    Right =1582
    Bottom =375
    Left =0
    Top =0
    ColumnsShown =579
    Begin
        Left =11
        Top =6
        Right =134
        Bottom =165
        Top =0
        Name ="z_EKonv_LigumiSpeka"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =378
        Bottom =345
        Top =18
        Name ="dbo_viesn_Maksajumi"
        Name =""
    End
End
