SELECT
  dbo_st_Stop.CKods,
  dbo_st_Stop.Uzvards,
  dbo_st_Stop.Vards,
  dbo_st_Stop.PK,
  dbo_st_Aizliegumi.Aizl_Nosaukums,
  dbo_st_Stop.In_Kas,
  dbo_st_Stop.In_Kad,
  dbo_st_Stop.Out_Kas,
  dbo_st_Stop.Out_Kad
FROM
  dbo_st_Stop
  INNER JOIN (
    dbo_st_Iem_Aizl
    INNER JOIN dbo_st_Aizliegumi ON dbo_st_Iem_Aizl.Aizl_ID = dbo_st_Aizliegumi.Aizliegums_ID
  ) ON dbo_st_Stop.Iemesls_ID = dbo_st_Iem_Aizl.Iem_ID;
