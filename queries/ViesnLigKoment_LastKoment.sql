SELECT
  dbo_viesn_Ligumi_Komentari.Lig_Nr,
  dbo_viesn_Ligumi_Komentari.Komentars
FROM
  dbo_viesn_Ligumi_Komentari
  INNER JOIN ViesnLigKoment_MaxID ON dbo_viesn_Ligumi_Komentari.Koment_ID = ViesnLigKoment_MaxID.MaxID;
