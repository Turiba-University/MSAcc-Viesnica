Operation =1
Option =0
Begin InputTables
    Name ="Rezervisti_19_nenosl"
    Name ="dbo_viesn_kl_Istabas"
End
Begin OutputColumns
    Expression ="Rezervisti_19_nenosl.V_Rez_RID"
    Expression ="Rezervisti_19_nenosl.Istaba"
    Expression ="dbo_viesn_kl_Istabas.IstabasNr"
    Expression ="Rezervisti_19_nenosl.Vards"
    Expression ="Rezervisti_19_nenosl.Uzvards"
    Expression ="Rezervisti_19_nenosl.DzDatums"
    Alias ="Dz"
    Expression ="Rezervisti_19_nenosl.Dzimums"
    Expression ="Rezervisti_19_nenosl.Valsts"
    Expression ="Rezervisti_19_nenosl.Tel1"
    Expression ="Rezervisti_19_nenosl.Epasts"
    Expression ="Rezervisti_19_nenosl.Piezimes"
    Expression ="Rezervisti_19_nenosl.Ievadits"
    Expression ="Rezervisti_19_nenosl.Rez_MG"
    Alias ="IrLig"
    Expression ="Null"
End
Begin Joins
    LeftTable ="Rezervisti_19_nenosl"
    RightTable ="dbo_viesn_kl_Istabas"
    Expression ="Rezervisti_19_nenosl.Istaba = dbo_viesn_kl_Istabas.Istaba"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="Rezervisti_19_nenosl.Istaba"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="975"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Rezervisti_19_nenosl.Ievadits"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Rezervisti_19_nenosl.DzDatums"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_kl_Istabas.IstabasNr"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1290"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Rezervisti_19_nenosl.Rez_MG"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Rezervisti_19_nenosl.Epasts"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Rezervisti_19_nenosl.Valsts"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Rezervisti_19_nenosl.Piezimes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Rezervisti_19_nenosl.Tel1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Dz"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="645"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Rezervisti_19_nenosl.Vards"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Rezervisti_19_nenosl.Uzvards"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Rezervisti_19_nenosl.V_Rez_RID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="IrLig"
        dbInteger "ColumnWidth" ="900"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =21
    Top =40
    Right =1365
    Bottom =754
    Left =-1
    Top =-1
    Right =1312
    Bottom =226
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =147
        Top =5
        Right =351
        Bottom =261
        Top =0
        Name ="Rezervisti_19_nenosl"
        Name =""
    End
    Begin
        Left =451
        Top =30
        Right =595
        Bottom =174
        Top =0
        Name ="dbo_viesn_kl_Istabas"
        Name =""
    End
End
