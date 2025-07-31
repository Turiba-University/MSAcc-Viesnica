SELECT
  dbo_viesn_kl_Istabas.Istaba,
  Count(Rezervisti_18.Istaba) AS AiznVSk
FROM
  dbo_viesn_kl_Istabas
  INNER JOIN Rezervisti_18 ON (
    dbo_viesn_kl_Istabas.[Istaba] = Rezervisti_18.[Istaba]
  )
  AND (
    dbo_viesn_kl_Istabas.[Istaba] = Rezervisti_18.[Istaba]
  )
GROUP BY
  dbo_viesn_kl_Istabas.Istaba
ORDER BY
  dbo_viesn_kl_Istabas.Istaba;
