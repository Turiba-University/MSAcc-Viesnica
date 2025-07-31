Operation =1
Option =0
Where ="(((dbo_crl_NrDiapazoni.Nelietot) Is Null Or (dbo_crl_NrDiapazoni.Nelietot)<>-1) "
    "AND ((dbo_crl_NrDiapazoni.Kase)=[forms]![ka_caurlaides_reg]![KID]))"
Begin InputTables
    Name ="dbo_crl_NrDiapazoni"
End
Begin OutputColumns
    Expression ="dbo_crl_NrDiapazoni.NrNo"
    Expression ="dbo_crl_NrDiapazoni.NrLidz"
End
Begin OrderBy
    Expression ="dbo_crl_NrDiapazoni.NrNo"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="2"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="dbo_crl_NrDiapazoni.NrNo"
        dbInteger "ColumnWidth" ="870"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_crl_NrDiapazoni.NrLidz"
        dbInteger "ColumnWidth" ="1410"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =683
    Top =22
    Right =1374
    Bottom =478
    Left =-1
    Top =-1
    Right =684
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =120
        Top =1
        Name ="dbo_crl_NrDiapazoni"
        Name =""
    End
End
