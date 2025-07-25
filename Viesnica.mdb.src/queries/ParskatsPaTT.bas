Operation =1
Option =0
Begin InputTables
    Name ="tmp_ParskatsPaValstim"
End
Begin OutputColumns
    Alias ="TTips"
    Expression ="IIf([Tips]=\"BAT students\",\"BATStud\",IIf([Tips]=\"Cita skola\",\"CitaSkola\","
        "IIf([Tips]=\"Darbinieks\",\"Darbinieks\",IIf([Tips]=\"Viesis\",\"Viesis\",\"Cits"
        "\"))))"
    Alias ="ITips"
    Expression ="IIf([IstNr]<0,1,IIf([IstNr]<199,2,3))"
    Expression ="[tmp_ParskatsPaValstim].[IstNr]"
    Expression ="[tmp_ParskatsPaValstim].[Tips]"
    Expression ="[tmp_ParskatsPaValstim].[Datums]"
    Expression ="[tmp_ParskatsPaValstim].[LigNr]"
    Expression ="[tmp_ParskatsPaValstim].[Valsts]"
    Expression ="[tmp_ParskatsPaValstim].[Pers_ID]"
    Expression ="[tmp_ParskatsPaValstim].[Sk]"
    Expression ="[tmp_ParskatsPaValstim].[SumJamaksa]"
    Expression ="[tmp_ParskatsPaValstim].[SumNoIepr]"
    Expression ="[tmp_ParskatsPaValstim].[MaksVeids]"
    Expression ="[tmp_ParskatsPaValstim].[MaksTermTips]"
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
    Left =38
    Top =46
    Right =1261
    Bottom =610
    Left =-1
    Top =-1
    Right =1216
    Bottom =281
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =178
        Bottom =218
        Top =0
        Name ="tmp_ParskatsPaValstim"
        Name =""
    End
End
