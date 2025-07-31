SELECT
  [dbo_viesn_Ligumi_PApr].[Ligums],
  [dbo_viesn_Ligumi_PApr].[Istaba],
  [dbo_viesn_Ligumi_PApr].[PA_Nos],
  [dbo_viesn_Ligumi_PApr].[PA_Cena],
  Count(
    [dbo_viesn_Ligumi_PApr].[PA_Nos]
  ) AS Skaits,
  [dbo_viesn_Ligumi_PApr].[PADat_No],
  [dbo_viesn_Ligumi_PApr].[PADat_Lidz]
FROM
  dbo_viesn_Ligumi_PApr
GROUP BY
  [dbo_viesn_Ligumi_PApr].[Ligums],
  [dbo_viesn_Ligumi_PApr].[Istaba],
  [dbo_viesn_Ligumi_PApr].[PA_Nos],
  [dbo_viesn_Ligumi_PApr].[PA_Cena],
  [dbo_viesn_Ligumi_PApr].[PADat_No],
  [dbo_viesn_Ligumi_PApr].[PADat_Lidz]
HAVING
  (
    (
      (
        dbo_viesn_Ligumi_PApr.PADat_Lidz
      ) Is Null
      Or (
        dbo_viesn_Ligumi_PApr.PADat_Lidz
      )>= Date()
    )
  )
ORDER BY
  [dbo_viesn_Ligumi_PApr].[Ligums],
  [dbo_viesn_Ligumi_PApr].[Istaba],
  [dbo_viesn_Ligumi_PApr].[PA_Nos],
  [dbo_viesn_Ligumi_PApr].[PA_Cena];
