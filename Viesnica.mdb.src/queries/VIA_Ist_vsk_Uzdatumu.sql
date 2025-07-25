SELECT
  dbo_viesn_kl_Istabas.IstabasNr,
  dbo_viesn_kl_Istabas.Istaba AS Ist_Nr,
  dbo_viesn_kl_Istabas.VietuSk AS Vietas,
  IIf(
    IsNull([Vsk_aizn]),
    0,
    [Vsk_aizn]
  ) AS Aizn,
  VIA_IstAizn_vsk_Uzdatumu.S AS DzS,
  VIA_IstAizn_vsk_Uzdatumu.V AS DzV,
  VIA_IstAizn_vsk_Uzdatumu.DzLV,
  VIA_IstAizn_vsk_Uzdatumu.[DzNe-LV],
  VIA_IstAizn_vsk_Uzdatumu.Iev,
  VIA_IstAizn_vsk_Uzdatumu.Dz,
  VIA_IstAizn_vsk_Uzdatumu.Izv,
  [Dz] + [izv] AS Nakts,
  [VietuSk] - IIf(
    IsNull([Vsk_Aizn]),
    0,
    [Vsk_Aizn]
  )+ IIf(
    IsNull([Izv]),
    0,
    [Izv]
  ) AS Brivas,
  [VietuSk] - IIf(
    IsNull([Vsk_Aizn]),
    0,
    [Vsk_Aizn]
  )+ IIf(
    IsNull([Izv]),
    0,
    [Izv]
  )- IIf(
    IsNull([RezVietas]),
    0,
    [RezVietas]
  ) AS BrivasNeRez,
  IIf(
    IsNull([Aizn])
    Or [Aizn] = 0,
    1,
    Null
  ) AS BrIst,
  IIf(
    IsNull([Aizn])
    Or [Aizn] = 0,
    [VietuSk],
    Null
  ) AS BrIst_Vsk,
  IIf(
    [Vsk_Aizn] > 0
    And [VietuSk] > 0
    And [VietuSk] - IIf(
      IsNull([Vsk_Aizn]),
      0,
      [Vsk_Aizn]
    )> 0,
    1,
    Null
  ) AS DBrIst,
  IIf(
    [Vsk_Aizn] > 0
    And [VietuSk] > 0
    And [VietuSk] - IIf(
      IsNull([Vsk_Aizn]),
      0,
      [Vsk_Aizn]
    )> 0,
    [VietuSk] - IIf(
      IsNull([Vsk_Aizn]),
      0,
      [Vsk_Aizn]
    ),
    Null
  ) AS DBrIst_Vsk,
  IIf(
    [VietuSk] > 0
    And [VietuSk] = IIf(
      IsNull([Vsk_Aizn]),
      0,
      [Vsk_Aizn]
    ),
    1,
    Null
  ) AS PIst,
  IIf(
    [VietuSk] > 0
    And [VietuSk] = IIf(
      IsNull([Vsk_Aizn]),
      0,
      [Vsk_Aizn]
    ),
    [VietuSk],
    Null
  ) AS PIst_Vsk,
  IIf(
    [VietuSk] > 0
    And [VietuSk] < IIf(
      IsNull([Vsk_Aizn]),
      0,
      [Vsk_Aizn]
    ),
    1,
    Null
  ) AS PpIst,
  IIf(
    [VietuSk] > 0
    And [VietuSk] < IIf(
      IsNull([Vsk_Aizn]),
      0,
      [Vsk_Aizn]
    ),
    IIf(
      IsNull([Vsk_Aizn]),
      0,
      [Vsk_Aizn]
    )- [VietuSk],
    Null
  ) AS PpIst_Vsk,
  VIA_LigIstAizn_Dat_IstLigSk.IstLigSk,
  IIf(
    IsNull([Vsk_aizn]),
    0,
    [Vsk_aizn]
  )- IIf(
    IsNull([IstLigSk]),
    0,
    [IstLigSk]
  ) AS LigSkStarp,
  IIf(
    IsNull([RezVietas]),
    0,
    [RezVietas]
  ) AS RezVietasIst,
  qryBrivasVietas_sar_R_19_nenosl.S,
  qryBrivasVietas_sar_R_19_nenosl.V,
  qryBrivasVietas_sar_R_19_nenosl.LV,
  qryBrivasVietas_sar_R_19_nenosl.[ne-LV]
FROM
  (
    (
      dbo_viesn_kl_Istabas
      LEFT JOIN VIA_IstAizn_vsk_Uzdatumu ON dbo_viesn_kl_Istabas.[Istaba] = VIA_IstAizn_vsk_Uzdatumu.[Ist_Nr]
    )
    LEFT JOIN VIA_LigIstAizn_Dat_IstLigSk ON dbo_viesn_kl_Istabas.[Istaba] = VIA_LigIstAizn_Dat_IstLigSk.[Istaba]
  )
  LEFT JOIN qryBrivasVietas_sar_R_19_nenosl ON dbo_viesn_kl_Istabas.[Istaba] = qryBrivasVietas_sar_R_19_nenosl.[Istaba]
ORDER BY
  dbo_viesn_kl_Istabas.IstabasNr;
