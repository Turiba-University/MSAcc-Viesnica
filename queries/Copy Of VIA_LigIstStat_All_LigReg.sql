SELECT
  dbo_viesn_Ligumi.Ligums,
  dbo_viesn_Ligumi.Lig_Dat,
  dbo_Personas.Vards,
  dbo_Personas.Uzvards,
  dbo_Personas.Pers_Kods,
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
  dbo_Personas_Cert.CertDatums,
  dbo_viesn_Ligumi_Istabas.Istaba,
  Int(
    ([summa] + 0.005005)* 100
  )/ 100 AS [Sum],
  VIA_LigIstApm_PedDat.ApmLidz_Dat,
  dbo_viesn_Ligumi.Datums_In,
  dbo_viesn_Ligumi.Datums_Out
FROM
  (
    (
      (
        dbo_viesn_Ligumi
        LEFT JOIN dbo_Personas ON dbo_viesn_Ligumi.Pers_ID = dbo_Personas.Personas_ID
      )
      LEFT JOIN dbo_viesn_Ligumi_Istabas ON dbo_viesn_Ligumi.Ligums = dbo_viesn_Ligumi_Istabas.Ligums
    )
    LEFT JOIN VIA_LigIstApm_PedDat ON (
      dbo_viesn_Ligumi_Istabas.Istaba = VIA_LigIstApm_PedDat.Ist_Nr
    )
    AND (
      dbo_viesn_Ligumi_Istabas.Ligums = VIA_LigIstApm_PedDat.Ligums
    )
  )
  LEFT JOIN dbo_Personas_Cert ON dbo_viesn_Ligumi.Pers_ID = dbo_Personas_Cert.Personas_ID
ORDER BY
  dbo_viesn_Ligumi.Ligums DESC;
