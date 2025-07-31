SELECT
  dbo_Personas_Cert.Personas_ID,
  dbo_Personas_Cert.CertVeids,
  dbo_Personas_Cert.CertDatums,
  dbo_Personas_Cert.CertTips
FROM
  dbo_Personas_Cert
WHERE
  (
    (
      (dbo_Personas_Cert.CertTips)= 2
    )
  );
