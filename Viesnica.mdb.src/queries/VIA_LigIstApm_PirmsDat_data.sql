SELECT
  [dbo_viesn_Maksajumi].[Ligums],
  [dbo_viesn_Maksajumi].[Ist_Nr],
  Max([dbo_viesn_Maksajumi].[Sk_Ist]) AS PirmsDat_Vsk,
  Max(
    [dbo_viesn_Maksajumi].[Dat_Lidz]
  ) AS PirmsDat_dat
FROM
  dbo_viesn_Maksajumi
  INNER JOIN VIA_LigIstApm_PirmsDat ON (
    [dbo_viesn_Maksajumi].[Dat_Lidz] = [VIA_LigIstApm_PirmsDat].[PirmsDat_dat]
  )
  AND (
    [dbo_viesn_Maksajumi].[Ist_Nr] = [VIA_LigIstApm_PirmsDat].[Ist_Nr]
  )
  AND (
    [dbo_viesn_Maksajumi].[Ligums] = [VIA_LigIstApm_PirmsDat].[Ligums]
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
