Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database


Private Sub Aizvert_Click()
    DoCmd.Close
End Sub


Private Sub Izveleties_Click()
    Dim db As Database
    Dim VIrst As Recordset, VIstr As String, INVrst As Recordset, IstNr
    Dim a

    If Me.OpenFrom = 10 Then
        If Forms!LigumsViesn!LigumsViesnIstabinas_InvIst_sub!Inv_ID > 0 Then
            a = MsgBox("Šim līgumam jau ir reģistrēts inventārs. Vai tiešām vēlaties to papildināt?", vbQuestion + vbYesNo, "JTM")
            If a = vbNo Then
                DoCmd.Close
                Exit Sub
            End If
        End If

        VIstr = " SELECT dbo_viesn_Ligumi_Istabas.Istaba FROM dbo_viesn_Ligumi_Istabas"
        VIstr = VIstr & " WHERE ((Not (dbo_viesn_Ligumi_Istabas.Istaba) Is Null) AND ((dbo_viesn_Ligumi_Istabas.LIDat_Lidz) Is Null Or (dbo_viesn_Ligumi_Istabas.LIDat_Lidz) >= #" & Month(Date) & "/" & Day(Date) & "/" & Year(Date) & "#) And ((dbo_viesn_Ligumi_Istabas.Ligums) = " & Forms!LigumsViesn!Ligums & "))"
        VIstr = VIstr & " ORDER BY dbo_viesn_Ligumi_Istabas.LIDat_No DESC;"

        Set db = CurrentDb

        Set VIrst = db.OpenRecordset(VIstr, dbOpenDynaset)
        If Not VIrst.EOF Then
            If VIrst.RecordCount > 1 Then
                MsgBox "Uz līgumu ir reģistrētas vairākas istabiņas. Pie inventāra lūdzu norādiet istabiņu kurā tas atradīsies.", vbOKOnly, "JTM"
            Else
                IstNr = VIrst!Istaba
            End If
        End If

        VIstr = " SELECT dbo_viesn_Ligumi_Inv.VLI_ID, dbo_viesn_Ligumi_Inv.Ligums, dbo_viesn_Ligumi_Inv.Istaba, dbo_viesn_Ligumi_Inv.Inv_ID, dbo_viesn_Ligumi_Inv.InvTips, dbo_viesn_Ligumi_Inv.Inv_Nos, dbo_viesn_Ligumi_Inv.InvComment, dbo_viesn_Ligumi_Inv.InvSk, dbo_viesn_Ligumi_Inv.InvStat"
        VIstr = VIstr & " FROM dbo_viesn_Ligumi_Inv;"
        Set VIrst = db.OpenRecordset(VIstr, dbOpenDynaset, dbSeeChanges)

        VIstr = " SELECT dbo_Viesn_Inventars.Inv_ID, dbo_Viesn_Inventars.Inv_Nos"
        VIstr = VIstr & " FROM dbo_Viesn_Inventars"
        VIstr = VIstr & " WHERE (((dbo_Viesn_Inventars.InvTips)=1));"
        Set INVrst = db.OpenRecordset(VIstr, dbOpenDynaset, dbSeeChanges)
        INVrst.MoveFirst
        Do Until INVrst.EOF
            VIrst.AddNew
            VIrst!Ligums = Forms!LigumsViesn!Ligums
