Operation =1
Option =0
Where ="(((dbo_Personas.Vards) Like \"a*\") AND ((dbo_Personas.Uzvards) Like \"kriš*\"))"
Begin InputTables
    Name ="dbo_StStat_StudSar_StudTab"
    Name ="dbo_stl_Stud_LastMGR_Data"
    Name ="dbo_Personas"
End
Begin OutputColumns
    Expression ="dbo_Personas.Vards"
    Expression ="dbo_Personas.Uzvards"
    Expression ="dbo_Personas.Pers_Kods"
    Expression ="dbo_StStat_StudSar_StudTab.StStat"
    Expression ="dbo_stl_Stud_LastMGR_Data.MacGads"
    Expression ="dbo_stl_Stud_LastMGR_Data.Fil_nos"
End
Begin Joins
    LeftTable ="dbo_StStat_StudSar_StudTab"
    RightTable ="dbo_stl_Stud_LastMGR_Data"
    Expression ="dbo_StStat_StudSar_StudTab.Stud_ID = dbo_stl_Stud_LastMGR_Data.Stud_ID"
    Flag =1
    LeftTable ="dbo_StStat_StudSar_StudTab"
    RightTable ="dbo_Personas"
    Expression ="dbo_StStat_StudSar_StudTab.CKods = dbo_Personas.Personas_ID"
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
    Left =134
    Top =64
    Right =1393
    Bottom =711
    Left =-1
    Top =-1
    Right =1248
    Bottom =358
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =194
        Bottom =176
        Top =0
        Name ="dbo_StStat_StudSar_StudTab"
        Name =""
    End
    Begin
        Left =661
        Top =18
        Right =888
        Bottom =276
        Top =3
        Name ="dbo_stl_Stud_LastMGR_Data"
        Name =""
    End
    Begin
        Left =306
        Top =6
        Right =531
        Bottom =247
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
End
