SELECT
  [dbo_viesn_Ligumi].[Ligums],
  [dbo_viesn_Ligumi].[Pers_ID],
  [dbo_viesn_Ligumi].[Lig_Dat],
  [dbo_viesn_Ligumi].[Vards],
  [dbo_viesn_Ligumi].[Uzvards],
  [dbo_viesn_Ligumi].[Datums_In],
  [dbo_viesn_Ligumi].[Datums_Out],
  [dbo_viesn_Ligumi_Istabas].[Istaba],
  [dbo_viesn_Ligumi_Istabas].[LIDat_No],
  [dbo_viesn_Ligumi_Istabas].[LIDat_Lidz]
FROM
  dbo_viesn_Ligumi
  INNER JOIN dbo_viesn_Ligumi_Istabas ON [dbo_viesn_Ligumi].[Ligums] = [dbo_viesn_Ligumi_Istabas].[Ligums]
WHERE
  (
    (
      ([dbo_viesn_Ligumi].[Ligums])> 0
    )
    And (
      (
        [dbo_viesn_Ligumi_Istabas].[LIDat_Lidz]
      ) Is Null
      Or (
        (
          [dbo_viesn_Ligumi_Istabas].[LIDat_Lidz]
        )>= Date()
        And (
          [dbo_viesn_Ligumi_Istabas].[LIDat_Lidz]
        )>= DateSerial(
          [forms]![rezervisti]![r_mg], 9, 1
        )
      )
    )
  );
