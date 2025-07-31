SELECT
  dbo_viesn_Maksajumi.Ligums,
  dbo_viesn_Maksajumi.Ist_Nr,
  Min(dbo_viesn_Maksajumi.Dat_No) AS PecDat_dat
FROM
  dbo_viesn_Maksajumi
  INNER JOIN VIA_LigIstAizn_Dat ON dbo_viesn_Maksajumi.Ligums = VIA_LigIstAizn_Dat.Ligums
WHERE
  (
    (
      (dbo_viesn_Maksajumi.Dat_No)> forms!VIA_VietuSkaitsUzdatumu!Stat_Datums
    )
    And (
      (dbo_viesn_Maksajumi.Stat) Is Null
      Or (dbo_viesn_Maksajumi.Stat)<>-1
    )
  )
GROUP BY
  dbo_viesn_Maksajumi.Ligums,
  dbo_viesn_Maksajumi.Ist_Nr;
