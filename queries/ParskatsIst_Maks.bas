Operation =1
Option =0
Begin InputTables
    Name ="tmp_ParskatsPaValstim"
End
Begin OutputColumns
    Expression ="[tmp_ParskatsPaValstim].[IstNr]"
    Alias ="GN"
    Expression ="Sum([tmp_ParskatsPaValstim].[Sk])"
    Alias ="Jamaksa"
    Expression ="Sum([tmp_ParskatsPaValstim].[SumJamaksa])"
    Alias ="Samaksats"
    Expression ="Sum(IIf([SumNoIepr]=0,[SumJamaksa],Null))"
    Alias ="Parads"
    Expression ="Sum(IIf([SumNoIepr]=-1,[SumJamaksa],Null))"
    Alias ="SamKase"
    Expression ="Sum(IIf([MaksVeids]=1 And [SumNoIepr]=0,[SumJamaksa],Null))"
    Alias ="SamCKase"
    Expression ="Sum(IIf([MaksVeids]=3 And [SumNoIepr]=0,[SumJamaksa],Null))"
    Alias ="SamBanka"
    Expression ="Sum(IIf([MaksVeids]=2 And [SumNoIepr]=0,[SumJamaksa],Null))"
    Alias ="SamCits"
    Expression ="Sum(IIf(IsNull([MaksVeids]) And [SumNoIepr]=0,[SumJamaksa],Null))"
    Alias ="SamLatvija"
    Expression ="Sum(IIf([Valsts]=\"Latvija\" And [SumNoIepr]=0,[SumJamaksa],Null))"
    Alias ="SamArvalstn"
    Expression ="Sum(IIf(Not ([Valsts]=\"Latvija\") And [SumNoIepr]=0,[SumJamaksa],Null))"
    Alias ="SamIeprPer"
    Expression ="Sum(IIf([MaksTermTips]=1 And [SumNoIepr]=0,[SumJamaksa],Null))"
    Alias ="SamPer"
    Expression ="Sum(IIf([MaksTermTips]=2 And [SumNoIepr]=0,[SumJamaksa],Null))"
    Alias ="SamNakPer"
    Expression ="Sum(IIf([MaksTermTips]=3 And [SumNoIepr]=0,[SumJamaksa],Null))"
End
Begin Groups
    Expression ="[tmp_ParskatsPaValstim].[IstNr]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="tmp_ParskatsPaValstim.IstNr"
        dbInteger "ColumnWidth" ="570"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="[tmp_ParskatsPaValstim].[IstNr]"
        dbInteger "ColumnWidth" ="570"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Jamaksa"
        dbInteger "ColumnWidth" ="990"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Standard"
        dbByte "DecimalPlaces" ="2"
    End
    Begin
        dbText "Name" ="Samaksats"
        dbInteger "ColumnWidth" ="1170"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Standard"
        dbByte "DecimalPlaces" ="2"
    End
    Begin
        dbText "Name" ="Parads"
        dbInteger "ColumnWidth" ="810"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Standard"
        dbByte "DecimalPlaces" ="2"
    End
    Begin
        dbText "Name" ="SamKase"
        dbInteger "ColumnWidth" ="1050"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Standard"
        dbByte "DecimalPlaces" ="2"
    End
    Begin
        dbText "Name" ="SamBanka"
        dbInteger "ColumnWidth" ="1185"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Standard"
        dbByte "DecimalPlaces" ="2"
    End
    Begin
        dbText "Name" ="SamCits"
        dbInteger "ColumnWidth" ="930"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Standard"
        dbByte "DecimalPlaces" ="2"
    End
    Begin
        dbText "Name" ="SamLatvija"
        dbInteger "ColumnWidth" ="1230"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Standard"
        dbByte "DecimalPlaces" ="2"
    End
    Begin
        dbText "Name" ="SamArvalstn"
        dbInteger "ColumnWidth" ="1350"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Standard"
        dbByte "DecimalPlaces" ="2"
    End
    Begin
        dbText "Name" ="GN"
        dbInteger "ColumnWidth" ="435"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="SamCKase"
        dbInteger "ColumnWidth" ="1185"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Standard"
        dbByte "DecimalPlaces" ="2"
    End
    Begin
        dbText "Name" ="SamIeprPer"
        dbInteger "ColumnWidth" ="1290"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Standard"
        dbByte "DecimalPlaces" ="2"
    End
    Begin
        dbText "Name" ="SamPer"
        dbInteger "ColumnWidth" ="915"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Standard"
        dbByte "DecimalPlaces" ="2"
    End
    Begin
        dbText "Name" ="SamNakPer"
        dbInteger "ColumnWidth" ="1275"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Standard"
        dbByte "DecimalPlaces" ="2"
    End
End
Begin
    State =0
    Left =11
    Top =389
    Right =1519
    Bottom =864
    Left =-1
    Top =-1
    Right =1501
    Bottom =265
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =297
        Bottom =188
        Top =2
        Name ="tmp_ParskatsPaValstim"
        Name =""
    End
End
