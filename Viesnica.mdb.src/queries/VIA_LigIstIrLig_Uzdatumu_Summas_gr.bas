dbMemo "SQL" ="SELECT \"t.sk. \" & [VIA_LigIstIrLig_Uzdatumu_Summas].[Valst] AS valsts, Sum(Int"
    "(([SumOfIst_SamSum]+0.005005)*100)/100) AS IstSum, Sum(Int(([SumOfKavN_SamSum]+0"
    ".005005)*100)/100) AS KavNSum\015\012FROM VIA_LigIstIrLig_Uzdatumu_Summas\015\012"
    "GROUP BY [VIA_LigIstIrLig_Uzdatumu_Summas].[Valst];\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
End
