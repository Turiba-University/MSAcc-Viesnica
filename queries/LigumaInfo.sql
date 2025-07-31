SELECT
  dbo_viesn_Ligumi.LIGUM_ID,
  dbo_viesn_Ligumi.Pers_ID,
  dbo_viesn_Ligumi.Ligums,
  dbo_viesn_Ligumi.Lig_Dat,
  dbo_Personas.Vards,
  dbo_Personas.Uzvards,
  dbo_Personas.Pers_Kods AS PK,
  dbo_Personas.Dok_Nr AS Pase,
  dbo_viesn_Ligumi.Piezimes,
  dbo_viesn_Ligumi.Valsts,
  dbo_Personas.D_Valsts,
  dbo_Personas.D_Rajons AS Rajons,
  dbo_Personas.D_Novads AS Novads,
  dbo_Personas.D_Pagasts AS Pagasts,
  dbo_Personas.D_Pilseta AS Pilseta,
  dbo_Personas.D_Iela AS Iela,
  dbo_viesn_Ligumi.Position,
  dbo_viesn_Ligumi.PositionComment,
  dbo_viesn_Ligumi.Pilnv_Persona,
  dbo_viesn_Ligumi.Datums_In,
  dbo_viesn_Ligumi.Datums_Lidz,
  dbo_viesn_Ligumi.Datums_Out,
  LigumaInfo_PEKonv.PE_Konv,
  dbo_Personas.DzDatums,
  dbo_Personas.Tel1,
  dbo_Personas.Epasts,
  dbo_Personas.Pilsoniba,
  dbo_viesn_Ligumi.Maksatajs_PID,
  dbo_Personas_1.Vards AS Maksatajs_Nos,
  dbo_viesn_Ligumi.IstVSk,
  dbo_viesn_Ligumi.IstMCena,
  dbo_viesn_Ligumi.IstComf,
  dbo_viesn_Ligumi.TNVeids,
  dbo_viesn_Ligumi.TNKopa,
  dbo_viesn_Ligumi.TNNepiemero,
  dbo_viesn_Ligumi.TNGrupa
FROM
  (
    (
      dbo_viesn_Ligumi
      LEFT JOIN dbo_Personas ON dbo_viesn_Ligumi.[Pers_ID] = dbo_Personas.[Personas_ID]
    )
    LEFT JOIN LigumaInfo_PEKonv ON dbo_viesn_Ligumi.[Ligums] = LigumaInfo_PEKonv.[Ligums]
  )
  LEFT JOIN dbo_Personas AS dbo_Personas_1 ON dbo_viesn_Ligumi.[Maksatajs_PID] = dbo_Personas_1.Personas_ID;
