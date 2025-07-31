SELECT
  dbo_Viesn_Rezervesana.V_Rez_RID,
  dbo_Viesn_Rezervesana.Istaba,
  dbo_Viesn_Rezervesana.CKods,
  dbo_Personas.Vards,
  dbo_Personas.Uzvards,
  dbo_Personas.Pers_Kods,
  dbo_Personas.Valsts,
  dbo_Personas.Dzimums,
  Rezerv_StudStat_gr.FirstOfStudStat AS StStat,
  dbo_Personas.Tel1,
  dbo_Viesn_Rezervesana.Lig_Dat,
  dbo_Viesn_Rezervesana.Ievadits,
  dbo_Viesn_Rezervesana.Piezimes,
  dbo_Viesn_Rezervesana.Dzests,
  Rezerv_StudStat_gr.FirstOfStat AS StStat_Nr,
  Rezerv_StudStat_gr.FirstOfLim AS Lim,
  Rezerv_StudStat_gr.FirstOfProgr AS Progr,
  dbo_Viesn_Rezervesana.Tips,
  dbo_Viesn_Rezervesana.StudStat,
  dbo_Viesn_Rezervesana.StudMG,
  dbo_Viesn_Rezervesana.Rez_No,
  rez_IrLigIst_PID.LigNo,
  rez_IrLigIst_PID.LigLidz,
  rez_IrLigIst_PID.Ist,
  rez_IrLigIst_PID.IstSk,
  Rezerv_StudStat_gr.FirstOfMG AS MG,
  dbo_Viesn_Rezervesana.Rez_MG,
  rez_irPIDLastMG.Ist AS IstLastMG,
  Max(
    IIf([Ligums] > 0, 1, 0)
  ) AS IrLig,
  Max(
    IIf([Ligums] > 0, [LigNr], 0)
  ) AS IrLigNr
FROM
  (
    (
      (
        dbo_Viesn_Rezervesana
        LEFT JOIN dbo_Personas ON dbo_Viesn_Rezervesana.[CKods] = dbo_Personas.[Personas_ID]
      )
      LEFT JOIN rez_IrLigIst_PID ON dbo_Viesn_Rezervesana.[CKods] = rez_IrLigIst_PID.[Pers_ID]
    )
    LEFT JOIN rez_irPIDLastMG ON dbo_Viesn_Rezervesana.CKods = rez_irPIDLastMG.CKods
  )
  LEFT JOIN Rezerv_StudStat_gr ON dbo_Viesn_Rezervesana.CKods = Rezerv_StudStat_gr.CKods
WHERE
  (
    (
      (dbo_Viesn_Rezervesana.Rez_MG)= [forms]![rezervisti]![r_mg]
    )
  )
GROUP BY
  dbo_Viesn_Rezervesana.V_Rez_RID,
  dbo_Viesn_Rezervesana.Istaba,
  dbo_Viesn_Rezervesana.CKods,
  dbo_Personas.Vards,
  dbo_Personas.Uzvards,
  dbo_Personas.Pers_Kods,
  dbo_Personas.Valsts,
  dbo_Personas.Dzimums,
  Rezerv_StudStat_gr.FirstOfStudStat,
  dbo_Personas.Tel1,
  dbo_Viesn_Rezervesana.Lig_Dat,
  dbo_Viesn_Rezervesana.Ievadits,
  dbo_Viesn_Rezervesana.Piezimes,
  dbo_Viesn_Rezervesana.Dzests,
  Rezerv_StudStat_gr.FirstOfStat,
  Rezerv_StudStat_gr.FirstOfLim,
  Rezerv_StudStat_gr.FirstOfProgr,
  dbo_Viesn_Rezervesana.Tips,
  dbo_Viesn_Rezervesana.StudStat,
  dbo_Viesn_Rezervesana.StudMG,
  dbo_Viesn_Rezervesana.Rez_No,
  rez_IrLigIst_PID.LigNo,
  rez_IrLigIst_PID.LigLidz,
  rez_IrLigIst_PID.Ist,
  rez_IrLigIst_PID.IstSk,
  Rezerv_StudStat_gr.FirstOfMG,
  dbo_Viesn_Rezervesana.Rez_MG,
  rez_irPIDLastMG.Ist
HAVING
  (
    (
      (dbo_Viesn_Rezervesana.Dzests)= 0
    )
  )
ORDER BY
  dbo_Viesn_Rezervesana.Istaba,
  dbo_Personas.Vards,
  dbo_Personas.Uzvards;
