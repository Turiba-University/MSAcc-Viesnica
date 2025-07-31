UPDATE
  z_EKonv_LigumiSpeka
  INNER JOIN dbo_viesn_Maksajumi ON [z_EKonv_LigumiSpeka].[Ligums] = [dbo_viesn_Maksajumi].[Ligums]
SET
  dbo_viesn_Maksajumi.Valuta_ID = 2,
  dbo_viesn_Maksajumi.PE_Kovertets = 1,
  dbo_viesn_Maksajumi.PE_Maks_Day = IIf(
    IsNull([Maks_Day]),
    0,
    [Maks_Day]
  ),
  dbo_viesn_Maksajumi.PE_Maks_Men = IIf(
    IsNull([Maks_Men]),
    0,
    [Maks_Men]
  ),
  dbo_viesn_Maksajumi.PE_PVN_Sum = IIf(
    IsNull([PVN_Sum]),
    0,
    [PVN_Sum]
  ),
  dbo_viesn_Maksajumi.PE_Kopa = IIf(
    IsNull([Kopa]),
    0,
    [Kopa]
  ),
  dbo_viesn_Maksajumi.PE_Total = IIf(
    IsNull([Total]),
    0,
    [Total]
  ),
  dbo_viesn_Maksajumi.PE_Ist_SamSum = IIf(
    IsNull([Ist_SamSum]),
    0,
    [Ist_SamSum]
  ),
  dbo_viesn_Maksajumi.PE_KavN_Summa = IIf(
    IsNull([KavN_Summa]),
    0,
    [KavN_Summa]
  ),
  dbo_viesn_Maksajumi.PE_KavN_SamSum = IIf(
    IsNull([KavN_SamSum]),
    0,
    [KavN_SamSum]
  );
