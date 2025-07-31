SELECT
  dbo_viesn_Maksajumi.Ligums,
  dbo_viesn_Maksajumi.Ist_Nr,
  Max(dbo_viesn_Maksajumi.Sk_Ist) AS Dat_Vsk,
  Min(dbo_viesn_Maksajumi.Dat_No) AS MinOfDat_No,
  Max(dbo_viesn_Maksajumi.Dat_Lidz) AS MaxOfDat_Lidz,
  Sum(dbo_viesn_Maksajumi.Ist_SamSum) AS Ist_SamSum,
  Sum(dbo_viesn_Maksajumi.Total) AS Total
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
    And (
      (
        IIf(
          IIf(
            IsNull([Ist_SamSum]),
            0,
            [Ist_SamSum]
          )>= [Total],
          1,
          0
        )
      )= 1
    )
  )
GROUP BY
  dbo_viesn_Maksajumi.Ligums,
  dbo_viesn_Maksajumi.Ist_Nr;
