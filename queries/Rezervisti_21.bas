Operation =1
Option =0
Where ="(((dbo_Viesn_Rezervesana.Dzests)=0) AND ((dbo_Viesn_Rezervesana.Rez_MG)=2021))"
Begin InputTables
    Name ="dbo_Viesn_Rezervesana"
End
Begin OutputColumns
    Expression ="dbo_Viesn_Rezervesana.V_Rez_RID"
    Expression ="dbo_Viesn_Rezervesana.Istaba"
    Expression ="dbo_Viesn_Rezervesana.CKods"
    Expression ="dbo_Viesn_Rezervesana.Rez_Vards"
    Expression ="dbo_Viesn_Rezervesana.Rez_Uzvards"
    Expression ="dbo_Viesn_Rezervesana.Lig_Dat"
    Expression ="dbo_Viesn_Rezervesana.Piezimes"
    Expression ="dbo_Viesn_Rezervesana.Ievadits"
    Expression ="dbo_Viesn_Rezervesana.Dzests"
    Expression ="dbo_Viesn_Rezervesana.Tips"
    Expression ="dbo_Viesn_Rezervesana.RVietas"
    Expression ="dbo_Viesn_Rezervesana.Rez_No"
    Expression ="dbo_Viesn_Rezervesana.Rez_Lidz"
    Expression ="dbo_Viesn_Rezervesana.Aud_User"
    Expression ="dbo_Viesn_Rezervesana.Aud_Date"
    Expression ="dbo_Viesn_Rezervesana.StudStat"
    Expression ="dbo_Viesn_Rezervesana.StudMG"
    Expression ="dbo_Viesn_Rezervesana.Rez_MG"
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
        dbText "Name" ="dbo_Viesn_Rezervesana.Rez_Vards"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Dzests"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Rez_No"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.StudStat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Rez_MG"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Istaba"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Rez_Uzvards"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Lig_Dat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Tips"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Rez_Lidz"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.StudMG"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.CKods"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Piezimes"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Aud_User"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Ievadits"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.RVietas"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Viesn_Rezervesana.Aud_Date"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =4
    Top =79
    Right =1499
    Bottom =599
    Left =-1
    Top =-1
    Right =1472
    Bottom =128
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =248
        Bottom =113
        Top =0
        Name ="dbo_Viesn_Rezervesana"
        Name =""
    End
End
