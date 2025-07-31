SELECT
  [VIA_LigSam_IstIrLig].[Lig_Dat],
  [VIA_LigSam_IstIrLig].[Uzvards],
  [VIA_LigSam_IstIrLig].[Vards],
  [VIA_LigSam_IstIrLig].[Ligums],
  [VIA_LigSam_IstIrLig].[Ist_Nr],
  [VIA_LigSam_IstIrLig].[Datums_In],
  [VIA_LigSam_IstIrLig].[Datums_Out],
  [VIA_LigSam_LigIstApm_PirmsDat].[Dat_No],
  [VIA_LigSam_LigIstApm_PirmsDat].[Dat_Lidz],
  [VIA_LigSam_LigIstApm_PirmsDat].[Kopa],
  [VIA_LigSam_LigIstApm_PirmsDat].[Sam_Dat],
  [VIA_LigSam_LigIstApm_PirmsDat].[PirmsPer],
  [VIA_LigSam_LigIstApm_PirmsDat].[Per],
  [VIA_LigSam_LigIstApm_PirmsDat].[PecPer]
FROM
  VIA_LigSam_IstIrLig
  LEFT JOIN VIA_LigSam_LigIstApm_PirmsDat ON (
    [VIA_LigSam_IstIrLig].[Ligums] = [VIA_LigSam_LigIstApm_PirmsDat].[Ligums]
  )
  AND (
    [VIA_LigSam_IstIrLig].[Ist_Nr] = [VIA_LigSam_LigIstApm_PirmsDat].[Ist_Nr]
  );
