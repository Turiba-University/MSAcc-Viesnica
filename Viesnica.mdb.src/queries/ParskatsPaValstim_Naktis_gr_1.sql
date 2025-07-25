SELECT
  [tmp_ParskatsPaValstim].[Valsts],
  Sum([tmp_ParskatsPaValstim].[Sk]) AS NaktisPers
FROM
  tmp_ParskatsPaValstim
GROUP BY
  [tmp_ParskatsPaValstim].[Valsts];
