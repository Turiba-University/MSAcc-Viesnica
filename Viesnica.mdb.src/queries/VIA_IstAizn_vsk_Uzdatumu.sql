SELECT
  VIA_LigIstStat_Uzdatumu.Ist_Nr,
  Sum(VIA_LigIstStat_Uzdatumu.Vsk) AS Vsk_aizn,
  Sum(VIA_LigIstStat_Uzdatumu.[In]) AS Iev,
  Sum(VIA_LigIstStat_Uzdatumu.Dz) AS Dz,
  Sum(VIA_LigIstStat_Uzdatumu.Out) AS Izv,
  Sum(VIA_LigIstStat_Uzdatumu.S) AS S,
  Sum(VIA_LigIstStat_Uzdatumu.V) AS V,
  Sum(
    IIf([Valsts] = "Latvija", 1, 0)
  ) AS DzLV,
  Sum(
    IIf([Valsts] = "Latvija", 0, 1)
  ) AS [DzNe-LV]
FROM
  VIA_LigIstStat_Uzdatumu
GROUP BY
  VIA_LigIstStat_Uzdatumu.Ist_Nr;
