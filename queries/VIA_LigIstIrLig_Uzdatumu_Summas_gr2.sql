SELECT
  IIf(
    [Valst] = "Latvija", "_LV", "_Ārvalstnieki"
  ) AS valsts,
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
  IIf(
    [Valst] = "Latvija", "_LV", "_Ārvalstnieki"
  );
