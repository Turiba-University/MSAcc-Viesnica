SELECT
  [VIA_LigIstAizn_Dat].[Ligums],
  [VIA_LigIstAizn_Dat].[Istaba],
  [VIA_LigIstAizn_Dat].[LIDat_No],
  [VIA_LigIstAizn_Dat].[LIDat_Lidz],
  IIf(
    [LIDat_No] = [forms]![VIA_VietuSkaitsUzdatumu]![Stat_Datums],
    "ievācas",
    IIf(
      [LIDat_Lidz] = [forms]![VIA_VietuSkaitsUzdatumu]![Stat_Datums],
      "izvācas", "dzīvo"
    )
  ) AS Stat
FROM
  VIA_LigIstAizn_Dat;
