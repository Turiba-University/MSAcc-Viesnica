Operation =4
Option =0
Begin InputTables
    Name ="z_EKonv_LigumiSpeka"
    Name ="dbo_viesn_Ligumi_PApr_Maksajumi"
End
Begin OutputColumns
    Name ="dbo_viesn_Ligumi_PApr_Maksajumi.PE_Cena"
    Expression ="IIf(IsNull([Cena]),0,[Cena])"
    Name ="dbo_viesn_Ligumi_PApr_Maksajumi.PE_SamSum"
    Expression ="IIf(IsNull([SamSum]),0,[SamSum])"
    Name ="dbo_viesn_Ligumi_PApr_Maksajumi.PE_PA_SamaksataSum"
    Expression ="IIf(IsNull([PA_SamaksataSum]),0,[PA_SamaksataSum])"
End
Begin Joins
    LeftTable ="z_EKonv_LigumiSpeka"
    RightTable ="dbo_viesn_Ligumi_PApr_Maksajumi"
    Expression ="[z_EKonv_LigumiSpeka].[Ligums]=[dbo_viesn_Ligumi_PApr_Maksajumi].[Ligums]"
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
    Left =8
    Top =186
    Right =1424
    Bottom =729
    Left =-1
    Top =-1
    Right =1409
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
        Left =641
        Top =17
        Right =957
        Bottom =296
        Top =5
        Name ="dbo_viesn_Ligumi_PApr_Maksajumi"
        Name =""
    End
End
