SELECT
  dbo_viesn_Ligumi.Lig_Dat,
  dbo_viesn_Ligumi.Uzvards,
  dbo_viesn_Ligumi.Vards,
  dbo_viesn_Ligumi.Ligums,
  dbo_viesn_Ligumi_Istabas.Istaba AS Ist_Nr,
  dbo_viesn_Ligumi.Datums_In,
  dbo_viesn_Ligumi.Datums_Out
FROM
  dbo_viesn_Ligumi
  INNER JOIN dbo_viesn_Ligumi_Istabas ON dbo_viesn_Ligumi.Ligums = dbo_viesn_Ligumi_Istabas.Ligums
WHERE
  (
    (
      (
        dbo_viesn_Ligumi_Istabas.LIDat_No
      )<= [forms]![VIA_VietuSkaitsUzdatumu]![DatNo]
    )
    AND (
      (
        dbo_viesn_Ligumi_Istabas.LIDat_Lidz
      ) Is Null
      Or (
        dbo_viesn_Ligumi_Istabas.LIDat_Lidz
      )>= [forms]![VIA_VietuSkaitsUzdatumu]![DatLidz]
    )
  )
GROUP BY
  dbo_viesn_Ligumi.Lig_Dat,
  dbo_viesn_Ligumi.Uzvards,
  dbo_viesn_Ligumi.Vards,
  dbo_viesn_Ligumi.Ligums,
  dbo_viesn_Ligumi_Istabas.Istaba,
  dbo_viesn_Ligumi.Datums_In,
  dbo_viesn_Ligumi.Datums_Out;
