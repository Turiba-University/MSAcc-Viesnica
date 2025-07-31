SELECT
  dbo_kl_Kodi.Kods,
  dbo_kl_Kodi.Koda_Atsifr
FROM
  dbo_kl_Kodi
WHERE
  (
    (
      (dbo_kl_Kodi.Tips)= 3
    )
  );
