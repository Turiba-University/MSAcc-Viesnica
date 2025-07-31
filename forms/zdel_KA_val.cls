Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Dim StrLen, KasesID



Private Sub Command465_Click()
    If Me.NaudasVeids = 2 Then 'karte
        Me.SkNauda = Null
        Me.SkNaudaAtlikums = Null
    End If
    If Me.SkNauda > 0 Then
        If Forms!ka!KA_sub_cdata!SummaApmaksai > Me.SkNauda Then
            MsgBox "Iedotā nauda ir mazāka par apmaksas summu", vbExclamation, "Kase"
            Exit Sub
        End If
    End If

    StrLen = Me.StrGarums

    If Len(Me.fd_VU) > StrLen Then
        MsgBox "Vārda, uzvārda teksts ir pārāk garš.", vbExclamation, "Kase"
        Exit Sub
    End If
    If Len(Me.fd_PK) > StrLen Then
        MsgBox "Personas koda teksts ir pārāk garš.", vbExclamation, "Kase"
        Exit Sub
    End If
    If Len(Me.fd_Adrese) > StrLen Or Len(Me.fd_Adrese2) > StrLen Then
        MsgBox "Adreses teksts ir pārāk garš.", vbExclamation, "Kase"
        Exit Sub
    End If

    Dim a, FNos, d, L
    Dim KStr As String, KData As Recordset, SData As Recordset, SDataF As Recordset, SDataAK As Recordset, db As Database, Sum
    Set db = CurrentDb()

    KStr = "SELECT *"
    KStr = KStr & " FROM tmp_KA_cdata"
    KStr = KStr & " WHERE (((tmp_KA_cdata.Logins)=""" & CurrentUser & """));"

    Set KData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)

    If KData.RecordCount = 0 Then
        MsgBox "Čekā nav neviena ieraksta", vbExclamation, "Kase"
        Exit Sub
    End If

    KData.MoveFirst
    Do While Not KData.EOF
        If (KData!Nodala = 15) Then  'Stāvvietas kartēm pārbauda vai ir artikulā ievadīts kartes Nr
            If IsNull(KData!Artikuls) Then
                MsgBox "Autostāvvietas kartēm laukā 'Artikuls' jābūt norādītam kartes Nr.", vbExclamation + vbOKOnly, "Kase"
                Exit Sub
            End If
        End If
        KData.MoveNext
    Loop
    KData.MoveFirst

    a = MsgBox("Vai drukāt čeku?", vbYesNo, "Kase")
    If a = vbNo Then Exit Sub

    FNos = "SM" & Year(Now) & Month(Now) & Day(Now) & Hour(Now) & Minute(Now) & Second(Now) & ".txt"
    Open "C:\KA\ctxt\" & FNos For Output As #1
    If Not Me.fd_VU = "" Then
        Print #1, "Comment: TEXT = """ & ReplQM(Me.fd_VU) & """"
    End If
    If Not Me.fd_PK = "" Then
        Print #1, "Comment: TEXT = """ & ReplQM(Me.fd_PK) & """"
    End If
    If Not Me.fd_Adrese = "" Then
        Print #1, "Comment: TEXT = """ & ReplQM(Me.fd_Adrese) & """"
    End If
    If Not Me.fd_Adrese2 = "" Then
        Print #1, "Comment: TEXT = """ & ReplQM(Me.fd_Adrese2) & """"
    End If

    Set SData = db.OpenRecordset("dbo_SPOOL2000_KA", DB_OPEN_DYNASET, dbSeeChanges)
    Set SDataF = db.OpenRecordset("dbo_SPOOL", DB_OPEN_DYNASET, dbSeeChanges)

    Do While Not KData.EOF
        If KData!Nodala = -345 Then
            Print #1, "Comment: TEXT = """ & KData!Nodala_txt & """"
        Else
            If Not KData!Artikuls = "" Then
                Print #1, "Comment: TEXT = """ & KData!Artikuls & """"
            End If
            Print #1, "Sale: DeptNr = " & KData!Nodala & "; QNTY = " & KData!Daudzums & "; PRICE = " & KData!Cena & "; Amount = " & KData!Summa
''Sale: DeptNr = 4; QNTY = 2; PRICE = 12; Amount = 24; NAME = "Nosaukuma tests"

            d = Date
            L = Time
            SDataF.AddNew
                SDataF!Nodala = KData!Nodala
                SDataF!Artikuls = KData!Art
                SDataF!Mid = KData!PrPietID
                SDataF!Skaits = KData!Daudzums
                SDataF!Summa = Int((KData!Summa + 0.005005) * 100) / 100
                SDataF!NUMURS = KData!Artikuls
                SDataF!Datums = d
                SDataF!LAIKS = L
                SDataF!KaseID = Me.KaseID
                SDataF!KASIERIS = 1
                SDataF!CEKNUM = 1
                SDataF!ID = a
                SDataF!Rezult = 1
                SDataF!Valuta = Me.fd_Valuta
                SDataF!NVeids = Me.NaudasVeids
            SDataF.Update

            If (KData!Nodala = 1) Or (KData!Nodala = 2 And Left(KData!Artikuls, 1) = "1") Then 'Studiju maksas ieraksta arī dbo_SPOOL2000_KA
                SData.AddNew
                    If KData!Nodala = 2 Then
                        SData!Nodala = 11
                    Else
                        SData!Nodala = KData!Nodala
                    End If
                    SData!Skaits = KData!Daudzums
                    SData!Summa = Int((KData!Summa + 0.005005) * 100) / 100
                    If (KData!Nodala = 1) And Len(KData!Artikuls) > 8 Then 'mācību maksa
                        SData!NUMURS = Mid(KData!Artikuls, 1, Len(KData!Artikuls) - 4)
                        SData!MGads = Right(KData!Artikuls, 4)
                    ElseIf (KData!Nodala = 2) And Len(KData!Artikuls) > 8 Then 'kavējuma nauda
                        SData!NUMURS = Mid(KData!Artikuls, 2, Len(KData!Artikuls) - 5)
                        SData!MGads = Right(KData!Artikuls, 4)
                    Else
                        SData!NUMURS = KData!Artikuls
                        SData!MGads = Null
                    End If
                    SData!Datums = d
                    SData!LAIKS = L
                    SData!KaseID = Me.KaseID
                    SData!KASIERIS = 1
                    SData!CEKNUM = 1
                    SData!ID = a
                    SData!Rezult = 1
                    SData!Valuta = Me.fd_Valuta
                    SData!NVeids = Me.NaudasVeids
                SData.Update
            ElseIf (KData!Nodala = 3) Then 'Drošības nauda - ieraksta arī dbo_SPOOL2000_KA
                If KData!Art = 3 Then
                    SData.AddNew
                        SData!Nodala = KData!Nodala
                        SData!Artikuls = KData!Art
                        SData!Mid = KData!PrPietID
                        SData!Skaits = KData!Daudzums
                        SData!Summa = Int((KData!Summa + 0.005005) * 100) / 100
                        If (KData!Nodala = 3) And Len(KData!Artikuls) > 9 Then 'drošības nauda par praksēm
                            SData!NUMURS = Mid(KData!Artikuls, 2, Len(KData!Artikuls) - 4)
                            SData!MGads = Right(KData!Artikuls, 4)
                        Else
                            SData!NUMURS = KData!Artikuls
                            SData!MGads = Null
                        End If
                        SData!Datums = d
                        SData!LAIKS = L
                        SData!KaseID = Me.KaseID
                        SData!KASIERIS = 1
                        SData!CEKNUM = 1
                        SData!ID = a
                        SData!Rezult = 1
                        SData!Valuta = Me.fd_Valuta
                        SData!NVeids = Me.NaudasVeids
                    SData.Update
                End If
            ElseIf (KData!Nodala = 11) Then  'Protokolu apmaksa, ieraksta dbo_prot_Protokoli
                If KData!Prot_ID > 0 Then
                    KStr = "SELECT dbo_prot_Protokoli.ID, dbo_prot_Protokoli.Nomaksas_datums"
                    KStr = KStr & " FROM dbo_prot_Protokoli"
                    KStr = KStr & " WHERE (((dbo_prot_Protokoli.ID)=" & KData!Prot_ID & "));"
                    Set SDataAK = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)
                    If Not SDataAK.EOF Then
                        SDataAK.Edit
                            SDataAK!Nomaksas_datums = Date
                        SDataAK.Update
                    End If
                    '== ja persona ir STOPā, izņem laukā
                    If Not IsNull(Me.PID) Then
                        KStr = "SELECT dbo_st_Stop.ST_ID, dbo_st_Stop.Out_Kad, dbo_st_Stop.Out_Kas"
                        KStr = KStr & " FROM dbo_st_Stop"
                        KStr = KStr & " WHERE (((dbo_st_Stop.CKods)=" & Me.PID & ") AND ((dbo_st_Stop.Iemesls_ID)=4) AND ((dbo_st_Stop.Out_Kad) Is Null));"
                        Set SDataAK = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)
                        If Not SDataAK.EOF Then
                            Dim IrStop_rst As Recordset
                            KStr = "SELECT DISTINCT dbo_prot_Protokoli.P_PID, dbo_prot_Protokoli.P_Atbilde, dbo_prot_Protokoli.Nomaksas_term, dbo_prot_Protokoli.Anulets_Datums, dbo_prot_Protokoli.Nomaksas_datums"
                            KStr = KStr & " FROM dbo_prot_Protokoli"
                            KStr = KStr & " WHERE (((dbo_prot_Protokoli.P_PID)=" & Me.PID & ") AND ((dbo_prot_Protokoli.P_Atbilde)=-2) AND ((dbo_prot_Protokoli.Anulets_Datums) Is Null) AND ((dbo_prot_Protokoli.Nomaksas_datums) Is Null)) "
                            KStr = KStr & " OR (((dbo_prot_Protokoli.P_PID)=" & Me.PID & ") AND ((dbo_prot_Protokoli.Nomaksas_term)<" & "#" & Month(Date) & "/" & Day(Date) & "/" & Year(Date) & "#" & ") "
                            KStr = KStr & " AND ((dbo_prot_Protokoli.Anulets_Datums) Is Null) AND ((dbo_prot_Protokoli.Nomaksas_datums) Is Null));"
                            Set IrStop_rst = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)
                            If IrStop_rst.EOF Then
                                SDataAK.Edit
                                SDataAK!Out_Kad = Now()
                                SDataAK!Out_Kas = "Dators"
                                SDataAK.Update
                            End If
                        End If
                    End If
                    '== END == ja persona ir STOPā, izņem laukā
                End If
            ElseIf (KData!Nodala = 15) Then  'Stāvvietas kartēm ieraksta apmaksas info dbo_crl_caurlaides
                If Not IsNull(KData!Artikuls) Then
                    KStr = "SELECT dbo_crl_Caurlaides.S_Date, dbo_crl_Caurlaides.S_User, dbo_crl_Caurlaides.S_Sum"
                    KStr = KStr & " FROM dbo_crl_Caurlaides"
                    KStr = KStr & " WHERE (((dbo_crl_Caurlaides.Nr)=" & KData!Artikuls & "));"
                    Set SDataAK = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)
                    If Not SDataAK.EOF Then
                        SDataAK.Edit
                            SDataAK!S_Sum = Int((KData!Summa + 0.005005) * 100) / 100
                            SDataAK!S_Date = Now
                            SDataAK!S_User = CurrentUser()
                        SDataAK.Update
                    End If
                End If
            End If
        End If
        KData.MoveNext
    Loop
    If Me.fd_Valuta = 1 Then 'LVL
        If Me.NaudasVeids = 1 Then 'skaidrā naudā
            If Me.SkNauda > 0 Then
                Print #1, "Tender: Amount = " & Me.SkNauda
            Else
                Print #1, "Tender"
            End If
        ElseIf Me.NaudasVeids = 2 Then 'karte
            If Me.SkNauda > 0 Then
                Print #1, "Tender: Name=CARD; Amount = " & Me.SkNauda
            Else
                Print #1, "Tender: Name=CARD"
            End If
        End If

    ElseIf Me.fd_Valuta = 2 Then 'EUR
        If Me.NaudasVeids = 1 Then 'skaidrā naudā
            If Me.SkNauda > 0 Then
                Print #1, "Tender: FOREIGNNR = 1; Amount = " & Me.SkNauda
            Else
                Print #1, "Tender: FOREIGNNR = 1"
            End If
        ElseIf Me.NaudasVeids = 2 Then 'karte
            If Me.SkNauda > 0 Then
                Print #1, "Tender: Name=CARD; FOREIGNNR = 1; Amount = " & Me.SkNauda
            Else
                Print #1, "Tender: Name=CARD; FOREIGNNR = 1"
            End If
        End If

    ElseIf Me.fd_Valuta = 3 Then 'USD
        If Me.NaudasVeids = 1 Then 'skaidrā naudā
            If Me.SkNauda > 0 Then
                Print #1, "Tender: FOREIGNNR = 2; Amount = " & Me.SkNauda
            Else
                Print #1, "Tender: FOREIGNNR = 2"
            End If
        ElseIf Me.NaudasVeids = 2 Then 'karte
            If Me.SkNauda > 0 Then
                Print #1, "Tender: Name=CARD; FOREIGNNR = 2; Amount = " & Me.SkNauda
            Else
                Print #1, "Tender: Name=CARD; FOREIGNNR = 2"
            End If
        End If
    End If

    Close #1

    Me.SkNauda = Null
    Me.SkNaudaAtlikums = Null
    Me.NaudasVeids = 1
    Me.PID = Null
    Me.fd_VU = Null
    Me.fd_PK = Null
    Me.fd_Adrese = Null
    Me.fd_Adrese2 = Null
    DoCmd.SetWarnings 0
    DoCmd.RunSQL "DELETE tmp_KA_cdata.*, tmp_KA_cdata.Logins FROM tmp_KA_cdata WHERE (((tmp_KA_cdata.Logins)=""" & CurrentUser & """));"
    Me.KA_sub_cdata.Requery
    DoCmd.SetWarnings 1
    Me.Requery
    Call Shell("C:\KA\chd_fdrv.exe C:\KA\ctxt\" & FNos, 1)
End Sub
Private Function ReplQM(iStr As String) As String
    Dim i, ii, iSymb
    ii = Len(iStr)
    For i = 1 To ii
        iSymb = Mid(iStr, i, 1)
        Debug.Print iSymb
        If iSymb = """" Then
            ReplQM = ReplQM & "\" & iSymb
        Else
            ReplQM = ReplQM & iSymb
        End If
    Next i
