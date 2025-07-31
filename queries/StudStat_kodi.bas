Operation =1
Option =0
Where ="(((dbo_kl_Kodi.Tips)=3))"
Begin InputTables
    Name ="dbo_kl_Kodi"
End
Begin OutputColumns
    Expression ="dbo_kl_Kodi.Kods"
    Expression ="dbo_kl_Kodi.Koda_Atsifr"
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
        dbText "Name" ="dbo_kl_Kodi.Kods"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_kl_Kodi.Koda_Atsifr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_kl_Kodi.Tips"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =108
    Top =264
    Right =1362
    Bottom =782
    Left =-1
    Top =-1
    Right =1222
    Bottom =271
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =117
        Top =59
        Right =261
        Bottom =203
        Top =0
        Name ="dbo_kl_Kodi"
        Name =""
    End
End
