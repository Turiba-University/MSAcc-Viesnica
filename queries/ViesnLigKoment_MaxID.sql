SELECT
  dbo_viesn_Ligumi_Komentari.Lig_Nr,
  Max(
    dbo_viesn_Ligumi_Komentari.Koment_ID
  ) AS MaxID
FROM
  dbo_viesn_Ligumi_Komentari
GROUP BY
  dbo_viesn_Ligumi_Komentari.Lig_Nr;
