SELECT
  dbo_viesn_Ligumi.Pers_ID,
  dbo_viesn_Ligumi.Ligums,
  dbo_viesn_Ligumi_Istabas.Istaba AS Ist_Nr,
  dbo_Personas.Uzvards,
  dbo_Personas.Vards,
  dbo_Personas.Valsts,
  dbo_Personas.Pers_Kods,
  dbo_Personas.Tel1,
  dbo_viesn_Ligumi.Datums_In,
  dbo_viesn_Ligumi.Datums_Out,
  Sum(
    IIf([Dzimums] = "s", 1, Null)
  ) AS S,
  Sum(
    IIf([Dzimums] = "v", 1, Null)
  ) AS V
FROM
  dbo_Personas
  RIGHT JOIN (
    dbo_viesn_Ligumi
    INNER JOIN dbo_viesn_Ligumi_Istabas ON dbo_viesn_Ligumi.[Ligums] = dbo_viesn_Ligumi_Istabas.[Ligums]
  ) ON dbo_Personas.[Personas_ID] = dbo_viesn_Ligumi.[Pers_ID]
WHERE
  (
    (
      (
        dbo_viesn_Ligumi_Istabas.LIDat_No
      )<= forms!VIA_VietuSkaitsUzdatumu!Stat_Datums
    )
    And (
      (
        dbo_viesn_Ligumi_Istabas.LIDat_Lidz
      ) Is Null
      Or (
        dbo_viesn_Ligumi_Istabas.LIDat_Lidz
      )>= forms!VIA_VietuSkaitsUzdatumu!Stat_Datums
    )
  )
GROUP BY
  dbo_viesn_Ligumi.Pers_ID,
  dbo_viesn_Ligumi.Ligums,
  dbo_viesn_Ligumi_Istabas.Istaba,
  dbo_Personas.Uzvards,
  dbo_Personas.Vards,
  dbo_Personas.Valsts,
  dbo_Personas.Pers_Kods,
  dbo_Personas.Tel1,
  dbo_viesn_Ligumi.Datums_In,
  dbo_viesn_Ligumi.Datums_Out;
