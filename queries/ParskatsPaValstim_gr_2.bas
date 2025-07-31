Operation =1
Option =0
Begin InputTables
    Name ="ParskatsPaValstim_Valstis_gr"
    Name ="ParskatsPaValstim_Naktis_gr_1"
    Name ="ParskatsPaValstim_Pers_gr_3"
End
Begin OutputColumns
    Alias ="PersSk"
    Expression ="Sum([ParskatsPaValstim_Pers_gr_3].[PersSk])"
    Alias ="NaktisPers"
    Expression ="Sum([ParskatsPaValstim_Naktis_gr_1].[NaktisPers])"
End
Begin Joins
    LeftTable ="ParskatsPaValstim_Valstis_gr"
    RightTable ="ParskatsPaValstim_Naktis_gr_1"
    Expression ="[ParskatsPaValstim_Valstis_gr].[Valsts]=[ParskatsPaValstim_Naktis_gr_1].[Valsts]"
    Flag =2
    LeftTable ="ParskatsPaValstim_Valstis_gr"
    RightTable ="ParskatsPaValstim_Pers_gr_3"
    Expression ="[ParskatsPaValstim_Valstis_gr].[Valsts]=[ParskatsPaValstim_Pers_gr_3].[Valsts]"
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
    Left =111
    Top =66
    Right =1095
    Bottom =732
    Left =-1
    Top =-1
    Right =977
    Bottom =252
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =294
        Bottom =218
        Top =0
        Name ="ParskatsPaValstim_Valstis_gr"
        Name =""
    End
    Begin
        Left =503
        Top =68
        Right =726
        Bottom =211
        Top =0
        Name ="ParskatsPaValstim_Naktis_gr_1"
        Name =""
    End
    Begin
        Left =704
        Top =27
        Right =928
        Bottom =158
        Top =0
        Name ="ParskatsPaValstim_Pers_gr_3"
        Name =""
    End
End
