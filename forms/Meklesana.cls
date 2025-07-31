Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database   'Use database order for string comparisons

Private Sub Atgriezties_Click()
    Me.List.RowSource = ""
    DoCmd.Close A_FORM, "Meklesana", acSaveYes
    DoCmd.Close acForm, "Jauns_rezervists", acSaveNo
    DoCmd.SelectObject acForm, "Rezervisti"
End Sub

Private Sub cmdFind_Click()
    Dim rStr As String
    DoCmd.Hourglass True
''''====2003mg    Me.List.RowSource = "SELECT [dbo_Ligumi2003].[UZVARDS] AS Uzvārds, [dbo_Ligumi2003].[VARDS] AS Vārds, [dbo_Ligumi2003].[LIG_NUM] AS [Līguma nr], [dbo_Ligumi2003].[KURSS] AS Kurss, [Personas].[Tel1] AS Telefons, [dbo_Ligumi2003].[CILVEKS_CKODS] FROM dbo_Ligumi2003 INNER JOIN Personas ON [dbo_Ligumi2003].[CILVEKS_CKODS]=[Personas].[Personas ID] WHERE ((([dbo_Ligumi2003].[UZVARDS]) Like ([forms]![meklesana]![Uzvards]) & ""*"" ) And (([dbo_Ligumi2003].[VARDS]) Like ([forms]![meklesana]![Vards]) & ""*"" )) ORDER BY [dbo_Ligumi2003].[UZVARDS], [dbo_Ligumi2003].[VARDS], [dbo_Ligumi2003].[LIG_NUM]; "
'''    Me.List.RowSource = "SELECT [dbo_Ligumi2004].[UZVARDS] AS Uzvārds, [dbo_Ligumi2004].[VARDS] AS Vārds, [dbo_Ligumi2004].[LIG_NUM] AS [Līguma nr], [dbo_Ligumi2004].[KURSS] AS Kurss, [Personas].[Tel1] AS Telefons, [dbo_Ligumi2004].[CILVEKS_CKODS] FROM dbo_Ligumi2004 INNER JOIN Personas ON [dbo_Ligumi2004].[CILVEKS_CKODS]=[Personas].[Personas ID] WHERE ((([dbo_Ligumi2004].[UZVARDS]) Like ([forms]![meklesana]![Uzvards]) & ""*"" ) And (([dbo_Ligumi2004].[VARDS]) Like ([forms]![meklesana]![Vards]) & ""*"" )) ORDER BY [dbo_Ligumi2004].[UZVARDS], [dbo_Ligumi2004].[VARDS], [dbo_Ligumi2004].[LIG_NUM]; "
    Me.List.RowSource = "SELECT [dbo_Ligumi2013].[UZVARDS] AS Uzvārds, [dbo_Ligumi2013].[VARDS] AS Vārds, [dbo_Ligumi2013].[LIG_NUM] AS [Līguma nr], [dbo_Ligumi2013].[KURSS] AS Kurss, [dbo_personas].[Tel1] AS Telefons, [dbo_Ligumi2013].[CILVEKS_CKODS] FROM dbo_Ligumi2013 INNER JOIN dbo_personas ON dbo_Ligumi2013.CILVEKS_CKODS = dbo_personas.Personas_ID WHERE ((([dbo_Ligumi2013].[UZVARDS]) Like ([forms]![meklesana]![Uzvards]) & ""*"" ) And (([dbo_Ligumi2013].[VARDS]) Like ([forms]![meklesana]![Vards]) & ""*"" )) ORDER BY [dbo_Ligumi2013].[UZVARDS], [dbo_Ligumi2013].[VARDS], [dbo_Ligumi2013].[LIG_NUM]; "

    rStr = "SELECT dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_Personas.Tel1, dbo_StStat_StudSar_StudTab.StStat, dbo_stl_Stud_LastMGR_Data.StudGads as StG,"
    rStr = rStr & " dbo_stl_Stud_LastMGR_Data.MacGads, dbo_stl_Stud_LastMGR_Data.Fil_nos, dbo_StStat_StudSar_StudTab.CKods, dbo_Personas.Dzimums, dbo_Personas.Valsts"
    rStr = rStr & " FROM (dbo_StStat_StudSar_StudTab INNER JOIN dbo_stl_Stud_LastMGR_Data ON dbo_StStat_StudSar_StudTab.Stud_ID = dbo_stl_Stud_LastMGR_Data.Stud_ID) INNER JOIN dbo_Personas ON dbo_StStat_StudSar_StudTab.CKods = dbo_Personas.Personas_ID"
    rStr = rStr & " WHERE (((dbo_Personas.Vards) Like ([forms]![meklesana]![Vards]) & ""*"" )) AND ((dbo_Personas.Uzvards) Like ([forms]![meklesana]![Uzvards]) & ""*"" );"

    Me.List.RowSource = rStr

    rStr = "SELECT dbo_Personas.Personas_ID, dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_Personas.Tel1, dbo_Personas.Dzimums, dbo_Personas.Valsts"
    rStr = rStr & " FROM dbo_pd_PA_ZK INNER JOIN dbo_Personas ON dbo_pd_PA_ZK.PersID = dbo_Personas.Personas_ID"
    rStr = rStr & " WHERE (((dbo_Personas.Vards) Like ([forms]![meklesana]![Vards]) & ""*"" ) And ((dbo_Personas.Uzvards) Like ([forms]![meklesana]![Uzvards]) & ""*"" ))"
    rStr = rStr & " GROUP BY dbo_Personas.Personas_ID, dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_Personas.Tel1, dbo_Personas.Dzimums, dbo_Personas.Valsts;"

    Me.ListDrb.RowSource = rStr

    rStr = "SELECT dbo_Personas.Personas_ID, dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_Personas.Tel1, dbo_Personas.Dzimums, dbo_Personas.Valsts"
    rStr = rStr & " FROM dbo_Personas "
    rStr = rStr & " WHERE (((dbo_Personas.Vards) Like ([forms]![meklesana]![Vards]) & ""*"" ) And ((dbo_Personas.Uzvards) Like ([forms]![meklesana]![Uzvards]) & ""*"" ))"
    rStr = rStr & " GROUP BY dbo_Personas.Personas_ID, dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_Personas.Tel1, dbo_Personas.Dzimums, dbo_Personas.Valsts;"

    Me.ListPers.RowSource = rStr

    DoCmd.Hourglass False
