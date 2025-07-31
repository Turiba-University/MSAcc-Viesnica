Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub AddRec_Click()
    Me.AllowAdditions = True
    Me.DataEntry = True
'''    Me.SarTips = 4
End Sub

Private Sub Aizvert_Click()
    DoCmd.Close
End Sub

Private Sub DelRec_Click()
    DoCmd.DoMenuItem acFormBar, acEditMenu, 8, , acMenuVer70
    DoCmd.DoMenuItem acFormBar, acEditMenu, 6, , acMenuVer70
    Me.Requery
End Sub

Private Sub Izveleties_Click()
    Call PA_Nos_DblClick(0)
End Sub

Private Sub SarTxt_AfterUpdate()
'''    Me.SarTips = 4
End Sub

Private Sub PA_Nos_DblClick(Cancel As Integer)

    If Me.OpenFrom = 10 Then 'atvērts no PA saraksta
        If Forms!LigumsViesn!LigumsViesnIstabinas_PASar_sub!PA_ID > 0 Then
            Dim a
            a = MsgBox("Šajā ierakstā jau ir reģistrēts papildaprīkojums. Vai tiešām vēlaties mainīt to pret citu?", vbQuestion + vbYesNo, "JTM")
            If a = vbNo Then
                DoCmd.Close
                Exit Sub
            End If
        End If
        Forms!LigumsViesn!LigumsViesnIstabinas_PASar_sub!Nosaukums = Me.PA_Nos
        Forms!LigumsViesn!LigumsViesnIstabinas_PASar_sub!PA_Cena = Me.PA_Cena
        Forms!LigumsViesn!LigumsViesnIstabinas_PASar_sub!PADat_No = Date
        Forms!LigumsViesn!LigumsViesnIstabinas_PASar_sub!PA_ID = Me.PA_ID

        Dim db As Database
        Dim VIrst As Recordset, VIstr As String

        VIstr = " SELECT dbo_viesn_Ligumi_Istabas.Istaba FROM dbo_viesn_Ligumi_Istabas"
        VIstr = VIstr & " WHERE ((Not (dbo_viesn_Ligumi_Istabas.Istaba) Is Null) AND ((dbo_viesn_Ligumi_Istabas.LIDat_Lidz) Is Null Or (dbo_viesn_Ligumi_Istabas.LIDat_Lidz) >= #" & Month(Date) & "/" & Day(Date) & "/" & Year(Date) & "#) And ((dbo_viesn_Ligumi_Istabas.Ligums) = " & Forms!LigumsViesn!Ligums & "))"
        VIstr = VIstr & " ORDER BY dbo_viesn_Ligumi_Istabas.LIDat_No DESC;"

        Set db = CurrentDb
        Set VIrst = db.OpenRecordset(VIstr, dbOpenDynaset)
        If Not VIrst.EOF Then
            If VIrst.RecordCount > 1 Then
                MsgBox "Uz līgumu ir reģistrētas vairākas istabiņas. Pie papildaprīkojuma lūdzu norādiet istabiņu kurā tas atradīsies.", vbOKOnly, "JTM"
            Else
                Forms!LigumsViesn!LigumsViesnIstabinas_PASar_sub!Istaba = VIrst!Istaba
            End If
        End If

        DoCmd.Close
    ElseIf Me.OpenFrom = 20 Then     'atvērts no PA samaksas
        If Forms!LigumsViesn!LigumsViesnIstabinas_PASar_Samaksa_sub!VLPA_ID > 0 Then
''            Dim a
            a = MsgBox("Šajā ierakstā jau ir reģistrēts papildaprīkojums. Vai tiešām vēlaties mainīt to pret citu?", vbQuestion + vbYesNo, "JTM")
            If a = vbNo Then
                DoCmd.Close
                Exit Sub
            End If
        End If
        Forms!LigumsViesn!LigumsViesnIstabinas_PASar_Samaksa_sub!PA_Nos = Me.PA_Nos
        Forms!LigumsViesn!LigumsViesnIstabinas_PASar_Samaksa_sub!MAKS_MEN = Me.PA_Cena
        If IsNull(Forms!LigumsViesn!LigumsViesnIstabinas_PASar_Samaksa_sub!DAT_NO) Then
            Forms!LigumsViesn!LigumsViesnIstabinas_PASar_Samaksa_sub!DAT_NO = Date
        End If
        Forms!LigumsViesn!LigumsViesnIstabinas_PASar_Samaksa_sub!VLPA_ID = Me.PA_ID

        If IsNull(Forms!LigumsViesn!LigumsViesnIstabinas_PASar_Samaksa_sub!DAT_NO) Or IsNull(Forms!LigumsViesn!LigumsViesnIstabinas_PASar_Samaksa_sub!DAT_LIDZ) Then
            Forms!LigumsViesn!LigumsViesnIstabinas_PASar_Samaksa_sub!TOTAL = Null
        Else
            Forms!LigumsViesn!LigumsViesnIstabinas_PASar_Samaksa_sub!TOTAL = Forms!LigumsViesn!LigumsViesnIstabinas_PASar_Samaksa_sub!SamPerSk * Me.PA_Cena
            Forms!LigumsViesn!LigumsViesnIstabinas_PASar_Samaksa_sub!LAST_DAT = Format(Date, "DD-MM-YYYY")
            Forms!LigumsViesn!LigumsViesnIstabinas_PASar_Samaksa_sub!FABULA = Forms!LigumsViesn!LigumsViesnIstabinas_PASar_Samaksa_sub!FABULA & CurrentUser() & Date
        End If

''        Dim db As Database
''        Dim VIrst As Recordset, VIstr As String

        VIstr = " SELECT dbo_viesn_Ligumi_Istabas.Istaba FROM dbo_viesn_Ligumi_Istabas"
        VIstr = VIstr & " WHERE ((Not (dbo_viesn_Ligumi_Istabas.Istaba) Is Null) AND ((dbo_viesn_Ligumi_Istabas.LIDat_Lidz) Is Null Or (dbo_viesn_Ligumi_Istabas.LIDat_Lidz) >= #" & Month(Date) & "/" & Day(Date) & "/" & Year(Date) & "#) And ((dbo_viesn_Ligumi_Istabas.Ligums) = " & Forms!LigumsViesn!Ligums & "))"
        VIstr = VIstr & " ORDER BY dbo_viesn_Ligumi_Istabas.LIDat_No DESC;"

        Set db = CurrentDb
        Set VIrst = db.OpenRecordset(VIstr, dbOpenDynaset)
        If Not VIrst.EOF Then
            If VIrst.RecordCount > 1 Then
                MsgBox "Uz līgumu ir reģistrētas vairākas istabiņas. Pie papildaprīkojuma lūdzu norādiet istabiņu kurā tas atradīsies.", vbOKOnly, "JTM"
            Else
                Forms!LigumsViesn!LigumsViesnIstabinas_PASar_sub!Istaba = VIrst!Istaba
            End If
        End If

        DoCmd.Close
    ElseIf Me.OpenFrom = 30 Then     'atvērts no PA samaksas kasē (jāizvēlas PA)
        Forms!LigumsViesn!LigumsViesnIstabinas_PASar_Samaksa_sub!VLPA_ID = Me.PA_ID
        Forms!LigumsViesn!LigumsViesnIstabinas_PASar_Samaksa_sub!PA_Nos = Me.PA_Nos
        DoCmd.Close
    End If
End Sub

Private Sub SaveRec_Click()
    DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70
    Me.AllowAdditions = False
    Me.DataEntry = False
    Me.Requery
End Sub
