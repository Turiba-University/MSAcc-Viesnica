SELECT
  [ParskatsPaValstim_Pers_gr_2].[Valsts],
  Sum(
    [ParskatsPaValstim_Pers_gr_2].[MPersSk]
  ) AS PersSk
FROM
  ParskatsPaValstim_Pers_gr_2
GROUP BY
  [ParskatsPaValstim_Pers_gr_2].[Valsts];
