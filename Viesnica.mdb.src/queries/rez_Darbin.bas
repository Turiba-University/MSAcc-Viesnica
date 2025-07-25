Operation =1
Option =0
Begin InputTables
    Name ="dbo_pd_PA_ZK"
    Name ="dbo_Personas"
End
Begin OutputColumns
    Expression ="dbo_Personas.Personas_ID"
    Expression ="dbo_Personas.Vards"
    Expression ="dbo_Personas.Uzvards"
    Expression ="dbo_Personas.Pers_Kods"
End
Begin Joins
    LeftTable ="dbo_pd_PA_ZK"
    RightTable ="dbo_Personas"
    Expression ="dbo_pd_PA_ZK.PersID = dbo_Personas.Personas_ID"
    Flag =1
End
Begin Groups
    Expression ="dbo_Personas.Personas_ID"
    GroupLevel =0
    Expression ="dbo_Personas.Vards"
    GroupLevel =0
    Expression ="dbo_Personas.Uzvards"
    GroupLevel =0
    Expression ="dbo_Personas.Pers_Kods"
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
    Left =221
    Top =203
    Right =1561
    Bottom =681
    Left =-1
    Top =-1
    Right =1329
    Bottom =225
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =221
        Bottom =120
        Top =0
        Name ="dbo_pd_PA_ZK"
        Name =""
    End
    Begin
        Left =285
        Top =1
        Right =442
        Bottom =167
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
End
