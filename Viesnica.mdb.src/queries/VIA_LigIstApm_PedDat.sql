SELECT
  [dbo_viesn_Maksajumi].[Ligums],
  [dbo_viesn_Maksajumi].[Ist_Nr],
  Max(
    [dbo_viesn_Maksajumi].[Dat_Lidz]
  ) AS ApmLidz_Dat,
  Sum([dbo_viesn_Maksajumi].[Total]) AS Summa
FROM
  dbo_viesn_Maksajumi
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
