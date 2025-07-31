Operation =4
Option =0
Where ="((([dbo_viesn_Maksajumi].[Valuta_ID])=2) And (([dbo_viesn_Maksajumi].[PE_Koverte"
    "ts])=1))"
Begin InputTables
    Name ="z_EKonv_LigumiSpeka"
    Name ="dbo_viesn_Maksajumi"
End
Begin OutputColumns
    Name ="dbo_viesn_Maksajumi.Maks_Day"
    Expression ="Int(([Maks_day]/0.702804+0.005005)*100)/100"
    Name ="dbo_viesn_Maksajumi.Maks_Men"
    Expression ="Int(([Maks_Men]/0.702804+0.005005)*100)/100"
    Name ="dbo_viesn_Maksajumi.PVN_Sum"
    Expression ="Int(([PVN_Sum]/0.702804+0.005005)*100)/100"
    Name ="dbo_viesn_Maksajumi.Kopa"
    Expression ="Int(([Kopa]/0.702804+0.005005)*100)/100"
    Name ="dbo_viesn_Maksajumi.Total"
    Expression ="Int(([Total]/0.702804+0.005005)*100)/100"
    Name ="dbo_viesn_Maksajumi.Ist_SamSum"
    Expression ="Int(([Ist_SamSum]/0.702804+0.005005)*100)/100"
    Name ="dbo_viesn_Maksajumi.KavN_Summa"
    Expression ="Int(([KavN_Summa]/0.702804+0.005005)*100)/100"
    Name ="dbo_viesn_Maksajumi.KavN_SamSum"
    Expression ="Int(([KavN_SamSum]/0.702804+0.005005)*100)/100"
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
    Bottom =354
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
        Top =3
        Name ="dbo_viesn_Maksajumi"
        Name =""
    End
End
