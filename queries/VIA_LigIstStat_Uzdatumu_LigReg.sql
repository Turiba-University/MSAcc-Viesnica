SELECT
  VIA_LigIstIrLig_Uzdatumu.Ligums,
  dbo_viesn_Ligumi.Lig_Dat,
  dbo_Personas.Vards,
  dbo_Personas.Uzvards,
  dbo_Personas.Pers_Kods,
  VIA_LigIstIrLig_Uzdatumu.Valsts,
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
  VIA_LigIstIrLig_Uzdatumu.Ist_Nr,
  Int(
    ([summa] + 0.005005)* 100
  )/ 100 AS [Sum],
  VIA_LigApm_Sam_Peddatums.V_ApmLidz AS ApmLidz_Dat,
  VIA_LigIstIrLig_Uzdatumu.Datums_In,
  VIA_LigIstIrLig_Uzdatumu.Datums_Out,
  dbo_Personas.Tel1 AS TelNr,
  dbo_Personas.Epasts
FROM
  (
    (
      (
        (
          VIA_LigIstIrLig_Uzdatumu
          LEFT JOIN VIA_LigIstApm_PedDat ON (
            VIA_LigIstIrLig_Uzdatumu.Ist_Nr = VIA_LigIstApm_PedDat.Ist_Nr
          )
          AND (
            VIA_LigIstIrLig_Uzdatumu.Ligums = VIA_LigIstApm_PedDat.Ligums
          )
        )
        LEFT JOIN dbo_viesn_Ligumi ON VIA_LigIstIrLig_Uzdatumu.Ligums = dbo_viesn_Ligumi.Ligums
      )
      LEFT JOIN dbo_Personas ON dbo_viesn_Ligumi.Pers_ID = dbo_Personas.Personas_ID
    )
    LEFT JOIN VIA_LigApm_Sam_Peddatums ON VIA_LigIstIrLig_Uzdatumu.Ligums = VIA_LigApm_Sam_Peddatums.Ligums
  )
  LEFT JOIN dbo_Personas_Cert ON dbo_viesn_Ligumi.Pers_ID = dbo_Personas_Cert.Personas_ID;
