Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Form_Open(Cancel As Integer)
''    Call EventRec("Form", Me.Name, CurrentUser())
''    If Not CurrentUser() = "Imants" Then
''        DoCmd.close
''    End If
End Sub

Private Sub L2N(TName As String)
''DoCmd.Rename "dbo_Atlaujas1", acTable, "dbo_Atlaujas"
''DoCmd.Rename "dbo_Atlaujas", acTable, "dbo_Atlaujas-"
''DoCmd.DeleteObject acTable, "dbo_Atlaujas1"

    DoCmd.Rename "dbo_" & TName & "1", acTable, "dbo_" & TName
    DoCmd.Rename "dbo_" & TName, acTable, "dbo_" & TName & "-"
    DoCmd.DeleteObject acTable, "dbo_" & TName & "1"

End Sub

Private Sub Local2Net_Click()
    Call L2N("crl_Caurlaides")
    Call L2N("crl_KlientuTipi")
    Call L2N("crl_NrDiapazoni")
    Call L2N("crl_Veidi")
    Call L2N("KA_Nodalas")
    Call L2N("kd_Grupas")
    Call L2N("kd_Kursanti")
    Call L2N("kl_Adresem_RPP")
    Call L2N("kl_Darbibas")
    Call L2N("kl_Logins")
    Call L2N("kl_LoginsRights")
    Call L2N("kl_v_Login_Rights")
    Call L2N("Ligumi2006")
    Call L2N("pd_PA_ZK")
    Call L2N("Personas")
    Call L2N("Spool2000_KA")
    Call L2N("Spool")
    Call L2N("STL_kl_Valsts")
    Call L2N("STL_PersLigData")
    Call L2N("stl_Stud_LastMGR_Data")
    Call L2N("Stop")
    Call L2N("StStat_StudSar_StudTab")
    Call L2N("st_Aizliegumi")
    Call L2N("st_Iemesli")
    Call L2N("st_Iem_Aizl")
    Call L2N("st_Stop")
    Call L2N("viesn_Caurlaides")
    Call L2N("viesn_kl_Istabas")
    Call L2N("viesn_kl_LBData")
    Call L2N("viesn_Ligumi")
    Call L2N("viesn_Ligumi_Istabas")
    Call L2N("viesn_Ligumi_PApr")
    Call L2N("viesn_Ligumi_PApr_Maksajumi")
    Call L2N("viesn_Ligumi_VValstis")
    Call L2N("viesn_Maksajumi")
    Call L2N("Viesn_PAprikojums")
    Call L2N("Viesn_Rezervesana")
    Call L2N("Viesn_MZAkts")
    Call L2N("Viesn_MZAkts_saturs")
    Call L2N("viesn_Ligumi_Inv")
    Call L2N("Viesn_Inventars")

End Sub

Private Sub N2L(TName As String)
    DoCmd.TransferDatabase acImport, "ODBC Database", "ODBC;Description=ALIGUMI01_copy;DRIVER=SQL Server;SERVER=ZUTIS;APP=Microsoft® Access;WSID=HPOMNI;DATABASE=ALIGUMI01_copy;Network=DBMSSOCN;Address=Zutis,1433;Trusted_Connection=Yes", _
        acTable, "dbo." & TName, "dbo_" & TName & "1"
    DoCmd.Rename "dbo_" & TName & "-", acTable, "dbo_" & TName
    DoCmd.Rename "dbo_" & TName, acTable, "dbo_" & TName & "1"
End Sub

Private Sub Net2Local_Click()
    Call N2L("crl_Caurlaides")
    Call N2L("crl_KlientuTipi")
    Call N2L("crl_NrDiapazoni")
    Call N2L("crl_Veidi")
    Call N2L("KA_Nodalas")
    Call N2L("kd_Grupas")
    Call N2L("kd_Kursanti")
    Call N2L("kl_Adresem_RPP")
    Call N2L("kl_Darbibas")
    Call N2L("kl_Logins")
    Call N2L("kl_LoginsRights")
    Call N2L("kl_v_Login_Rights")
    Call N2L("Ligumi2006")
    Call N2L("pd_PA_ZK")
    Call N2L("Personas")
    Call N2L("Spool2000_KA")
    Call N2L("STL_kl_Valsts")
    Call N2L("Spool")
    Call N2L("STL_PersLigData")
    Call N2L("stl_Stud_LastMGR_Data")
    Call N2L("Stop")
    Call N2L("StStat_StudSar_StudTab")
    Call N2L("st_Aizliegumi")
    Call N2L("st_Iemesli")
    Call N2L("st_Iem_Aizl")
    Call N2L("st_Stop")
    Call N2L("viesn_Caurlaides")
    Call N2L("viesn_kl_Istabas")
    Call N2L("viesn_kl_LBData")
    Call N2L("viesn_Ligumi")
    Call N2L("viesn_Ligumi_Istabas")
    Call N2L("viesn_Ligumi_PApr")
    Call N2L("viesn_Ligumi_PApr_Maksajumi")
    Call N2L("viesn_Ligumi_VValstis")
    Call N2L("viesn_Maksajumi")
    Call N2L("Viesn_PAprikojums")
    Call N2L("Viesn_Rezervesana")
    Call N2L("Viesn_MZAkts")
    Call N2L("Viesn_MZAkts_saturs")
    Call N2L("viesn_Ligumi_Inv")
    Call N2L("Viesn_Inventars")

