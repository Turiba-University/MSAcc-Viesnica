SELECT
  dbo_viesn_Maksajumi.Ligums,
  Max(dbo_viesn_Maksajumi.Sk_Ist) AS V_sk,
  Max(dbo_viesn_Maksajumi.Dat_Lidz) AS V_ApmLidz
FROM
  dbo_viesn_Maksajumi
  INNER JOIN VIA_LigIstAizn_Dat ON dbo_viesn_Maksajumi.Ligums = VIA_LigIstAizn_Dat.Ligums
WHERE
  (
    (
      (
        IIf(
          IsNull([Ist_SamSum]),
          0,
          [Ist_SamSum]
        )- IIf(
          IsNull([Total]),
          0,
          [total]
        )
      )>= 0
    )
    AND (
      (dbo_viesn_Maksajumi.Stat) Is Null
      Or (dbo_viesn_Maksajumi.Stat)<>-1
    )
  )
  OR (
    (
      (dbo_viesn_Maksajumi.Stat) Is Null
      Or (dbo_viesn_Maksajumi.Stat)<>-1
    )
    AND (
      (
        IIf(
          IsNull([KavN_SamSum]),
          0,
          [KavN_SamSum]
        )- IIf(
          IsNull([KavN_Summa]),
          0,
          [KavN_Summa]
        )
      )>= 0
    )
  )
GROUP BY
  dbo_viesn_Maksajumi.Ligums;
