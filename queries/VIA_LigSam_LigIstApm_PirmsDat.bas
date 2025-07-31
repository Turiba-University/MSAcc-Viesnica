Operation =1
Option =0
Having ="(((dbo_viesn_Maksajumi.Dat_No)<=[forms]![VIA_VietuSkaitsUzdatumu]![DatNo]) AND ("
    "(dbo_viesn_Maksajumi.Dat_Lidz) Is Null Or (dbo_viesn_Maksajumi.Dat_Lidz)>=[forms"
    "]![VIA_VietuSkaitsUzdatumu]![DatLidz]))"
Begin InputTables
    Name ="dbo_viesn_Maksajumi"
End
Begin OutputColumns
    Expression ="dbo_viesn_Maksajumi.Ligums"
    Expression ="dbo_viesn_Maksajumi.Ist_Nr"
    Expression ="dbo_viesn_Maksajumi.Dat_No"
    Expression ="dbo_viesn_Maksajumi.Dat_Lidz"
    Alias ="Kopa"
    Expression ="Sum(dbo_viesn_Maksajumi.Total)"
    Alias ="Sam_Dat"
    Expression ="Min(dbo_viesn_Maksajumi.Last_Dat)"
    Alias ="PirmsPer"
    Expression ="Sum(IIf([Last_Dat]<[forms]![VIA_VietuSkaitsUzdatumu]![DatNo],[Total],0))"
    Alias ="Per"
    Expression ="Sum(IIf(([Last_Dat]>=[forms]![VIA_VietuSkaitsUzdatumu]![DatNo]) And ([Last_Dat]<"
        "=[forms]![VIA_VietuSkaitsUzdatumu]![DatLidz]),[Total],0))"
    Alias ="PecPer"
    Expression ="Sum(IIf([Last_Dat] Is Null Or [Last_Dat]>[forms]![VIA_VietuSkaitsUzdatumu]![DatL"
        "idz],[Total],0))"
End
Begin Groups
    Expression ="dbo_viesn_Maksajumi.Ligums"
    GroupLevel =0
    Expression ="dbo_viesn_Maksajumi.Ist_Nr"
    GroupLevel =0
    Expression ="dbo_viesn_Maksajumi.Dat_No"
    GroupLevel =0
    Expression ="dbo_viesn_Maksajumi.Dat_Lidz"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="dbo_viesn_Maksajumi.Ligums"
        dbInteger "ColumnWidth" ="840"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_Maksajumi.Dat_No"
        dbInteger "ColumnWidth" ="1110"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_Maksajumi.Dat_Lidz"
        dbInteger "ColumnWidth" ="1110"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_Maksajumi.Ist_Nr"
        dbInteger "ColumnWidth" ="675"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Kopa"
        dbInteger "ColumnWidth" ="630"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="PirmsPer"
        dbInteger "ColumnWidth" ="1020"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="PecPer"
        dbInteger "ColumnWidth" ="840"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Per"
        dbInteger "ColumnWidth" ="480"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Sam_Dat"
        dbInteger "ColumnWidth" ="1110"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =133
    Top =183
    Right =1487
    Bottom =746
    Left =-1
    Top =-1
    Right =1495
    Bottom =282
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =269
        Bottom =240
        Top =2
        Name ="dbo_viesn_Maksajumi"
        Name =""
    End
End
