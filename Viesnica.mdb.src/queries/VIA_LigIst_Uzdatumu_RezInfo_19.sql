SELECT
  Rezervisti_19_nenosl.V_Rez_RID,
  Rezervisti_19_nenosl.Istaba,
  dbo_viesn_kl_Istabas.IstabasNr,
  Rezervisti_19_nenosl.Vards,
  Rezervisti_19_nenosl.Uzvards,
  Rezervisti_19_nenosl.DzDatums,
  Rezervisti_19_nenosl.Dzimums AS Dz,
  Rezervisti_19_nenosl.Valsts,
  Rezervisti_19_nenosl.Tel1,
  Rezervisti_19_nenosl.Epasts,
  Rezervisti_19_nenosl.Piezimes,
  Rezervisti_19_nenosl.Ievadits,
  Rezervisti_19_nenosl.Rez_MG,
  Null AS IrLig
FROM
  Rezervisti_19_nenosl
  LEFT JOIN dbo_viesn_kl_Istabas ON Rezervisti_19_nenosl.Istaba = dbo_viesn_kl_Istabas.Istaba;
