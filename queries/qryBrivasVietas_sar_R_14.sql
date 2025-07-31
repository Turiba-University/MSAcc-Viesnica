SELECT
  dbo_viesn_kl_Istabas.Istaba,
  dbo_viesn_kl_Istabas.VietuSk AS [Vietu skaits],
  [dbo_viesn_kl_Istabas].[vietusk] -(
    select
      Count(
        [dbo_Viesn_Rezervesana].[Istaba]
      )
    from
      dbo_Viesn_Rezervesana
    where
      dbo_Viesn_Rezervesana.Rez_MG = 2014
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
        IsNull([CKods]),
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
        IsNull([CKods]),
        Null,
        1
      ),
      Null
    )
  ) AS cits
FROM
  dbo_viesn_kl_Istabas
  LEFT JOIN (
    Rezervisti_14
    LEFT JOIN dbo_Personas ON Rezervisti_14.CKods = dbo_Personas.Personas_ID
  ) ON dbo_viesn_kl_Istabas.Istaba = Rezervisti_14.Istaba
GROUP BY
  dbo_viesn_kl_Istabas.Istaba,
  dbo_viesn_kl_Istabas.VietuSk
ORDER BY
  dbo_viesn_kl_Istabas.Istaba;
