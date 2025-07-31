SELECT
  dbo_crl_Caurlaides.crl_Karte_ID,
  dbo_crl_Caurlaides.Nr,
  dbo_crl_Caurlaides.Datums,
  dbo_crl_Caurlaides.Vards,
  dbo_crl_Caurlaides.Uzvards,
  dbo_Personas.Pers_Kods,
  dbo_crl_Caurlaides.AutoNr,
  dbo_crl_Caurlaides.Periods_No,
  dbo_crl_Caurlaides.Periods_Lidz,
  dbo_crl_Caurlaides.Cena,
  dbo_crl_Veidi.Tips,
  dbo_crl_Caurlaides.Stat,
  dbo_crl_Caurlaides.Comment
FROM
  (
    (
      dbo_crl_Caurlaides
      LEFT JOIN dbo_crl_KlientuTipi ON dbo_crl_Caurlaides.KlTips_ID = dbo_crl_KlientuTipi.kl_ID
    )
    LEFT JOIN dbo_crl_Veidi ON dbo_crl_Caurlaides.KartesTips = dbo_crl_Veidi.Crl_ID
  )
  LEFT JOIN dbo_Personas ON dbo_crl_Caurlaides.PersID = dbo_Personas.Personas_ID
WHERE
  (
    (
      Not (dbo_crl_Caurlaides.Nr) Is Null
    )
    AND (
      (dbo_crl_Caurlaides.Datums)>= #9/1/2008#
    )
  )
  OR (
    (
      Not (dbo_crl_Caurlaides.Nr) Is Null
    )
    AND (
      (
        dbo_crl_Caurlaides.Periods_Lidz
      )>= Date()
    )
  )
ORDER BY
  dbo_crl_Caurlaides.Datums DESC,
  dbo_crl_Caurlaides.Nr DESC;
