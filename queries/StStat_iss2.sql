SELECT
  [tmp_StStat].[CKods],
  [tmp_StStat].[StStat],
  [tmp_StStat].[StStat_Nr],
  Max([tmp_StStat].[MG]) AS MG,
  First([VIA_StudStatData].[Lim]) AS Lim,
  First([VIA_StudStatData].[Progr]) AS Progr
FROM
  (
    tmp_StStat
    INNER JOIN StStat_MinStudStat2 ON (
      [tmp_StStat].[CKods] = [StStat_MinStudStat2].[PID]
    )
    AND (
      [tmp_StStat].[StStat_Nr] = [StStat_MinStudStat2].[StStatNr]
    )
  )
  LEFT JOIN VIA_StudStatData ON [tmp_StStat].[CKods] = [VIA_StudStatData].[CKods]
GROUP BY
  [tmp_StStat].[CKods],
  [tmp_StStat].[StStat],
  [tmp_StStat].[StStat_Nr];
