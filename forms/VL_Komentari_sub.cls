Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database



Private Sub Komentari_Click()
On Error GoTo Err_Komentari_Click

    Dim stDocName As String
    Dim stLinkCriteria As String, SourceStr As String

    SourceStr = " SELECT dbo_viesn_Ligumi_Komentari.Koment_ID, dbo_viesn_Ligumi_Komentari.Lig_Nr, dbo_viesn_Ligumi_Komentari.Komentars, dbo_viesn_Ligumi_Komentari.Kateg, dbo_viesn_Ligumi_Komentari.StartDate, dbo_viesn_Ligumi_Komentari.EndDate, dbo_viesn_Ligumi_Komentari.Status, dbo_viesn_Ligumi_Komentari.Rezultats, dbo_viesn_Ligumi_Komentari.Audit_User, dbo_viesn_Ligumi_Komentari.Audit_Date"
    SourceStr = SourceStr & " FROM dbo_viesn_Ligumi_Komentari INNER JOIN dbo_viesn_Ligumi ON dbo_viesn_Ligumi_Komentari.Lig_Nr = dbo_viesn_Ligumi.Ligums"
    SourceStr = SourceStr & " WHERE (((dbo_viesn_Ligumi.Pers_ID) = " & Forms!LigumsViesn!Pers_ID & "))"
    SourceStr = SourceStr & " ORDER BY dbo_viesn_Ligumi_Komentari.Koment_ID DESC;"

        DoCmd.OpenForm "VL_Komentari"
        Forms!VL_Komentari.RecordSource = SourceStr


''    stDocName = "VL_Komentari"
''
''
''
''    stLinkCriteria = "[Lig_Nr]=" & Forms!LigumsViesn!Ligums
''''    stLinkCriteria = "[Lig_Nr]=" & Me![Lig_Nr]
''    DoCmd.OpenForm stDocName, , , stLinkCriteria
''''    Forms![STL_Komentari].ApplyFilter , "[Lig_Nr]=" & Me![Lig_Nr]

Exit_Komentari_Click:
    Exit Sub

Err_Komentari_Click:
    MsgBox Err.Description
    Resume Exit_Komentari_Click


End Sub
Private Sub AddComment_Click()
    Dim stDocName As String
    Dim stLinkCriteria As String

    stDocName = "VL_Komentari"
    stLinkCriteria = "[Lig_Nr]=" & Forms!LigumsViesn!Ligums
''    stLinkCriteria = "[Lig_Nr]=" & Me![Lig_Nr]
    DoCmd.OpenForm stDocName, , , stLinkCriteria
    Forms![VL_Komentari].AllowAdditions = True
    Forms![VL_Komentari].DataEntry = True
    Forms![VL_Komentari].Lig_Nr = Forms!LigumsViesn!Ligums
''    Forms![STL_Komentari].Lig_Nr = Me![Lig_Nr]
    Forms![VL_Komentari].Komentars.SetFocus

End Sub

Private Sub Komentars_AfterUpdate()
    If Not IsNull(Me.Komentars.OldValue) Then
        MsgBox "Komentāru tekstu šajā formā labot nedrīkst. Var tikai pievienot jaunus.", vbInformation, "JTM līgumi"
        Me.Komentars = Me.Komentars.OldValue
    End If

End Sub
