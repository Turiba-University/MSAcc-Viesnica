Operation =1
Option =0
Begin InputTables
    Name ="VIA_LigIstAizn_Dat_data"
    Name ="dbo_viesn_Ligumi"
    Name ="dbo_Personas"
    Name ="dbo_viesn_kl_Istabas"
End
Begin OutputColumns
    Expression ="dbo_viesn_Ligumi.LIGUM_ID"
    Alias ="Ist_Nr"
    Expression ="VIA_LigIstAizn_Dat_data.Istaba"
    Expression ="dbo_viesn_kl_Istabas.IstabasNr"
    Expression ="VIA_LigIstAizn_Dat_data.Ligums"
    Expression ="dbo_viesn_Ligumi.Lig_Dat"
    Expression ="dbo_viesn_Ligumi.Pers_ID"
    Expression ="dbo_Personas.Vards"
    Expression ="dbo_Personas.Uzvards"
    Expression ="dbo_Personas.Pers_Kods"
    Expression ="dbo_viesn_Ligumi.Valsts"
    Expression ="VIA_LigIstAizn_Dat_data.LIDat_No"
    Expression ="VIA_LigIstAizn_Dat_data.LIDat_Lidz"
    Expression ="VIA_LigIstAizn_Dat_data.Stat"
    Expression ="dbo_Personas.Tel1"
    Alias ="Cert"
    Expression ="Null"
    Alias ="CertDatums"
    Expression ="Null"
End
Begin Joins
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_Personas"
    Expression ="dbo_viesn_Ligumi.[Pers_ID] = dbo_Personas.[Personas_ID]"
    Flag =2
    LeftTable ="VIA_LigIstAizn_Dat_data"
    RightTable ="dbo_viesn_Ligumi"
    Expression ="VIA_LigIstAizn_Dat_data.[Ligums] = dbo_viesn_Ligumi.[Ligums]"
    Flag =2
    LeftTable ="VIA_LigIstAizn_Dat_data"
    RightTable ="dbo_viesn_kl_Istabas"
    Expression ="VIA_LigIstAizn_Dat_data.Istaba = dbo_viesn_kl_Istabas.Istaba"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.LIGUM_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Pers_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ist_Nr"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =16
    Top =30
    Right =1208
    Bottom =613
    Left =-1
    Top =-1
    Right =1160
    Bottom =283
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="VIA_LigIstAizn_Dat_data"
        Name =""
    End
    Begin
        Left =243
        Top =35
        Right =387
        Bottom =179
        Top =0
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
    Begin
        Left =432
        Top =12
        Right =576
        Bottom =156
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
    Begin
        Left =624
        Top =12
        Right =768
        Bottom =156
        Top =0
        Name ="dbo_viesn_kl_Istabas"
        Name =""
    End
End
