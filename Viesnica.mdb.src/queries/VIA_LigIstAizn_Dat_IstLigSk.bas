Operation =1
Option =0
Begin InputTables
    Name ="VIA_LigIstAizn_Dat_data"
End
Begin OutputColumns
    Expression ="[VIA_LigIstAizn_Dat_data].[Istaba]"
    Alias ="IstLigSk"
    Expression ="Count([VIA_LigIstAizn_Dat_data].[Istaba])"
End
Begin Groups
    Expression ="[VIA_LigIstAizn_Dat_data].[Istaba]"
    GroupLevel =0
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
    Left =192
    Top =174
    Right =1582
    Bottom =487
    Left =-1
    Top =-1
    Right =1383
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =65
        Top =0
        Right =161
        Bottom =114
        Top =0
        Name ="VIA_LigIstAizn_Dat_data"
        Name =""
    End
End