End Function

Private Sub fd_Adrese_AfterUpdate()
    If Len(Me.fd_Adrese) > StrLen Then
        Me.fd_Adrese_bt.Visible = True
        Me.fd_Adrese.BackColor = 255
    Else
        Me.fd_Adrese_bt.Visible = False
        Me.fd_Adrese.BackColor = 16777215
    End If

End Sub

Private Sub fd_Adrese2_AfterUpdate()
    If Len(Me.fd_Adrese2) > StrLen Then
        Me.fd_Adrese2_bt.Visible = True
        Me.fd_Adrese2.BackColor = 255
    Else
        Me.fd_Adrese2_bt.Visible = False
        Me.fd_Adrese2.BackColor = 16777215
    End If

End Sub

Private Sub fd_PK_AfterUpdate()
    If Len(Me.fd_PK) > StrLen Then
        Me.fd_PK_bt.Visible = True
        Me.fd_PK.BackColor = 255
    Else
        Me.fd_PK_bt.Visible = False
        Me.fd_PK.BackColor = 16777215
    End If

End Sub

Private Sub fd_Valuta_AfterUpdate()
    If Me.fd_Valuta = 2 Then 'EUR
        Me.SkNaudaEUR = Null
        Me.SkNaudaAtlikums = Me.SkNauda - Forms!ka!KA_sub_cdata!SummaApmaksai
    ElseIf Me.fd_Valuta = 1 Then 'Ls
        Me.SkNaudaEUR = Int((Me.SkNauda / 0.702804 + 0.005005) * 100) / 100
        Me.SkNaudaAtlikums = Me.SkNaudaEUR - Forms!ka!KA_sub_cdata!SummaApmaksai
    End If