''    aa = Me.List.MultiSelect
    Me.Text28.Requery
    Me.Text37.Requery
    Me.Text41.Requery
''    If Me.Text28 = 0 Then
''        msg = MsgBox("Studentu tabulā šī persona nav atrasta." & Chr(13) & "Vai meklēt personu tabulā?", vbYesNo + vbDefaultButton2, "Persona")
''        If msg = vbYes Then
'''''            q1 = "SELECT DISTINCTROW Personas.Vārds, Personas.Uzvārds, Personas.[Personas Kods], Personas.Dažādi as [Grupa], Personas.[Pases Nr],Personas.Novads, Personas.Pilsēta, Personas.Iela, Personas.Dažādi, Personas.Tel1, Personas.[Personas ID] AS PID  FROM Personas WHERE ((Personas.Vārds Like """
'''''            q2 = Me.Vards
'''''            q3 = "*"") AND (Personas.Uzvārds Like """
'''''            q4 = Me.Uzvards
'''''            q5 = "*"")) ORDER BY Personas.Vārds;"
''            q1 = "SELECT DISTINCTROW dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_Kods, dbo_Personas.Pozicija, dbo_Personas.Dok_Nr,dbo_Personas.D_Novads, dbo_Personas.D_Pilseta, dbo_Personas.D_Iela, dbo_Personas.Tel1, dbo_Personas.Personas_ID AS PID  FROM dbo_Personas WHERE ((dbo_Personas.Vards Like """
''            q2 = Me.Vards
''            q3 = "*"") AND (dbo_Personas.Uzvards Like """
''            q4 = Me.Uzvards
''            q5 = "*"")) ORDER BY dbo_Personas.Uzvards;"
''            qqq = q1 & q2 & q3 & q4 & q5
''            DoCmd.OpenForm "Pers_meklesana"
''            Forms!Pers_meklesana.RecordSource = qqq
''            Forms!Pers_meklesana.Requery
''            Forms!Pers_meklesana.VS.Caption = " ====>> " & Me.Vards & "  " & Me.Uzvards
''            Forms!Pers_meklesana.Tag = qqq
''        End If
''    End If
End Sub

Private Sub List_Click()
    Me.ListDrb = Null
    Me.ListPers = Null
End Sub

Private Sub ListDrb_Click()
    Me.List = Null
    Me.ListPers = Null
End Sub

Private Sub ListDrb_DblClick(Cancel As Integer)
    List_DblClick (0)
End Sub

Private Sub ListPers_Click()
    Me.ListDrb = Null
    Me.List = Null
End Sub

Private Sub ListPers_DblClick(Cancel As Integer)
    List_DblClick (0)
End Sub

Private Sub ok_Click()
    List_DblClick (0)
End Sub

Private Sub Form_Open(Cancel As Integer)
Me.List.RowSource = ""
Me.ListDrb.RowSource = ""
Me.ListPers.RowSource = ""
Me.Vards = Null
Me.Uzvards = Null
DoCmd.GoToControl "Vards"
End Sub

Private Sub List_DblClick(Cancel As Integer)
If IsNull(Me.List) And IsNull(Me.ListDrb) And IsNull(Me.ListPers) Then
    MsgBox "Vispirms iezīmējiet sameklēto personu", vbOKOnly, "Persona"
    Exit Sub
End If

    If Not IsNull(Me.List) Then
        'Forms!Jauns_rezervists.Lig_Nr = Me.List
        Forms!Jauns_rezervists.Vards = Me.List.Column(0)
        Forms!Jauns_rezervists.Uzvards = Me.List.Column(1)
        Forms!Jauns_rezervists.Pers_Kods = Me.List.Column(2)
        Forms!Jauns_rezervists.Tel1 = Me.List.Column(3)
    ''    Forms!Jauns_rezervists.Tag = Me.List.Column(4)
        Forms!Jauns_rezervists.CKods = Me.List.Column(8)
        Forms!Jauns_rezervists.Dzimums = Me.List.Column(9)
        Forms!Jauns_rezervists.MValsts = Me.List.Column(10)
        Forms!Jauns_rezervists.Tips = "BAT students"
        Forms!Jauns_rezervists.Ievadits = Now()
    ElseIf Not IsNull(Me.ListDrb) Then
        Forms!Jauns_rezervists.CKods = Me.ListDrb.Column(0)
        Forms!Jauns_rezervists.Vards = Me.ListDrb.Column(1)
        Forms!Jauns_rezervists.Uzvards = Me.ListDrb.Column(2)
        Forms!Jauns_rezervists.Pers_Kods = Me.ListDrb.Column(3)
        Forms!Jauns_rezervists.Tel1 = Me.ListDrb.Column(4)
        Forms!Jauns_rezervists.Dzimums = Me.ListDrb.Column(5)
        Forms!Jauns_rezervists.MValsts = Me.ListDrb.Column(6)
        Forms!Jauns_rezervists.Tips = "BAT darbinieks"
        Forms!Jauns_rezervists.Ievadits = Now()
    ElseIf Not IsNull(Me.ListPers) Then
        Forms!Jauns_rezervists.CKods = Me.ListPers.Column(0)
        Forms!Jauns_rezervists.Vards = Me.ListPers.Column(1)
        Forms!Jauns_rezervists.Uzvards = Me.ListPers.Column(2)
        Forms!Jauns_rezervists.Pers_Kods = Me.ListPers.Column(3)
        Forms!Jauns_rezervists.Tel1 = Me.ListPers.Column(4)
        Forms!Jauns_rezervists.Dzimums = Me.ListPers.Column(5)
        Forms!Jauns_rezervists.MValsts = Me.ListPers.Column(6)
        Forms!Jauns_rezervists.Ievadits = Now()
    End If
    Me.List.RowSource = ""
    DoCmd.Close A_FORM, "Meklesana", acSaveYes
End Sub
Private Sub Reg_Rezervistu_Click()
''    DoCmd.Close
    DoCmd.OpenForm "Personas_dati", , , , acFormAdd
    Forms![Personas_dati].Jaun = -1
    Forms![Personas_dati].OpenFromViesnLig = 0
    Forms![Personas_dati].OpenFromPersMekl = 0
    Forms![Personas_dati].OpenFromRezervJauns = -1
    Forms![Personas_dati].DokDerTermins.Enabled = True
''    Forms![Personas_dati].Vard = Forms!LigumsViesn.Vards
''    Forms![Personas_dati].Uzva = Forms!LigumsViesn.Uzvards
End Sub
