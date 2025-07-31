SELECT
  VIA_LigIst_Stat_Inv_IKartes.Ligums,
  Count(
    VIA_LigIst_Stat_Inv_IKartes.Ligums
  ) AS KSk,
  Max(
    VIA_LigIst_Stat_Inv_IKartes.InvComment
  ) AS KNr
FROM
  VIA_LigIst_Stat_Inv_IKartes
GROUP BY
  VIA_LigIst_Stat_Inv_IKartes.Ligums;
