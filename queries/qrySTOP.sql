﻿SELECT
  STOP.CILVEKS_CKODS,
  STOP.UZVARDS,
  STOP.VARDS,
  Count(STOP.CILVEKS_CKODS) AS CountOfCILVEKS_CKODS
FROM
  STOP
GROUP BY
  STOP.CILVEKS_CKODS,
  STOP.UZVARDS,
  STOP.VARDS
ORDER BY
  Count(STOP.CILVEKS_CKODS) DESC;
