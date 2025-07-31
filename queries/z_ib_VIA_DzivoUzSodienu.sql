SELECT
  dbo_viesn_Ligumi.Pers_ID,
  dbo_Personas.Vards,
  dbo_Personas.Uzvards,
  dbo_Personas.Pers_Kods
FROM
  dbo_viesn_Ligumi
  INNER JOIN dbo_Personas ON dbo_viesn_Ligumi.Pers_ID = dbo_Personas.Personas_ID
WHERE
  (
    (
      (dbo_viesn_Ligumi.Datums_Out) Is Null
      Or (dbo_viesn_Ligumi.Datums_Out)> Date()
    )
  )
GROUP BY
  dbo_viesn_Ligumi.Pers_ID,
  dbo_Personas.Vards,
  dbo_Personas.Uzvards,
  dbo_Personas.Pers_Kods
ORDER BY
  dbo_viesn_Ligumi.Pers_ID DESC;
