SELECT
  dbo_Personas.Personas_ID,
  dbo_Personas.Vards,
  dbo_Personas.Uzvards,
  dbo_Personas.Pers_Kods
FROM
  dbo_pd_PA_ZK
  INNER JOIN dbo_Personas ON dbo_pd_PA_ZK.PersID = dbo_Personas.Personas_ID
GROUP BY
  dbo_Personas.Personas_ID,
  dbo_Personas.Vards,
  dbo_Personas.Uzvards,
  dbo_Personas.Pers_Kods;
