Operation =1
Option =0
Where ="((([dbo_Viesn_Rezervesana].[Dzests])=0))"
Begin InputTables
    Name ="dbo_Viesn_Rezervesana"
    Name ="dbo_viesn_kl_Istabas"
End
Begin OutputColumns
    Expression ="[dbo_viesn_kl_Istabas].[Istaba]"
    Alias ="AiznVSk"
    Expression ="Count([dbo_Viesn_Rezervesana].[Istaba])"
End
Begin Joins
    LeftTable ="dbo_Viesn_Rezervesana"
    RightTable ="dbo_viesn_kl_Istabas"
    Expression ="[dbo_Viesn_Rezervesana].[Istaba]=[dbo_viesn_kl_Istabas].[Istaba]"
    Flag =3
End
Begin OrderBy
    Expression ="[dbo_viesn_kl_Istabas].[Istaba]"
    Flag =0
End
Begin Groups
    Expression ="[dbo_viesn_kl_Istabas].[Istaba]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
Begin
End
Begin
    State =0
    Left =141
    Top =6
    Right =1323
    Bottom =848
    Left =-1
    Top =-1
    Right =1171
    Bottom =392
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =21
        Top =69
        Right =207
        Bottom =298
        Top =0
        Name ="dbo_Viesn_Rezervesana"
        Name =""
    End
    Begin
        Left =230
        Top =98
        Right =454
        Bottom =272
        Top =0
        Name ="dbo_viesn_kl_Istabas"
        Name =""
    End
End
