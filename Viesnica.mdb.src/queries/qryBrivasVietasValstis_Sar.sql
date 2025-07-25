TRANSFORM Count(dbo_viesn_kl_Istabas.Istaba) AS CountOfIstaba
SELECT
  dbo_viesn_kl_Istabas.Istaba,
  dbo_viesn_kl_Istabas.VietuSk AS [Vietu skaits],
  Max(
    [dbo_viesn_kl_Istabas].[VietuSk] - [AiznVSk]
  ) AS [Brīvās vietas],
  Sum(
    IIf([Dzimums] = "S", 1, Null)
  ) AS S,
  Sum(
    IIf([Dzimums] = "V", 1, Null)
  ) AS V,
  Sum(
    IIf([Valsts] = "Latvija", 1, Null)
  ) AS LV,
  Sum(
    IIf([Valsts] = "Latvija", Null, 1)
  ) AS [ne-LV]
FROM
  (
    (
      qryBrivasVietasAiznVSk
      RIGHT JOIN dbo_viesn_kl_Istabas ON qryBrivasVietasAiznVSk.Istaba = dbo_viesn_kl_Istabas.Istaba
    )
    LEFT JOIN dbo_Viesn_Rezervesana ON dbo_viesn_kl_Istabas.Istaba = dbo_Viesn_Rezervesana.Istaba
  )
  LEFT JOIN dbo_Personas ON dbo_Viesn_Rezervesana.CKods = dbo_Personas.Personas_ID
WHERE
  (
    (
      (dbo_Viesn_Rezervesana.Dzests)= 0
    )
  )
GROUP BY
  dbo_viesn_kl_Istabas.Istaba,
  dbo_viesn_kl_Istabas.VietuSk
ORDER BY
  dbo_viesn_kl_Istabas.Istaba PIVOT dbo_Personas.Valsts;
