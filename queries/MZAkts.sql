SELECT
  dbo_Viesn_MZAkts.*,
  dbo_Personas.Pers_Kods,
  dbo_Personas.DzDatums
FROM
  (
    dbo_Viesn_MZAkts
    LEFT JOIN dbo_viesn_Ligumi ON dbo_Viesn_MZAkts.LigNr = dbo_viesn_Ligumi.Ligums
  )
  LEFT JOIN dbo_Personas ON dbo_viesn_Ligumi.Pers_ID = dbo_Personas.Personas_ID;
