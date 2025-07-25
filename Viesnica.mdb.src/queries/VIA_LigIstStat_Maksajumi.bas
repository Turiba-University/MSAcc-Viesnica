Operation =1
Option =0
Where ="(((Year([Last_Dat]))=Year([forms]![VIA_VietuSkaitsUzdatumu]![DatNo])) And ((Mont"
    "h([Last_Dat]))=Month([forms]![VIA_VietuSkaitsUzdatumu]![DatNo])) And (Not ([dbo_"
    "viesn_Maksajumi].[Total]) Is Null))"
Begin InputTables
    Name ="dbo_viesn_Maksajumi"
End
Begin OutputColumns
    Alias ="G"
    Expression ="Year([Last_Dat])"
    Alias ="M"
    Expression ="Month([Last_Dat])"
    Expression ="[dbo_viesn_Maksajumi].[Last_Dat]"
    Alias ="Per"
    Expression ="IIf([Dat_No]>=[forms]![VIA_VietuSkaitsUzdatumu]![DatNo] And [Dat_Lidz]<=[forms]!"
        "[VIA_VietuSkaitsUzdatumu]![DatLidz],\"Tekošais\",IIf([Dat_Lidz]<=[forms]![VIA_Vi"
        "etuSkaitsUzdatumu]![DatNo],\"ParApm\",IIf([Dat_no]>=[forms]![VIA_VietuSkaitsUzda"
        "tumu]![DatLidz],\"Avansā\")))"
    Expression ="[dbo_viesn_Maksajumi].[Dat_No]"
    Expression ="[dbo_viesn_Maksajumi].[Dat_Lidz]"
    Expression ="[dbo_viesn_Maksajumi].[Total]"
    Expression ="[dbo_viesn_Maksajumi].[MaksVeids]"
    Alias ="MV"
    Expression ="IIf([MaksVeids]=1,\"Kase\",IIf([MaksVeids]=2,\"Banka\",IIf([MaksVeids]=3,\"C kas"
        "e\",Null)))"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="MV"
        dbInteger "ColumnWidth" ="600"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="G"
        dbInteger "ColumnWidth" ="570"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="M"
        dbInteger "ColumnWidth" ="360"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =78
    Top =125
    Right =1445
    Bottom =825
    Left =-1
    Top =-1
    Right =1360
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =248
        Bottom =120
        Top =13
        Name ="dbo_viesn_Maksajumi"
        Name =""
    End
End
