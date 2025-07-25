SELECT
  dbo_viesn_Maksajumi.Dat_No,
  dbo_viesn_Maksajumi.Dat_Lidz,
  dbo_viesn_Maksajumi.Maks_Day,
  dbo_viesn_Maksajumi.Maks_Men
FROM
  dbo_viesn_Maksajumi
WHERE
  (
    (
      (dbo_viesn_Maksajumi.Dat_No)<= #1/6/2010#
    )
    AND (
      (dbo_viesn_Maksajumi.Dat_Lidz)>= #1/6/2010#
    )
    AND (
      (dbo_viesn_Maksajumi.Ligums)= 27832
    )
    AND (
      (dbo_viesn_Maksajumi.Ist_Nr)= 318
    )
  );
