SELECT
  dbo_viesn_kl_Istabas.Istaba,
  Count(Rezervisti_21.Istaba) AS AiznVSk
FROM
  dbo_viesn_kl_Istabas
  INNER JOIN Rezervisti_21 ON (
    dbo_viesn_kl_Istabas.Istaba = Rezervisti_21.Istaba
  )
  AND (
    dbo_viesn_kl_Istabas.Istaba = Rezervisti_21.Istaba
  )
GROUP BY
  dbo_viesn_kl_Istabas.Istaba
ORDER BY
  dbo_viesn_kl_Istabas.Istaba;
