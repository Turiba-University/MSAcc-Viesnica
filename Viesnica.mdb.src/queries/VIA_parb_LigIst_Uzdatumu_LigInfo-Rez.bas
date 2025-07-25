Operation =1
Option =0
Begin InputTables
    Name ="Rezervisti_19_nenosl"
    Name ="VIA_parb_LigIst_Uzdatumu_LigInfo"
End
Begin OutputColumns
    Expression ="VIA_parb_LigIst_Uzdatumu_LigInfo.LIGUM_ID"
    Expression ="VIA_parb_LigIst_Uzdatumu_LigInfo.Ist_Nr"
    Expression ="VIA_parb_LigIst_Uzdatumu_LigInfo.IstabasNr"
    Expression ="VIA_parb_LigIst_Uzdatumu_LigInfo.Ligums"
    Expression ="VIA_parb_LigIst_Uzdatumu_LigInfo.Lig_Dat"
    Expression ="VIA_parb_LigIst_Uzdatumu_LigInfo.Pers_ID"
    Expression ="VIA_parb_LigIst_Uzdatumu_LigInfo.Vards"
    Expression ="VIA_parb_LigIst_Uzdatumu_LigInfo.Uzvards"
    Expression ="Rezervisti_19_nenosl.V_Rez_RID"
End
Begin Joins
    LeftTable ="VIA_parb_LigIst_Uzdatumu_LigInfo"
    RightTable ="Rezervisti_19_nenosl"
    Expression ="VIA_parb_LigIst_Uzdatumu_LigInfo.Ist_Nr = Rezervisti_19_nenosl.Istaba"
    Flag =1
    LeftTable ="VIA_parb_LigIst_Uzdatumu_LigInfo"
    RightTable ="Rezervisti_19_nenosl"
    Expression ="VIA_parb_LigIst_Uzdatumu_LigInfo.Pers_ID = Rezervisti_19_nenosl.CKods"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbMemo "OrderBy" ="[VIA_parb_LigIst_Uzdatumu_LigInfo-Rez].[Ist_Nr]"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="VIA_parb_LigIst_Uzdatumu_LigInfo.Uzvards"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="3045"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="VIA_parb_LigIst_Uzdatumu_LigInfo.Ligums"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Rezervisti_19_nenosl.V_Rez_RID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_parb_LigIst_Uzdatumu_LigInfo.LIGUM_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_parb_LigIst_Uzdatumu_LigInfo.Lig_Dat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_parb_LigIst_Uzdatumu_LigInfo.Ist_Nr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_parb_LigIst_Uzdatumu_LigInfo.Pers_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_parb_LigIst_Uzdatumu_LigInfo.IstabasNr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="VIA_parb_LigIst_Uzdatumu_LigInfo.Vards"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="2895"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =52
    Top =629
    Right =1364
    Bottom =827
    Left =-1
    Top =-1
    Right =1280
    Bottom =134
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =359
        Top =32
        Right =601
        Bottom =243
        Top =0
        Name ="Rezervisti_19_nenosl"
        Name =""
    End
    Begin
        Left =110
        Top =62
        Right =254
        Bottom =261
        Top =0
        Name ="VIA_parb_LigIst_Uzdatumu_LigInfo"
        Name =""
    End
End