End Sub


Private Sub ObjSources_Click()
    Dim obj As AccessObject, dbs As Object, ObjData As Recordset, QList As Recordset, qstr As String

    Set db = CurrentDb()
    Set ObjData = db.OpenRecordset("aa_Obj", DB_OPEN_DYNASET, dbSeeChanges)

    Set dbs = Application.CurrentProject
    DoCmd.SetWarnings 0
    DoCmd.Hourglass 1
    DoCmd.RunSQL "DELETE aa_Obj.*, aa_Obj.Type FROM aa_Obj WHERE (((aa_Obj.Type)=""Report""));"
    For Each obj In dbs.AllReports
        ObjData.AddNew
        ObjData!Type = "Report"
        ObjData!Name = obj.Name
        DoCmd.OpenReport obj.Name, acViewDesign
        If Reports(obj.Name).RecordSource = "" Then
            ObjData!RecordSource = "-"
        Else
            ObjData!RecordSource = Reports(obj.Name).RecordSource
        End If
        DoCmd.Close acReport, obj.Name
        ObjData.Update
    Next obj

    DoCmd.RunSQL "DELETE aa_Obj.*, aa_Obj.Type FROM aa_Obj WHERE (((aa_Obj.Type)=""Form""));"
    For Each obj In dbs.AllForms
        ObjData.AddNew
        ObjData!Type = "Form"
        ObjData!Name = obj.Name
        DoCmd.OpenForm obj.Name, acViewDesign
        If Forms(obj.Name).RecordSource = "" Then
            ObjData!RecordSource = "-"
        Else
            ObjData!RecordSource = Forms(obj.Name).RecordSource
        End If
        If Not obj.Name = "ZN2L" Then DoCmd.Close acForm, obj.Name
        ObjData.Update
    Next obj

    qstr = "SELECT MSysObjects.Name FROM MSysObjects"
    qstr = qstr & " WHERE (((MSysObjects.Name) Not Like ""~*"") AND ((MSysObjects.Type)=5));"
    Set QList = db.OpenRecordset(qstr, DB_OPEN_DYNASET, dbSeeChanges)

    QList.MoveFirst
    DoCmd.RunSQL "DELETE aa_Obj.*, aa_Obj.Type FROM aa_Obj WHERE (((aa_Obj.Type)=""Query""));"
    Do While Not QList.EOF
        ObjData.AddNew
        ObjData!Type = "Query"
        ObjData!Name = QList!Name
        ObjData!RecordSource = CurrentDb.QueryDefs(QList!Name).SQL
        ObjData.Update
        QList.MoveNext
    Loop

    DoCmd.Hourglass 0
    DoCmd.SetWarnings 1

End Sub

Private Sub SetProp_Click()
'    CurrentDb().Containers("Databases").Documents("SummaryInfo").Properties("Author").Value
'    CurrentDb().Containers("Databases").Documents("SummaryInfo").Properties("Title").Value
CurrentDb().Containers("Databases").Documents("SummaryInfo").Properties("Title").Value = "Studiju ligumi v" & Me.Versija
End Sub
Private Sub ObjNames_Click()

    Dim obj As AccessObject, dbs As Object
    Set dbs = Application.CurrentProject
'    Debug.Print "===============FORMS"
'    For Each obj In dbs.AllForms
'            Debug.Print obj.Name
'    Next obj
    Debug.Print "===============reports"
    For Each obj In dbs.AllReports
            Debug.Print obj.Name
    Next obj
    Debug.Print "====   END   ====="
End Sub
