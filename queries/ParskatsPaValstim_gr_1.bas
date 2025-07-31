Operation =1
Option =0
Begin InputTables
    Name ="ParskatsPaValstim_Valstis_gr"
    Name ="ParskatsPaValstim_Naktis_gr_1"
    Name ="ParskatsPaValstim_Pers_gr_3"
End
Begin OutputColumns
    Expression ="ParskatsPaValstim_Valstis_gr.Valsts"
    Expression ="ParskatsPaValstim_Pers_gr_3.PersSk"
    Expression ="ParskatsPaValstim_Naktis_gr_1.NaktisPers"
End
Begin Joins
    LeftTable ="ParskatsPaValstim_Valstis_gr"
    RightTable ="ParskatsPaValstim_Naktis_gr_1"
    Expression ="ParskatsPaValstim_Valstis_gr.Valsts = ParskatsPaValstim_Naktis_gr_1.Valsts"
    Flag =2
    LeftTable ="ParskatsPaValstim_Valstis_gr"
    RightTable ="ParskatsPaValstim_Pers_gr_3"
    Expression ="ParskatsPaValstim_Valstis_gr.Valsts = ParskatsPaValstim_Pers_gr_3.Valsts"
    Flag =2
End
Begin OrderBy
    Expression ="ParskatsPaValstim_Valstis_gr.Valsts"
    Flag =0
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
    Right =615
    Bottom =620
    Left =-1
    Top =-1
    Right =1241
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
        Name ="ParskatsPaValstim_Valstis_gr"
        Name =""
    End
    Begin
        Left =180
        Top =31
        Right =276
        Bottom =108
        Top =0
        Name ="ParskatsPaValstim_Naktis_gr_1"
        Name =""
    End
    Begin
        Left =306
        Top =6
        Right =402
        Bottom =83
        Top =0
        Name ="ParskatsPaValstim_Pers_gr_3"
        Name =""
    End
End
