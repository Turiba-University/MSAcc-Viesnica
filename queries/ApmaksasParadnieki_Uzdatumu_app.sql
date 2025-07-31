INSERT INTO tmp_ApmParadnieki_UzDat (
  Ligums, Vards, Uzvards, Pers_Kods,
  Valsts, Tel1, Ievācās, Ist_Nr, Istabā_No,
  Istabā_Līdz, Vietas, ApmaksaLīdz,
  V_ApmLidz, STOP, Termins, ParadsLig,
  ParadsPers, Lietotajs, PID
)
SELECT
  VIA_LigIstStat_Uzdatumu.Ligums,
  VIA_LigIstStat_Uzdatumu.Vards,
  VIA_LigIstStat_Uzdatumu.Uzvards,
  VIA_LigIstStat_Uzdatumu.Pers_Kods,
  VIA_LigIstStat_Uzdatumu.Valsts,
  VIA_LigIstStat_Uzdatumu.Tel1,
  VIA_LigIstStat_Uzdatumu.Datums_In AS Ievācās,
  VIA_LigIstStat_Uzdatumu.Ist_Nr,
  VIA_LigIstStat_Uzdatumu.LIDat_No AS Istabā_No,
  VIA_LigIstStat_Uzdatumu.LIDat_Lidz AS Istabā_Līdz,
  VIA_LigIstStat_Uzdatumu.Vsk AS Vietas,
  VIA_LigIstStat_Uzdatumu.PirmsDat_dat AS ApmaksaLīdz,
  VIA_LigIstStat_Uzdatumu.V_ApmLidz,
  ApmaksasParadnieki_Stop.sk AS STOP,
  IIf(
    [V_ApmLidz] < Date(),
    "nokavēts",
    Null
  ) AS Termins,
  VIA_LigApm_Sam_ParadsLig.ParadsLig,
  VIA_LigApm_Sam_ParadsPers.ParadsPers,
  CurrentUser() AS Lietotajs,
  VIA_LigIstStat_Uzdatumu.Pers_ID
FROM
  (
    (
      VIA_LigIstStat_Uzdatumu
      LEFT JOIN ApmaksasParadnieki_Stop ON VIA_LigIstStat_Uzdatumu.[Pers_ID] = ApmaksasParadnieki_Stop.[CKods]
    )
    LEFT JOIN VIA_LigApm_Sam_ParadsLig ON VIA_LigIstStat_Uzdatumu.[Ligums] = VIA_LigApm_Sam_ParadsLig.[Ligums]
  )
  LEFT JOIN VIA_LigApm_Sam_ParadsPers ON VIA_LigIstStat_Uzdatumu.[Pers_ID] = VIA_LigApm_Sam_ParadsPers.[Personas_ID]
WHERE
  (
    (
      (
        VIA_LigIstStat_Uzdatumu.Dat_Vsk
      ) Is Null
    )
  )
  OR (
    (
      (
        VIA_LigIstStat_Uzdatumu.Dat_Vsk_Sam
      )= 1
    )
  )
  OR (
    (
      (ApmaksasParadnieki_Stop.sk)> 0
    )
  )
ORDER BY
  VIA_LigIstStat_Uzdatumu.Ist_Nr,
  VIA_LigIstStat_Uzdatumu.Ligums;