End Sub

Private Sub fd_VU_AfterUpdate()
    If Len(Me.fd_VU) > StrLen Then
        Me.fd_VU_bt.Visible = True
        Me.fd_VU.BackColor = 255
    Else
        Me.fd_VU_bt.Visible = False
        Me.fd_VU.BackColor = 16777215
    End If
End Sub

Private Sub Form_Close()
    If Me.KaseID = 1 Then
        If Not CurrentUser() = "Imants" Then
            DoCmd.OpenForm "KA_STOP_saraksta_izmainas"
        End If
    End If
End Sub

Private Sub Form_Open(Cancel As Integer)
    Call EventRec("Form", Me.Name, CurrentUser())
    Dim Drikst As Boolean
    Drikst = TiesibasDarbibai(38)
    If Drikst Then

    Else
        MsgBox ("Jums nav tiesību izmantot šo formu.")
        DoCmd.Close
        Exit Sub
    End If

    Dim Tstr
    KasesID = Null
    Open "C:\KA\KA.ini" For Input As #1
    Do While Not EOF(1)
        Line Input #1, Tstr
        If Left(Tstr, 9) = "KaseID = " Then
            KasesID = Val(Mid(Tstr, 10))
            Exit Do
        End If
    Loop
    Close

    If IsNull(KasesID) Then
        MsgBox "Nav izdevies identificēt kasi.", vbExclamation, "Kase"
        DoCmd.Close
        Exit Sub
    End If

    If KasesID = 700 Then
        StrLen = 19 'maksimālais simbolu skaits čeka vienā rindā JTM KA
    Else
        StrLen = 31 'maksimālais simbolu skaits čeka vienā rindā Centrālai un SIC kasei
    End If
    Me.StrGarums = StrLen

    Me.KaseID = KasesID
    Me.lb_MVeids.Requery
    If KasesID = 1 Then
        Me.Kase_txt.Caption = "Kase: centrālā"
        If Not CurrentUser() = "Imants" Then
            DoCmd.OpenForm "KA_STOP_saraksta_izmainas"
        End If
    ElseIf KasesID = 321 Then
        Me.Kase_txt.Caption = "Kase: SIC"
    ElseIf KasesID = 700 Then
        Me.Kase_txt.Caption = "Kase: JTM"
    End If

    Call EventRec("Form", Me.Name, CurrentUser())
    Call JaunsCeks_Click
    Me.lb_MVeids.SetFocus
