SELECT
  [dbo_Viesn_Rezervesana].[V_Rez_RID],
  [dbo_Viesn_Rezervesana].[Istaba],
  [dbo_Viesn_Rezervesana].[CKods],
  [dbo_Viesn_Rezervesana].[Rez_Vards],
  [dbo_Viesn_Rezervesana].[Rez_Uzvards],
  [dbo_Viesn_Rezervesana].[Lig_Dat],
  [dbo_Viesn_Rezervesana].[Piezimes],
  [dbo_Viesn_Rezervesana].[Ievadits],
  [dbo_Viesn_Rezervesana].[Dzests],
  [dbo_Viesn_Rezervesana].[Tips],
  [dbo_Viesn_Rezervesana].[RVietas],
  [dbo_Viesn_Rezervesana].[Rez_No],
  [dbo_Viesn_Rezervesana].[Rez_Lidz],
  [dbo_Viesn_Rezervesana].[Aud_User],
  [dbo_Viesn_Rezervesana].[Aud_Date],
  [dbo_Viesn_Rezervesana].[StudStat],
  [dbo_Viesn_Rezervesana].[StudMG],
  [dbo_Viesn_Rezervesana].[Rez_MG]
FROM
  dbo_Viesn_Rezervesana
WHERE
  (
    (
      (
        [dbo_Viesn_Rezervesana].[Dzests]
      )= 0
    )
    And (
      (
        [dbo_Viesn_Rezervesana].[Rez_MG]
      )= 2016
    )
  );
