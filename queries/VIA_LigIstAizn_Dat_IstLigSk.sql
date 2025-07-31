SELECT
  [VIA_LigIstAizn_Dat_data].[Istaba],
  Count(
    [VIA_LigIstAizn_Dat_data].[Istaba]
  ) AS IstLigSk
FROM
  VIA_LigIstAizn_Dat_data
GROUP BY
  [VIA_LigIstAizn_Dat_data].[Istaba];
