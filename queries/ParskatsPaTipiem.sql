TRANSFORM Sum(tmp_ParskatsPaValstim.Sk) AS PersSk
SELECT
  tmp_ParskatsPaValstim.Datums
FROM
  tmp_ParskatsPaValstim
GROUP BY
  tmp_ParskatsPaValstim.Datums
ORDER BY
  tmp_ParskatsPaValstim.Datums DESC,
  tmp_ParskatsPaValstim.Tips PIVOT tmp_ParskatsPaValstim.Tips;
