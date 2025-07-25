SELECT
  VIA_parb_LigIst_Uzdatumu_LigInfo.LIGUM_ID,
  VIA_parb_LigIst_Uzdatumu_LigInfo.Ist_Nr,
  VIA_parb_LigIst_Uzdatumu_LigInfo.IstabasNr,
  VIA_parb_LigIst_Uzdatumu_LigInfo.Ligums,
  VIA_parb_LigIst_Uzdatumu_LigInfo.Lig_Dat,
  VIA_parb_LigIst_Uzdatumu_LigInfo.Pers_ID,
  VIA_parb_LigIst_Uzdatumu_LigInfo.Vards,
  VIA_parb_LigIst_Uzdatumu_LigInfo.Uzvards,
  Rezervisti_19_nenosl.V_Rez_RID
FROM
  VIA_parb_LigIst_Uzdatumu_LigInfo
  INNER JOIN Rezervisti_19_nenosl ON (
    VIA_parb_LigIst_Uzdatumu_LigInfo.Pers_ID = Rezervisti_19_nenosl.CKods
  )
  AND (
    VIA_parb_LigIst_Uzdatumu_LigInfo.Ist_Nr = Rezervisti_19_nenosl.Istaba
  );
