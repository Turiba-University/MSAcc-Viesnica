Operation =1
Option =0
Begin InputTables
    Name ="VIA_LigIstStat_Maksajumi"
End
Begin OutputColumns
    Expression ="VIA_LigIstStat_Maksajumi.G"
    Expression ="VIA_LigIstStat_Maksajumi.M"
    Expression ="VIA_LigIstStat_Maksajumi.Per"
    Alias ="Kase"
    Expression ="Sum(IIf([MaksVeids]=1,[Total],Null))"
    Alias ="Banka"
    Expression ="Sum(IIf([MaksVeids]=2,[Total],Null))"
    Alias ="CKase"
    Expression ="Sum(IIf([MaksVeids]=3,[Total],Null))"
End
Begin Groups
    Expression ="VIA_LigIstStat_Maksajumi.G"
    GroupLevel =0
    Expression ="VIA_LigIstStat_Maksajumi.M"
    GroupLevel =0
    Expression ="VIA_LigIstStat_Maksajumi.Per"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="Kase"
        dbInteger "ColumnWidth" ="1200"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Banka"
        dbInteger "ColumnWidth" ="1200"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="CKase"
        dbInteger "ColumnWidth" ="1200"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="VIA_LigIstStat_Maksajumi.Per"
        dbInteger "ColumnWidth" ="1200"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =117
    Top =55
    Right =802
    Bottom =549
    Left =-1
    Top =-1
    Right =1356
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =19
        Top =3
        Right =115
        Bottom =117
        Top =4
        Name ="VIA_LigIstStat_Maksajumi"
        Name =""
    End
End
