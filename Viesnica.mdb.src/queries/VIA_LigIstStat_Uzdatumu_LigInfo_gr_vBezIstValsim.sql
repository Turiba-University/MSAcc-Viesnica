INSERT INTO tmp_ParskatsPaValstim (
  LigNr, Tips, IstNr, Datums, Valsts,
  Pers_ID, Sk
)
SELECT
  [VIA_LigIstStat_Uzdatumu].[Ligums],
  [dbo_viesn_Ligumi].[Position],
  [VIA_LigIstStat_Uzdatumu].[Ist_Nr],
  [forms]![VIA_VietuSkaitsUzdatumu]![Stat_Datums] AS Datums,
  [dbo_viesn_Ligumi].[Valsts],
  [dbo_viesn_Ligumi].[Pers_ID],
  Sum(
    [VIA_LigIstStat_Uzdatumu].[NSk]
  ) AS Sk
FROM
  (
    VIA_LigIstStat_Uzdatumu
    LEFT JOIN dbo_viesn_Ligumi ON [VIA_LigIstStat_Uzdatumu].[Ligums] = [dbo_viesn_Ligumi].[Ligums]
  )
  LEFT JOIN dbo_Personas ON [dbo_viesn_Ligumi].[Pers_ID] = [dbo_Personas].[Personas_ID]
WHERE
  (
    (
      (
        [VIA_LigIstStat_Uzdatumu].[Stat]
      )= "dzīvo"
      Or (
        [VIA_LigIstStat_Uzdatumu].[Stat]
      )= "izvācas"
    )
  )
GROUP BY
  [VIA_LigIstStat_Uzdatumu].[Ligums],
  [dbo_viesn_Ligumi].[Position],
  [VIA_LigIstStat_Uzdatumu].[Ist_Nr],
  [forms]![VIA_VietuSkaitsUzdatumu]![Stat_Datums],
  [dbo_viesn_Ligumi].[Valsts],
  [dbo_viesn_Ligumi].[Pers_ID];
