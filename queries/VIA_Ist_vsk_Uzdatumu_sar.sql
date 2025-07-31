SELECT
  VIA_Ist_vsk_Uzdatumu.IstabasNr,
  VIA_Ist_vsk_Uzdatumu.Vietas,
  VIA_Ist_vsk_Uzdatumu.Aizn,
  VIA_Ist_vsk_Uzdatumu.DzS,
  VIA_Ist_vsk_Uzdatumu.DzV,
  VIA_Ist_vsk_Uzdatumu.DzLV,
  VIA_Ist_vsk_Uzdatumu.[DzNe-LV],
  VIA_Ist_vsk_Uzdatumu.Brivas,
  VIA_Ist_vsk_Uzdatumu.RezVietasIst AS Rez,
  VIA_Ist_vsk_Uzdatumu.BrivasNeRez,
  VIA_Ist_vsk_Uzdatumu.S,
  VIA_Ist_vsk_Uzdatumu.V,
  VIA_Ist_vsk_Uzdatumu.LV,
  VIA_Ist_vsk_Uzdatumu.[ne-LV]
FROM
  VIA_Ist_vsk_Uzdatumu
ORDER BY
  VIA_Ist_vsk_Uzdatumu.IstabasNr;
