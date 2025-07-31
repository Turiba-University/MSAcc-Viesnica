SELECT
  [dbo_viesn_Ligumi].[LIGUM_ID],
  [dbo_viesn_Ligumi].[Ligums],
  [dbo_viesn_Ligumi].[Lig_Dat],
  [dbo_viesn_Ligumi].[Vards],
  [dbo_viesn_Ligumi].[Uzvards],
  [dbo_viesn_Ligumi].[Datums_In],
  [dbo_viesn_Ligumi].[Datums_Out]
FROM
  dbo_viesn_Ligumi
WHERE
  (
    (
      ([dbo_viesn_Ligumi].[Ligums])> 0
    )
    And (
      (
        [dbo_viesn_Ligumi].[Datums_Out]
      ) Is Null
      Or (
        [dbo_viesn_Ligumi].[Datums_Out]
      )> #12/31/2013#
    )
  );
