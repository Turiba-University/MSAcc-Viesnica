SELECT
  dbo_viesn_Maksajumi.Ligums,
  dbo_viesn_Maksajumi.Ist_Nr,
  Max(dbo_viesn_Maksajumi.Sk_Ist) AS AiznDat_Vsk,
  Min(dbo_viesn_Maksajumi.Dat_No) AS AiznDat_No,
  Max(dbo_viesn_Maksajumi.Dat_Lidz) AS AiznDat_Lidz
FROM
  dbo_viesn_Maksajumi
  INNER JOIN VIA_LigIstAizn_Dat ON dbo_viesn_Maksajumi.Ligums = VIA_LigIstAizn_Dat.Ligums
WHERE
  (
    (
      (dbo_viesn_Maksajumi.Dat_No)<= forms!VIA_VietuSkaitsUzdatumu!Stat_Datums
    )
    And (
      (dbo_viesn_Maksajumi.Dat_Lidz)>= forms!VIA_VietuSkaitsUzdatumu!Stat_Datums
    )
    And (
      (dbo_viesn_Maksajumi.Stat) Is Null
      Or (dbo_viesn_Maksajumi.Stat)<>-1
    )
  )
GROUP BY
  dbo_viesn_Maksajumi.Ligums,
  dbo_viesn_Maksajumi.Ist_Nr;
