Operation =1
Option =0
Begin InputTables
    Name ="qryBrivasVietas_Sar"
End
Begin OutputColumns
    Expression ="[qryBrivasVietas_Sar].[Istaba]"
    Expression ="[qryBrivasVietas_Sar].[IstabasNr]"
    Expression ="[qryBrivasVietas_Sar].[Vietu skaits]"
    Expression ="[qryBrivasVietas_Sar].[Brīvās vietas]"
    Expression ="[qryBrivasVietas_Sar].[S]"
    Expression ="[qryBrivasVietas_Sar].[V]"
    Alias ="Dzim"
    Expression ="IIf([S]>0 And [V]>0,\"xx\",Null)"
    Expression ="[qryBrivasVietas_Sar].[LV]"
    Expression ="[qryBrivasVietas_Sar].[ne-LV]"
    Alias ="Valsts"
    Expression ="IIf([LV]>0 And [ne-LV]>0,\"xx\",Null)"
    Expression ="[qryBrivasVietas_Sar].[BATStud]"
    Expression ="[qryBrivasVietas_Sar].[BATDarbin]"
    Expression ="[qryBrivasVietas_Sar].[CitsStud]"
    Expression ="[qryBrivasVietas_Sar].[Turists]"
    Expression ="[qryBrivasVietas_Sar].[cits]"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="Dzim"
        dbInteger "ColumnWidth" ="630"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Valsts"
        dbInteger "ColumnWidth" ="630"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =141
    Top =6
    Right =1177
    Bottom =786
    Left =-1
    Top =-1
    Right =1029
    Bottom =392
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =651
        Top =14
        Right =865
        Bottom =233
        Top =0
        Name ="qryBrivasVietas_Sar"
        Name =""
    End
End
