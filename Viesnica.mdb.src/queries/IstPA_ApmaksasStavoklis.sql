SELECT
  IstPA_Sar.Ligums,
  IstPA_Sar.Istaba,
  IstPA_Sar.PA_Nos AS Nosaukums,
  IstPA_Sar.PA_Cena AS Cena,
  IstPA_Sar.Skaits,
  IstPA_Sar.PADat_No,
  IstPA_Sar.PADat_Lidz,
  IstPA_Samaksa.Apm_no,
  IstPA_Samaksa.Apm_Lidz,
  IstPA_Samaksa.Samaksats,
  IIf(
    IsNull([Apm_Lidz])
    Or [Apm_Lidz] < Date(),
    "xx"
  ) AS Stat
FROM
  IstPA_Sar
  LEFT JOIN IstPA_Samaksa ON (
    IstPA_Sar.PA_Nos = IstPA_Samaksa.PA_Nos
  )
  AND (
    IstPA_Sar.Istaba = IstPA_Samaksa.IstNr
  )
  AND (
    IstPA_Sar.Ligums = IstPA_Samaksa.Ligums
  )
ORDER BY
  IstPA_Sar.Ligums,
  IstPA_Sar.Istaba,
  IstPA_Sar.PA_Nos,
  IstPA_Sar.PA_Cena;
