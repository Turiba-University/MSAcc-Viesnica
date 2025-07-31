SELECT
  dbo_viesn_Ligumi.LIGUM_ID,
  VIA_LigIstAizn_Dat_data.Istaba AS Ist_Nr,
  dbo_viesn_kl_Istabas.IstabasNr,
  VIA_LigIstAizn_Dat_data.Ligums,
  dbo_viesn_Ligumi.Lig_Dat,
  dbo_viesn_Ligumi.Pers_ID,
  dbo_Personas.Vards,
  dbo_Personas.Uzvards,
  dbo_Personas.Pers_Kods,
  dbo_viesn_Ligumi.Valsts,
  VIA_LigIstAizn_Dat_data.LIDat_No,
  VIA_LigIstAizn_Dat_data.LIDat_Lidz,
  VIA_LigIstAizn_Dat_data.Stat,
  dbo_Personas.Tel1
FROM
  (
    VIA_LigIstAizn_Dat_data
    LEFT JOIN (
      dbo_viesn_Ligumi
      LEFT JOIN dbo_Personas ON dbo_viesn_Ligumi.[Pers_ID] = dbo_Personas.[Personas_ID]
    ) ON VIA_LigIstAizn_Dat_data.[Ligums] = dbo_viesn_Ligumi.[Ligums]
  )
  LEFT JOIN dbo_viesn_kl_Istabas ON VIA_LigIstAizn_Dat_data.Istaba = dbo_viesn_kl_Istabas.Istaba;
