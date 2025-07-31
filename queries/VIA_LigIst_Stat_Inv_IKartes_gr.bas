Operation =1
Option =0
Begin InputTables
    Name ="VIA_LigIst_Stat_Inv_IKartes"
End
Begin OutputColumns
    Expression ="VIA_LigIst_Stat_Inv_IKartes.Ligums"
    Alias ="KSk"
    Expression ="Count(VIA_LigIst_Stat_Inv_IKartes.Ligums)"
    Alias ="KNr"
    Expression ="Max(VIA_LigIst_Stat_Inv_IKartes.InvComment)"
End
Begin Groups
    Expression ="VIA_LigIst_Stat_Inv_IKartes.Ligums"
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
        dbText "Name" ="VIA_LigIst_Stat_Inv_IKartes.Ligums"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="KSk"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="KNr"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =6
    Top =293
    Right =1337
    Bottom =842
    Left =-1
    Top =-1
    Right =1304
    Bottom =251
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =101
        Top =28
        Right =245
        Bottom =172
        Top =0
        Name ="VIA_LigIst_Stat_Inv_IKartes"
        Name =""
    End
End
