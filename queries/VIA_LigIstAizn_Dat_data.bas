Operation =1
Option =0
Begin InputTables
    Name ="VIA_LigIstAizn_Dat"
End
Begin OutputColumns
    Expression ="[VIA_LigIstAizn_Dat].[Ligums]"
    Expression ="[VIA_LigIstAizn_Dat].[Istaba]"
    Expression ="[VIA_LigIstAizn_Dat].[LIDat_No]"
    Expression ="[VIA_LigIstAizn_Dat].[LIDat_Lidz]"
    Alias ="Stat"
    Expression ="IIf([LIDat_No]=[forms]![VIA_VietuSkaitsUzdatumu]![Stat_Datums],\"ievācas\",IIf(["
        "LIDat_Lidz]=[forms]![VIA_VietuSkaitsUzdatumu]![Stat_Datums],\"izvācas\",\"dzīvo\""
        "))"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
End
Begin
    State =0
    Left =151
    Top =372
    Right =1199
    Bottom =812
    Left =-1
    Top =-1
    Right =1041
    Bottom =238
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="VIA_LigIstAizn_Dat"
        Name =""
    End
End
