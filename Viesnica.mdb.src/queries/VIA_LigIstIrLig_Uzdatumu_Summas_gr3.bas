dbMemo "SQL" ="SELECT *\015\012FROM VIA_LigIstIrLig_Uzdatumu_Summas_gr\015\012UNION SELECT *\015"
    "\012FROM VIA_LigIstIrLig_Uzdatumu_Summas_gr2\015\012ORDER BY Valsts;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="VIA_LigIstIrLig_Uzdatumu_Summas_gr.valsts"
        dbInteger "ColumnWidth" ="3075"
        dbBoolean "ColumnHidden" ="0"
    End
End
