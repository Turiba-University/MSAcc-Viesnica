UPDATE
  z_EKonv_LigumiSpeka
  INNER JOIN dbo_viesn_Ligumi_PApr_Maksajumi ON [z_EKonv_LigumiSpeka].[Ligums] = [dbo_viesn_Ligumi_PApr_Maksajumi].[Ligums]
SET
  dbo_viesn_Ligumi_PApr_Maksajumi.PE_Cena = IIf(
    IsNull([Cena]),
    0,
    [Cena]
  ),
  dbo_viesn_Ligumi_PApr_Maksajumi.PE_SamSum = IIf(
    IsNull([SamSum]),
    0,
    [SamSum]
  ),
  dbo_viesn_Ligumi_PApr_Maksajumi.PE_PA_SamaksataSum = IIf(
    IsNull([PA_SamaksataSum]),
    0,
    [PA_SamaksataSum]
  );
