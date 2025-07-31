SELECT
  z_ib_VIA_DzivoUzSodienu.Pers_ID,
  z_ib_VIA_DzivoUzSodienu.Vards,
  z_ib_VIA_DzivoUzSodienu.Uzvards,
  z_ib_VIA_DzivoUzSodienu.Pers_Kods,
  dbo_viesn_Ligumi.Ligums,
  dbo_viesn_Ligumi.Lig_Dat,
  dbo_viesn_Ligumi.Datums_In,
  dbo_viesn_Ligumi.Datums_Out
FROM
  z_ib_VIA_DzivoUzSodienu
  INNER JOIN dbo_viesn_Ligumi ON z_ib_VIA_DzivoUzSodienu.Pers_ID = dbo_viesn_Ligumi.Pers_ID
ORDER BY
  z_ib_VIA_DzivoUzSodienu.Pers_ID,
  dbo_viesn_Ligumi.Datums_In DESC;
