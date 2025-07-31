SELECT
  dbo_viesn_Ligumi_Inv.Ligums,
  dbo_viesn_Ligumi_Inv.Istaba,
  dbo_viesn_Ligumi_Inv.InvTips,
  dbo_viesn_Ligumi_Inv.Inv_ID,
  dbo_viesn_Ligumi_Inv.Inv_Nos,
  IIf(
    IsNull([InvComment]),
    [Inv_Nos],
    [Inv_Nos] & ", " & [InvComment]
  ) AS Inv_NosComm,
  dbo_viesn_Ligumi_Inv.InvComment,
  dbo_viesn_Ligumi_Inv.InvSk,
  dbo_viesn_Ligumi_Inv.InvStat,
  IIf([InvStat] =-10,-1, 0) AS NavNod,
  IIf([InvStat] =-11,-1, 0) AS Bojats,
  IIf([InvStat] =-12,-1, 0) AS Zudis,
  IIf([InvStat] =-20,-1, 0) AS Atdots
FROM
  dbo_viesn_Ligumi_Inv
WHERE
  (
    (
      (
        (dbo_viesn_Ligumi_Inv.InvTips)= 2
      )
      AND (
        (dbo_viesn_Ligumi_Inv.Inv_ID)= 11
      )
      AND (
        (dbo_viesn_Ligumi_Inv.InvStat)= 0
      )
    )
  )
  AND (
    ([Istaba] =-528
    Or [Istaba] =-422)
  )
ORDER BY
  dbo_viesn_Ligumi_Inv.Istaba,
  dbo_viesn_Ligumi_Inv.Inv_Nos;
