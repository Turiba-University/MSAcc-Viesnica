SELECT
  Sum(
    [ParskatsPaValstim_Pers_gr_3].[PersSk]
  ) AS PersSk,
  Sum(
    [ParskatsPaValstim_Naktis_gr_1].[NaktisPers]
  ) AS NaktisPers
FROM
  (
    ParskatsPaValstim_Valstis_gr
    LEFT JOIN ParskatsPaValstim_Naktis_gr_1 ON [ParskatsPaValstim_Valstis_gr].[Valsts] = [ParskatsPaValstim_Naktis_gr_1].[Valsts]
  )
  LEFT JOIN ParskatsPaValstim_Pers_gr_3 ON [ParskatsPaValstim_Valstis_gr].[Valsts] = [ParskatsPaValstim_Pers_gr_3].[Valsts];
