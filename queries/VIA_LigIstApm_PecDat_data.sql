SELECT
  [dbo_viesn_Maksajumi].[Ligums],
  [dbo_viesn_Maksajumi].[Ist_Nr],
  Max([dbo_viesn_Maksajumi].[Sk_Ist]) AS PecDat_Vsk,
  Min(
    [dbo_viesn_Maksajumi].[Dat_Lidz]
  ) AS PecDat_dat
FROM
  dbo_viesn_Maksajumi
  INNER JOIN VIA_LigIstApm_PecDat ON (
    [dbo_viesn_Maksajumi].[Ligums] = [VIA_LigIstApm_PecDat].[Ligums]
  )
  AND (
    [dbo_viesn_Maksajumi].[Dat_No] = [VIA_LigIstApm_PecDat].[PecDat_dat]
  )
  AND (
    [dbo_viesn_Maksajumi].[Ist_Nr] = [VIA_LigIstApm_PecDat].[Ist_Nr]
  )
WHERE
  (
    (
      ([dbo_viesn_Maksajumi].[Stat]) Is Null
      Or Not ([dbo_viesn_Maksajumi].[Stat])=-1
    )
  )
GROUP BY
  [dbo_viesn_Maksajumi].[Ligums],
  [dbo_viesn_Maksajumi].[Ist_Nr];
