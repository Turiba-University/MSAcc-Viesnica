Operation =6
Option =0
Where ="(((dbo_Viesn_Rezervesana.Dzests)=0))"
Begin InputTables
    Name ="dbo_Personas"
    Name ="qryBrivasVietasAiznVSk"
    Name ="dbo_viesn_kl_Istabas"
    Name ="dbo_Viesn_Rezervesana"
End
Begin OutputColumns
    Expression ="dbo_viesn_kl_Istabas.Istaba"
    GroupLevel =2
    Alias ="Vietu skaits"
    Expression ="dbo_viesn_kl_Istabas.VietuSk"
    GroupLevel =2
    Expression ="dbo_Personas.Valsts"
    GroupLevel =1
    Alias ="Brīvās vietas"
    Expression ="Max([dbo_viesn_kl_Istabas].[VietuSk]-[AiznVSk])"
    GroupLevel =2
    Alias ="S"
    Expression ="Sum(IIf([Dzimums]=\"S\",1,Null))"
    GroupLevel =2
    Alias ="V"
    Expression ="Sum(IIf([Dzimums]=\"V\",1,Null))"
    GroupLevel =2
    Alias ="LV"
    Expression ="Sum(IIf([Valsts]=\"Latvija\",1,Null))"
    GroupLevel =2
    Alias ="ne-LV"
    Expression ="Sum(IIf([Valsts]=\"Latvija\",Null,1))"
    GroupLevel =2
    Alias ="CountOfIstaba"
    Expression ="Count(dbo_viesn_kl_Istabas.Istaba)"
End
Begin Joins
    LeftTable ="qryBrivasVietasAiznVSk"
    RightTable ="dbo_viesn_kl_Istabas"
    Expression ="qryBrivasVietasAiznVSk.Istaba = dbo_viesn_kl_Istabas.Istaba"
    Flag =3
    LeftTable ="dbo_viesn_kl_Istabas"
    RightTable ="dbo_Viesn_Rezervesana"
    Expression ="dbo_viesn_kl_Istabas.Istaba = dbo_Viesn_Rezervesana.Istaba"
    Flag =2
    LeftTable ="dbo_Viesn_Rezervesana"
    RightTable ="dbo_Personas"
    Expression ="dbo_Viesn_Rezervesana.CKods = dbo_Personas.Personas_ID"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_viesn_kl_Istabas.Istaba"
    Flag =0
End
Begin Groups
    Expression ="dbo_viesn_kl_Istabas.Istaba"
    GroupLevel =2
    Expression ="dbo_viesn_kl_Istabas.VietuSk"
    GroupLevel =2
    Expression ="dbo_Personas.Valsts"
    GroupLevel =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="Istabas.Istaba"
        dbInteger "ColumnWidth" ="720"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="S"
        dbInteger "ColumnWidth" ="600"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="V"
        dbInteger "ColumnWidth" ="600"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="LV"
        dbInteger "ColumnWidth" ="600"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="ne-LV"
        dbInteger "ColumnWidth" ="705"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Azerbaidžāna"
        dbInteger "ColumnWidth" ="1470"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Baltkrievija"
        dbInteger "ColumnWidth" ="1230"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Ēģipte"
        dbInteger "ColumnWidth" ="750"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Gruzija"
        dbInteger "ColumnWidth" ="840"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Indija"
        dbInteger "ColumnWidth" ="690"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Irāna"
        dbInteger "ColumnWidth" ="645"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Koreja"
        dbInteger "ColumnWidth" ="780"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Latvija"
        dbInteger "ColumnWidth" ="795"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Uzbekistāna"
        dbInteger "ColumnWidth" ="1305"
        dbBoolean "ColumnHidden" ="0"
    End
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
    ColumnsShown =559
    Begin
        Left =352
        Top =6
        Right =595
        Bottom =278
        Top =9
        Name ="dbo_Personas"
        Name =""
    End
    Begin
        Left =690
        Top =56
        Right =904
        Bottom =195
        Top =0
        Name ="qryBrivasVietasAiznVSk"
        Name =""
    End
    Begin
        Left =240
        Top =153
        Right =336
        Bottom =260
        Top =0
        Name ="dbo_viesn_kl_Istabas"
        Name =""
    End
    Begin
        Left =26
        Top =45
        Right =215
        Bottom =291
        Top =0
        Name ="dbo_Viesn_Rezervesana"
        Name =""
    End
End
