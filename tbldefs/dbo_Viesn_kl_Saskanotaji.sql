CREATE TABLE [dbo_Viesn_kl_Saskanotaji] (
  [RID] AUTOINCREMENT CONSTRAINT [PrimaryKey] PRIMARY KEY UNIQUE NOT NULL,
  [NR] LONG,
  [Sask_Amats] VARCHAR (50),
  [Sask_Amats_eng] VARCHAR (50),
  [Sask_VU] VARCHAR (50),
  [Hide] SHORT,
  [par_Izzinas] SHORT,
  [NoklNr] SHORT
)
