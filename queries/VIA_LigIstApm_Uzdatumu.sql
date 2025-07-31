SELECT
  [dbo_viesn_Maksajumi].[Ligums],
  [dbo_viesn_Maksajumi].[Ist_Nr],
  Max([dbo_viesn_Maksajumi].[Sk_Ist]) AS V_sk,
  Min([dbo_viesn_Maksajumi].[Dat_No]) AS MinOfDat_No,
  Max(
    [dbo_viesn_Maksajumi].[Dat_Lidz]
  ) AS MaxOfDat_Lidz
FROM
  dbo_viesn_Maksajumi
WHERE
  (
    (
      ([dbo_viesn_Maksajumi].[Dat_No])<= [forms]![VIA_VietuSkaitsUzdatumu]![Stat_Datums]
    )
    And (
      (
        [dbo_viesn_Maksajumi].[Dat_Lidz]
      )>= [forms]![VIA_VietuSkaitsUzdatumu]![Stat_Datums]
    )
    And (
      ([dbo_viesn_Maksajumi].[Stat]) Is Null
      Or Not ([dbo_viesn_Maksajumi].[Stat])=-1
    )
  )
GROUP BY
  [dbo_viesn_Maksajumi].[Ligums],
  [dbo_viesn_Maksajumi].[Ist_Nr];
