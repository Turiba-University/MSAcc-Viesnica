Operation =1
Option =0
Where ="(((dbo_Viesn_Rezervesana.Dzests)=0) AND ((dbo_Viesn_Rezervesana.Rez_MG)=2014))"
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
Begin
End
Begin
    State =0
    Left =81
    Top =145
    Right =1576
    Bottom =665
    Left =-1
    Top =-1
    Right =1484
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =120
        Top =14
        Name ="dbo_Viesn_Rezervesana"
        Name =""
    End
End
