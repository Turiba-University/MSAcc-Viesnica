SELECT
  [dbo_viesn_Maksajumi].[Ligums],
  Max(
    [dbo_viesn_Maksajumi].[PE_Kovertets]
  ) AS PE_Konv
FROM
  dbo_viesn_Maksajumi
GROUP BY
  [dbo_viesn_Maksajumi].[Ligums];
