SELECT
  dbo_viesn_Ligumi.Ligums,
  dbo_viesn_Ligumi.Lig_Dat,
  dbo_viesn_Ligumi.Pers_ID,
  dbo_Personas.Vards,
  dbo_Personas.Uzvards,
  dbo_Personas.Pers_Kods,
  dbo_Personas.Valsts,
  dbo_viesn_Ligumi.Position AS Statuss,
  dbo_viesn_Ligumi.PositionComment AS StatComment,
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
  ViesnLigKoment_LastKoment.Komentars,
  VIA_StudStatData.StudStat,
  VIA_StudStatData.Progr,
  VIA_StudStatData.Lim,
  dbo_viesn_Ligumi_Istabas.Istaba,
  VIA_LigIst_Stat_Inv_IKartes_gr.KSk,
  VIA_LigIst_Stat_Inv_IKartes_gr.KNr,
  Int(
    ([summa] + 0.005005)* 100
  )/ 100 AS [Sum],
  VIA_LigApm_Sam_Peddatums.V_ApmLidz AS ApmLidz_Dat,
  dbo_viesn_Ligumi.Datums_In,
  dbo_viesn_Ligumi.Datums_Out,
  dbo_viesn_Ligumi_Istabas.LIDat_No,
  dbo_viesn_Ligumi_Istabas.LIDat_Lidz,
  dbo_Personas.Tel1 AS TelNr,
  dbo_Personas.Epasts
FROM
  (
    (
      (
        (
          (
            (
              (
                dbo_viesn_Ligumi
                LEFT JOIN dbo_Personas ON dbo_viesn_Ligumi.Pers_ID = dbo_Personas.Personas_ID
              )
              LEFT JOIN dbo_viesn_Ligumi_Istabas ON dbo_viesn_Ligumi.Ligums = dbo_viesn_Ligumi_Istabas.Ligums
            )
            LEFT JOIN VIA_LigIstApm_PedDat ON (
              dbo_viesn_Ligumi_Istabas.Ligums = VIA_LigIstApm_PedDat.Ligums
            )
            AND (
              dbo_viesn_Ligumi_Istabas.Istaba = VIA_LigIstApm_PedDat.Ist_Nr
            )
          )
          LEFT JOIN VIA_LigApm_Sam_Peddatums ON dbo_viesn_Ligumi.Ligums = VIA_LigApm_Sam_Peddatums.Ligums
        )
        LEFT JOIN VIA_LigIst_Stat_Inv_IKartes_gr ON dbo_viesn_Ligumi_Istabas.Ligums = VIA_LigIst_Stat_Inv_IKartes_gr.Ligums
      )
      LEFT JOIN VIA_StudStatData ON dbo_viesn_Ligumi.Pers_ID = VIA_StudStatData.CKods
    )
    LEFT JOIN dbo_Personas_Cert ON dbo_viesn_Ligumi.Pers_ID = dbo_Personas_Cert.Personas_ID
  )
  LEFT JOIN ViesnLigKoment_LastKoment ON dbo_viesn_Ligumi.Ligums = ViesnLigKoment_LastKoment.Lig_Nr
WHERE
  (
    (
      (
        dbo_viesn_Ligumi_Istabas.LIDat_No
      )<= forms!VIA_VietuSkaitsUzdatumu!Stat_Datums
    )
    And (
      (
        dbo_viesn_Ligumi_Istabas.LIDat_Lidz
      ) Is Null
      Or (
        dbo_viesn_Ligumi_Istabas.LIDat_Lidz
      )>= forms!VIA_VietuSkaitsUzdatumu!Stat_Datums
    )
  )
ORDER BY
  dbo_viesn_Ligumi.Ligums DESC;
