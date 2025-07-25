SELECT
  dbo_viesn_Ligumi.Ligums,
  dbo_viesn_Ligumi.Lig_Dat,
  dbo_viesn_Ligumi.Vards,
  dbo_viesn_Ligumi.Uzvards,
  dbo_viesn_Ligumi.PK,
  dbo_viesn_Maksajumi.Ist_Nr,
  dbo_viesn_Maksajumi.Sk_Ist,
  dbo_viesn_Maksajumi.Dat_No,
  dbo_viesn_Maksajumi.Dat_Lidz,
  DateDiff("d", [Dat_No], [Dat_Lidz]) AS Naktis,
  dbo_viesn_Maksajumi.TNNepiemero18 AS TNNep18,
  dbo_viesn_Maksajumi.TNNepiemeroDS AS TNNepDS,
  dbo_viesn_Maksajumi.TNKopa AS TNsk,
  dbo_viesn_Maksajumi.TNNaktis,
  dbo_viesn_Maksajumi.TNSum,
  dbo_viesn_Maksajumi.TN_SamSum,
  [TNNep18] * [Naktis] AS TNz18,
  [TNsk] * [TNNaktis] AS TNz10d,
  [Naktis] * [TNSk] - [TNz10d] AS TNv10d
FROM
  (
    dbo_viesn_Ligumi
    INNER JOIN dbo_viesn_kl_LBData ON dbo_viesn_Ligumi.Position = dbo_viesn_kl_LBData.POSITION
  )
  LEFT JOIN dbo_viesn_Maksajumi ON dbo_viesn_Ligumi.Ligums = dbo_viesn_Maksajumi.Ligums
WHERE
  (
    (
      (dbo_viesn_kl_LBData.TN)=-1
    )
    AND (
      (dbo_viesn_Ligumi.Lig_Dat)>= #1/1/2023#
    )
    AND (
      (dbo_viesn_Maksajumi.Stat) Is Null
      Or (dbo_viesn_Maksajumi.Stat)= 0
    )
  );
