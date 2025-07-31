SELECT
  dbo_Personas.Personas_ID,
  dbo_Personas.Uzvards AS Uzvārds,
  dbo_Personas.Vards AS Vārds,
  dbo_kd_Grupas.Gr_Nos AS Grupa,
  dbo_kd_Grupas.Sak AS Mācības_sāk,
  dbo_kd_Grupas.Beidz AS Mācības_beidz,
  dbo_kd_Kursanti.Status AS Statuss,
  dbo_kd_Kursanti.Stat
FROM
  (
    dbo_kd_Grupas
    INNER JOIN dbo_kd_Kursanti ON dbo_kd_Grupas.Grupa_ID = dbo_kd_Kursanti.Grupa_ID
  )
  INNER JOIN dbo_Personas ON dbo_kd_Kursanti.CKODS = dbo_Personas.Personas_ID
WHERE
  (
    (
      (dbo_kd_Grupas.Beidz)> DateSerial(
        Year(
          Date()-30
        ),
        Month(
          Date()-30
        ),
        Day(
          Date()-30
        )
      )
    )
  )
ORDER BY
  dbo_Personas.Uzvards,
  dbo_Personas.Vards,
  dbo_kd_Grupas.Gr_Nos;
