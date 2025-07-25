SELECT
  dbo_viesn_kl_Istabas.Istaba,
  dbo_viesn_kl_Istabas.IstabasNr,
  dbo_viesn_kl_Istabas.VietuSk AS [Vietu skaits],
  [dbo_viesn_kl_Istabas].[vietusk] -(
    select
      Count(
        [dbo_Viesn_Rezervesana].[Istaba]
      )
    from
      dbo_Viesn_Rezervesana
    where
      dbo_Viesn_Rezervesana.Rez_MG = 2020
      and dbo_Viesn_Rezervesana.Dzests = 0
      and [dbo_Viesn_Rezervesana].[Istaba] = dbo_viesn_kl_Istabas.istaba;
  ) AS [Brīvās vietas],
  Sum(
    IIf([Dzimums] = "S", 1, Null)
  ) AS S,
  Sum(
    IIf([Dzimums] = "V", 1, Null)
  ) AS V,
  Sum(
    IIf([Valsts] = "Latvija", 1, Null)
  ) AS LV,
  Sum(
    IIf(
      [Valsts] = "Latvija",
      Null,
      IIf(
        IsNull([Rezervisti_20].[CKods]),
        Null,
        1
      )
    )
  ) AS [ne-LV],
  Sum(
    IIf(
      [dbo_Viesn_Rezervesana].[Tips] = "BAT students",
      1, Null
    )
  ) AS BATStud,
  Sum(
    IIf(
      [VIA_StudStatData].[Lim] = "K", 1,
      Null
    )
  ) AS BAT_K,
  Sum(
    IIf(
      [VIA_StudStatData].[Lim] = "B", 1,
      Null
    )
  ) AS BAT_B,
  Sum(
    IIf(
      [VIA_StudStatData].[Lim] = "M", 1,
      Null
    )
  ) AS BAT_M,
  Sum(
    IIf(
      [VIA_StudStatData].[Lim] = "D", 1,
      Null
    )
  ) AS BAT_D,
  Sum(
    IIf(
      [dbo_Viesn_Rezervesana].[Tips] = "BAT darbinieks",
      1, Null
    )
  ) AS BATDarbin,
  Sum(
    IIf(
      [dbo_Viesn_Rezervesana].[Tips] = "Cita augstskola",
      1, Null
    )
  ) AS CitsStud,
  Sum(
    IIf(
      [dbo_Viesn_Rezervesana].[Tips] = "Tūrists",
      1, Null
    )
  ) AS Turists,
  Sum(
    IIf(
      IsNull([dbo_Viesn_Rezervesana].[Tips]),
      IIf(
        IsNull([Rezervisti_20].[CKods]),
        Null,
        1
      ),
      Null
    )
  ) AS cits
FROM
  (
    dbo_viesn_kl_Istabas
    LEFT JOIN (
      Rezervisti_20
      LEFT JOIN dbo_Personas ON Rezervisti_20.CKods = dbo_Personas.Personas_ID
    ) ON dbo_viesn_kl_Istabas.Istaba = Rezervisti_20.Istaba
  )
  LEFT JOIN VIA_StudStatData ON Rezervisti_20.CKods = VIA_StudStatData.CKods
GROUP BY
  dbo_viesn_kl_Istabas.Istaba,
  dbo_viesn_kl_Istabas.IstabasNr,
  dbo_viesn_kl_Istabas.VietuSk,
  dbo_viesn_kl_Istabas.Istaba
ORDER BY
  dbo_viesn_kl_Istabas.IstabasNr;
