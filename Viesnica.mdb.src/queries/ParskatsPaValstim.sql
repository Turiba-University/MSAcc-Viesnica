SELECT
  "_Kopā" as Valsts,
  ParskatsPaValstim_gr_2.PersSk,
  ParskatsPaValstim_gr_2.NaktisPers
FROM
  ParskatsPaValstim_gr_2
UNION
SELECT
  ParskatsPaValstim_gr_1.Valsts,
  ParskatsPaValstim_gr_1.PersSk,
  ParskatsPaValstim_gr_1.NaktisPers
FROM
  ParskatsPaValstim_gr_1
ORDER BY
  Valsts;
