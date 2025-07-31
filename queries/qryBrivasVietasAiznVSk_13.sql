SELECT
  dbo_viesn_kl_Istabas.Istaba,
  Count(Rezervisti_13.Istaba) AS AiznVSk
FROM
  dbo_viesn_kl_Istabas
  INNER JOIN Rezervisti_13 ON (
    dbo_viesn_kl_Istabas.Istaba = Rezervisti_13.Istaba
  )
  AND (
    dbo_viesn_kl_Istabas.Istaba = Rezervisti_13.Istaba
  )
GROUP BY
  dbo_viesn_kl_Istabas.Istaba
ORDER BY
  dbo_viesn_kl_Istabas.Istaba;
