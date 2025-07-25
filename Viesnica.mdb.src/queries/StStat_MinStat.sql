SELECT
  [tmp_StStat].[CKods] AS PID,
  Min(
    IIf(
      [StStat_Nr] = 20,
      1,
      IIf(
        [StStat_Nr] = 50,
        2,
        IIf(
          [StStat_Nr] = 10,
          3,
          IIf(
            [StStat_Nr] = 30,
            4,
            IIf([StStat_Nr] = 40, 5, Null)
          )
        )
      )
    )
  ) AS StatNr
FROM
  tmp_StStat
GROUP BY
  [tmp_StStat].[CKods]
HAVING
  (
    (
      (
        Min(
          IIf(
            [StStat_Nr] = 20,
            1,
            IIf(
              [StStat_Nr] = 50,
              2,
              IIf(
                [StStat_Nr] = 10,
                3,
                IIf(
                  [StStat_Nr] = 30,
                  4,
                  IIf([StStat_Nr] = 40, 5, Null)
                )
              )
            )
          )
        )
      )> 0
    )
  );
