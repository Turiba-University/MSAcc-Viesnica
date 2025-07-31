Operation =1
Option =0
Begin InputTables
    Name ="VIA_LigSam_IstIrLig"
    Name ="VIA_LigSam_LigIstApm_PirmsDat"
End
Begin OutputColumns
    Expression ="[VIA_LigSam_IstIrLig].[Lig_Dat]"
    Expression ="[VIA_LigSam_IstIrLig].[Uzvards]"
    Expression ="[VIA_LigSam_IstIrLig].[Vards]"
    Expression ="[VIA_LigSam_IstIrLig].[Ligums]"
    Expression ="[VIA_LigSam_IstIrLig].[Ist_Nr]"
    Expression ="[VIA_LigSam_IstIrLig].[Datums_In]"
    Expression ="[VIA_LigSam_IstIrLig].[Datums_Out]"
    Expression ="[VIA_LigSam_LigIstApm_PirmsDat].[Dat_No]"
    Expression ="[VIA_LigSam_LigIstApm_PirmsDat].[Dat_Lidz]"
    Expression ="[VIA_LigSam_LigIstApm_PirmsDat].[Kopa]"
    Expression ="[VIA_LigSam_LigIstApm_PirmsDat].[Sam_Dat]"
    Expression ="[VIA_LigSam_LigIstApm_PirmsDat].[PirmsPer]"
    Expression ="[VIA_LigSam_LigIstApm_PirmsDat].[Per]"
    Expression ="[VIA_LigSam_LigIstApm_PirmsDat].[PecPer]"
End
Begin Joins
    LeftTable ="VIA_LigSam_IstIrLig"
    RightTable ="VIA_LigSam_LigIstApm_PirmsDat"
    Expression ="[VIA_LigSam_IstIrLig].[Ist_Nr]=[VIA_LigSam_LigIstApm_PirmsDat].[Ist_Nr]"
    Flag =2
    LeftTable ="VIA_LigSam_IstIrLig"
    RightTable ="VIA_LigSam_LigIstApm_PirmsDat"
    Expression ="[VIA_LigSam_IstIrLig].[Ligums]=[VIA_LigSam_LigIstApm_PirmsDat].[Ligums]"
    Flag =2
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
    Left =6
    Top =67
    Right =1099
    Bottom =888
    Left =-1
    Top =-1
    Right =1086
    Bottom =247
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =203
        Top =0
        Name ="VIA_LigSam_LigIstApm_PirmsDat"
        Name =""
    End
    Begin
        Left =30
        Top =0
        Right =126
        Bottom =189
        Top =0
        Name ="VIA_LigSam_IstIrLig"
        Name =""
    End
End
