SELECT
  dbo_Personas.Vards,
  dbo_Personas.Uzvards,
  dbo_Personas.Pers_Kods,
  dbo_StStat_StudSar_StudTab.StStat,
  dbo_stl_Stud_LastMGR_Data.MacGads,
  dbo_stl_Stud_LastMGR_Data.Fil_nos
FROM
  (
    dbo_StStat_StudSar_StudTab
    INNER JOIN dbo_stl_Stud_LastMGR_Data ON dbo_StStat_StudSar_StudTab.Stud_ID = dbo_stl_Stud_LastMGR_Data.Stud_ID
  )
  INNER JOIN dbo_Personas ON dbo_StStat_StudSar_StudTab.CKods = dbo_Personas.Personas_ID
WHERE
  (
    (
      (dbo_Personas.Vards) Like "a*"
    )
    AND (
      (dbo_Personas.Uzvards) Like "kriš*"
    )
  );
