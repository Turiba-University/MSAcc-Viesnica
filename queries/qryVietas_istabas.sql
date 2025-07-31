SELECT
  Istabas.Istaba,
  Istabas.[Vietu Sk],
  IIf(
    IsNull([Cik aiznemts]),
    0,
    [Cik aiznemts]
  ) AS [Aiznemtas vietas],
  [Vietu Sk] - [Aiznemtas vietas] AS [Brivas vietas]
FROM
  Istabas
  LEFT JOIN [Aiznemtas istabas] ON Istabas.Istaba = [Aiznemtas istabas].IST_NR
GROUP BY
  Istabas.Istaba,
  Istabas.[Vietu Sk],
  IIf(
    IsNull([Cik aiznemts]),
    0,
    [Cik aiznemts]
  )
ORDER BY
  Istabas.Istaba;
