Operation =1
Option =0
Begin InputTables
    Name ="VIA_Istabas"
    Name ="VIA_LigIstApm_Uzdatumu"
    Name ="dbo_viesn_Ligumi"
End
Begin OutputColumns
    Expression ="VIA_Istabas.Ist_Nr"
    Expression ="VIA_LigIstApm_Uzdatumu.V_sk"
    Expression ="VIA_LigIstApm_Uzdatumu.V_ApmLidz"
    Expression ="dbo_viesn_Ligumi.Datums_Out"
End
Begin Joins
    LeftTable ="VIA_Istabas"
    RightTable ="VIA_LigIstApm_Uzdatumu"
    Expression ="VIA_Istabas.Ist_Nr = VIA_LigIstApm_Uzdatumu.Ist_Nr"
    Flag =2
    LeftTable ="VIA_LigIstApm_Uzdatumu"
    RightTable ="dbo_viesn_Ligumi"
    Expression ="VIA_LigIstApm_Uzdatumu.Ligums = dbo_viesn_Ligumi.Ligums"
    Flag =1
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
    Left =116
    Top =446
    Right =1353
    Bottom =751
    Left =-1
    Top =-1
    Right =1230
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =68
        Top =0
        Name ="VIA_Istabas"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =345
        Bottom =113
        Top =0
        Name ="VIA_LigIstApm_Uzdatumu"
        Name =""
    End
    Begin
        Left =425
        Top =4
        Right =565
        Bottom =111
        Top =14
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
End
