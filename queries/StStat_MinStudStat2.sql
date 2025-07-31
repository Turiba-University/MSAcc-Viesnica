SELECT
  [StStat_MinStat].[PID],
  (
    IIf(
      [StatNr] = 1,
      20,
      IIf(
        [StatNr] = 2,
        50,
        IIf(
          [StatNr] = 3,
          10,
          IIf(
            [StatNr] = 4,
            30,
            IIf([StatNr] = 5, 40, Null)
          )
        )
      )
    )
  ) AS StStatNr
FROM
  StStat_MinStat;
