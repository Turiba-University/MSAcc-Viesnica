SELECT
  [tmp_ParskatsPaValstim].[Datums],
  [tmp_ParskatsPaValstim].[Valsts],
  [tmp_ParskatsPaValstim].[Pers_ID],
  Sum([tmp_ParskatsPaValstim].[Sk]) AS PersSk
FROM
  tmp_ParskatsPaValstim
GROUP BY
  [tmp_ParskatsPaValstim].[Datums],
  [tmp_ParskatsPaValstim].[Valsts],
  [tmp_ParskatsPaValstim].[Pers_ID];
