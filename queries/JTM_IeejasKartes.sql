SELECT
  dbo_viesn_Ligumi_Inv.Inv_Nos,
  dbo_viesn_Ligumi.Vards,
  dbo_viesn_Ligumi.Uzvards,
  dbo_viesn_Ligumi.PK,
  dbo_viesn_Ligumi_Inv.Ligums,
  dbo_viesn_Ligumi.Datums_In,
  dbo_viesn_Ligumi.Datums_Out,
  dbo_viesn_Ligumi_Inv.Istaba,
  dbo_viesn_Ligumi_Inv.InvComment AS KartesNr,
  IIf(
    [InvStat] = 0,
    "izsniegta",
    IIf(
      [InvStat] =-20,
      "Atdots",
      IIf(
        [InvStat] =-12,
        "Zudis",
        IIf(
          [InvStat] =-11,
          "Bojāts",
          IIf([InvStat] =-10, "Nav nodots")
        )
      )
    )
  ) AS Stat,
  dbo_viesn_Ligumi_Inv.Aud_Date AS Izdota
FROM
  dbo_viesn_Ligumi
  RIGHT JOIN dbo_viesn_Ligumi_Inv ON dbo_viesn_Ligumi.[Ligums] = dbo_viesn_Ligumi_Inv.[Ligums]
WHERE
  (
    (
      (dbo_viesn_Ligumi_Inv.Inv_ID)= 11
    )
    AND (
      (dbo_viesn_Ligumi_Inv.InvStat)<>-1
    )
  )
ORDER BY
  dbo_viesn_Ligumi_Inv.Aud_Date DESC;
