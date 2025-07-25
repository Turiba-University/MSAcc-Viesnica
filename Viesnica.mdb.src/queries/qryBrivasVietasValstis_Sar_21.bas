Operation =6
Option =0
Begin InputTables
    Name ="dbo_viesn_kl_Istabas"
    Name ="Rezervisti_21"
    Name ="qryBrivasVietasAiznVSk_21"
    Name ="dbo_Personas"
End
Begin OutputColumns
    Expression ="dbo_viesn_kl_Istabas.Istaba"
    GroupLevel =2
    Expression ="dbo_viesn_kl_Istabas.IstabasNr"
    GroupLevel =2
    Alias ="Vietu skaits"
    Expression ="dbo_viesn_kl_Istabas.VietuSk"
    GroupLevel =2
    Expression ="dbo_Personas.Valsts"
    GroupLevel =1
    Alias ="CountOfIstaba"
    Expression ="Count(dbo_viesn_kl_Istabas.Istaba)"
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
End
Begin Joins
    LeftTable ="dbo_viesn_kl_Istabas"
    RightTable ="Rezervisti_21"
    Expression ="dbo_viesn_kl_Istabas.Istaba = Rezervisti_21.Istaba"
    Flag =2
    LeftTable ="dbo_viesn_kl_Istabas"
    RightTable ="qryBrivasVietasAiznVSk_21"
    Expression ="dbo_viesn_kl_Istabas.Istaba = qryBrivasVietasAiznVSk_21.Istaba"
    Flag =2
    LeftTable ="Rezervisti_21"
    RightTable ="dbo_Personas"
    Expression ="Rezervisti_21.CKods = dbo_Personas.Personas_ID"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_viesn_kl_Istabas.IstabasNr"
    Flag =0
End
Begin Groups
    Expression ="dbo_viesn_kl_Istabas.Istaba"
    GroupLevel =2
    Expression ="dbo_viesn_kl_Istabas.IstabasNr"
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
dbByte "DefaultView" ="2"
Begin
    Begin
        dbText "Name" ="Istabas.Istaba"
        dbInteger "ColumnWidth" ="720"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="S"
        dbInteger "ColumnWidth" ="600"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="V"
        dbInteger "ColumnWidth" ="600"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="LV"
        dbInteger "ColumnWidth" ="600"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="ne-LV"
        dbInteger "ColumnWidth" ="705"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Azerbaidžāna"
        dbInteger "ColumnWidth" ="1470"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Baltkrievija"
        dbInteger "ColumnWidth" ="1230"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Ēģipte"
        dbInteger "ColumnWidth" ="750"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Gruzija"
        dbInteger "ColumnWidth" ="840"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Indija"
        dbInteger "ColumnWidth" ="690"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Irāna"
        dbInteger "ColumnWidth" ="645"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Koreja"
        dbInteger "ColumnWidth" ="780"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Latvija"
        dbInteger "ColumnWidth" ="795"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Uzbekistāna"
        dbInteger "ColumnWidth" ="1305"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_kl_Istabas.Istaba"
        dbInteger "ColumnWidth" ="0"
        dbBoolean "ColumnHidden" ="-1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Vietu skaits"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Brīvās vietas"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="PIVOT"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="<>"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_kl_Istabas.IstabasNr"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =57
    Top =19
    Right =1545
    Bottom =674
    Left =-1
    Top =-1
    Right =1465
    Bottom =242
    Left =0
    Top =0
    ColumnsShown =559
    Begin
        Left =265
        Top =243
        Right =451
        Bottom =350
        Top =0
        Name ="dbo_viesn_kl_Istabas"
        Name =""
    End
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="Rezervisti_21"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =384
        Bottom =156
        Top =0
        Name ="qryBrivasVietasAiznVSk_21"
        Name =""
    End
    Begin
        Left =657
        Top =14
        Right =900
        Bottom =271
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
End
