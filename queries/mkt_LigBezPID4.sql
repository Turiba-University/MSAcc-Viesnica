UPDATE
  tmp_IB_LigBezPID
  INNER JOIN dbo_viesn_Ligumi ON [tmp_IB_LigBezPID].[LIGUM_ID] = [dbo_viesn_Ligumi].[LIGUM_ID]
SET
  dbo_viesn_Ligumi.Pers_ID = [Personas_ID];
