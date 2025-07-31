Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub cmdClose_Click()
    DoCmd.Close , , acSaveYes
End Sub

Private Sub cmdDel_Click()
Dim dbs As Database
Dim rst As Recordset

msg = MsgBox("Vai jūs tiešām vēlaties izdzēst rezervistu?", vbYesNo + vbDefaultButton2, "Dzēst rezervistu")
If msg = vbYes Then
    Set dbs = CurrentDb
    Set rst = dbs.OpenRecordset("SELECT dbo_Viesn_Rezervesana.* FROM dbo_Viesn_Rezervesana " _
        & "WHERE (((dbo_Viesn_Rezervesana.Ckods)=" & Me.CKods & ") and dbo_Viesn_Rezervesana.Rez_MG = " & Me.R_MG & " and dbo_Viesn_Rezervesana.Dzests =0);", DB_OPEN_DYNASET, dbSeeChanges)

    Do While Not rst.EOF
        rst.Edit
        rst!Dzests = -1
        rst.Update
        rst.MoveNext
    Loop
''    rst.Edit
''    rst!Dzests = -1
''    rst.Update
    rst.Close
    dbs.Close
    If Me.CurrentRecord > 1 Then currec = Me.CurrentRecord - 1 Else currec = 1
    Me.Requery
    DoCmd.GoToRecord , , acGoTo, currec
End If
End Sub

Private Sub cmdEdit_Click()
    DoCmd.OpenForm "Jauns_rezervists", acNormal
    Forms!Jauns_rezervists.Caption = "Labot"
    'Forms!Jauns_rezervists.Lig_Nr = Me.Lig_Nr
    Forms!Jauns_rezervists.R_MG = Me.R_MG
    Forms!Jauns_rezervists.Uzvards = Me.Uzvards
    Forms!Jauns_rezervists.Vards = Me.Vards
    Forms!Jauns_rezervists.Pers_Kods = Me.Pers_Kods
    Forms!Jauns_rezervists.Dzimums = Me.Dzimums
    Forms!Jauns_rezervists.MValsts = Me.MValsts
''    Forms!Jauns_rezervists.KURSS = Me.KURSS
    Forms!Jauns_rezervists.Tel1 = Me.Tel1
    If IsNull(Me.Tel1) Then Forms!Jauns_rezervists.Tag = "" Else Forms!Jauns_rezervists.Tag = Me.Tel1
    Forms!Jauns_rezervists.Istaba = Me.Istaba
    If IsNull(Me.Istaba) Then Forms!Jauns_rezervists.lbl_ist_nr.Caption = "" Else Forms!Jauns_rezervists.lbl_ist_nr.Caption = Me.Istaba
    Forms!Jauns_rezervists.CKods = Me.CKods
    Forms!Jauns_rezervists.Piezimes = Me.Piezimes
    Forms!Jauns_rezervists.Lig_Dat = Me.Lig_Dat
    Forms!Jauns_rezervists.Ievadits = Me.Ievadits
    Forms!Jauns_rezervists.Tips = Me.Tips
    Forms!Jauns_rezervists.OpenFrom = 1
End Sub

Private Sub cmdIstabas_Click()
    If Me.R_MG = 2024 Then
        DoCmd.OpenQuery "qryBrivasVietas_sar_R_24", acViewNormal
    ElseIf Me.R_MG = 2023 Then
        DoCmd.OpenQuery "qryBrivasVietas_sar_R_23", acViewNormal
    ElseIf Me.R_MG = 2022 Then
        DoCmd.OpenQuery "qryBrivasVietas_sar_R_22", acViewNormal
    ElseIf Me.R_MG = 2021 Then
        DoCmd.OpenQuery "qryBrivasVietas_sar_R_21", acViewNormal
    ElseIf Me.R_MG = 2020 Then
        DoCmd.OpenQuery "qryBrivasVietas_sar_R_20", acViewNormal
    ElseIf Me.R_MG = 2019 Then
        DoCmd.OpenQuery "qryBrivasVietas_sar_R_19", acViewNormal
    ElseIf Me.R_MG = 2018 Then
        DoCmd.OpenQuery "qryBrivasVietas_sar_R_18", acViewNormal
    ElseIf Me.R_MG = 2017 Then
        DoCmd.OpenQuery "qryBrivasVietas_sar_R_17", acViewNormal
    ElseIf Me.R_MG = 2016 Then
        DoCmd.OpenQuery "qryBrivasVietas_sar_R_16", acViewNormal
    ElseIf Me.R_MG = 2015 Then
        DoCmd.OpenQuery "qryBrivasVietas_sar_R_15", acViewNormal
    ElseIf Me.R_MG = 2014 Then
        DoCmd.OpenQuery "qryBrivasVietas_sar_R_14", acViewNormal
    End If
End Sub

Private Sub cmdList_Click()
    DoCmd.OpenForm "Saraksts", acNormal
    Forms!saraksts.MG_txt.Caption = Me.MG_txt
End Sub

Private Sub cmdNew_Click()
    DoCmd.OpenForm "Jauns_rezervists", acNormal
    Forms!Jauns_rezervists.Caption = "Jauns"
    Forms!Jauns_rezervists.OpenFrom = 1
    DoCmd.OpenForm "Meklesana", acNormal
End Sub

Private Sub Form_Close()
    Me.RecordSource = ""
End Sub

Private Sub Form_Open(Cancel As Integer)
    Me.R_MG = 2024
    Me.RecordSource = "qryRezerv"
    Me.Requery
    If Me.Recordset.RecordCount > 0 Then DoCmd.GoToRecord , , acLast
End Sub

Private Sub IrIstLigumi_Click()
    DoCmd.OpenQuery "rez_IrLigIst", acViewNormal

End Sub

Private Sub IstabasPaValstim_Click()
    If Me.R_MG = 2024 Then
        DoCmd.OpenQuery "qryBrivasVietasValstis_Sar_24", acViewNormal
    ElseIf Me.R_MG = 2023 Then
        DoCmd.OpenQuery "qryBrivasVietasValstis_Sar_23", acViewNormal
    ElseIf Me.R_MG = 2022 Then
        DoCmd.OpenQuery "qryBrivasVietasValstis_Sar_22", acViewNormal
    ElseIf Me.R_MG = 2021 Then
        DoCmd.OpenQuery "qryBrivasVietasValstis_Sar_21", acViewNormal
    ElseIf Me.R_MG = 2020 Then
        DoCmd.OpenQuery "qryBrivasVietasValstis_Sar_20", acViewNormal
    ElseIf Me.R_MG = 2019 Then
        DoCmd.OpenQuery "qryBrivasVietasValstis_Sar_19", acViewNormal
    ElseIf Me.R_MG = 2018 Then
        DoCmd.OpenQuery "qryBrivasVietasValstis_Sar_18", acViewNormal
    ElseIf Me.R_MG = 2017 Then
        DoCmd.OpenQuery "qryBrivasVietasValstis_Sar_17", acViewNormal
    ElseIf Me.R_MG = 2016 Then
        DoCmd.OpenQuery "qryBrivasVietasValstis_Sar_16", acViewNormal
    ElseIf Me.R_MG = 2015 Then
        DoCmd.OpenQuery "qryBrivasVietasValstis_Sar_15", acViewNormal
    ElseIf Me.R_MG = 2014 Then
        DoCmd.OpenQuery "qryBrivasVietasValstis_Sar_14", acViewNormal
    End If
End Sub

Private Sub R_MG_AfterUpdate()
    Me.Requery
End Sub
