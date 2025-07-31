SELECT
  [dbo_viesn_kl_Istabas].[Istaba],
  Count(
    [dbo_Viesn_Rezervesana].[Istaba]
  ) AS AiznVSk
FROM
  dbo_Viesn_Rezervesana
  RIGHT JOIN dbo_viesn_kl_Istabas ON [dbo_Viesn_Rezervesana].[Istaba] = [dbo_viesn_kl_Istabas].[Istaba]
WHERE
  (
    (
      (
        [dbo_Viesn_Rezervesana].[Dzests]
      )= 0
    )
  )
GROUP BY
  [dbo_viesn_kl_Istabas].[Istaba]
ORDER BY
  [dbo_viesn_kl_Istabas].[Istaba];
