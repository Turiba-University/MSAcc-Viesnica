SELECT
  [ParskatsPaValstim_Pers_gr_1].[Valsts],
  [ParskatsPaValstim_Pers_gr_1].[Pers_ID],
  Max(
    [ParskatsPaValstim_Pers_gr_1].[PersSk]
  ) AS MPersSk
FROM
  ParskatsPaValstim_Pers_gr_1
GROUP BY
  [ParskatsPaValstim_Pers_gr_1].[Valsts],
  [ParskatsPaValstim_Pers_gr_1].[Pers_ID];