End Sub

Private Sub JaunsCeks_Click()
    Me.SkNauda = Null
    Me.SkNaudaEUR = Null
    Me.SkNaudaAtlikums = Null
    Me.NaudasVeids = 1
    Me.fd_Valuta = 2
    Me.PID = Null
    Me.fd_VU = Null
    Me.fd_PK = Null
    Me.fd_Adrese = Null
    Me.fd_Adrese2 = Null
    Me.fd_VU_bt.Visible = False
    Me.fd_PK_bt.Visible = False
    Me.fd_Adrese_bt.Visible = False
    Me.fd_Adrese2_bt.Visible = False
    Me.fd_VU.BackColor = 16777215
    Me.fd_PK.BackColor = 16777215
    Me.fd_Adrese.BackColor = 16777215
    Me.fd_Adrese2.BackColor = 16777215
    DoCmd.SetWarnings 0
    DoCmd.RunSQL "DELETE tmp_KA_cdata.*, tmp_KA_cdata.Logins FROM tmp_KA_cdata WHERE (((tmp_KA_cdata.Logins)=""" & CurrentUser & """));"
    DoCmd.SetWarnings 1
    Me.Requery
    Me.KA_sub_cdata.Requery

End Sub

Private Sub lb_MVeids_DblClick(Cancel As Integer)
    Me.SkNauda = Null
    Me.SkNaudaAtlikums = Null

    Select Case Me.lb_MVeids.Column(0)  'nodaļa
    Case 1  'studiju maksa
        Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 10)   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
    Case 2  'kavējuma nauda
        Select Case Me.lb_MVeids.Column(5)  'maksājuma veids nodaļā
        Case 1  'kavējuma nauda - studiju maksa
            Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 10)   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
        Case 4, 5, 6, 7  'kavējuma nauda: 4-papildresursi; 5-datornoma; 6-aizdevumi; 7-noma, īre
            If IsNull(Me.fd_VU) Then
                Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 10)   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
            Else
                Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
            End If
        Case 2, 3  '2 - Bibl.un Bibl.(lasītavas) kases ieņēmumi, 3 - JTM kases ieņēmumi
            Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
        Case Else
            MsgBox "Šim maksājuma veidam nav automātiska apstrāde", , "Kase"
        End Select

    Case 3  'DOKUM.REĢ. (drošības nauda)
        Select Case Me.lb_MVeids.Column(5)  'maksājuma veids nodaļā
        Case 3  'drošības nauda par prakses līgumiem
            Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 50)   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
        Case Else
            If IsNull(Me.fd_VU) Then
                Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 10)   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
            Else
                Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
            End If
        End Select
    Case 4  'papildresurss
        Select Case Me.lb_MVeids.Column(5)  'maksājuma veids nodaļā
        Case 1  'atļaujas
            Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 30)   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
        Case 2, 3, 4, 5  'papildresurss: 2-datorlaiks, Internet; 3-datorizdrukas; 4-par ātrāku atjaunošanos; 5-grupas, kursa maiņa
            If IsNull(Me.fd_VU) Then
                Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 10)   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
            Else
                Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
            End If
        Case 312, 313, 314, 316, 350     '- izvēles kursa maiņa, VEK,  diplomdarba atkārtota aizstāvēšana 312 - UVF, UM, 313 - TZF, TM, 314 - STF, SM, 316 - PR, PM, 350 - KOL
            If IsNull(Me.fd_VU) Then
                Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 10)   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
            Else
                Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
            End If
        Case 666, 320, 321, 700  '666 - Bibl.un Bibl.(lasītavas) kases ieņēmumi(kopēšana bez PVN), 320 - Bibl.un Bibl.(lasītavas) ieņēmumi (pārējie papildresursi), 321 - SIC kases ieņēmumi(papildresursi), 700 - JTM kases ieņēmumi(papildresursi)
            Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
        Case -2007  'maksa par novēlotu līguma slēgšanu
            Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
        Case Else
            MsgBox "Šim maksājuma veidam nav automātiska apstrāde", , "Kase"
        End Select

    Case 8  'maksas pakalpojums
        Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta

    Case 11  'maksa par protokoliem
        'vienmēr ver vaļā meklēšanas formu
            Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 110)   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
'''''    Case 11  'maksa par protokoliem
'''''        If IsNull(Me.fd_VU) Then
'''''            Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 10)   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
'''''        Else
'''''            Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
'''''        End If

    Case 5, 6, 12, 13, 14, 16, 17, 18, 19, 20, 21  'SAGAT. KURSI, KURSI, ZAUDĒJ.ATL., AVANSA ATLIK, ATMAKSĀTAIS AIZDEVUMS, AIZDEV.%, TELPU NOMA, NOR.AR DEBIT, PĀRĒJIE, TĀLM.KURSS.S, TĀLM.KURSI
        If IsNull(Me.fd_VU) Then
            Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 10)   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
        Else
            Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
        End If

    Case 15  'AUTOSTĀVVIETA
        Select Case Me.lb_MVeids.Column(5)  'jauna vai atjaunošana
        Case 0  'jauna
            If IsNull(Me.fd_VU) Then
                Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 40)   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
            Else
                DoCmd.OpenForm "KA_Caurlaides_Reg"
                Forms!KA_Caurlaides_Reg!PersId = Me.PID
                Forms!KA_Caurlaides_Reg!Vards = Left(Me.fd_VU, InStr(Me.fd_VU, " ") - 1)
                Forms!KA_Caurlaides_Reg!Uzvards = Mid(Me.fd_VU, InStr(Me.fd_VU, " ") + 1)
                Forms!KA_Caurlaides_Reg!Periods_No = Date
                Forms!KA_Caurlaides_Reg!Datums = Date
                Forms!KA_Caurlaides_Reg!OpenFrom = 1

    '' ===== pārcelts uz KA_Caurlaides_Reg formu ===========
    ''            Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
            End If
        Case 1  'atjaunošana
            DoCmd.OpenForm "KA_Caurlaides_sar"
            Forms!KA_Caurlaides_sar.AtjaunotCrl.Visible = True
            Forms!KA_Caurlaides_sar.ChCarNr.Visible = False
        End Select

    Case 7, 9, 10, 22, 23, 24, 25  'GRĀMATAS5, VIESNĪCA, K-VIESNĪCA, VIESNĪCA, no bankas, SIC, suvenīri
        Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta

    Case Else
        MsgBox "Šim maksājuma veidam nav automātiska apstrāde", , "Kase"
    End Select

End Sub

Sub WriteCData(Nodala As Integer, Nod_txt As String, Artikuls As Integer, Daudzums As Single, Sum As Single, Valuta As Integer)
    Dim KStr As String, KData As Recordset, db As Database, SumI, gads
    If Sum = 0 Then
        SumI = InputBox("Ievadiet cenu:", "Kase")
        If Not IsNumeric(SumI) Then
            Exit Sub
        ElseIf SumI = 0 Then
            MsgBox "Jānorāda cena", vbExclamation, "Kase"
            Exit Sub
        Else
            Sum = SumI
        End If
    End If
    If Artikuls = -2007 Then
        gads = InputBox("Ievadiet kalendāro studiju gadu (gggg), uz kuru attiecas pakalpojums:", "Kase")
        If Not IsNumeric(gads) Then
            Exit Sub
        ElseIf gads = 0 Then
            MsgBox "Jānorāda gads (gggg)", vbExclamation, "Kase"
            Exit Sub
        Else
            Artikuls = gads
        End If
    End If

    Set db = CurrentDb()

    KStr = "SELECT tmp_KA_cdata.Nodala, tmp_KA_cdata.Nodala_txt, tmp_KA_cdata.Artikuls, tmp_KA_cdata.Daudzums, tmp_KA_cdata.Cena, tmp_KA_cdata.Summa, tmp_KA_cdata.Valuta, tmp_KA_cdata.Logins"
    KStr = KStr & " FROM tmp_KA_cdata;"

    Set KData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)

    KData.AddNew
    KData!Logins = CurrentUser
    KData!Nodala = Nodala
    KData!Nodala_txt = Nod_txt
    KData!Artikuls = Artikuls
    KData!Daudzums = Daudzums
    KData!Cena = Sum
    KData!Summa = Sum
    KData!Valuta = Valuta

    KData.Update
    Forms!ka!KA_sub_cdata.Requery


End Sub

Sub OpenPFinfForm(Nod_ID As Integer, NodNos As String, MV_ID As Integer, Vajag_LNR As Integer, VajagAdresi As Integer, FTips As Integer)
'   FTips = 10 - meklēt līgumu, 20 - meklēt personu, 30 - meklēt atļauju, 40 - meklēt protokolu, 50 - prakses drošības nauda, 110 - meklēt protokolu
    DoCmd.OpenForm "KA_PersMeklesana"
    Forms!KA_PersMeklesana!MeklTips = FTips
    Forms!KA_PersMeklesana!c_Nod_ID = Nod_ID
    Forms!KA_PersMeklesana!c_NodNos = NodNos
    Forms!KA_PersMeklesana!c_MV_ID = MV_ID
    Forms!KA_PersMeklesana!c_Vajag_LNR = Vajag_LNR
    Forms!KA_PersMeklesana!c_VajagAdresi = VajagAdresi

    If FTips = 110 Then 'protokoli
        Forms!KA_PersMeklesana!AtlOrIstNr_lbl.Caption = "Protokola Nr:"
        Forms!KA_PersMeklesana!AtlaujasNr.Visible = True
        Forms!KA_PersMeklesana!Ligu.Visible = False
    ElseIf FTips = 30 Then 'protokoli
        Forms!KA_PersMeklesana!AtlOrIstNr_lbl.Caption = "Atļaujas Nr:"
        Forms!KA_PersMeklesana!AtlaujasNr.Visible = True
        Forms!KA_PersMeklesana!Ligu.Visible = False
    Else
        Forms!KA_PersMeklesana!AtlOrIstNr_lbl.Caption = "Atļaujas Nr:"
        Forms!KA_PersMeklesana!AtlaujasNr.Visible = False
        Forms!KA_PersMeklesana!Ligu.Visible = True
    End If


End Sub

Private Sub NaudasVeids_AfterUpdate()
    If Me.NaudasVeids = 2 Then 'karte
        Me.SkNauda = Null
        Me.SkNaudaEUR = Null
        Me.SkNaudaAtlikums = Null
        Me.fd_Valuta = 2
        Me.fd_Valuta.Enabled = False
    ElseIf Me.NaudasVeids = 1 Then 'skaidra nauda
        Me.fd_Valuta.Enabled = True
    End If
End Sub

Private Sub SkNauda_AfterUpdate()
    If Me.fd_Valuta = 2 Then 'EUR
        Me.SkNaudaEUR = Null
        Me.SkNaudaAtlikums = Me.SkNauda - Forms!ka!KA_sub_cdata!SummaApmaksai
    ElseIf Me.fd_Valuta = 1 Then 'Ls
        Me.SkNaudaEUR = Int((Me.SkNauda / 0.702804 + 0.005005) * 100) / 100
        Me.SkNaudaAtlikums = Me.SkNaudaEUR - Forms!ka!KA_sub_cdata!SummaApmaksai
    End If
End Sub
