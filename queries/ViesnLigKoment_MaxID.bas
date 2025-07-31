Operation =1
Option =0
Begin InputTables
    Name ="dbo_viesn_Ligumi_Komentari"
End
Begin OutputColumns
    Expression ="dbo_viesn_Ligumi_Komentari.Lig_Nr"
    Alias ="MaxID"
    Expression ="Max(dbo_viesn_Ligumi_Komentari.Koment_ID)"
End
Begin Groups
    Expression ="dbo_viesn_Ligumi_Komentari.Lig_Nr"
    GroupLevel =0
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
        dbText "Name" ="dbo_viesn_Ligumi_Komentari.Lig_Nr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi_Komentari.Koment_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MaxOfKoment_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MaxID"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1390
    Bottom =801
    Left =-1
    Top =-1
    Right =1358
    Bottom =478
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =67
        Top =101
        Right =327
        Bottom =371
        Top =0
        Name ="dbo_viesn_Ligumi_Komentari"
        Name =""
    End
End
