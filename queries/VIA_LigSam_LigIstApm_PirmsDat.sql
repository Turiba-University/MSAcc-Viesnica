SELECT
  dbo_viesn_Maksajumi.Ligums,
  dbo_viesn_Maksajumi.Ist_Nr,
  dbo_viesn_Maksajumi.Dat_No,
  dbo_viesn_Maksajumi.Dat_Lidz,
  Sum(dbo_viesn_Maksajumi.Total) AS Kopa,
  Min(dbo_viesn_Maksajumi.Last_Dat) AS Sam_Dat,
  Sum(
    IIf(
      [Last_Dat] < [forms]![VIA_VietuSkaitsUzdatumu]![DatNo],
      [Total], 0
    )
  ) AS PirmsPer,
  Sum(
    IIf(
      (
        [Last_Dat] >= [forms]![VIA_VietuSkaitsUzdatumu]![DatNo]
      )
      And (
        [Last_Dat] <= [forms]![VIA_VietuSkaitsUzdatumu]![DatLidz]
      ),
      [Total],
      0
    )
  ) AS Per,
  Sum(
    IIf(
      [Last_Dat] Is Null
      Or [Last_Dat] > [forms]![VIA_VietuSkaitsUzdatumu]![DatLidz],
      [Total], 0
    )
  ) AS PecPer
FROM
  dbo_viesn_Maksajumi
GROUP BY
  dbo_viesn_Maksajumi.Ligums,
  dbo_viesn_Maksajumi.Ist_Nr,
  dbo_viesn_Maksajumi.Dat_No,
  dbo_viesn_Maksajumi.Dat_Lidz
HAVING
  (
    (
      (dbo_viesn_Maksajumi.Dat_No)<= [forms]![VIA_VietuSkaitsUzdatumu]![DatNo]
    )
    AND (
      (dbo_viesn_Maksajumi.Dat_Lidz) Is Null
      Or (dbo_viesn_Maksajumi.Dat_Lidz)>= [forms]![VIA_VietuSkaitsUzdatumu]![DatLidz]
    )
  );
