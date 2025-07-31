Operation =1
Option =0
Begin InputTables
    Name ="VIA_LigIstIrLig_Uzdatumu"
    Name ="VIA_LigIstApm_PedDat"
    Name ="dbo_viesn_Ligumi"
    Name ="dbo_Personas"
    Name ="VIA_LigApm_Sam_Peddatums"
    Name ="dbo_Personas_Cert"
End
Begin OutputColumns
    Expression ="VIA_LigIstIrLig_Uzdatumu.Ligums"
    Expression ="dbo_viesn_Ligumi.Lig_Dat"
    Expression ="dbo_Personas.Vards"
    Expression ="dbo_Personas.Uzvards"
    Expression ="dbo_Personas.Pers_Kods"
    Expression ="VIA_LigIstIrLig_Uzdatumu.Valsts"
    Alias ="Statuss"
    Expression ="dbo_viesn_Ligumi.Position"
    Alias ="Cert"
    Expression ="IIf([CertVeids]=1,\"Pārsl.\",IIf([CertVeids]=2,\"Vakc.\",IIf([CertVeids]=0,\"nav"
        "\",Null)))"
    Expression ="dbo_Personas_Cert.CertDatums"
    Expression ="VIA_LigIstIrLig_Uzdatumu.Ist_Nr"
    Alias ="Sum"
    Expression ="Int(([summa]+0.005005)*100)/100"
    Alias ="ApmLidz_Dat"
    Expression ="VIA_LigApm_Sam_Peddatums.V_ApmLidz"
    Expression ="VIA_LigIstIrLig_Uzdatumu.Datums_In"
    Expression ="VIA_LigIstIrLig_Uzdatumu.Datums_Out"
    Alias ="TelNr"
    Expression ="dbo_Personas.Tel1"
    Expression ="dbo_Personas.Epasts"
End
Begin Joins
    LeftTable ="VIA_LigIstIrLig_Uzdatumu"
    RightTable ="VIA_LigIstApm_PedDat"
    Expression ="VIA_LigIstIrLig_Uzdatumu.Ligums = VIA_LigIstApm_PedDat.Ligums"
    Flag =2
    LeftTable ="VIA_LigIstIrLig_Uzdatumu"
    RightTable ="VIA_LigIstApm_PedDat"
    Expression ="VIA_LigIstIrLig_Uzdatumu.Ist_Nr = VIA_LigIstApm_PedDat.Ist_Nr"
    Flag =2
    LeftTable ="VIA_LigIstIrLig_Uzdatumu"
    RightTable ="dbo_viesn_Ligumi"
    Expression ="VIA_LigIstIrLig_Uzdatumu.Ligums = dbo_viesn_Ligumi.Ligums"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_Personas"
    Expression ="dbo_viesn_Ligumi.Pers_ID = dbo_Personas.Personas_ID"
    Flag =2
    LeftTable ="VIA_LigIstIrLig_Uzdatumu"
    RightTable ="VIA_LigApm_Sam_Peddatums"
    Expression ="VIA_LigIstIrLig_Uzdatumu.Ligums = VIA_LigApm_Sam_Peddatums.Ligums"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_Personas_Cert"
    Expression ="dbo_viesn_Ligumi.Pers_ID = dbo_Personas_Cert.Personas_ID"
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
        dbText "Name" ="VIA_LigIstIrLig_Uzdatumu.Ligums"
        dbInteger "ColumnWidth" ="840"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_LigIstIrLig_Uzdatumu.Datums_In"
        dbInteger "ColumnWidth" ="1140"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_LigIstIrLig_Uzdatumu.Datums_Out"
        dbInteger "ColumnWidth" ="1290"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[VIA_LigIstIrLig_Uzdatumu].[Ligums]"
        dbInteger "ColumnWidth" ="840"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[VIA_LigIstIrLig_Uzdatumu].[Datums_In]"
        dbInteger "ColumnWidth" ="1140"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[VIA_LigIstIrLig_Uzdatumu].[Datums_Out]"
        dbInteger "ColumnWidth" ="1290"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="[VIA_LigIstIrLig_Uzdatumu].[Ist_Nr]"
        dbInteger "ColumnWidth" ="675"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_LigIstIrLig_Uzdatumu.Ist_Nr"
        dbInteger "ColumnWidth" ="675"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Sum"
        dbText "Format" ="Standard"
        dbByte "DecimalPlaces" ="2"
        dbInteger "ColumnWidth" ="735"
        dbBoolean "ColumnHidden" ="0"
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
        dbText "Name" ="ApmLidz_Dat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Vards"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_LigIstIrLig_Uzdatumu.Valsts"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Epasts"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Uzvards"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TelNr"
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
End
Begin
    State =0
    Left =3
    Top =119
    Right =1242
    Bottom =959
    Left =-1
    Top =-1
    Right =1207
    Bottom =179
    Left =0
    Top =7
    ColumnsShown =539
    Begin
        Left =4
        Top =-1
        Right =182
        Bottom =188
        Top =0
        Name ="VIA_LigIstIrLig_Uzdatumu"
        Name =""
    End
    Begin
        Left =257
        Top =15
        Right =512
        Bottom =171
        Top =0
        Name ="VIA_LigIstApm_PedDat"
        Name =""
    End
    Begin
        Left =550
        Top =6
        Right =664
        Bottom =180
        Top =0
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
    Begin
        Left =722
        Top =9
        Right =818
        Bottom =168
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
    Begin
        Left =888
        Top =11
        Right =1170
        Bottom =164
        Top =0
        Name ="VIA_LigApm_Sam_Peddatums"
        Name =""
    End
    Begin
        Left =851
        Top =24
        Right =995
        Bottom =168
        Top =0
        Name ="dbo_Personas_Cert"
        Name =""
    End
End
