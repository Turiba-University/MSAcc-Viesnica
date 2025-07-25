SELECT
  Year([Last_Dat]) AS G,
  Month([Last_Dat]) AS M,
  [dbo_viesn_Maksajumi].[Last_Dat],
  IIf(
    [Dat_No] >= [forms]![VIA_VietuSkaitsUzdatumu]![DatNo]
    And [Dat_Lidz] <= [forms]![VIA_VietuSkaitsUzdatumu]![DatLidz],
    "Tekošais",
    IIf(
      [Dat_Lidz] <= [forms]![VIA_VietuSkaitsUzdatumu]![DatNo],
      "ParApm",
      IIf(
        [Dat_no] >= [forms]![VIA_VietuSkaitsUzdatumu]![DatLidz],
        "Avansā"
      )
    )
  ) AS Per,
  [dbo_viesn_Maksajumi].[Dat_No],
  [dbo_viesn_Maksajumi].[Dat_Lidz],
  [dbo_viesn_Maksajumi].[Total],
  [dbo_viesn_Maksajumi].[MaksVeids],
  IIf(
    [MaksVeids] = 1,
    "Kase",
    IIf(
      [MaksVeids] = 2,
      "Banka",
      IIf([MaksVeids] = 3, "C kase", Null)
    )
  ) AS MV
FROM
  dbo_viesn_Maksajumi
WHERE
  (
    (
      (
        Year([Last_Dat])
      )= Year(
        [forms]![VIA_VietuSkaitsUzdatumu]![DatNo]
      )
    )
    And (
      (
        Month([Last_Dat])
      )= Month(
        [forms]![VIA_VietuSkaitsUzdatumu]![DatNo]
      )
    )
    And (
      Not ([dbo_viesn_Maksajumi].[Total]) Is Null
    )
  );
