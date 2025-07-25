SELECT
  dbo_viesn_Ligumi.Ligums,
  IIf(
    [Position] = "BAT students",
    "BATStud",
    IIf(
      [Position] = "Cita skola",
      "CitaSkola",
      IIf(
        [Position] = "Darbinieks",
        "Darbinieks",
        IIf(
          [Position] = "Viesis", "Viesis", "Cits"
        )
      )
    )
  ) AS TTips,
  IIf(
    [dbo_viesn_Ligumi_Istabas].[Istaba] < 0,
    1,
    IIf(
      [dbo_viesn_Ligumi_Istabas].[Istaba] < 199,
      2, 3
    )
  ) AS ITips,
  dbo_viesn_Ligumi_Istabas.Istaba AS Ist_Nr,
  dbo_Personas.Uzvards,
  dbo_Personas.Vards,
  dbo_Personas.Pers_Kods,
  dbo_Personas.Tel1,
  dbo_viesn_Ligumi.Datums_In,
  dbo_viesn_Ligumi.Datums_Out,
  IIf(
    IsNull(
      [dbo_viesn_Ligumi_VValstis].[Valsts]
    ),
    IIf(
      IsNull([dbo_viesn_Ligumi].[Valsts]),
      "Latvija",
      [dbo_viesn_Ligumi].[Valsts]
    ),
    [dbo_viesn_Ligumi_VValstis].[Valsts]
  ) AS Valst,
  Sum(dbo_viesn_Maksajumi.Ist_SamSum) AS SumOfIst_SamSum,
  Sum(
    dbo_viesn_Maksajumi.KavN_SamSum
  ) AS SumOfKavN_SamSum
FROM
  (
    (
      dbo_Personas
      RIGHT JOIN (
        dbo_viesn_Ligumi
        LEFT JOIN dbo_viesn_Ligumi_Istabas ON dbo_viesn_Ligumi.Ligums = dbo_viesn_Ligumi_Istabas.Ligums
      ) ON dbo_Personas.Personas_ID = dbo_viesn_Ligumi.Pers_ID
    )
    LEFT JOIN dbo_viesn_Ligumi_VValstis ON (
      dbo_viesn_Ligumi_Istabas.Istaba = dbo_viesn_Ligumi_VValstis.Istaba
    )
    AND (
      dbo_viesn_Ligumi_Istabas.Ligums = dbo_viesn_Ligumi_VValstis.Ligums
    )
  )
  LEFT JOIN dbo_viesn_Maksajumi ON (
    dbo_viesn_Ligumi_Istabas.Istaba = dbo_viesn_Maksajumi.Ist_Nr
  )
  AND (
    dbo_viesn_Ligumi_Istabas.Ligums = dbo_viesn_Maksajumi.Ligums
  )
WHERE
  (
    (
      (dbo_viesn_Maksajumi.Last_Dat)>= [forms]![VIA_VietuSkaitsUzdatumu]![DatNo]
      And (dbo_viesn_Maksajumi.Last_Dat)<= [forms]![VIA_VietuSkaitsUzdatumu]![DatLidz]
    )
  )
GROUP BY
  dbo_viesn_Ligumi.Ligums,
  IIf(
    [Position] = "BAT students",
    "BATStud",
    IIf(
      [Position] = "Cita skola",
      "CitaSkola",
      IIf(
        [Position] = "Darbinieks",
        "Darbinieks",
        IIf(
          [Position] = "Viesis", "Viesis", "Cits"
        )
      )
    )
  ),
  IIf(
    [dbo_viesn_Ligumi_Istabas].[Istaba] < 0,
    1,
    IIf(
      [dbo_viesn_Ligumi_Istabas].[Istaba] < 199,
      2, 3
    )
  ),
  dbo_viesn_Ligumi_Istabas.Istaba,
  dbo_Personas.Uzvards,
  dbo_Personas.Vards,
  dbo_Personas.Pers_Kods,
  dbo_Personas.Tel1,
  dbo_viesn_Ligumi.Datums_In,
  dbo_viesn_Ligumi.Datums_Out,
  IIf(
    IsNull(
      [dbo_viesn_Ligumi_VValstis].[Valsts]
    ),
    IIf(
      IsNull([dbo_viesn_Ligumi].[Valsts]),
      "Latvija",
      [dbo_viesn_Ligumi].[Valsts]
    ),
    [dbo_viesn_Ligumi_VValstis].[Valsts]
  );
