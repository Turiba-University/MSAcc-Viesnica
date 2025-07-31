Operation =6
Option =0
Begin InputTables
    Name ="dbo_Personas"
    Name ="dbo_viesn_kl_Istabas"
    Name ="Rezervisti_14"
    Name ="qryBrivasVietasAiznVSk_14"
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
    Expression ="Max([dbo_viesn_kl_Istabas].[VietuSk]-IIf(IsNull([AiznVSk]),0,[AiznVSk]))"
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
    Expression ="Sum(IIf([ckods]>0,IIf([Valsts]=\"Latvija\",Null,1),Null))"
    GroupLevel =2
    Alias ="CountOfIstaba"
    Expression ="Count(dbo_viesn_kl_Istabas.Istaba)"
End
Begin Joins
    LeftTable ="dbo_viesn_kl_Istabas"
    RightTable ="Rezervisti_14"
    Expression ="dbo_viesn_kl_Istabas.Istaba = Rezervisti_14.Istaba"
    Flag =2
    LeftTable ="dbo_viesn_kl_Istabas"
    RightTable ="qryBrivasVietasAiznVSk_14"
    Expression ="dbo_viesn_kl_Istabas.Istaba = qryBrivasVietasAiznVSk_14.Istaba"
    Flag =2
    LeftTable ="Rezervisti_14"
    RightTable ="dbo_Personas"
    Expression ="Rezervisti_14.CKods = dbo_Personas.Personas_ID"
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
    Left =61
    Top =152
    Right =1549
    Bottom =807
    Left =-1
    Top =-1
    Right =1477
    Bottom =392
    Left =0
    Top =0
    ColumnsShown =559
    Begin
        Left =451
        Top =9
        Right =694
        Bottom =273
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
    Begin
        Left =265
        Top =243
        Right =451
        Bottom =357
        Top =0
        Name ="dbo_viesn_kl_Istabas"
        Name =""
    End
    Begin
        Left =76
        Top =26
        Right =219
        Bottom =320
        Top =0
        Name ="Rezervisti_14"
        Name =""
    End
    Begin
        Left =1203
        Top =42
        Right =1299
        Bottom =126
        Top =0
        Name ="qryBrivasVietasAiznVSk_14"
        Name =""
    End
End
