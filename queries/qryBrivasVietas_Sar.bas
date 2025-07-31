Operation =1
Option =0
Begin InputTables
    Name ="qryBrivasVietasRez"
    Name ="dbo_viesn_kl_Istabas"
    Name ="dbo_Personas"
End
Begin OutputColumns
    Expression ="[qryBrivasVietasRez].[Rez_MG]"
    Expression ="[dbo_viesn_kl_Istabas].[Istaba]"
    Expression ="[dbo_viesn_kl_Istabas].[IstabasNr]"
    Alias ="Vietu skaits"
    Expression ="[dbo_viesn_kl_Istabas].[VietuSk]"
    Alias ="Brīvās vietas"
    Expression ="[dbo_viesn_kl_Istabas].[vietusk]-(select Count([dbo_Viesn_Rezervesana].[Istaba])"
        " from dbo_Viesn_Rezervesana where dbo_Viesn_Rezervesana.Dzests=0  and dbo_Viesn_"
        "Rezervesana.rez_mg=[forms]![jauns_rezervists]![R_MG] and [dbo_Viesn_Rezervesana]"
        ".[Istaba]=dbo_viesn_kl_Istabas.istaba;)"
    Alias ="S"
    Expression ="Sum(IIf([Dzimums]=\"S\",1,Null))"
    Alias ="V"
    Expression ="Sum(IIf([Dzimums]=\"V\",1,Null))"
    Alias ="LV"
    Expression ="Sum(IIf([Valsts]=\"Latvija\",1,Null))"
    Alias ="ne-LV"
    Expression ="Sum(IIf([Valsts]=\"Latvija\",Null,IIf(IsNull([CKods]),Null,1)))"
    Alias ="BATStud"
    Expression ="Sum(IIf([dbo_Viesn_Rezervesana].[Tips]=\"BAT students\",1,Null))"
    Alias ="BATDarbin"
    Expression ="Sum(IIf([dbo_Viesn_Rezervesana].[Tips]=\"BAT darbinieks\",1,Null))"
    Alias ="CitsStud"
    Expression ="Sum(IIf([dbo_Viesn_Rezervesana].[Tips]=\"Cita augstskola\",1,Null))"
    Alias ="Turists"
    Expression ="Sum(IIf([dbo_Viesn_Rezervesana].[Tips]=\"Tūrists\",1,Null))"
    Alias ="cits"
    Expression ="Sum(IIf(IsNull([dbo_Viesn_Rezervesana].[Tips]),IIf(IsNull([CKods]),Null,1),Null)"
        ")"
End
Begin Joins
    LeftTable ="qryBrivasVietasRez"
    RightTable ="dbo_viesn_kl_Istabas"
    Expression ="[qryBrivasVietasRez].[Istaba]=[dbo_viesn_kl_Istabas].[Istaba]"
    Flag =3
    LeftTable ="qryBrivasVietasRez"
    RightTable ="dbo_Personas"
    Expression ="[qryBrivasVietasRez].[CKods]=[dbo_Personas].[Personas_ID]"
    Flag =2
End
Begin OrderBy
    Expression ="[dbo_viesn_kl_Istabas].[Istaba]"
    Flag =0
End
Begin Groups
    Expression ="[qryBrivasVietasRez].[Rez_MG]"
    GroupLevel =0
    Expression ="[dbo_viesn_kl_Istabas].[Istaba]"
    GroupLevel =0
    Expression ="[dbo_viesn_kl_Istabas].[IstabasNr]"
    GroupLevel =0
    Expression ="[dbo_viesn_kl_Istabas].[VietuSk]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
Begin
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
        dbText "Name" ="BAtStud"
        dbInteger "ColumnWidth" ="975"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="BATDarbin"
        dbInteger "ColumnWidth" ="1170"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="CitsStud"
        dbInteger "ColumnWidth" ="930"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Turists"
        dbInteger "ColumnWidth" ="765"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="cits"
        dbInteger "ColumnWidth" ="765"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_kl_Istabas.Istaba"
        dbInteger "ColumnWidth" ="720"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =7
    Top =117
    Right =1504
    Bottom =880
    Left =-1
    Top =-1
    Right =1486
    Bottom =392
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =28
        Top =23
        Right =203
        Bottom =257
        Top =0
        Name ="qryBrivasVietasRez"
        Name =""
    End
    Begin
        Left =633
        Top =6
        Right =798
        Bottom =135
        Top =0
        Name ="dbo_viesn_kl_Istabas"
        Name =""
    End
    Begin
        Left =352
        Top =6
        Right =595
        Bottom =270
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
End
