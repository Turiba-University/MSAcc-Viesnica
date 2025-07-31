SELECT
  [dbo_viesn_Maksajumi].[Ligums],
  [dbo_viesn_Maksajumi].[Ist_Nr],
  Max([dbo_viesn_Maksajumi].[Sk_Ist]) AS V_sk,
  Max(
    [dbo_viesn_Maksajumi].[Dat_Lidz]
  ) AS V_ApmLidz
FROM
  dbo_viesn_Maksajumi
WHERE
  (
    (
      (
        IIf(
          IsNull([Ist_SamSum]),
          0,
          [Ist_SamSum]
        )- IIf(
          IsNull([Total]),
          0,
          [total]
        )
      )= 0
    )
    And (
      (
        IIf(
          IsNull([KavN_SamSum]),
          0,
          [KavN_SamSum]
        )- IIf(
          IsNull([KavN_Summa]),
          0,
          [KavN_Summa]
        )
      )= 0
    )
    And (
      ([dbo_viesn_Maksajumi].[Stat]) Is Null
      Or ([dbo_viesn_Maksajumi].[Stat])<>-1
    )
  )
GROUP BY
  [dbo_viesn_Maksajumi].[Ligums],
  [dbo_viesn_Maksajumi].[Ist_Nr];
