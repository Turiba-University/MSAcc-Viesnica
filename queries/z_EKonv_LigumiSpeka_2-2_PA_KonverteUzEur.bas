Operation =4
Option =0
Begin InputTables
    Name ="z_EKonv_LigumiSpeka"
    Name ="dbo_viesn_Ligumi_PApr_Maksajumi"
End
Begin OutputColumns
    Name ="dbo_viesn_Ligumi_PApr_Maksajumi.Cena"
    Expression ="Int(([Cena]/0.702804+0.005005)*100)/100"
    Name ="dbo_viesn_Ligumi_PApr_Maksajumi.SamSum"
    Expression ="Int(([SamSum]/0.702804+0.005005)*100)/100"
    Name ="dbo_viesn_Ligumi_PApr_Maksajumi.PA_SamaksataSum"
    Expression ="Int(([PA_SamaksataSum]/0.702804+0.005005)*100)/100"
End
Begin Joins
    LeftTable ="z_EKonv_LigumiSpeka"
    RightTable ="dbo_viesn_Ligumi_PApr_Maksajumi"
    Expression ="z_EKonv_LigumiSpeka.Ligums = dbo_viesn_Ligumi_PApr_Maksajumi.Ligums"
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
        Left =442
        Top =9
        Right =740
        Bottom =262
        Top =7
        Name ="dbo_viesn_Ligumi_PApr_Maksajumi"
        Name =""
    End
End
