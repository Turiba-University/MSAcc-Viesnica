Operation =1
Option =0
Begin InputTables
    Name ="dbo_viesn_kl_Istabas"
    Name ="Rezervisti_17"
    Name ="dbo_Personas"
End
Begin OutputColumns
    Expression ="[dbo_viesn_kl_Istabas].[IstabasNr]"
    Alias ="Vietu skaits"
    Expression ="[dbo_viesn_kl_Istabas].[VietuSk]"
    Alias ="Brīvās vietas"
    Expression ="[dbo_viesn_kl_Istabas].[vietusk]-(select Count([dbo_Viesn_Rezervesana].[Istaba])"
        " from dbo_Viesn_Rezervesana where dbo_Viesn_Rezervesana.Rez_MG=2017 and dbo_Vies"
        "n_Rezervesana.Dzests=0 and [dbo_Viesn_Rezervesana].[Istaba]=dbo_viesn_kl_Istabas"
        ".istaba;)"
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
    LeftTable ="Rezervisti_17"
    RightTable ="dbo_Personas"
    Expression ="[Rezervisti_17].[CKods]=[dbo_Personas].[Personas_ID]"
    Flag =2
    LeftTable ="dbo_viesn_kl_Istabas"
    RightTable ="Rezervisti_17"
    Expression ="[dbo_viesn_kl_Istabas].[Istaba]=[Rezervisti_17].[Istaba]"
    Flag =2
End
Begin OrderBy
    Expression ="[dbo_viesn_kl_Istabas].[IstabasNr]"
    Flag =0
End
Begin Groups
    Expression ="[dbo_viesn_kl_Istabas].[IstabasNr]"
    GroupLevel =0
    Expression ="[dbo_viesn_kl_Istabas].[VietuSk]"
    GroupLevel =0
    Expression ="[dbo_viesn_kl_Istabas].[Istaba]"
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
End
Begin
    State =0
    Left =423
    Top =17
    Right =1591
    Bottom =780
    Left =-1
    Top =-1
    Right =1161
    Bottom =392
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =51
        Top =23
        Right =298
        Bottom =122
        Top =0
        Name ="dbo_viesn_kl_Istabas"
        Name =""
    End
    Begin
        Left =336
        Top =6
        Right =608
        Bottom =120
        Top =0
        Name ="Rezervisti_17"
        Name =""
    End
    Begin
        Left =705
        Top =106
        Right =948
        Bottom =355
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
End
