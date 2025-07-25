Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub PageHeader0_Format(Cancel As Integer, FormatCount As Integer)
Dim dbs As Database, SStr As String, SRst As Recordset

    Set dbs = CurrentDb

    SStr = "SELECT DISTINCTROW Sum(dbo_viesn_Maksajumi.Total) AS SumKopa"
    SStr = SStr & " FROM dbo_viesn_Maksajumi"
    SStr = SStr & " WHERE (((dbo_viesn_Maksajumi.Ligums)=" & [Forms]![LigumsViesn]!Ligums & " ) AND ((dbo_viesn_Maksajumi.Stat) Is Null Or (dbo_viesn_Maksajumi.Stat)<>-1));"

    Set SRst = dbs.OpenRecordset(SStr, dbOpenSnapshot, dbSeeChanges)

    Me.SumKopa = SRst!SumKopa


End Sub
