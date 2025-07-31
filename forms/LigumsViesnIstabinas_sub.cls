Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Form_AfterUpdate()
    Forms!LigumsViesn!MAKSAJUMIbeta!IST_NR.Requery
End Sub

Private Sub Istaba_AfterUpdate()
    If IsNull(Me.LIDat_No) Then Me.LIDat_No = Date

    Dim KStr As String, KData As Recordset, PData As Recordset, db As Database, a
    Set db = CurrentDb()

    If Not IsNull(Me.Istaba.OldValue) Then
        KStr = "SELECT dbo_Viesn_Rezervesana.V_Rez_RID, dbo_Viesn_Rezervesana.CKods, dbo_Viesn_Rezervesana.Istaba, dbo_Viesn_Rezervesana.Dzests"
        KStr = KStr & " FROM dbo_Viesn_Rezervesana"
        KStr = KStr & " WHERE (((dbo_Viesn_Rezervesana.CKods)=" & Forms!LigumsViesn!CKods & ") AND ((dbo_Viesn_Rezervesana.Rez_MG)=" & Forms!LigumsViesn!MG & ") "
        KStr = KStr & " AND ((dbo_Viesn_Rezervesana.Istaba)=" & Me.Istaba.OldValue & ") AND ((dbo_Viesn_Rezervesana.Dzests) Is Null Or (dbo_Viesn_Rezervesana.Dzests)=0));"

        Set PData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)
        If PData.EOF Then

        Else
            a = MsgBox("Personai ir rezervācija uz " & Forms!LigumsViesn!MG & ". mācību gadu, " & Me.Istaba.OldValue & ".istaba. Vai dzēst?", vbYesNo, "JTM līgumi")
            If a = vbYes Then
                PData.MoveFirst
                PData.Edit
                PData!Dzests = -1
                PData.Update
            End If
        End If
    End If

    KStr = "SELECT dbo_Viesn_Rezervesana.V_Rez_RID, dbo_Viesn_Rezervesana.CKods, dbo_Viesn_Rezervesana.Rez_MG, dbo_Viesn_Rezervesana.Istaba, dbo_Viesn_Rezervesana.Dzests, "
    KStr = KStr & " dbo_Viesn_Rezervesana.Rez_Vards, dbo_Viesn_Rezervesana.Rez_Uzvards, dbo_Viesn_Rezervesana.Lig_Dat, dbo_Viesn_Rezervesana.Tips, dbo_Viesn_Rezervesana.Ligums, "
    KStr = KStr & " dbo_Viesn_Rezervesana.Ievadits"
    KStr = KStr & " FROM dbo_Viesn_Rezervesana"
    KStr = KStr & " WHERE (((dbo_Viesn_Rezervesana.CKods)=" & Forms!LigumsViesn!CKods & ") AND ((dbo_Viesn_Rezervesana.Rez_MG)=" & Forms!LigumsViesn!MG & ") "
    KStr = KStr & " AND ((dbo_Viesn_Rezervesana.Istaba)=" & Me.Istaba & ") AND ((dbo_Viesn_Rezervesana.Dzests) Is Null Or (dbo_Viesn_Rezervesana.Dzests)=0));"


    Set PData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)
    If PData.EOF Then
        a = MsgBox("Vai ielikt rezervistos uz " & Forms!LigumsViesn!MG & ". mācību gadu, " & Me.Istaba & ".istaba?", vbYesNo, "JTM līgumi")
        If a = vbYes Then
            PData.AddNew
            PData!CKods = Forms!LigumsViesn!CKods
            PData!Rez_MG = Forms!LigumsViesn!MG
            PData!Istaba = Me.Istaba
            PData!Rez_Vards = Forms!LigumsViesn!Vards
            PData!Rez_Uzvards = Forms!LigumsViesn!Uzvards
            PData!Lig_Dat = Date
            PData!Tips = Forms!LigumsViesn!POSITION
            PData!Ievadits = Now()
            PData!Ligums = 12
            PData.Update
        End If
    End If

    DoCmd.GoToRecord , , acNext
    DoCmd.GoToRecord , , acPrevious
    Me.LIDat_No.SetFocus

