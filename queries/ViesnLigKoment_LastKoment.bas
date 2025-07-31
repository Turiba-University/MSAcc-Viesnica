Operation =1
Option =0
Begin InputTables
    Name ="dbo_viesn_Ligumi_Komentari"
    Name ="ViesnLigKoment_MaxID"
End
Begin OutputColumns
    Expression ="dbo_viesn_Ligumi_Komentari.Lig_Nr"
    Expression ="dbo_viesn_Ligumi_Komentari.Komentars"
End
Begin Joins
    LeftTable ="dbo_viesn_Ligumi_Komentari"
    RightTable ="ViesnLigKoment_MaxID"
    Expression ="dbo_viesn_Ligumi_Komentari.Koment_ID = ViesnLigKoment_MaxID.MaxID"
    Flag =1
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
        dbText "Name" ="dbo_viesn_Ligumi_Komentari.Komentars"
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
    ColumnsShown =539
    Begin
        Left =102
        Top =35
        Right =309
        Bottom =329
        Top =0
        Name ="dbo_viesn_Ligumi_Komentari"
        Name =""
    End
    Begin
        Left =421
        Top =56
        Right =565
        Bottom =200
        Top =0
        Name ="ViesnLigKoment_MaxID"
        Name =""
    End
End