''            VIrst!Istaba = IstNr
            VIrst!Inv_ID = INVrst!Inv_ID
            VIrst!InvTips = 1
            VIrst!Inv_Nos = INVrst!Inv_Nos
            VIrst!InvSk = 1
            VIrst!InvStat = 0

            If INVrst!Inv_ID = 11 Then 'ieejas karte
                a = InputBox("Ievadiet ieejas kartes Nr:", "JTM līgumi")
                VIrst!InvComment = a
            End If

            VIrst.Update
            INVrst.MoveNext
        Loop
        Forms!LigumsViesn!LigumsViesnIstabinas_InvIst_sub.Requery
    ElseIf Me.OpenFrom = 20 Then
        If Forms!LigumsViesn!LigumsViesnIstabinas_InvSanem_sub!Inv_ID > 0 Then
            a = MsgBox("Šim līgumam jau ir reģistrēts inventārs. Vai tiešām vēlaties to papildināt?", vbQuestion + vbYesNo, "JTM")
            If a = vbNo Then
                DoCmd.Close
                Exit Sub
            End If
        End If

        VIstr = " SELECT dbo_viesn_Ligumi_Istabas.Istaba FROM dbo_viesn_Ligumi_Istabas"
        VIstr = VIstr & " WHERE ((Not (dbo_viesn_Ligumi_Istabas.Istaba) Is Null) AND ((dbo_viesn_Ligumi_Istabas.LIDat_Lidz) Is Null Or (dbo_viesn_Ligumi_Istabas.LIDat_Lidz) >= #" & Month(Date) & "/" & Day(Date) & "/" & Year(Date) & "#) And ((dbo_viesn_Ligumi_Istabas.Ligums) = " & Forms!LigumsViesn!Ligums & "))"
        VIstr = VIstr & " ORDER BY dbo_viesn_Ligumi_Istabas.LIDat_No DESC;"

        Set db = CurrentDb

        Set VIrst = db.OpenRecordset(VIstr, dbOpenDynaset)
        If Not VIrst.EOF Then
            If VIrst.RecordCount > 1 Then
                MsgBox "Uz līgumu ir reģistrētas vairākas istabiņas. Pie inventāra lūdzu norādiet istabiņu kurā tas atradīsies.", vbOKOnly, "JTM"
            Else
                IstNr = VIrst!Istaba
            End If
        End If

        VIstr = " SELECT dbo_viesn_Ligumi_Inv.VLI_ID, dbo_viesn_Ligumi_Inv.Ligums, dbo_viesn_Ligumi_Inv.Istaba, dbo_viesn_Ligumi_Inv.Inv_ID, dbo_viesn_Ligumi_Inv.InvTips, dbo_viesn_Ligumi_Inv.Inv_Nos, dbo_viesn_Ligumi_Inv.InvComment, dbo_viesn_Ligumi_Inv.InvSk, dbo_viesn_Ligumi_Inv.InvStat"
        VIstr = VIstr & " FROM dbo_viesn_Ligumi_Inv;"
        Set VIrst = db.OpenRecordset(VIstr, dbOpenDynaset, dbSeeChanges)

        VIstr = " SELECT dbo_Viesn_Inventars.Inv_ID, dbo_Viesn_Inventars.Inv_Nos"
        VIstr = VIstr & " FROM dbo_Viesn_Inventars"
        VIstr = VIstr & " WHERE (((dbo_Viesn_Inventars.InvTips)=2));"
        Set INVrst = db.OpenRecordset(VIstr, dbOpenDynaset, dbSeeChanges)
        INVrst.MoveFirst
        Do Until INVrst.EOF
            VIrst.AddNew
            VIrst!Ligums = Forms!LigumsViesn!Ligums
''            VIrst!Istaba = IstNr
            VIrst!Inv_ID = INVrst!Inv_ID
            VIrst!InvTips = 2
            VIrst!Inv_Nos = INVrst!Inv_Nos
            VIrst!InvSk = 1
            VIrst!InvStat = 0

            If INVrst!Inv_ID = 11 Then 'ieejas karte
                a = InputBox("Ievadiet ieejas kartes Nr:", "JTM līgumi")
                VIrst!InvComment = a
            End If

            VIrst.Update
            INVrst.MoveNext
        Loop
        Forms!LigumsViesn!LigumsViesnIstabinas_InvSanem_sub.Requery
    End If

    DoCmd.Close

End Sub


