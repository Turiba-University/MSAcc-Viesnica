Operation =1
Option =0
Where ="(((dbo_Viesn_Rezervesana.CKods)=forms!LigumsViesn!PERS_ID) And ((dbo_Viesn_Rezer"
    "vesana.Dzests)=0) And ((dbo_Viesn_Rezervesana.Ligums) Is Null Or (dbo_Viesn_Reze"
    "rvesana.Ligums)=0) And ((dbo_Viesn_Rezervesana.LigNr) Is Null Or (dbo_Viesn_Reze"
    "rvesana.LigNr)=0))"
Begin InputTables
    Name ="dbo_Viesn_Rezervesana"
    Name ="dbo_Personas"
End
Begin OutputColumns
    Expression ="dbo_Viesn_Rezervesana.V_Rez_RID"
    Expression ="dbo_Viesn_Rezervesana.Istaba"
    Expression ="dbo_Viesn_Rezervesana.CKods"
    Expression ="dbo_Personas.Vards"
    Expression ="dbo_Personas.Uzvards"
    Expression ="dbo_Personas.Pers_Kods"
    Expression ="dbo_Personas.Tel1"
    Expression ="dbo_Personas.Dzimums"
    Expression ="dbo_Personas.Valsts"
    Expression ="dbo_Viesn_Rezervesana.Lig_Dat"
    Expression ="dbo_Viesn_Rezervesana.StudMG"
    Expression ="dbo_Viesn_Rezervesana.Ievadits"
    Expression ="dbo_Viesn_Rezervesana.Rez_No"
    Expression ="dbo_Viesn_Rezervesana.Rez_Lidz"
    Expression ="dbo_Viesn_Rezervesana.Rez_MG"
    Expression ="dbo_Viesn_Rezervesana.Piezimes"
End
Begin Joins
    LeftTable ="dbo_Viesn_Rezervesana"
    RightTable ="dbo_Personas"
    Expression ="dbo_Viesn_Rezervesana.[CKods] = dbo_Personas.[Personas_ID]"
    Flag =2
End
Begin OrderBy
    Expression ="dbo_Viesn_Rezervesana.Istaba"
    Flag =0
    Expression ="dbo_Viesn_Rezervesana.Rez_No"
    Flag =1
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
        dbText "Name" ="dbo_Viesn_Rezervesana.V_Rez_RID"
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
        dbText "Name" ="dbo_Viesn_Rezervesana.Piezimes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Vards"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Istaba"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Rez_No"
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
        dbText "Name" ="dbo_Viesn_Rezervesana.Rez_Lidz"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Ievadits"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Valsts"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Dzimums"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Pers_Kods"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Tel1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Lig_Dat"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =7
    Top =104
    Right =1532
    Bottom =695
    Left =-1
    Top =-1
    Right =1493
    Bottom =295
    Left =0
    Top =0
    ColumnsShown =539
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
End
