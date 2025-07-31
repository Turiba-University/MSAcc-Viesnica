SELECT
  "t.sk. " & [VIA_LigIstIrLig_Uzdatumu_Summas].[Valst] AS valsts,
  Sum(
    Int(
      ([SumOfIst_SamSum] + 0.005005)* 100
    )/ 100
  ) AS IstSum,
  Sum(
    Int(
      ([SumOfKavN_SamSum] + 0.005005)* 100
    )/ 100
  ) AS KavNSum
FROM
  VIA_LigIstIrLig_Uzdatumu_Summas
GROUP BY
  [VIA_LigIstIrLig_Uzdatumu_Summas].[Valst];
