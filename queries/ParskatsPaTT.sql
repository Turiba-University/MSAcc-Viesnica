SELECT
  IIf(
    [Tips] = "BAT students",
    "BATStud",
    IIf(
      [Tips] = "Cita skola",
      "CitaSkola",
      IIf(
        [Tips] = "Darbinieks",
        "Darbinieks",
        IIf(
          [Tips] = "Viesis", "Viesis", "Cits"
        )
      )
    )
  ) AS TTips,
  IIf(
    [IstNr] < 0,
    1,
    IIf([IstNr] < 199, 2, 3)
  ) AS ITips,
  [tmp_ParskatsPaValstim].[IstNr],
  [tmp_ParskatsPaValstim].[Tips],
  [tmp_ParskatsPaValstim].[Datums],
  [tmp_ParskatsPaValstim].[LigNr],
  [tmp_ParskatsPaValstim].[Valsts],
  [tmp_ParskatsPaValstim].[Pers_ID],
  [tmp_ParskatsPaValstim].[Sk],
  [tmp_ParskatsPaValstim].[SumJamaksa],
  [tmp_ParskatsPaValstim].[SumNoIepr],
  [tmp_ParskatsPaValstim].[MaksVeids],
  [tmp_ParskatsPaValstim].[MaksTermTips]
FROM
  tmp_ParskatsPaValstim;
