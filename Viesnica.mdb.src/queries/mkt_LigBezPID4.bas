Operation =4
Option =0
Begin InputTables
    Name ="tmp_IB_LigBezPID"
    Name ="dbo_viesn_Ligumi"
End
Begin OutputColumns
    Name ="dbo_viesn_Ligumi.Pers_ID"
    Expression ="[Personas_ID]"
End
Begin Joins
    LeftTable ="tmp_IB_LigBezPID"
    RightTable ="dbo_viesn_Ligumi"
    Expression ="[tmp_IB_LigBezPID].[LIGUM_ID]=[dbo_viesn_Ligumi].[LIGUM_ID]"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbBoolean "UseTransaction" ="0"
dbBoolean "FailOnError" ="0"
Begin
End
Begin
    State =0
    Left =106
    Top =88
    Right =1231
    Bottom =393
    Left =-1
    Top =-1
    Right =1118
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =579
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =7
        Name ="tmp_IB_LigBezPID"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =5
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
End
