SELECT
  IstPA_Samaksa.Ligums,
  IstPA_Samaksa.IstNr,
  IstPA_Samaksa.PA_Nos AS Nosaukums,
  IstPA_Samaksa.Apm_no,
  IstPA_Samaksa.Apm_Lidz,
  IstPA_Samaksa.Samaksats
FROM
  IstPA_Sar
  RIGHT JOIN IstPA_Samaksa ON (
    IstPA_Sar.PA_Nos = IstPA_Samaksa.PA_Nos
  )
  AND (
    IstPA_Sar.Istaba = IstPA_Samaksa.IstNr
  )
  AND (
    IstPA_Sar.Ligums = IstPA_Samaksa.Ligums
  )
WHERE
  (
    (
      Not (IstPA_Samaksa.IstNr) Is Null
    )
    AND (
      (IstPA_Sar.Ligums) Is Null
    )
  )
  OR (
    (
      Not (IstPA_Samaksa.PA_Nos) Is Null
    )
    AND (
      (IstPA_Sar.Ligums) Is Null
    )
  )
ORDER BY
  IstPA_Samaksa.Ligums,
  IstPA_Samaksa.IstNr,
  IstPA_Samaksa.PA_Nos,
  IstPA_Samaksa.Apm_no;
