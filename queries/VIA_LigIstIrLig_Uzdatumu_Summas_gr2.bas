Operation =1
Option =0
Begin InputTables
    Name ="VIA_LigIstIrLig_Uzdatumu_Summas"
End
Begin OutputColumns
    Alias ="valsts"
    Expression ="IIf([Valst]=\"Latvija\",\"_LV\",\"_Ārvalstnieki\")"
    Alias ="IstSum"
    Expression ="Sum(Int(([SumOfIst_SamSum]+0.005005)*100)/100)"
    Alias ="KavNSum"
    Expression ="Sum(Int(([SumOfKavN_SamSum]+0.005005)*100)/100)"
End
Begin Groups
    Expression ="IIf([Valst]=\"Latvija\",\"_LV\",\"_Ārvalstnieki\")"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "RecordsetType" ="0"
Begin
End
Begin
    State =0
    Left =194
    Top =62
    Right =1402
    Bottom =535
    Left =-1
    Top =-1
    Right =1201
    Bottom =259
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =21
        Top =1
        Right =303
        Bottom =225
        Top =0
        Name ="VIA_LigIstIrLig_Uzdatumu_Summas"
        Name =""
    End
End
