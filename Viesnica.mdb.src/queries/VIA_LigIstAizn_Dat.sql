SELECT
  [dbo_viesn_Ligumi_Istabas].[Ligums],
  [dbo_viesn_Ligumi_Istabas].[Istaba],
  Min(
    [dbo_viesn_Ligumi_Istabas].[LIDat_No]
  ) AS LIDat_No,
  Max(
    [dbo_viesn_Ligumi_Istabas].[LIDat_Lidz]
  ) AS LIDat_Lidz
FROM
  dbo_viesn_Ligumi_Istabas
WHERE
  (
    (
      (
        [dbo_viesn_Ligumi_Istabas].[LIDat_No]
      )<= [forms]![VIA_VietuSkaitsUzdatumu]![Stat_Datums]
    )
    And (
      (
        [dbo_viesn_Ligumi_Istabas].[LIDat_Lidz]
      ) Is Null
      Or (
        [dbo_viesn_Ligumi_Istabas].[LIDat_Lidz]
      )>= [forms]![VIA_VietuSkaitsUzdatumu]![Stat_Datums]
    )
  )
GROUP BY
  [dbo_viesn_Ligumi_Istabas].[Ligums],
  [dbo_viesn_Ligumi_Istabas].[Istaba];
