SELECT
  dbo_viesn_Ligumi_Istabas.VLI_ID,
  dbo_viesn_Ligumi_Istabas.Ligums,
  dbo_viesn_Ligumi_Istabas.Istaba,
  dbo_viesn_Ligumi_Istabas.LIDat_No,
  dbo_viesn_Ligumi_Istabas.LIDat_Lidz,
  dbo_viesn_Ligumi.Ligums
FROM
  dbo_viesn_Ligumi_Istabas
  LEFT JOIN dbo_viesn_Ligumi ON dbo_viesn_Ligumi_Istabas.Ligums = dbo_viesn_Ligumi.Ligums
WHERE
  (
    (
      (dbo_viesn_Ligumi.Ligums) Is Null
    )
  );
