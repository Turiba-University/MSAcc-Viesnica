Operation =1
Option =0
Where ="((([dbo_Viesn_Rezervesana].[Rez_MG])=[forms]![rezervisti]![r_mg] Or ([dbo_Viesn_"
    "Rezervesana].[Rez_MG])=[forms]![rezervisti]![r_mg]))"
Having ="(((dbo_Viesn_Rezervesana.Dzests)=-1))"
Begin InputTables
    Name ="dbo_Viesn_Rezervesana"
    Name ="dbo_Personas"
    Name ="StStat_iss2"
    Name ="rez_IrLigIst_PID"
End
Begin OutputColumns
    Expression ="[dbo_Viesn_Rezervesana].[V_Rez_RID]"
    Expression ="[dbo_Viesn_Rezervesana].[Rez_MG]"
    Expression ="[dbo_Viesn_Rezervesana].[Istaba]"
    Expression ="[dbo_Viesn_Rezervesana].[CKods]"
    Expression ="[dbo_Personas].[Vards]"
    Expression ="[dbo_Personas].[Uzvards]"
    Expression ="[dbo_Personas].[Pers_Kods]"
    Expression ="[dbo_Personas].[Valsts]"
    Expression ="[dbo_Personas].[Dzimums]"
    Expression ="[StStat_iss2].[StStat]"
    Expression ="[dbo_Personas].[Tel1]"
    Expression ="[dbo_Viesn_Rezervesana].[Lig_Dat]"
    Expression ="[dbo_Viesn_Rezervesana].[Ievadits]"
    Expression ="[dbo_Viesn_Rezervesana].[Piezimes]"
    Expression ="[dbo_Viesn_Rezervesana].[Dzests]"
    Expression ="[StStat_iss2].[StStat_Nr]"
    Expression ="[dbo_Viesn_Rezervesana].[Tips]"
    Expression ="[dbo_Viesn_Rezervesana].[StudStat]"
    Expression ="[dbo_Viesn_Rezervesana].[StudMG]"
    Expression ="[dbo_Viesn_Rezervesana].[Rez_No]"
    Expression ="[rez_IrLigIst_PID].[LigNo]"
    Expression ="[rez_IrLigIst_PID].[LigLidz]"
    Expression ="[rez_IrLigIst_PID].[Ist]"
    Expression ="[rez_IrLigIst_PID].[IstSk]"
    Expression ="[StStat_iss2].[MG]"
End
Begin Joins
    LeftTable ="dbo_Viesn_Rezervesana"
    RightTable ="dbo_Personas"
    Expression ="[dbo_Viesn_Rezervesana].[CKods]=[dbo_Personas].[Personas_ID]"
    Flag =2
    LeftTable ="dbo_Viesn_Rezervesana"
    RightTable ="StStat_iss2"
    Expression ="[dbo_Viesn_Rezervesana].[CKods]=[StStat_iss2].[CKods]"
    Flag =2
    LeftTable ="dbo_Viesn_Rezervesana"
    RightTable ="rez_IrLigIst_PID"
    Expression ="[dbo_Viesn_Rezervesana].[CKods]=[rez_IrLigIst_PID].[Pers_ID]"
    Flag =2
End
Begin OrderBy
    Expression ="[dbo_Viesn_Rezervesana].[Istaba]"
    Flag =0
    Expression ="[dbo_Personas].[Vards]"
    Flag =0
    Expression ="[dbo_Personas].[Uzvards]"
    Flag =0
End
Begin Groups
    Expression ="[dbo_Viesn_Rezervesana].[V_Rez_RID]"
    GroupLevel =0
    Expression ="[dbo_Viesn_Rezervesana].[Rez_MG]"
    GroupLevel =0
    Expression ="[dbo_Viesn_Rezervesana].[Istaba]"
    GroupLevel =0
    Expression ="[dbo_Viesn_Rezervesana].[CKods]"
    GroupLevel =0
    Expression ="[dbo_Personas].[Vards]"
    GroupLevel =0
    Expression ="[dbo_Personas].[Uzvards]"
    GroupLevel =0
    Expression ="[dbo_Personas].[Pers_Kods]"
    GroupLevel =0
    Expression ="[dbo_Personas].[Valsts]"
    GroupLevel =0
    Expression ="[dbo_Personas].[Dzimums]"
    GroupLevel =0
    Expression ="[StStat_iss2].[StStat]"
    GroupLevel =0
    Expression ="[dbo_Personas].[Tel1]"
    GroupLevel =0
    Expression ="[dbo_Viesn_Rezervesana].[Lig_Dat]"
    GroupLevel =0
    Expression ="[dbo_Viesn_Rezervesana].[Ievadits]"
    GroupLevel =0
    Expression ="[dbo_Viesn_Rezervesana].[Piezimes]"
    GroupLevel =0
    Expression ="[dbo_Viesn_Rezervesana].[Dzests]"
    GroupLevel =0
    Expression ="[StStat_iss2].[StStat_Nr]"
    GroupLevel =0
    Expression ="[dbo_Viesn_Rezervesana].[Tips]"
    GroupLevel =0
    Expression ="[dbo_Viesn_Rezervesana].[StudStat]"
    GroupLevel =0
    Expression ="[dbo_Viesn_Rezervesana].[StudMG]"
    GroupLevel =0
    Expression ="[dbo_Viesn_Rezervesana].[Rez_No]"
    GroupLevel =0
    Expression ="[rez_IrLigIst_PID].[LigNo]"
    GroupLevel =0
    Expression ="[rez_IrLigIst_PID].[LigLidz]"
    GroupLevel =0
    Expression ="[rez_IrLigIst_PID].[Ist]"
    GroupLevel =0
    Expression ="[rez_IrLigIst_PID].[IstSk]"
    GroupLevel =0
    Expression ="[StStat_iss2].[MG]"
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
    Left =33
    Top =10
    Right =1544
    Bottom =726
    Left =-1
    Top =-1
    Right =1504
    Bottom =403
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =330
        Top =0
        Name ="dbo_Viesn_Rezervesana"
        Name =""
    End
    Begin
        Left =168
        Top =52
        Right =264
        Bottom =151
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
    Begin
        Left =330
        Top =6
        Right =426
        Bottom =105
        Top =0
        Name ="StStat_iss2"
        Name =""
    End
    Begin
        Left =464
        Top =6
        Right =560
        Bottom =105
        Top =0
        Name ="rez_IrLigIst_PID"
        Name =""
    End
End
