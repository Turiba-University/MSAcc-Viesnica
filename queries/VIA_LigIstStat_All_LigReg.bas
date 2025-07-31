Operation =1
Option =0
Begin InputTables
    Name ="VIA_LigIstApm_PedDat"
    Name ="dbo_viesn_Ligumi"
    Name ="dbo_Personas"
    Name ="dbo_viesn_Ligumi_Istabas"
End
Begin OutputColumns
    Expression ="dbo_viesn_Ligumi.Ligums"
    Expression ="dbo_viesn_Ligumi.Lig_Dat"
    Expression ="dbo_Personas.Vards"
    Expression ="dbo_Personas.Uzvards"
    Expression ="dbo_Personas.Pers_Kods"
    Alias ="Statuss"
    Expression ="dbo_viesn_Ligumi.Position"
    Alias ="Cert"
    Expression ="Null"
    Alias ="CertDatums"
    Expression ="Null"
    Expression ="dbo_viesn_Ligumi_Istabas.Istaba"
    Alias ="Sum"
    Expression ="Int(([summa]+0.005005)*100)/100"
    Expression ="VIA_LigIstApm_PedDat.ApmLidz_Dat"
    Expression ="dbo_viesn_Ligumi.Datums_In"
    Expression ="dbo_viesn_Ligumi.Datums_Out"
End
Begin Joins
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_Personas"
    Expression ="dbo_viesn_Ligumi.Pers_ID = dbo_Personas.Personas_ID"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_viesn_Ligumi_Istabas"
    Expression ="dbo_viesn_Ligumi.Ligums = dbo_viesn_Ligumi_Istabas.Ligums"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi_Istabas"
    RightTable ="VIA_LigIstApm_PedDat"
    Expression ="dbo_viesn_Ligumi_Istabas.Ligums = VIA_LigIstApm_PedDat.Ligums"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi_Istabas"
    RightTable ="VIA_LigIstApm_PedDat"
    Expression ="dbo_viesn_Ligumi_Istabas.Istaba = VIA_LigIstApm_PedDat.Ist_Nr"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_viesn_Ligumi.Ligums"
    Flag =1
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
        dbText "Name" ="Sum"
        dbText "Format" ="Standard"
        dbByte "DecimalPlaces" ="2"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Ligums"
        dbInteger "ColumnWidth" ="840"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Istabas.Istaba"
        dbInteger "ColumnWidth" ="675"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Uzvards"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_LigIstApm_PedDat.ApmLidz_Dat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Datums_In"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Lig_Dat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Pers_Kods"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Datums_Out"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Vards"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Statuss"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Cert"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="CertDatums"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =43
    Top =91
    Right =1473
    Bottom =784
    Left =-1
    Top =-1
    Right =1398
    Bottom =226
    Left =0
    Top =7
    ColumnsShown =539
    Begin
        Left =791
        Top =158
        Right =1046
        Bottom =265
        Top =0
        Name ="VIA_LigIstApm_PedDat"
        Name =""
    End
    Begin
        Left =213
        Top =1
        Right =405
        Bottom =288
        Top =0
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
    Begin
        Left =869
        Top =12
        Right =1071
        Bottom =160
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
    Begin
        Left =525
        Top =10
        Right =696
        Bottom =132
        Top =0
        Name ="dbo_viesn_Ligumi_Istabas"
        Name =""
    End
End
