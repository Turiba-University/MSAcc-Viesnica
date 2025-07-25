SELECT
  DISTINCTROW dbo_viesn_Maksajumi.*,
  IIf(
    [Ist_Nr] > 0,
    "V" & [Ist_Nr],
    IIf([Ist_Nr] < 0, "A" &- [Ist_Nr])
  ) AS Istaba
FROM
  dbo_viesn_Maksajumi
WHERE
  (
    (
      ([dbo_viesn_Maksajumi].[Stat]) Is Null
      Or ([dbo_viesn_Maksajumi].[Stat])<>-1
    )
  )
ORDER BY
  [dbo_viesn_Maksajumi].[Dat_No];
