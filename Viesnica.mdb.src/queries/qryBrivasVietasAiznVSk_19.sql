SELECT
  dbo_viesn_kl_Istabas.Istaba,
  Count(Rezervisti_19.Istaba) AS AiznVSk
FROM
  dbo_viesn_kl_Istabas
  INNER JOIN Rezervisti_19 ON (
    dbo_viesn_kl_Istabas.[Istaba] = Rezervisti_19.[Istaba]
  )
  AND (
    dbo_viesn_kl_Istabas.[Istaba] = Rezervisti_19.[Istaba]
  )
GROUP BY
  dbo_viesn_kl_Istabas.Istaba
ORDER BY
  dbo_viesn_kl_Istabas.Istaba;
