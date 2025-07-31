Operation =3
Name ="tmp_IB_LigBezPID"
Option =0
Where ="((([dbo_viesn_Ligumi].[Pers_ID]) Is Null))"
Begin InputTables
    Name ="dbo_Personas"
    Name ="dbo_viesn_Ligumi"
End
Begin OutputColumns
    Name ="LIGUM_ID"
    Expression ="[dbo_viesn_Ligumi].[LIGUM_ID]"
    Name ="Personas_ID"
    Expression ="[dbo_Personas].[Personas_ID]"
    Name ="Pers_ID"
    Expression ="[dbo_viesn_Ligumi].[Pers_ID]"
    Name ="Ligums"
    Expression ="[dbo_viesn_Ligumi].[Ligums]"
    Name ="Lig_Dat"
    Expression ="[dbo_viesn_Ligumi].[Lig_Dat]"
    Alias ="V_Vards"
    Name ="V_Vards"
    Expression ="[dbo_viesn_Ligumi].[Vards]"
    Alias ="V_Uzvards"
    Name ="V_Uzvards"
    Expression ="[dbo_viesn_Ligumi].[Uzvards]"
    Name ="PK"
    Expression ="[dbo_viesn_Ligumi].[PK]"
    Name ="Pers_Kods"
    Expression ="[dbo_Personas].[Pers_Kods]"
    Alias ="P_Vards"
    Name ="P_Vards"
    Expression ="[dbo_Personas].[Vards]"
    Alias ="P_Uzvards"
    Name ="P_Uzvards"
    Expression ="[dbo_Personas].[Uzvards]"
End
Begin Joins
    LeftTable ="dbo_Personas"
    RightTable ="dbo_viesn_Ligumi"
    Expression ="[dbo_Personas].[Pers_Kods]=[dbo_viesn_Ligumi].[PK]"
    Flag =1
End
Begin OrderBy
    Expression ="[dbo_viesn_Ligumi].[LIGUM_ID]"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "UseTransaction" ="-1"
dbByte "Orientation" ="0"
Begin
End
Begin
    State =0
    Left =9
    Top =126
    Right =1230
    Bottom =551
    Left =-1
    Top =-1
    Right =1214
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =651
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =2
        Name ="dbo_Personas"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =325
        Bottom =113
        Top =3
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
End
