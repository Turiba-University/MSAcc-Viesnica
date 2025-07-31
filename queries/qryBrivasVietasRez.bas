Operation =1
Option =0
Where ="((([dbo_Viesn_Rezervesana].[Rez_MG])=[forms]![jauns_rezervists]![R_MG]) And (([d"
    "bo_Viesn_Rezervesana].[Dzests])=0))"
Begin InputTables
    Name ="dbo_Viesn_Rezervesana"
End
Begin OutputColumns
    Expression ="[dbo_Viesn_Rezervesana].[Rez_MG]"
    Expression ="[dbo_Viesn_Rezervesana].[Istaba]"
    Expression ="[dbo_Viesn_Rezervesana].[CKods]"
    Expression ="[dbo_Viesn_Rezervesana].[Lig_Dat]"
    Expression ="[dbo_Viesn_Rezervesana].[Piezimes]"
    Expression ="[dbo_Viesn_Rezervesana].[Ievadits]"
    Expression ="[dbo_Viesn_Rezervesana].[Dzests]"
    Expression ="[dbo_Viesn_Rezervesana].[Tips]"
    Expression ="[dbo_Viesn_Rezervesana].[StudStat]"
    Expression ="[dbo_Viesn_Rezervesana].[StudMG]"
    Expression ="[dbo_Viesn_Rezervesana].[Rez_No]"
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
    Left =192
    Top =174
    Right =1551
    Bottom =826
    Left =-1
    Top =-1
    Right =1352
    Bottom =309
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =202
        Top =5
        Right =419
        Bottom =269
        Top =0
        Name ="dbo_Viesn_Rezervesana"
        Name =""
    End
End
