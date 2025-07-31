SELECT
  dbo_Atlaujas_sag.Uzvards AS stUzvards,
  dbo_Atlaujas_sag.Vards AS stVards,
  dbo_Atlaujas_sag.Lig_Num,
  dbo_sl_Stud_kursi.Pr_nos,
  dbo_sl_Macibspeki.Vards,
  dbo_sl_Macibspeki.Uzvards,
  dbo_Pakalpojumi.Pakalpojums,
  dbo_Atlaujas_sag.AtlID,
  dbo_STUDIJAS.CILVEKS_CKODS,
  dbo_STUDIJAS.STUDKODS,
  dbo_Atlaujas_sag.Statuss,
  dbo_sl_Katedras.Katedra,
  dbo_Atlaujas_sag.IzdosanasDat,
  dbo_Atlaujas_sag.AtlNr,
  IIf(
    [Statuss] = 1,
    "Gatavo",
    IIf(
      [statuss] = 2,
      [AtlNr],
      IIf(
        [statuss] =-1,
        "atsaukta",
        IIf([statuss] =-2, "Stud.atc.", "")
      )
    )
  ) AS A1,
  dbo_Atlaujas_sag.IzsnID,
  IIf(
    IsNull([statuss]),
    IIf(
      [izdosanasdat] <= Date(),
      1,
      IIf(
        [izdosanasdat] = Date()+ 1,
        2,
        3
      )
    )
  ) AS A2,
  dbo_Pakalpojumi.web
FROM
  (
    (
      (
        (
          dbo_Atlaujas_sag
          LEFT JOIN dbo_sl_Stud_kursi ON dbo_Atlaujas_sag.StudijuKurss = dbo_sl_Stud_kursi.Pr_ID
        )
        LEFT JOIN dbo_sl_Macibspeki ON dbo_Atlaujas_sag.Macibspeks = dbo_sl_Macibspeki.Pasn_ID
      )
      LEFT JOIN dbo_Pakalpojumi ON dbo_Atlaujas_sag.Veids = dbo_Pakalpojumi.PakID
    )
    LEFT JOIN dbo_STUDIJAS ON dbo_Atlaujas_sag.Lig_Num = dbo_STUDIJAS.LIG_NUM
  )
  LEFT JOIN dbo_sl_Katedras ON dbo_sl_Stud_kursi.Kat_ID = dbo_sl_Katedras.Kat_ID
WHERE
  (
    (
      (dbo_Atlaujas_sag.Statuss)= 0
    )
    AND (
      (dbo_Pakalpojumi.web)= 1
    )
  )
ORDER BY
  dbo_Atlaujas_sag.IzdosanasDat;
