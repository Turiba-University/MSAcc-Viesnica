SELECT
  dbo_crl_NrDiapazoni.NrNo,
  dbo_crl_NrDiapazoni.NrLidz
FROM
  dbo_crl_NrDiapazoni
WHERE
  (
    (
      (dbo_crl_NrDiapazoni.Nelietot) Is Null
      Or (dbo_crl_NrDiapazoni.Nelietot)<>-1
    )
    AND (
      (dbo_crl_NrDiapazoni.Kase)= [forms]![ka_caurlaides_reg]![KID]
    )
  )
ORDER BY
  dbo_crl_NrDiapazoni.NrNo;
