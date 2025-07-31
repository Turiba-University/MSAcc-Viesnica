SELECT
  ParskatsPaTT_Summas.TTips,
  Sum(
    IIf(
      [ITips] = 1,
      Int(
        ([SumOfIst_SamSum] + 0.005005)* 100
      )/ 100,
      0
    )
  ) AS IstSumA,
  Sum(
    IIf(
      [ITips] = 2,
      Int(
        ([SumOfIst_SamSum] + 0.005005)* 100
      )/ 100,
      0
    )
  ) AS IstSumV1,
  Sum(
    IIf(
      [ITips] = 3,
      Int(
        ([SumOfIst_SamSum] + 0.005005)* 100
      )/ 100,
      0
    )
  ) AS IstSumV25,
  Sum(
    IIf(
      [ITips] = 1,
      Int(
        ([SumOfKavN_SamSum] + 0.005005)* 100
      )/ 100,
      0
    )
  ) AS KavNSumA,
  Sum(
    IIf(
      [ITips] = 2,
      Int(
        ([SumOfKavN_SamSum] + 0.005005)* 100
      )/ 100,
      0
    )
  ) AS KavNSumV1,
  Sum(
    IIf(
      [ITips] = 3,
      Int(
        ([SumOfKavN_SamSum] + 0.005005)* 100
      )/ 100,
      0
    )
  ) AS KavNSumV25
FROM
  ParskatsPaTT_Summas
GROUP BY
  ParskatsPaTT_Summas.TTips;
