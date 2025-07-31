SELECT
  [dbo_viesn_kl_Istabas].[Istaba],
  Count([Rezervisti_16].[Istaba]) AS AiznVSk
FROM
  dbo_viesn_kl_Istabas
  INNER JOIN Rezervisti_16 ON (
    [dbo_viesn_kl_Istabas].[Istaba] = [Rezervisti_16].[Istaba]
  )
  AND (
    [dbo_viesn_kl_Istabas].[Istaba] = [Rezervisti_16].[Istaba]
  )
GROUP BY
  [dbo_viesn_kl_Istabas].[Istaba]
ORDER BY
  [dbo_viesn_kl_Istabas].[Istaba];
