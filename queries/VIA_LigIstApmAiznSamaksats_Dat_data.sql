SELECT
  dbo_viesn_Maksajumi.Ligums,
  dbo_viesn_Maksajumi.Ist_Nr,
  Max(dbo_viesn_Maksajumi.Sk_Ist) AS AiznDatSam_Vsk,
  Min(dbo_viesn_Maksajumi.Dat_No) AS AiznDatSam_No,
  Max(dbo_viesn_Maksajumi.Dat_Lidz) AS AiznDatSam_Lidz,
  (
    Sum(
      IIf(
        IsNull([Total]),
        0,
        [Total]
      )
    )+ Sum(
      IIf(
        IsNull([KavN_Summa]),
        0,
        [KavN_Summa]
      )
    )
  )-(
    Sum(
      IIf(
        IsNull([Ist_SamSum]),
        0,
        [Ist_SamSum]
      )
    )+ Sum(
      IIf(
        IsNull([KavN_SamSum]),
        0,
        [KavN_SamSum]
      )
    )
  ) AS MStat
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
  dbo_viesn_Maksajumi.Ist_Nr
HAVING
  (
    (
      (
        (
          Sum(
            IIf(
              IsNull([Total]),
              0,
              [Total]
            )
          )+ Sum(
            IIf(
              IsNull([KavN_Summa]),
              0,
              [KavN_Summa]
            )
          )
        )-(
          Sum(
            IIf(
              IsNull([Ist_SamSum]),
              0,
              [Ist_SamSum]
            )
          )+ Sum(
            IIf(
              IsNull([KavN_SamSum]),
              0,
              [KavN_SamSum]
            )
          )
        )
      )> 0
    )
  );
