Operation =1
Option =0
Begin InputTables
    Name ="ParskatsPaValstim_Pers_gr_2"
End
Begin OutputColumns
    Expression ="[ParskatsPaValstim_Pers_gr_2].[Valsts]"
    Alias ="PersSk"
    Expression ="Sum([ParskatsPaValstim_Pers_gr_2].[MPersSk])"
End
Begin Groups
    Expression ="[ParskatsPaValstim_Pers_gr_2].[Valsts]"
    GroupLevel =0
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
    Left =242
    Top =181
    Right =1348
    Bottom =878
    Left =-1
    Top =-1
    Right =1099
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =178
        Top =7
        Right =274
        Bottom =99
        Top =0
        Name ="ParskatsPaValstim_Pers_gr_2"
        Name =""
    End
End
