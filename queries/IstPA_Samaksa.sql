SELECT
  [dbo_viesn_Ligumi_PApr_Maksajumi].[Ligums],
  [dbo_viesn_Ligumi_PApr_Maksajumi].[IstNr],
  [dbo_viesn_Ligumi_PApr_Maksajumi].[PA_Nos],
  Min(
    [dbo_viesn_Ligumi_PApr_Maksajumi].[Dat_No]
  ) AS Apm_no,
  Max(
    [dbo_viesn_Ligumi_PApr_Maksajumi].[Dat_Lidz]
  ) AS Apm_Lidz,
  Sum(
    [dbo_viesn_Ligumi_PApr_Maksajumi].[SamSum]
  ) AS Samaksats
FROM
  dbo_viesn_Ligumi_PApr_Maksajumi
GROUP BY
  [dbo_viesn_Ligumi_PApr_Maksajumi].[Ligums],
  [dbo_viesn_Ligumi_PApr_Maksajumi].[IstNr],
  [dbo_viesn_Ligumi_PApr_Maksajumi].[PA_Nos]
ORDER BY
  [dbo_viesn_Ligumi_PApr_Maksajumi].[Ligums],
  [dbo_viesn_Ligumi_PApr_Maksajumi].[IstNr],
  [dbo_viesn_Ligumi_PApr_Maksajumi].[PA_Nos];