Private Sub PA_Nos_DblClick(Cancel As Integer)
    Dim db As Database
    Dim VIrst As Recordset, VIstr As String, INVrst As Recordset, IstNr
    Dim a

    If Me.OpenFrom = 10 Then
        If Forms!LigumsViesn!LigumsViesnIstabinas_InvIst_sub!Inv_ID > 0 Then
            a = MsgBox("Šim līgumam jau ir reģistrēts inventārs. Vai tiešām vēlaties to papildināt?", vbQuestion + vbYesNo, "JTM")
            If a = vbNo Then
                DoCmd.Close
                Exit Sub
            End If
        End If

        VIstr = " SELECT dbo_viesn_Ligumi_Istabas.Istaba FROM dbo_viesn_Ligumi_Istabas"
        VIstr = VIstr & " WHERE ((Not (dbo_viesn_Ligumi_Istabas.Istaba) Is Null) AND ((dbo_viesn_Ligumi_Istabas.LIDat_Lidz) Is Null Or (dbo_viesn_Ligumi_Istabas.LIDat_Lidz) >= #" & Month(Date) & "/" & Day(Date) & "/" & Year(Date) & "#) And ((dbo_viesn_Ligumi_Istabas.Ligums) = " & Forms!LigumsViesn!Ligums & "))"
        VIstr = VIstr & " ORDER BY dbo_viesn_Ligumi_Istabas.LIDat_No DESC;"

        Set db = CurrentDb

        Set VIrst = db.OpenRecordset(VIstr, dbOpenDynaset)
        If Not VIrst.EOF Then
            If VIrst.RecordCount > 1 Then
                MsgBox "Uz līgumu ir reģistrētas vairākas istabiņas. Pie inventāra lūdzu norādiet istabiņu kurā tas atradīsies.", vbOKOnly, "JTM"
            Else
                IstNr = VIrst!Istaba
            End If
        End If

        VIstr = " SELECT dbo_viesn_Ligumi_Inv.VLI_ID, dbo_viesn_Ligumi_Inv.Ligums, dbo_viesn_Ligumi_Inv.Istaba, dbo_viesn_Ligumi_Inv.Inv_ID, dbo_viesn_Ligumi_Inv.InvTips, dbo_viesn_Ligumi_Inv.Inv_Nos, dbo_viesn_Ligumi_Inv.InvComment, dbo_viesn_Ligumi_Inv.InvSk, dbo_viesn_Ligumi_Inv.InvStat"
        VIstr = VIstr & " FROM dbo_viesn_Ligumi_Inv;"
        Set VIrst = db.OpenRecordset(VIstr, dbOpenDynaset, dbSeeChanges)

        VIstr = " SELECT dbo_Viesn_Inventars.Inv_ID, dbo_Viesn_Inventars.Inv_Nos"
        VIstr = VIstr & " FROM dbo_Viesn_Inventars"
        VIstr = VIstr & " WHERE (((dbo_Viesn_Inventars.InvTips)=1) and dbo_Viesn_Inventars.Inv_ID=" & Me.Inv_ID & ");"
        Set INVrst = db.OpenRecordset(VIstr, dbOpenDynaset, dbSeeChanges)
        INVrst.MoveFirst
        Do Until INVrst.EOF
            VIrst.AddNew
            VIrst!Ligums = Forms!LigumsViesn!Ligums
            VIrst!Istaba = IstNr
            VIrst!Inv_ID = INVrst!Inv_ID
            VIrst!InvTips = 1
            VIrst!Inv_Nos = INVrst!Inv_Nos
            VIrst!InvSk = 1
            VIrst!InvStat = 0

            If INVrst!Inv_ID = 11 Then 'ieejas karte
                a = InputBox("Ievadiet ieejas kartes Nr:", "JTM līgumi")
                VIrst!InvComment = a
            End If

            VIrst.Update
            INVrst.MoveNext
        Loop
        Forms!LigumsViesn!LigumsViesnIstabinas_InvIst_sub.Requery
    ElseIf Me.OpenFrom = 20 Then
        If Forms!LigumsViesn!LigumsViesnIstabinas_InvSanem_sub!Inv_ID > 0 Then
            a = MsgBox("Šim līgumam jau ir reģistrēts inventārs. Vai tiešām vēlaties to papildināt?", vbQuestion + vbYesNo, "JTM")
            If a = vbNo Then
                DoCmd.Close
                Exit Sub
            End If
        End If

        VIstr = " SELECT dbo_viesn_Ligumi_Istabas.Istaba FROM dbo_viesn_Ligumi_Istabas"
        VIstr = VIstr & " WHERE ((Not (dbo_viesn_Ligumi_Istabas.Istaba) Is Null) AND ((dbo_viesn_Ligumi_Istabas.LIDat_Lidz) Is Null Or (dbo_viesn_Ligumi_Istabas.LIDat_Lidz) >= #" & Month(Date) & "/" & Day(Date) & "/" & Year(Date) & "#) And ((dbo_viesn_Ligumi_Istabas.Ligums) = " & Forms!LigumsViesn!Ligums & "))"
        VIstr = VIstr & " ORDER BY dbo_viesn_Ligumi_Istabas.LIDat_No DESC;"

        Set db = CurrentDb

        Set VIrst = db.OpenRecordset(VIstr, dbOpenDynaset)
        If Not VIrst.EOF Then
            If VIrst.RecordCount > 1 Then
                MsgBox "Uz līgumu ir reģistrētas vairākas istabiņas. Pie inventāra lūdzu norādiet istabiņu kurā tas atradīsies.", vbOKOnly, "JTM"
            Else
                IstNr = VIrst!Istaba
            End If
        End If

        VIstr = " SELECT dbo_viesn_Ligumi_Inv.VLI_ID, dbo_viesn_Ligumi_Inv.Ligums, dbo_viesn_Ligumi_Inv.Istaba, dbo_viesn_Ligumi_Inv.Inv_ID, dbo_viesn_Ligumi_Inv.InvTips, dbo_viesn_Ligumi_Inv.Inv_Nos, dbo_viesn_Ligumi_Inv.InvComment, dbo_viesn_Ligumi_Inv.InvSk, dbo_viesn_Ligumi_Inv.InvStat"
        VIstr = VIstr & " FROM dbo_viesn_Ligumi_Inv;"
        Set VIrst = db.OpenRecordset(VIstr, dbOpenDynaset, dbSeeChanges)

        VIstr = " SELECT dbo_Viesn_Inventars.Inv_ID, dbo_Viesn_Inventars.Inv_Nos"
        VIstr = VIstr & " FROM dbo_Viesn_Inventars"
        VIstr = VIstr & " WHERE (((dbo_Viesn_Inventars.InvTips)=2) and dbo_Viesn_Inventars.Inv_ID=" & Me.Inv_ID & ");"
        Set INVrst = db.OpenRecordset(VIstr, dbOpenDynaset, dbSeeChanges)
        INVrst.MoveFirst
        Do Until INVrst.EOF
            VIrst.AddNew
            VIrst!Ligums = Forms!LigumsViesn!Ligums
            VIrst!Istaba = IstNr
            VIrst!Inv_ID = INVrst!Inv_ID
            VIrst!InvTips = 2
            VIrst!Inv_Nos = INVrst!Inv_Nos
            VIrst!InvSk = 1
            VIrst!InvStat = 0

            If INVrst!Inv_ID = 11 Then 'ieejas karte
                a = InputBox("Ievadiet ieejas kartes Nr:", "JTM līgumi")
                VIrst!InvComment = a
            End If

            VIrst.Update
            INVrst.MoveNext
        Loop
        Forms!LigumsViesn!LigumsViesnIstabinas_InvSanem_sub.Requery
    End If

    DoCmd.Close

End Sub
