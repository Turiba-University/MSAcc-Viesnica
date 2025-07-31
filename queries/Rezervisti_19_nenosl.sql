SELECT
  dbo_Viesn_Rezervesana.V_Rez_RID,
  dbo_Viesn_Rezervesana.Istaba,
  dbo_Viesn_Rezervesana.CKods,
  dbo_Personas.Vards,
  dbo_Personas.Uzvards,
  dbo_Personas.DzDatums,
  dbo_Personas.Dzimums,
  dbo_Personas.Valsts,
  dbo_Personas.Tel1,
  dbo_Personas.Epasts,
  dbo_Viesn_Rezervesana.Ligums,
  dbo_Viesn_Rezervesana.Lig_Dat,
  dbo_Viesn_Rezervesana.Piezimes,
  dbo_Viesn_Rezervesana.Ievadits,
  dbo_Viesn_Rezervesana.Dzests,
  dbo_Viesn_Rezervesana.Tips,
  dbo_Viesn_Rezervesana.RVietas,
  dbo_Viesn_Rezervesana.Rez_No,
  dbo_Viesn_Rezervesana.Rez_Lidz,
  dbo_Viesn_Rezervesana.Aud_User,
  dbo_Viesn_Rezervesana.Aud_Date,
  dbo_Viesn_Rezervesana.StudStat,
  dbo_Viesn_Rezervesana.StudMG,
  dbo_Viesn_Rezervesana.Rez_MG
FROM
  dbo_Viesn_Rezervesana
  LEFT JOIN dbo_Personas ON dbo_Viesn_Rezervesana.CKods = dbo_Personas.Personas_ID
WHERE
  (
    (
      (dbo_Viesn_Rezervesana.Ligums) Is Null
      Or (dbo_Viesn_Rezervesana.Ligums)= 0
    )
    AND (
      (dbo_Viesn_Rezervesana.Dzests)= 0
    )
    AND (
      (dbo_Viesn_Rezervesana.Rez_MG)= 2024
    )
  );
