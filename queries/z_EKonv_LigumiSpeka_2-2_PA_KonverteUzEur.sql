UPDATE
  z_EKonv_LigumiSpeka
  INNER JOIN dbo_viesn_Ligumi_PApr_Maksajumi ON z_EKonv_LigumiSpeka.Ligums = dbo_viesn_Ligumi_PApr_Maksajumi.Ligums
SET
  dbo_viesn_Ligumi_PApr_Maksajumi.Cena = Int(
    ([Cena] / 0.702804 + 0.005005)* 100
  )/ 100,
  dbo_viesn_Ligumi_PApr_Maksajumi.SamSum = Int(
    ([SamSum] / 0.702804 + 0.005005)* 100
  )/ 100,
  dbo_viesn_Ligumi_PApr_Maksajumi.PA_SamaksataSum = Int(
    (
      [PA_SamaksataSum] / 0.702804 + 0.005005
    )* 100
  )/ 100;
