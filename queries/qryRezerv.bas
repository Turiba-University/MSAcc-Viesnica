Operation =1
Option =0
Where ="(((dbo_Viesn_Rezervesana.Rez_MG)=[forms]![rezervisti]![r_mg]))"
Having ="(((dbo_Viesn_Rezervesana.Dzests)=0))"
Begin InputTables
    Name ="dbo_Viesn_Rezervesana"
    Name ="dbo_Personas"
    Name ="rez_IrLigIst_PID"
    Name ="rez_irPIDLastMG"
    Name ="Rezerv_StudStat_gr"
End
Begin OutputColumns
    Expression ="dbo_Viesn_Rezervesana.V_Rez_RID"
    Expression ="dbo_Viesn_Rezervesana.Istaba"
    Expression ="dbo_Viesn_Rezervesana.CKods"
    Expression ="dbo_Personas.Vards"
    Expression ="dbo_Personas.Uzvards"
    Expression ="dbo_Personas.Pers_Kods"
    Expression ="dbo_Personas.Valsts"
    Expression ="dbo_Personas.Dzimums"
    Alias ="StStat"
    Expression ="Rezerv_StudStat_gr.FirstOfStudStat"
    Expression ="dbo_Personas.Tel1"
    Expression ="dbo_Viesn_Rezervesana.Lig_Dat"
    Expression ="dbo_Viesn_Rezervesana.Ievadits"
    Expression ="dbo_Viesn_Rezervesana.Piezimes"
    Expression ="dbo_Viesn_Rezervesana.Dzests"
    Alias ="StStat_Nr"
    Expression ="Rezerv_StudStat_gr.FirstOfStat"
    Alias ="Lim"
    Expression ="Rezerv_StudStat_gr.FirstOfLim"
    Alias ="Progr"
    Expression ="Rezerv_StudStat_gr.FirstOfProgr"
    Expression ="dbo_Viesn_Rezervesana.Tips"
    Expression ="dbo_Viesn_Rezervesana.StudStat"
    Expression ="dbo_Viesn_Rezervesana.StudMG"
    Expression ="dbo_Viesn_Rezervesana.Rez_No"
    Expression ="rez_IrLigIst_PID.LigNo"
    Expression ="rez_IrLigIst_PID.LigLidz"
    Expression ="rez_IrLigIst_PID.Ist"
    Expression ="rez_IrLigIst_PID.IstSk"
    Alias ="MG"
    Expression ="Rezerv_StudStat_gr.FirstOfMG"
    Expression ="dbo_Viesn_Rezervesana.Rez_MG"
    Alias ="IstLastMG"
    Expression ="rez_irPIDLastMG.Ist"
    Alias ="IrLig"
    Expression ="Max(IIf([Ligums]>0,1,0))"
    Alias ="IrLigNr"
    Expression ="Max(IIf([Ligums]>0,[LigNr],0))"
End
Begin Joins
    LeftTable ="dbo_Viesn_Rezervesana"
    RightTable ="dbo_Personas"
    Expression ="dbo_Viesn_Rezervesana.[CKods] = dbo_Personas.[Personas_ID]"
    Flag =2
    LeftTable ="dbo_Viesn_Rezervesana"
    RightTable ="rez_IrLigIst_PID"
    Expression ="dbo_Viesn_Rezervesana.[CKods] = rez_IrLigIst_PID.[Pers_ID]"
    Flag =2
    LeftTable ="dbo_Viesn_Rezervesana"
    RightTable ="rez_irPIDLastMG"
    Expression ="dbo_Viesn_Rezervesana.CKods = rez_irPIDLastMG.CKods"
    Flag =2
    LeftTable ="dbo_Viesn_Rezervesana"
    RightTable ="Rezerv_StudStat_gr"
    Expression ="dbo_Viesn_Rezervesana.CKods = Rezerv_StudStat_gr.CKods"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_Viesn_Rezervesana.Istaba"
    Flag =0
    Expression ="dbo_Personas.Vards"
    Flag =0
    Expression ="dbo_Personas.Uzvards"
    Flag =0
