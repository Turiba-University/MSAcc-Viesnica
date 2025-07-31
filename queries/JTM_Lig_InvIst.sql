SELECT
  DISTINCTROW [dbo_viesn_Ligumi_Inv].[Ligums],
  [dbo_viesn_Ligumi_Inv].[Istaba],
  [dbo_viesn_Ligumi_Inv].[Inv_Nos],
  [dbo_Viesn_Inventars].[Inv_Nos_Eng],
  [dbo_viesn_Ligumi_Inv].[InvSk],
  [dbo_viesn_Ligumi_Inv].[InvTips],
  [dbo_viesn_Ligumi_Inv].[InvStat]
FROM
  dbo_viesn_Ligumi_Inv
  LEFT JOIN dbo_Viesn_Inventars ON [dbo_viesn_Ligumi_Inv].[Inv_ID] = [dbo_Viesn_Inventars].[Inv_ID]
WHERE
  (
    (
      (
        [dbo_viesn_Ligumi_Inv].[InvTips]
      )= 1
    )
    And (
      (
        [dbo_viesn_Ligumi_Inv].[InvStat]
      ) Is Null
      Or (
        [dbo_viesn_Ligumi_Inv].[InvStat]
      )= 0
    )
  );
