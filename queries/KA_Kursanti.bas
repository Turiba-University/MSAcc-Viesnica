Operation =1
Option =0
Where ="(((dbo_kd_Grupas.Beidz)>DateSerial(Year(Date()-30),Month(Date()-30),Day(Date()-3"
    "0))))"
Begin InputTables
    Name ="dbo_kd_Grupas"
    Name ="dbo_kd_Kursanti"
    Name ="dbo_Personas"
End
Begin OutputColumns
    Expression ="dbo_Personas.Personas_ID"
    Alias ="Uzvārds"
    Expression ="dbo_Personas.Uzvards"
    Alias ="Vārds"
    Expression ="dbo_Personas.Vards"
    Alias ="Grupa"
    Expression ="dbo_kd_Grupas.Gr_Nos"
    Alias ="Mācības_sāk"
    Expression ="dbo_kd_Grupas.Sak"
    Alias ="Mācības_beidz"
    Expression ="dbo_kd_Grupas.Beidz"
    Alias ="Statuss"
    Expression ="dbo_kd_Kursanti.Status"
    Expression ="dbo_kd_Kursanti.Stat"
End
Begin Joins
    LeftTable ="dbo_kd_Grupas"
    RightTable ="dbo_kd_Kursanti"
    Expression ="dbo_kd_Grupas.Grupa_ID = dbo_kd_Kursanti.Grupa_ID"
    Flag =1
    LeftTable ="dbo_kd_Kursanti"
    RightTable ="dbo_Personas"
    Expression ="dbo_kd_Kursanti.CKODS = dbo_Personas.Personas_ID"
    Flag =1
End
Begin OrderBy
    Expression ="dbo_Personas.Uzvards"
    Flag =0
    Expression ="dbo_Personas.Vards"
    Flag =0
    Expression ="dbo_kd_Grupas.Gr_Nos"
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
    Left =40
    Top =22
    Right =1330
    Bottom =686
    Left =-1
    Top =-1
    Right =1279
    Bottom =361
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =326
        Top =0
        Name ="dbo_kd_Grupas"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =340
        Top =4
        Name ="dbo_kd_Kursanti"
        Name =""
    End
    Begin
        Left =306
        Top =6
        Right =486
        Bottom =309
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
End
