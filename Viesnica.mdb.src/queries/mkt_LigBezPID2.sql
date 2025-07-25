INSERT INTO tmp_IB_LigBezPID (
  LIGUM_ID, Personas_ID, Pers_ID, Ligums,
  Lig_Dat, V_Vards, V_Uzvards, PK, Pers_Kods,
  P_Vards, P_Uzvards
)
SELECT
  [dbo_viesn_Ligumi].[LIGUM_ID],
  [dbo_Personas].[Personas_ID],
  [dbo_viesn_Ligumi].[Pers_ID],
  [dbo_viesn_Ligumi].[Ligums],
  [dbo_viesn_Ligumi].[Lig_Dat],
  [dbo_viesn_Ligumi].[Vards] AS V_Vards,
  [dbo_viesn_Ligumi].[Uzvards] AS V_Uzvards,
  [dbo_viesn_Ligumi].[PK],
  [dbo_Personas].[Pers_Kods],
  [dbo_Personas].[Vards] AS P_Vards,
  [dbo_Personas].[Uzvards] AS P_Uzvards
FROM
  dbo_Personas
  INNER JOIN dbo_viesn_Ligumi ON [dbo_Personas].[Pers_Kods] = [dbo_viesn_Ligumi].[PK]
WHERE
  (
    (
      ([dbo_viesn_Ligumi].[Pers_ID]) Is Null
    )
  )
ORDER BY
  [dbo_viesn_Ligumi].[LIGUM_ID] DESC;