End Sub

Private Sub LIDat_Lidz_AfterUpdate()
    Dim KStr As String, KData As Recordset, PData As Recordset, db As Database, a
    Set db = CurrentDb()

    If Me.LIDat_Lidz > 0 Then

        KStr = "SELECT dbo_Viesn_Rezervesana.V_Rez_RID, dbo_Viesn_Rezervesana.CKods, dbo_Viesn_Rezervesana.Istaba, dbo_Viesn_Rezervesana.Dzests"
        KStr = KStr & " FROM dbo_Viesn_Rezervesana"
        KStr = KStr & " WHERE (((dbo_Viesn_Rezervesana.CKods)=" & Forms!LigumsViesn!CKods & ") AND ((dbo_Viesn_Rezervesana.Rez_MG)=" & Forms!LigumsViesn!MG & ") "
        KStr = KStr & " AND ((dbo_Viesn_Rezervesana.Istaba)=" & Me.Istaba & ") AND ((dbo_Viesn_Rezervesana.Dzests) Is Null Or (dbo_Viesn_Rezervesana.Dzests)=0));"


        Set PData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)
        If PData.EOF Then
            Exit Sub
        Else
            a = MsgBox("Personai ir rezervācija uz " & Forms!LigumsViesn!MG & ". mācību gadu, " & Me.Istaba & ".istaba. Vai dzēst?", vbYesNo, "JTM līgumi")
            If a = vbYes Then
                PData.MoveFirst
                PData.Edit
                PData!Dzests = -1
                PData.Update
            End If
        End If
    Else
        If Not IsNull(Me.Istaba) Then

            KStr = "SELECT dbo_Viesn_Rezervesana.V_Rez_RID, dbo_Viesn_Rezervesana.CKods, dbo_Viesn_Rezervesana.Rez_MG, dbo_Viesn_Rezervesana.Istaba, dbo_Viesn_Rezervesana.Dzests, "
            KStr = KStr & " dbo_Viesn_Rezervesana.Rez_Vards, dbo_Viesn_Rezervesana.Rez_Uzvards, dbo_Viesn_Rezervesana.Lig_Dat, dbo_Viesn_Rezervesana.Tips, dbo_Viesn_Rezervesana.Ligums, "
            KStr = KStr & " dbo_Viesn_Rezervesana.Ievadits"
            KStr = KStr & " FROM dbo_Viesn_Rezervesana"
            KStr = KStr & " WHERE (((dbo_Viesn_Rezervesana.CKods)=" & Forms!LigumsViesn!CKods & ") AND ((dbo_Viesn_Rezervesana.Rez_MG)=" & Forms!LigumsViesn!MG & ") "
            KStr = KStr & " AND ((dbo_Viesn_Rezervesana.Istaba)=" & Me.Istaba & ") AND ((dbo_Viesn_Rezervesana.Dzests) Is Null Or (dbo_Viesn_Rezervesana.Dzests)=0));"


            Set PData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)
            If PData.EOF Then
                a = MsgBox("Vai ielikt rezervistos uz " & Forms!LigumsViesn!MG & ". mācību gadu, " & Me.Istaba & ".istaba?", vbYesNo, "JTM līgumi")
                If a = vbYes Then
                    PData.AddNew
                    PData!CKods = Forms!LigumsViesn!CKods
                    PData!Rez_MG = Forms!LigumsViesn!MG
                    PData!Istaba = Me.Istaba
                    PData!Rez_Vards = Forms!LigumsViesn!Vards
                    PData!Rez_Uzvards = Forms!LigumsViesn!Uzvards
                    PData!Lig_Dat = Date
                    PData!Tips = Forms!LigumsViesn!POSITION
                    PData!Ievadits = Now()
                    PData!Ligums = 12
                    PData.Update
                End If
            End If

            DoCmd.GoToRecord , , acNext
            DoCmd.GoToRecord , , acPrevious
            Me.LIDat_No.SetFocus

        End If
    End If
End Sub
