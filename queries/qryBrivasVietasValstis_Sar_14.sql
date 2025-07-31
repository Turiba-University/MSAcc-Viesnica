TRANSFORM Count(dbo_viesn_kl_Istabas.Istaba) AS CountOfIstaba
SELECT
  dbo_viesn_kl_Istabas.Istaba,
  dbo_viesn_kl_Istabas.VietuSk AS [Vietu skaits],
  Max(
    [dbo_viesn_kl_Istabas].[VietuSk] - IIf(
      IsNull([AiznVSk]),
      0,
      [AiznVSk]
    )
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
    IIf(
      [ckods] > 0,
      IIf([Valsts] = "Latvija", Null, 1),
      Null
    )
  ) AS [ne-LV]
FROM
  (
    (
      dbo_viesn_kl_Istabas
      LEFT JOIN Rezervisti_14 ON dbo_viesn_kl_Istabas.Istaba = Rezervisti_14.Istaba
    )
    LEFT JOIN qryBrivasVietasAiznVSk_14 ON dbo_viesn_kl_Istabas.Istaba = qryBrivasVietasAiznVSk_14.Istaba
  )
  LEFT JOIN dbo_Personas ON Rezervisti_14.CKods = dbo_Personas.Personas_ID
GROUP BY
  dbo_viesn_kl_Istabas.Istaba,
  dbo_viesn_kl_Istabas.VietuSk
ORDER BY
  dbo_viesn_kl_Istabas.Istaba PIVOT dbo_Personas.Valsts;
