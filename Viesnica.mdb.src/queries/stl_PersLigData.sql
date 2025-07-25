SELECT
  dbo_STL_PersLigData.LIG_NUM AS Līgums,
  dbo_STL_PersLigData.LIG_DAT AS Datums,
  dbo_STL_PersLigData.Vards AS Vārds,
  dbo_STL_PersLigData.Uzvards AS Uzvārds,
  dbo_STL_PersLigData.Pers_Kods,
  [Gr_kods] & IIf([MValoda] = 2, " A", " L") AS Progr,
  IIf(
    [Lig_Num] < 29600, [KURSS], [StudGads]
  ) AS StGads,
  IIf(
    IsNull([Kods]),
    [TIPS_NODALA],
    [kods]
  ) AS Nodaļa,
  dbo_STL_PersLigData.MGR_Dat,
  dbo_STL_PersLigData.MGR_DokNr AS Nr,
  dbo_STL_PersLigData.MacGads AS Gads,
  Format(
    IIf(
      [Lig_Num] < 29600, [LIG_SUM], [StM_Kopeja]
    ),
    "Fixed"
  ) AS Summa,
  IIf([Val_ID] = 2, "EUR", "Ls") AS Val,
  IIf(
    IsNull([Fil_nos]),
    [Filiale],
    [Fil_nos]
  ) AS Filiāle,
  dbo_STL_PersLigData.STUDKODS,
  dbo_STL_PersLigData.Stud_ID,
  dbo_STL_PersLigData.MGR_ID,
  dbo_STL_PersLigData.CILVEKS_CKODS,
  IIf([StSakSem] = 2, 2, 1) AS SakSem
FROM
  dbo_STL_PersLigData;
