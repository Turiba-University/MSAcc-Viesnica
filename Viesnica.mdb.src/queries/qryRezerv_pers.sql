SELECT
  dbo_Viesn_Rezervesana.V_Rez_RID,
  dbo_Viesn_Rezervesana.Istaba,
  dbo_Viesn_Rezervesana.CKods,
  dbo_Personas.Vards,
  dbo_Personas.Uzvards,
  dbo_Personas.Pers_Kods,
  dbo_Personas.Tel1,
  dbo_Personas.Dzimums,
  dbo_Personas.Valsts,
  dbo_Viesn_Rezervesana.Lig_Dat,
  dbo_Viesn_Rezervesana.StudMG,
  dbo_Viesn_Rezervesana.Ievadits,
  dbo_Viesn_Rezervesana.Rez_No,
  dbo_Viesn_Rezervesana.Rez_Lidz,
  dbo_Viesn_Rezervesana.Rez_MG,
  dbo_Viesn_Rezervesana.Piezimes
FROM
  dbo_Viesn_Rezervesana
  LEFT JOIN dbo_Personas ON dbo_Viesn_Rezervesana.[CKods] = dbo_Personas.[Personas_ID]
WHERE
  (
    (
      (dbo_Viesn_Rezervesana.CKods)= forms!LigumsViesn!PERS_ID
    )
    And (
      (dbo_Viesn_Rezervesana.Dzests)= 0
    )
    And (
      (dbo_Viesn_Rezervesana.Ligums) Is Null
      Or (dbo_Viesn_Rezervesana.Ligums)= 0
    )
    And (
      (dbo_Viesn_Rezervesana.LigNr) Is Null
      Or (dbo_Viesn_Rezervesana.LigNr)= 0
    )
  )
ORDER BY
  dbo_Viesn_Rezervesana.Istaba,
  dbo_Viesn_Rezervesana.Rez_No DESC;
