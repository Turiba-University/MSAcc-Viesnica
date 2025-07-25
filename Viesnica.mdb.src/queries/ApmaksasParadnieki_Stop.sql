SELECT
  [dbo_st_Stop].[CKods],
  [dbo_st_Iemesli].[Iem_Nosaukums],
  Min([dbo_st_Stop].[In_Kad]) AS Ielikts,
  Count([dbo_st_Stop].[ST_ID]) AS sk
FROM
  dbo_st_Stop
  LEFT JOIN dbo_st_Iemesli ON [dbo_st_Stop].[Iemesls_ID] = [dbo_st_Iemesli].[Iemesls_ID]
WHERE
  (
    (
      ([dbo_st_Stop].[Iemesls_ID])= 8
    )
    And (
      ([dbo_st_Stop].[Out_Kad]) Is Null
    )
  )
GROUP BY
  [dbo_st_Stop].[CKods],
  [dbo_st_Iemesli].[Iem_Nosaukums];
