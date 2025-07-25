SELECT
  dbo_Viesn_Rezervesana.CKods,
  Count(dbo_Viesn_Rezervesana.CKods) AS sk,
  First(dbo_Viesn_Rezervesana.Istaba) AS Ist
FROM
  dbo_Viesn_Rezervesana
WHERE
  (
    (
      (dbo_Viesn_Rezervesana.Dzests) Is Null
      Or (dbo_Viesn_Rezervesana.Dzests)= 0
    )
    AND (
      (dbo_Viesn_Rezervesana.Rez_MG)= 2023
    )
  )
GROUP BY
  dbo_Viesn_Rezervesana.CKods;
