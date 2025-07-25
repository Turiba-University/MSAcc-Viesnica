SELECT
  VIA_LigIstStat_Maksajumi.G,
  VIA_LigIstStat_Maksajumi.M,
  VIA_LigIstStat_Maksajumi.Per,
  Sum(
    IIf([MaksVeids] = 1, [Total], Null)
  ) AS Kase,
  Sum(
    IIf([MaksVeids] = 2, [Total], Null)
  ) AS Banka,
  Sum(
    IIf([MaksVeids] = 3, [Total], Null)
  ) AS CKase
FROM
  VIA_LigIstStat_Maksajumi
GROUP BY
  VIA_LigIstStat_Maksajumi.G,
  VIA_LigIstStat_Maksajumi.M,
  VIA_LigIstStat_Maksajumi.Per;
