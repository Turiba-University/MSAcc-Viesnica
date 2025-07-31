SELECT
  dbo_viesn_Ligumi.Ligums,
  dbo_viesn_Ligumi.Lig_Dat,
  dbo_Personas.Vards,
  dbo_Personas.Uzvards,
  dbo_Personas.Pers_Kods,
  dbo_Personas.Valsts,
  dbo_viesn_Ligumi.Position AS Statuss,
  IIf(
    [CertVeids] = 1,
    "Pārsl.",
    IIf(
      [CertVeids] = 2,
      "Vakc.",
      IIf([CertVeids] = 0, "nav", Null)
    )
  ) AS Cert,
  dbo_Personas_Cert.CertDatums
FROM
  (
    dbo_viesn_Ligumi
    LEFT JOIN dbo_Personas ON dbo_viesn_Ligumi.Pers_ID = dbo_Personas.Personas_ID
  )
  LEFT JOIN dbo_Personas_Cert ON dbo_viesn_Ligumi.Pers_ID = dbo_Personas_Cert.Personas_ID
ORDER BY
  dbo_viesn_Ligumi.Ligums DESC;
