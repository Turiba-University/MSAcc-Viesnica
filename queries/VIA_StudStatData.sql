SELECT
  [dbo_StStat_StudSar_StudTab].[CKods],
  [dbo_StStat_StudSar_StudTab].[StStat_Nr],
  First(
    [dbo_StStat_StudSar_StudTab].[StStat_Nr]
  ) AS FirstOfStStat_Nr,
  First(
    [dbo_StStat_StudSar_StudTab].[StStat]
  ) AS StudStat,
  First(
    [dbo_StStat_StudSar_StudTab].[Gr_kods]
  ) AS Progr,
  First(
    [dbo_StStat_StudSar_StudTab].[Grupesana]
  ) AS Lim
FROM
  dbo_StStat_StudSar_StudTab
WHERE
  (
    (
      (
        [dbo_StStat_StudSar_StudTab].[StStat_Nr]
      )= 10
      Or (
        [dbo_StStat_StudSar_StudTab].[StStat_Nr]
      )= 20
      Or (
        [dbo_StStat_StudSar_StudTab].[StStat_Nr]
      )= 30
      Or (
        [dbo_StStat_StudSar_StudTab].[StStat_Nr]
      )= 50
    )
  )
GROUP BY
  [dbo_StStat_StudSar_StudTab].[CKods],
  [dbo_StStat_StudSar_StudTab].[StStat_Nr]
ORDER BY
  [dbo_StStat_StudSar_StudTab].[StStat_Nr] DESC;
