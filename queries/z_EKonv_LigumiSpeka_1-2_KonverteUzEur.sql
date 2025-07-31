UPDATE
  z_EKonv_LigumiSpeka
  INNER JOIN dbo_viesn_Maksajumi ON [z_EKonv_LigumiSpeka].[Ligums] = [dbo_viesn_Maksajumi].[Ligums]
SET
  dbo_viesn_Maksajumi.Maks_Day = Int(
    ([Maks_day] / 0.702804 + 0.005005)* 100
  )/ 100,
  dbo_viesn_Maksajumi.Maks_Men = Int(
    ([Maks_Men] / 0.702804 + 0.005005)* 100
  )/ 100,
  dbo_viesn_Maksajumi.PVN_Sum = Int(
    ([PVN_Sum] / 0.702804 + 0.005005)* 100
  )/ 100,
  dbo_viesn_Maksajumi.Kopa = Int(
    ([Kopa] / 0.702804 + 0.005005)* 100
  )/ 100,
  dbo_viesn_Maksajumi.Total = Int(
    ([Total] / 0.702804 + 0.005005)* 100
  )/ 100,
  dbo_viesn_Maksajumi.Ist_SamSum = Int(
    ([Ist_SamSum] / 0.702804 + 0.005005)* 100
  )/ 100,
  dbo_viesn_Maksajumi.KavN_Summa = Int(
    ([KavN_Summa] / 0.702804 + 0.005005)* 100
  )/ 100,
  dbo_viesn_Maksajumi.KavN_SamSum = Int(
    (
      [KavN_SamSum] / 0.702804 + 0.005005
    )* 100
  )/ 100
WHERE
  (
    (
      (
        [dbo_viesn_Maksajumi].[Valuta_ID]
      )= 2
    )
    And (
      (
        [dbo_viesn_Maksajumi].[PE_Kovertets]
      )= 1
    )
  );
