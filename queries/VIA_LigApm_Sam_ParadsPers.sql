SELECT
  [dbo_Personas].[Personas_ID],
  [dbo_Personas].[Vards],
  [dbo_Personas].[Uzvards],
  [dbo_Personas].[Pers_Kods],
  Max([dbo_viesn_Maksajumi].[Sk_Ist]) AS V_sk,
  Sum(
    IIf(
      IsNull([Ist_SamSum]),
      0,
      [Ist_SamSum]
    )- IIf(
      IsNull([Total]),
      0,
      [total]
    )+ IIf(
      IsNull([KavN_SamSum]),
      0,
      [KavN_SamSum]
    )- IIf(
      IsNull([KavN_Summa]),
      0,
      [KavN_Summa]
    )
  ) AS ParadsPers
FROM
  (
    dbo_viesn_Maksajumi
    LEFT JOIN dbo_viesn_Ligumi ON [dbo_viesn_Maksajumi].[Ligums] = [dbo_viesn_Ligumi].[Ligums]
  )
  LEFT JOIN dbo_Personas ON [dbo_viesn_Ligumi].[Pers_ID] = [dbo_Personas].[Personas_ID]
WHERE
  (
    (
      (
        IIf(
          IsNull([Ist_SamSum]),
          0,
          [Ist_SamSum]
        )- IIf(
          IsNull([Total]),
          0,
          [total]
        )
      )< 0
    )
    And (
      ([dbo_viesn_Maksajumi].[Stat]) Is Null
      Or ([dbo_viesn_Maksajumi].[Stat])<>-1
    )
  )
  Or (
    (
      ([dbo_viesn_Maksajumi].[Stat]) Is Null
      Or ([dbo_viesn_Maksajumi].[Stat])<>-1
    )
    And (
      (
        IIf(
          IsNull([KavN_SamSum]),
          0,
          [KavN_SamSum]
        )- IIf(
          IsNull([KavN_Summa]),
          0,
          [KavN_Summa]
        )
      )< 0
    )
  )
GROUP BY
  [dbo_Personas].[Personas_ID],
  [dbo_Personas].[Vards],
  [dbo_Personas].[Uzvards],
  [dbo_Personas].[Pers_Kods];
