SELECT
  dbo_viesn_Ligumi.Pers_ID,
  dbo_viesn_Ligumi.Vards,
  dbo_viesn_Ligumi.Uzvards,
  dbo_viesn_Ligumi.PK,
  dbo_viesn_Ligumi.Ligums,
  dbo_viesn_Ligumi.Lig_Dat,
  dbo_viesn_Ligumi.Datums_In,
  dbo_viesn_Ligumi.Datums_Out,
  rez_IrIstaba.Istaba,
  rez_IrIstaba.LIDat_No,
  rez_IrIstaba.LIDat_Lidz
FROM
  dbo_viesn_Ligumi
  LEFT JOIN rez_IrIstaba ON dbo_viesn_Ligumi.[Ligums] = rez_IrIstaba.[Ligums]
WHERE
  (
    (
      (dbo_viesn_Ligumi.Ligums)> 0
    )
    And (
      (dbo_viesn_Ligumi.Datums_Out) Is Null
    )
  )
  Or (
    (
      (dbo_viesn_Ligumi.Ligums)> 0
    )
    And (
      (dbo_viesn_Ligumi.Datums_Out)>= Date()
      And (dbo_viesn_Ligumi.Datums_Out)>= DateSerial(forms!rezervisti!r_mg, 9, 1)
    )
  )
  Or (
    (
      (dbo_viesn_Ligumi.Ligums)> 0
    )
    And (
      Not (rez_IrIstaba.Ligums) Is Null
    )
  );
