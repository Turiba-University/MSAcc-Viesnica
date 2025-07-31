SELECT
  dbo_viesn_Ligumi.LIGUM_ID,
  dbo_viesn_Ligumi.Ligums,
  dbo_viesn_Ligumi.Lig_Dat,
  dbo_viesn_Ligumi.Pers_ID,
  tmp_IB_LigBezPID.Personas_ID,
  dbo_viesn_Ligumi.Vards,
  dbo_viesn_Ligumi.Uzvards,
  dbo_viesn_Ligumi.PK,
  tmp_IB_LigBezPID.P_Vards,
  tmp_IB_LigBezPID.P_Uzvards,
  tmp_IB_LigBezPID.Pers_Kods
FROM
  tmp_IB_LigBezPID
  INNER JOIN dbo_viesn_Ligumi ON tmp_IB_LigBezPID.LIGUM_ID = dbo_viesn_Ligumi.LIGUM_ID;
