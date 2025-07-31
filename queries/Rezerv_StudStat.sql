INSERT INTO tmp_RezStudStat (
  CKods, St, MG, StudStat, Progr, Lim,
  Stat
)
SELECT
  qryRezerv.CKods,
  IIf(
    [Stat] = 20,
    1,
    IIf(
      [Stat] = 50,
      2,
      IIf(
        [Stat] = 30,
        3,
        IIf([Stat] = 10, 4, 5)
      )
    )
  ) AS St,
  dbo_stl_Stud_LastMGR_Data.MacGads AS MG,
  First(StudStat_kodi.Koda_Atsifr) AS StudStat,
  First(
    dbo_stl_Stud_LastMGR_Data.Progr
  ) AS FirstOfProgr,
  First(dbo_stl_Stud_LastMGR_Data.Lim) AS FirstOfLim,
  First(dbo_stl_Stud_LastMGR_Data.Stat) AS FirstOfStat
FROM
  (
    qryRezerv
    INNER JOIN dbo_stl_Stud_LastMGR_Data ON qryRezerv.CKods = dbo_stl_Stud_LastMGR_Data.PID
  )
  INNER JOIN StudStat_kodi ON dbo_stl_Stud_LastMGR_Data.Stat = StudStat_kodi.Kods
GROUP BY
  qryRezerv.CKods,
  IIf(
    [Stat] = 20,
    1,
    IIf(
      [Stat] = 50,
      2,
      IIf(
        [Stat] = 30,
        3,
        IIf([Stat] = 10, 4, 5)
      )
    )
  ),
  dbo_stl_Stud_LastMGR_Data.MacGads
ORDER BY
  qryRezerv.CKods,
  IIf(
    [Stat] = 20,
    1,
    IIf(
      [Stat] = 50,
      2,
      IIf(
        [Stat] = 30,
        3,
        IIf([Stat] = 10, 4, 5)
      )
    )
  ),
  dbo_stl_Stud_LastMGR_Data.MacGads DESC;
