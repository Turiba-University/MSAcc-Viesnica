SELECT
  [dbo_Viesn_Rezervesana].[V_Rez_RID],
  [dbo_Viesn_Rezervesana].[Rez_MG],
  [dbo_Viesn_Rezervesana].[Istaba],
  [dbo_Viesn_Rezervesana].[CKods],
  [dbo_Personas].[Vards],
  [dbo_Personas].[Uzvards],
  [dbo_Personas].[Pers_Kods],
  [dbo_Personas].[Valsts],
  [dbo_Personas].[Dzimums],
  [StStat_iss2].[StStat],
  [dbo_Personas].[Tel1],
  [dbo_Viesn_Rezervesana].[Lig_Dat],
  [dbo_Viesn_Rezervesana].[Ievadits],
  [dbo_Viesn_Rezervesana].[Piezimes],
  [dbo_Viesn_Rezervesana].[Dzests],
  [StStat_iss2].[StStat_Nr],
  [dbo_Viesn_Rezervesana].[Tips],
  [dbo_Viesn_Rezervesana].[StudStat],
  [dbo_Viesn_Rezervesana].[StudMG],
  [dbo_Viesn_Rezervesana].[Rez_No],
  [rez_IrLigIst_PID].[LigNo],
  [rez_IrLigIst_PID].[LigLidz],
  [rez_IrLigIst_PID].[Ist],
  [rez_IrLigIst_PID].[IstSk],
  [StStat_iss2].[MG]
FROM
  (
    (
      dbo_Viesn_Rezervesana
      LEFT JOIN dbo_Personas ON [dbo_Viesn_Rezervesana].[CKods] = [dbo_Personas].[Personas_ID]
    )
    LEFT JOIN StStat_iss2 ON [dbo_Viesn_Rezervesana].[CKods] = [StStat_iss2].[CKods]
  )
  LEFT JOIN rez_IrLigIst_PID ON [dbo_Viesn_Rezervesana].[CKods] = [rez_IrLigIst_PID].[Pers_ID]
WHERE
  (
    (
      (
        [dbo_Viesn_Rezervesana].[Rez_MG]
      )= [forms]![rezervisti]![r_mg]
      Or (
        [dbo_Viesn_Rezervesana].[Rez_MG]
      )= [forms]![rezervisti]![r_mg]
    )
  )
GROUP BY
  [dbo_Viesn_Rezervesana].[V_Rez_RID],
  [dbo_Viesn_Rezervesana].[Rez_MG],
  [dbo_Viesn_Rezervesana].[Istaba],
  [dbo_Viesn_Rezervesana].[CKods],
  [dbo_Personas].[Vards],
  [dbo_Personas].[Uzvards],
  [dbo_Personas].[Pers_Kods],
  [dbo_Personas].[Valsts],
  [dbo_Personas].[Dzimums],
  [StStat_iss2].[StStat],
  [dbo_Personas].[Tel1],
  [dbo_Viesn_Rezervesana].[Lig_Dat],
  [dbo_Viesn_Rezervesana].[Ievadits],
  [dbo_Viesn_Rezervesana].[Piezimes],
  [dbo_Viesn_Rezervesana].[Dzests],
  [StStat_iss2].[StStat_Nr],
  [dbo_Viesn_Rezervesana].[Tips],
  [dbo_Viesn_Rezervesana].[StudStat],
  [dbo_Viesn_Rezervesana].[StudMG],
  [dbo_Viesn_Rezervesana].[Rez_No],
  [rez_IrLigIst_PID].[LigNo],
  [rez_IrLigIst_PID].[LigLidz],
  [rez_IrLigIst_PID].[Ist],
  [rez_IrLigIst_PID].[IstSk],
  [StStat_iss2].[MG]
HAVING
  (
    (
      (dbo_Viesn_Rezervesana.Dzests)=-1
    )
  )
ORDER BY
  [dbo_Viesn_Rezervesana].[Istaba],
  [dbo_Personas].[Vards],
  [dbo_Personas].[Uzvards];
