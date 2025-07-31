SELECT
  [dbo_Viesn_Rezervesana].[Rez_MG],
  [dbo_Viesn_Rezervesana].[Istaba],
  [dbo_Viesn_Rezervesana].[CKods],
  [dbo_Viesn_Rezervesana].[Lig_Dat],
  [dbo_Viesn_Rezervesana].[Piezimes],
  [dbo_Viesn_Rezervesana].[Ievadits],
  [dbo_Viesn_Rezervesana].[Dzests],
  [dbo_Viesn_Rezervesana].[Tips],
  [dbo_Viesn_Rezervesana].[StudStat],
  [dbo_Viesn_Rezervesana].[StudMG],
  [dbo_Viesn_Rezervesana].[Rez_No]
FROM
  dbo_Viesn_Rezervesana
WHERE
  (
    (
      (
        [dbo_Viesn_Rezervesana].[Rez_MG]
      )= [forms]![rezervisti]![R_MG]
    )
    And (
      (
        [dbo_Viesn_Rezervesana].[Dzests]
      )= 0
    )
  );
