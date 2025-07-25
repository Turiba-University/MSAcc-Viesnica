SELECT
  Year([datums])& "-" & Format(
    Month([Datums]),
    "00"
  ) AS MG,
  ParskatsPaTT.TTips,
  Sum(
    IIf([ITips] = 1, [Sk], 0)
  ) AS NaktisPersA,
  Sum(
    IIf([ITips] = 2, [Sk], 0)
  ) AS NaktisPersV1,
  Sum(
    IIf([ITips] = 3, [Sk], 0)
  ) AS NaktisPersV25
FROM
  ParskatsPaTT
GROUP BY
  Year([datums])& "-" & Format(
    Month([Datums]),
    "00"
  ),
  ParskatsPaTT.TTips
ORDER BY
  Year([datums])& "-" & Format(
    Month([Datums]),
    "00"
  ) DESC,
  ParskatsPaTT.TTips;
