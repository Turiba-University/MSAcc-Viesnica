Operation =1
Option =0
Begin InputTables
    Name ="rez_IrLigIst"
End
Begin OutputColumns
    Expression ="[rez_IrLigIst].[Pers_ID]"
    Alias ="LigNo"
    Expression ="Min([rez_IrLigIst].[Datums_In])"
    Alias ="LigLidz"
    Expression ="Max([rez_IrLigIst].[Datums_Out])"
    Alias ="Ist"
    Expression ="Min([rez_IrLigIst].[Istaba])"
    Alias ="IstSk"
    Expression ="Count([rez_IrLigIst].[Pers_ID])"
End
Begin Groups
    Expression ="[rez_IrLigIst].[Pers_ID]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="IstSk"
        dbInteger "ColumnWidth" ="1635"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =163
    Top =145
    Right =1561
    Bottom =649
    Left =-1
    Top =-1
    Right =1391
    Bottom =281
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =27
        Top =1
        Right =270
        Bottom =235
        Top =0
        Name ="rez_IrLigIst"
        Name =""
    End
End
