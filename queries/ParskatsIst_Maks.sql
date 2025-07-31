SELECT
  [tmp_ParskatsPaValstim].[IstNr],
  Sum([tmp_ParskatsPaValstim].[Sk]) AS GN,
  Sum(
    [tmp_ParskatsPaValstim].[SumJamaksa]
  ) AS Jamaksa,
  Sum(
    IIf(
      [SumNoIepr] = 0, [SumJamaksa], Null
    )
  ) AS Samaksats,
  Sum(
    IIf(
      [SumNoIepr] =-1, [SumJamaksa], Null
    )
  ) AS Parads,
  Sum(
    IIf(
      [MaksVeids] = 1
      And [SumNoIepr] = 0, [SumJamaksa],
      Null
    )
  ) AS SamKase,
  Sum(
    IIf(
      [MaksVeids] = 3
      And [SumNoIepr] = 0, [SumJamaksa],
      Null
    )
  ) AS SamCKase,
  Sum(
    IIf(
      [MaksVeids] = 2
      And [SumNoIepr] = 0, [SumJamaksa],
      Null
    )
  ) AS SamBanka,
  Sum(
    IIf(
      IsNull([MaksVeids])
      And [SumNoIepr] = 0,
      [SumJamaksa],
      Null
    )
  ) AS SamCits,
  Sum(
    IIf(
      [Valsts] = "Latvija"
      And [SumNoIepr] = 0,
      [SumJamaksa], Null
    )
  ) AS SamLatvija,
  Sum(
    IIf(
      Not ([Valsts] = "Latvija")
      And [SumNoIepr] = 0,
      [SumJamaksa],
      Null
    )
  ) AS SamArvalstn,
  Sum(
    IIf(
      [MaksTermTips] = 1
      And [SumNoIepr] = 0,
      [SumJamaksa], Null
    )
  ) AS SamIeprPer,
  Sum(
    IIf(
      [MaksTermTips] = 2
      And [SumNoIepr] = 0,
      [SumJamaksa], Null
    )
  ) AS SamPer,
  Sum(
    IIf(
      [MaksTermTips] = 3
      And [SumNoIepr] = 0,
      [SumJamaksa], Null
    )
  ) AS SamNakPer
FROM
  tmp_ParskatsPaValstim
GROUP BY
  [tmp_ParskatsPaValstim].[IstNr];
