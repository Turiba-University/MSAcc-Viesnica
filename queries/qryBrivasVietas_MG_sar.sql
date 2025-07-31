SELECT
  [qryBrivasVietas_Sar].[Istaba],
  [qryBrivasVietas_Sar].[Vietu skaits],
  [qryBrivasVietas_Sar].[Brīvās vietas],
  [qryBrivasVietas_Sar].[S],
  [qryBrivasVietas_Sar].[V],
  IIf([S] > 0
  And [V] > 0, "xx", Null) AS Dzim,
  [qryBrivasVietas_Sar].[LV],
  [qryBrivasVietas_Sar].[ne-LV],
  IIf([LV] > 0
  And [ne-LV] > 0, "xx", Null) AS Valsts,
  [qryBrivasVietas_Sar].[BATStud],
  [qryBrivasVietas_Sar].[BATDarbin],
  [qryBrivasVietas_Sar].[CitsStud],
  [qryBrivasVietas_Sar].[Turists],
  [qryBrivasVietas_Sar].[cits]
FROM
  qryBrivasVietas_Sar;
