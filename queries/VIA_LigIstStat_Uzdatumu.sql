SELECT
  VIA_LigIstIrLig_Uzdatumu.Ligums,
  VIA_LigIstIrLig_Uzdatumu.Pers_ID,
  VIA_LigIstIrLig_Uzdatumu.Uzvards,
  VIA_LigIstIrLig_Uzdatumu.Vards,
  VIA_LigIstIrLig_Uzdatumu.Pers_Kods,
  VIA_LigIstIrLig_Uzdatumu.Valsts,
  VIA_LigIstIrLig_Uzdatumu.Tel1,
  VIA_LigIstIrLig_Uzdatumu.Datums_In,
  VIA_LigIstIrLig_Uzdatumu.Datums_Out,
  VIA_LigIstIrLig_Uzdatumu.Ist_Nr,
  VIA_LigIstAizn_Dat_data.LIDat_No,
  VIA_LigIstAizn_Dat_data.LIDat_Lidz,
  IIf(
    IsNull(
      [VIA_LigIstAizn_Dat_data].[ligums]
    ),
    Null,
    IIf(
      [AiznDat_Vsk] > 0, [AiznDat_Vsk], [PirmsDat_Vsk]
    )
  ) AS Vsk,
  VIA_LigIstApm_PirmsDat_data.PirmsDat_Vsk,
  VIA_LigIstApm_PirmsDat_data.PirmsDat_dat,
  VIA_LigIstApmAizn_Dat_data.AiznDat_Vsk AS Dat_Vsk,
  IIf([MStat] > 0, 1, Null) AS Dat_Vsk_Sam,
  VIA_LigIstApm_PecDat_data.PecDat_Vsk,
  VIA_LigIstApm_PecDat_data.PecDat_dat,
  VIA_LigIstAizn_Dat_data.Stat,
  IIf([Stat] = "ievācas", [Vsk], 0) AS [In],
  IIf([Stat] = "dzīvo", [Vsk], 0) AS Dz,
  IIf([Stat] = "izvācas", [Vsk], 0) AS Out,
  IIf([Stat] = "dzīvo", [Vsk], 0)+ IIf([Stat] = "izvācas", [Vsk], 0) AS NSk,
  VIA_LigApm_Sam_Peddatums.V_ApmLidz,
  VIA_LigIstIrLig_Uzdatumu.S,
  VIA_LigIstIrLig_Uzdatumu.V
FROM
  (
    (
      (
        (
          (
            (
              VIA_LigIstIrLig_Uzdatumu
              LEFT JOIN VIA_LigIstApm_PirmsDat_data ON (
                VIA_LigIstIrLig_Uzdatumu.[Ist_Nr] = VIA_LigIstApm_PirmsDat_data.[Ist_Nr]
              )
              AND (
                VIA_LigIstIrLig_Uzdatumu.[Ligums] = VIA_LigIstApm_PirmsDat_data.[Ligums]
              )
            )
            LEFT JOIN VIA_LigIstApm_PecDat_data ON (
              VIA_LigIstIrLig_Uzdatumu.[Ist_Nr] = VIA_LigIstApm_PecDat_data.[Ist_Nr]
            )
            AND (
              VIA_LigIstIrLig_Uzdatumu.[Ligums] = VIA_LigIstApm_PecDat_data.[Ligums]
            )
          )
          LEFT JOIN VIA_LigIstApm_Dat_data ON (
            VIA_LigIstIrLig_Uzdatumu.[Ist_Nr] = VIA_LigIstApm_Dat_data.[Ist_Nr]
          )
          AND (
            VIA_LigIstIrLig_Uzdatumu.[Ligums] = VIA_LigIstApm_Dat_data.[Ligums]
          )
        )
        LEFT JOIN VIA_LigIstAizn_Dat_data ON (
          VIA_LigIstIrLig_Uzdatumu.[Ist_Nr] = VIA_LigIstAizn_Dat_data.[Istaba]
        )
        AND (
          VIA_LigIstIrLig_Uzdatumu.[Ligums] = VIA_LigIstAizn_Dat_data.[Ligums]
        )
      )
      LEFT JOIN VIA_LigIstApmAizn_Dat_data ON (
        VIA_LigIstIrLig_Uzdatumu.[Ist_Nr] = VIA_LigIstApmAizn_Dat_data.[Ist_Nr]
      )
      AND (
        VIA_LigIstIrLig_Uzdatumu.[Ligums] = VIA_LigIstApmAizn_Dat_data.[Ligums]
      )
    )
    LEFT JOIN VIA_LigIstApmAiznSamaksats_Dat_data ON (
      VIA_LigIstIrLig_Uzdatumu.[Ist_Nr] = VIA_LigIstApmAiznSamaksats_Dat_data.[Ist_Nr]
    )
    AND (
      VIA_LigIstIrLig_Uzdatumu.[Ligums] = VIA_LigIstApmAiznSamaksats_Dat_data.[Ligums]
    )
  )
  LEFT JOIN VIA_LigApm_Sam_Peddatums ON VIA_LigIstIrLig_Uzdatumu.[Ligums] = VIA_LigApm_Sam_Peddatums.[Ligums];
