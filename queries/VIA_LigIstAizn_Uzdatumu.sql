SELECT
  VIA_Istabas.Ist_Nr,
  VIA_LigIstApm_Uzdatumu.V_sk,
  VIA_LigIstApm_Uzdatumu.V_ApmLidz,
  dbo_viesn_Ligumi.Datums_Out
FROM
  (
    VIA_Istabas
    LEFT JOIN VIA_LigIstApm_Uzdatumu ON VIA_Istabas.Ist_Nr = VIA_LigIstApm_Uzdatumu.Ist_Nr
  )
  INNER JOIN dbo_viesn_Ligumi ON VIA_LigIstApm_Uzdatumu.Ligums = dbo_viesn_Ligumi.Ligums;