End
Begin Groups
    Expression ="dbo_Viesn_Rezervesana.V_Rez_RID"
    GroupLevel =0
    Expression ="dbo_Viesn_Rezervesana.Istaba"
    GroupLevel =0
    Expression ="dbo_Viesn_Rezervesana.CKods"
    GroupLevel =0
    Expression ="dbo_Personas.Vards"
    GroupLevel =0
    Expression ="dbo_Personas.Uzvards"
    GroupLevel =0
    Expression ="dbo_Personas.Pers_Kods"
    GroupLevel =0
    Expression ="dbo_Personas.Valsts"
    GroupLevel =0
    Expression ="dbo_Personas.Dzimums"
    GroupLevel =0
    Expression ="Rezerv_StudStat_gr.FirstOfStudStat"
    GroupLevel =0
    Expression ="dbo_Personas.Tel1"
    GroupLevel =0
    Expression ="dbo_Viesn_Rezervesana.Lig_Dat"
    GroupLevel =0
    Expression ="dbo_Viesn_Rezervesana.Ievadits"
    GroupLevel =0
    Expression ="dbo_Viesn_Rezervesana.Piezimes"
    GroupLevel =0
    Expression ="dbo_Viesn_Rezervesana.Dzests"
    GroupLevel =0
    Expression ="Rezerv_StudStat_gr.FirstOfStat"
    GroupLevel =0
    Expression ="Rezerv_StudStat_gr.FirstOfLim"
    GroupLevel =0
    Expression ="Rezerv_StudStat_gr.FirstOfProgr"
    GroupLevel =0
    Expression ="dbo_Viesn_Rezervesana.Tips"
    GroupLevel =0
    Expression ="dbo_Viesn_Rezervesana.StudStat"
    GroupLevel =0
    Expression ="dbo_Viesn_Rezervesana.StudMG"
    GroupLevel =0
    Expression ="dbo_Viesn_Rezervesana.Rez_No"
    GroupLevel =0
    Expression ="rez_IrLigIst_PID.LigNo"
    GroupLevel =0
    Expression ="rez_IrLigIst_PID.LigLidz"
    GroupLevel =0
    Expression ="rez_IrLigIst_PID.Ist"
    GroupLevel =0
    Expression ="rez_IrLigIst_PID.IstSk"
    GroupLevel =0
    Expression ="Rezerv_StudStat_gr.FirstOfMG"
    GroupLevel =0
    Expression ="dbo_Viesn_Rezervesana.Rez_MG"
    GroupLevel =0
    Expression ="rez_irPIDLastMG.Ist"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="dbo_Personas.Dzimums"
        dbInteger "ColumnWidth" ="1020"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.V_Rez_RID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="IrLig"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Ievadits"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.CKods"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Uzvards"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Tel1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Piezimes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Vards"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Valsts"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Lig_Dat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Pers_Kods"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Istaba"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Tips"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Rez_No"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="rez_IrLigIst_PID.Ist"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Dzests"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.StudStat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="rez_IrLigIst_PID.IstSk"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Rez_MG"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.StudMG"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="rez_IrLigIst_PID.LigLidz"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="rez_IrLigIst_PID.LigNo"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="IstLastMG"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Lim"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="StStat_Nr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Progr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="StStat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MG"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="IrLigNr"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =7
    Top =129
    Right =1532
    Bottom =720
    Left =-1
    Top =-1
    Right =1502
    Bottom =322
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =8
        Top =4
        Right =198
        Bottom =321
        Top =0
        Name ="dbo_Viesn_Rezervesana"
        Name =""
    End
    Begin
        Left =466
        Top =16
        Right =662
        Bottom =348
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
    Begin
        Left =740
        Top =89
        Right =874
        Bottom =260
        Top =0
        Name ="rez_IrLigIst_PID"
        Name =""
    End
    Begin
        Left =1191
        Top =104
        Right =1335
        Bottom =248
        Top =0
        Name ="rez_irPIDLastMG"
        Name =""
    End
    Begin
        Left =978
        Top =22
        Right =1159
        Bottom =246
        Top =0
        Name ="Rezerv_StudStat_gr"
        Name =""
    End
End
