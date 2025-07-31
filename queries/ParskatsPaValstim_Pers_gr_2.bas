Operation =1
Option =0
Begin InputTables
    Name ="ParskatsPaValstim_Pers_gr_1"
End
Begin OutputColumns
    Expression ="[ParskatsPaValstim_Pers_gr_1].[Valsts]"
    Expression ="[ParskatsPaValstim_Pers_gr_1].[Pers_ID]"
    Alias ="MPersSk"
    Expression ="Max([ParskatsPaValstim_Pers_gr_1].[PersSk])"
End
Begin Groups
    Expression ="[ParskatsPaValstim_Pers_gr_1].[Valsts]"
    GroupLevel =0
    Expression ="[ParskatsPaValstim_Pers_gr_1].[Pers_ID]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbMemo "Filter" ="(((Not ParskatsPaValstim_Pers_gr_2.Valsts=\"Latvija\"))) AND ((Valsts=\"Lietuva\""
    "))"
Begin
End
Begin
    State =0
    Left =242
    Top =181
    Right =1348
    Bottom =878
    Left =-1
    Top =-1
    Right =1219
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="ParskatsPaValstim_Pers_gr_1"
        Name =""
    End
End
