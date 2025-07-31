dbMemo "SQL" ="SELECT \"_Kopā\" as Valsts, ParskatsPaValstim_gr_2.PersSk, ParskatsPaValstim_gr_"
    "2.NaktisPers\015\012FROM ParskatsPaValstim_gr_2\015\012UNION SELECT ParskatsPaVa"
    "lstim_gr_1.Valsts, ParskatsPaValstim_gr_1.PersSk, ParskatsPaValstim_gr_1.NaktisP"
    "ers\015\012FROM ParskatsPaValstim_gr_1\015\012ORDER BY Valsts;\015\012"
dbMemo "Connect" =""
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
End
