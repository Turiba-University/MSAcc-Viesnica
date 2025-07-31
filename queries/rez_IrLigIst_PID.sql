SELECT
  [rez_IrLigIst].[Pers_ID],
  Min([rez_IrLigIst].[Datums_In]) AS LigNo,
  Max([rez_IrLigIst].[Datums_Out]) AS LigLidz,
  Min([rez_IrLigIst].[Istaba]) AS Ist,
  Count([rez_IrLigIst].[Pers_ID]) AS IstSk
FROM
  rez_IrLigIst
GROUP BY
  [rez_IrLigIst].[Pers_ID];
