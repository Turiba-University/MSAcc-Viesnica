SELECT
  tmp_RezStudStat.CKods,
  First(tmp_RezStudStat.St) AS FirstOfSt,
  First(tmp_RezStudStat.MG) AS FirstOfMG,
  First(tmp_RezStudStat.StudStat) AS FirstOfStudStat,
  First(tmp_RezStudStat.Progr) AS FirstOfProgr,
  First(tmp_RezStudStat.Lim) AS FirstOfLim,
  First(tmp_RezStudStat.Stat) AS FirstOfStat
FROM
  tmp_RezStudStat
GROUP BY
  tmp_RezStudStat.CKods
ORDER BY
  tmp_RezStudStat.CKods,
  First(tmp_RezStudStat.St),
  First(tmp_RezStudStat.MG) DESC;
