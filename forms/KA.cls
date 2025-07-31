Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Dim StrLen, KasesID



Private Sub AutoCrlSar_Click()
    DoCmd.OpenForm "KA_Caurlaides_sar"
End Sub

Private Sub Command465_Click()
    Dim SkN

    If Me.NaudasVeids = 2 Then 'karte
        Me.SkNauda = Null
        Me.SkNaudaAtlikums = Null
    End If
    If Me.SkNauda > 0 Then
        If Me.fd_Valuta = 2 Then
            SkN = Me.SkNauda
        Else
''            SkN = Me.SkNaudaEUR
        End If
        If Forms!ka!KA_sub_cdata!SummaApmaksai > SkN Then
            MsgBox "Iedotā nauda ir mazāka par apmaksas summu", vbExclamation, "Kase"
            Exit Sub
        End If
    End If


    StrLen = Me.StrGarums

    If Me.DrukatPircejaDatus = -1 Then
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

'''    KData.MoveFirst
'''    Do While Not KData.EOF
'''        If (KData!Nodala = 15) Then  'Stāvvietas kartēm pārbauda vai ir artikulā ievadīts kartes Nr
'''            If IsNull(KData!Artikuls) Then
'''                MsgBox "Autostāvvietas kartēm laukā 'Artikuls' jābūt norādītam kartes Nr.", vbExclamation + vbOKOnly, "Kase"
'''                Exit Sub
'''            End If
'''        End If
'''        KData.MoveNext
'''    Loop
'''    KData.MoveFirst

    a = MsgBox("Vai sagatavot KA čeku?", vbYesNo, "Kase")
    If a = vbNo Then Exit Sub

    Close #1
    Close #2
    FNos = "SM" & Year(Now) & Month(Now) & Day(Now) & Hour(Now) & Minute(Now) & Second(Now)
    FNos_PLU = FNos & "-PLU" & ".txt"
    FNos_Cust = FNos & "-CMR" & ".txt"
    FNos_MAC = FNos & "-MAC" & ".txt"

    Open "C:\KA\ctxt\" & FNos_MAC For Output As #2
    MLine = ""
    MNr = 1
    MKNr = 0

    If Me.DrukatPircejaDatus = -1 Then
        Open "C:\KA\ctxt\" & FNos_Cust For Output As #1
        '1, "SIA TU", "LV0004158977","adrese1","Adrese2",0,0.00
        Cust_txt = "1"
        If Not Me.fd_VU = "" Then
            Cust_txt = Cust_txt & ",""" & ReplQM(Me.fd_VU) & """"
        Else
            Cust_txt = Cust_txt & ","""""
        End If
        If Not Me.fd_PK = "" Then
            Cust_txt = Cust_txt & ",""" & ReplQM(Me.fd_PK) & """"
        Else
            Cust_txt = Cust_txt & ","""""
        End If
        If Not Me.fd_Adrese = "" Then
            Cust_txt = Cust_txt & ",""" & ReplQM(Me.fd_Adrese) & """"
        Else
            Cust_txt = Cust_txt & ","""""
        End If
        If Not Me.fd_Adrese2 = "" Then
            Cust_txt = Cust_txt & ",""" & ReplQM(Me.fd_Adrese2) & """"
        Else
            Cust_txt = Cust_txt & ","""""
        End If
        Cust_txt = Cust_txt & ",0,0.00"
        MLine = MNr & ",6049,30000,5002"
        Print #2, MLine

        MLine = ""
        MNr = 2
        MKNr = 0

        Print #1, Cust_txt
        Close #1
    End If

    Open "C:\KA\ctxt\" & FNos_PLU For Output As #1

    Set SData = db.OpenRecordset("dbo_SPOOL2000_KA", DB_OPEN_DYNASET, dbSeeChanges)
    Set SDataF = db.OpenRecordset("dbo_SPOOL", DB_OPEN_DYNASET, dbSeeChanges)

    PLU_Nr = 0
    Do While Not KData.EOF
        If KData!Nodala = -345 Then
''            Print #1, "Comment: TEXT = """ & KData!Nodala_txt & """"
        Else
'''            If Not KData!Artikuls = "" Then
'''                Print #1, "Comment: TEXT = """ & KData!Artikuls & """"
'''            End If
'''            Print #1, "Sale: DeptNr = " & KData!Nodala & "; QNTY = " & KData!Daudzums & "; PRICE = " & Int((KData!Cena + 0.005005) * 100) / 100 & "; Amount = " & Int((KData!Summa + 0.005005) * 100) / 100
''Sale: DeptNr = 4; QNTY = 2; PRICE = 12; Amount = 24; NAME = "Nosaukuma tests"
'// bez PVN SIC
'1   "MĀCĪBU MAKSA"  0.00    0
'2   "KAVĒJUMA N."   0.00    0
'3   "DOKUMENTU REG."    0.00    0
'4   "PAPILDRESURSI" 0.00    0
'5   "SAGATAVOŠ. KURSI"  0.00    0
'11  "PROTOKOLS" 0.00    0
'
'// PVN JTM
'2,"KAVĒJUMA NAUDA",0.00,    0   ,0,0,0,1,0,0,0
'4,"PAPILDRESURSI",0.00,     0   ,0,0,0,1,0,0,0
'6,"STUDENTI",0.00,      0   ,0,0,0,1,0,0,0
'11,"PROTOKOLS",0.00,        0   ,0,0,0,1,0,0,0
'12,"ZAUDĒJ.ATLĪDZĪBA",0.00, 0   ,0,0,0,1,0,0,0

'5,"VIESI",0.00,         2   ,0,0,0,1,0,0,0


'=========== 19 07 LABOŠANA
            PLU_Nr = PLU_Nr + 1
            If KData!Nodala = 2 Or KData!Nodala = 4 Or KData!Nodala = 6 Or KData!Nodala = 11 Or KData!Nodala = 12 Then
                Print #1, PLU_Nr & ",""" & KData!PLU_txt & """, " & KData!Cena & ", 0, 0, 0, " & KData!Nodala & ", 00, 0, 1"
            ElseIf KData!Nodala = 5 Or KData!Nodala = 26 Then
                Print #1, PLU_Nr & ",""" & KData!PLU_txt & """, " & KData!Cena & ", 0, 0, 2, " & KData!Nodala & ", 00, 0, 1"
            Else
                Print #1, PLU_Nr & ",""" & KData!PLU_txt & """, " & KData!Cena & ", 0, 0, 1, " & KData!Nodala & ", 00, 0, 1"
            End If

            PLU_Sk = KData!Daudzums
            PLU_Nr_g = Len(PLU_Nr)
            PLU_Sk_g = Len(PLU_Sk)

            If MKNr = 0 Then 'sāk rakstīt macro rindu, ja ir tukša
                MLine = MNr
                MKNr = 1
            End If

            If KData!Daudzums <> 1 Then
                For i = 1 To PLU_Sk_g
                    MLine = MLine & "," & KA_M_Skaitlis(Mid(PLU_Sk, i, 1))
                    MKNr = MKNr + 1
                    If MKNr = 9 Then
                        MNr = MNr + 1
                        Print #2, MLine & "," & 5000 + MNr
                        MKNr = 0
                        MLine = MNr
                    End If
                Next i
                MLine = MLine & ",14000"
                MKNr = MKNr + 1
                If MKNr = 9 Then
                    MNr = MNr + 1
                    Print #2, MLine & "," & 5000 + MNr
                    MKNr = 0
                    MLine = MNr
                End If

            End If

            For i = 1 To PLU_Nr_g
                MLine = MLine & "," & KA_M_Skaitlis(Mid(PLU_Nr, i, 1))
                MKNr = MKNr + 1
                If MKNr = 9 Then
                    MNr = MNr + 1
                    Print #2, MLine & "," & 5000 + MNr
                    MKNr = 0
                    MLine = MNr
                End If
                MLine = MLine & ",18000"
                MKNr = MKNr + 1
                If MKNr = 9 Then
                    MNr = MNr + 1
                    Print #2, MLine & "," & 5000 + MNr
                    MKNr = 0
                    MLine = MNr
                End If
            Next i


''TESTAM IB 1908
''GoTo Beigas

            d = Date
            L = Time
            SDataF.AddNew
                SDataF!Nodala = KData!Nodala
                If KData!Nodala = 15 And KData!Artikuls = 2 Then
                    SDataF!Skaits = KData!Daudzums2
                Else
                    SDataF!Skaits = KData!Daudzums
                End If
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
                SDataF!JTM_RID = KData!JTM_RID
                SDataF!Prot_Nr = KData!Prot_Nr
                SDataF!PID = KData!PID
            SDataF.Update

            If (KData!Nodala = 5) Or (KData!Nodala = 6) Then 'JTM līguma apmaksa, jāieraksta arī līgumā
            '========== šis pašlaik rakstās no līguma puses, iekļaujot summu čekā
'''''                SData.AddNew
'''''                    If KData!Nodala = 2 Then
'''''                        SData!Nodala = 11
'''''                    Else
'''''                        SData!Nodala = KData!Nodala
'''''                    End If
'''''                    SData!Skaits = KData!Daudzums
'''''                    SData!Summa = Int((KData!Summa + 0.005005) * 100) / 100
'''''                    If (KData!Nodala = 1) And Len(KData!Artikuls) > 8 Then 'mācību maksa
'''''                        SData!NUMURS = Mid(KData!Artikuls, 1, Len(KData!Artikuls) - 4)
'''''                        SData!MGads = Right(KData!Artikuls, 4)
'''''                    ElseIf (KData!Nodala = 2) And Len(KData!Artikuls) > 8 Then 'kavējuma nauda
'''''                        SData!NUMURS = Mid(KData!Artikuls, 2, Len(KData!Artikuls) - 5)
'''''                        SData!MGads = Right(KData!Artikuls, 4)
'''''                    Else
'''''                        SData!NUMURS = KData!Artikuls
'''''                        SData!MGads = Null
'''''                    End If
'''''                    SData!datums = D
'''''                    SData!LAIKS = L
'''''                    SData!KaseID = Me.KaseID
'''''                    SData!KASIERIS = 1
'''''                    SData!CEKNUM = 1
'''''                    SData!ID = a
'''''                    SData!REZULT = 1
'''''                    SData!Valuta = Me.fd_Valuta
'''''                    SData!NVeids = Me.NaudasVeids
'''''                SData.Update
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

Beigas:

        KData.MoveNext
    Loop
''''    If Me.fd_Valuta = 2 Then 'EUR
''''        If Me.NaudasVeids = 1 Then 'skaidrā naudā
''''            If Me.SkNauda > 0 Then
''''                Print #1, "Tender: Amount = " & Me.SkNauda
''''            Else
''''                Print #1, "Tender"
''''            End If
''''        ElseIf Me.NaudasVeids = 2 Then 'karte
''''            If Me.SkNauda > 0 Then
''''                Print #1, "Tender: Name=TENDER2; Amount = " & Me.SkNauda
''''            Else
''''                Print #1, "Tender: Name=TENDER2"
''''            End If
''''        End If
''''
''''    ElseIf Me.fd_Valuta = 1 Then 'LVL
''''        If Me.NaudasVeids = 1 Then 'skaidrā naudā
''''            If Me.SkNauda > 0 Then
''''                Print #1, "Tender: FOREIGNNR = 1; Amount = " & Me.SkNauda
''''            Else
''''                Print #1, "Tender: FOREIGNNR = 1"
''''            End If
''''        ElseIf Me.NaudasVeids = 2 Then 'karte
''''            If Me.SkNauda > 0 Then
''''                Print #1, "Tender: Name=TENDER2; FOREIGNNR = 1; Amount = " & Me.SkNauda
''''            Else
''''                Print #1, "Tender: Name=TENDER2; FOREIGNNR = 1"
''''            End If
''''        End If
''''    End If
''''
''''    Close #1

    Print #2, MLine & ",25000"
    Close #1
    Close #2


    Open "C:\KA\MSend.cmd" For Output As #1

        Print #1, "@echo off"
        Print #1, "c:"
        Print #1, "cd C:\KA"
        Print #1, "C:\KA\sdrv.exe clear 51"
        Print #1, "C:\KA\sdrv.exe clear 3"
    If Me.DrukatPircejaDatus = -1 Then
        Print #1, "C:\KA\sdrv.exe clear 34"
        Print #1, "C:\KA\sdrv.exe send 34 C:\KA\ctxt\" & FNos_Cust
    End If
        Print #1, "C:\KA\sdrv.exe send 3 C:\KA\ctxt\" & FNos_PLU
        Print #1, "C:\KA\sdrv.exe send 51 C:\KA\ctxt\" & FNos_MAC
        Print #1, "echo ."
        Print #1, "echo ."
        Print #1, "echo Ja nav kludu pazinojumi, uz KA nospiediet M1,"
        Print #1, "echo parbudiet ceku un noradiet apmaksas veidu."
        Print #1, "echo ."
        Print #1, "echo Nospiediet saja loga atstarpi."
        Print #1, "echo ."
        Print #1, "echo ."
        Print #1, "pause"

    Close #1

    Call Shell("C:\KA\MSend.cmd", 1)

    Me.SkNauda = Null
    Me.SkNaudaAtlikums = Null
    Me.NaudasVeids = 1
    Me.PID = Null
    Me.fd_VU = Null
    Me.fd_PK = Null
    Me.fd_Adrese = Null
    Me.fd_Adrese2 = Null
    Me.DrukatPDatus = 0
    DoCmd.SetWarnings 0
    DoCmd.RunSQL "DELETE tmp_KA_cdata.*, tmp_KA_cdata.Logins FROM tmp_KA_cdata WHERE (((tmp_KA_cdata.Logins)=""" & CurrentUser & """));"
    Me.KA_sub_cdata.Requery
    DoCmd.SetWarnings 1
    Me.Requery
'''    Call Shell("C:\KA\chd_fdrv.exe C:\KA\ctxt\" & FNos, 1)
End Sub

Private Function KA_M_Skaitlis(iStr As String) As String
    g = Len(iStr)
    KA_M_Skaitlis = ""
    For i = 1 To g
        iSymb = Mid(iStr, i, 1)
        Select Case iSymb
        Case "0"
            KA_M = 6048
        Case "1"
            KA_M = 6049
        Case "2"
            KA_M = 6050
        Case "3"
            KA_M = 6051
        Case "4"
            KA_M = 6052
        Case "5"
            KA_M = 6053
        Case "6"
            KA_M = 6054
        Case "7"
            KA_M = 6055
        Case "8"
            KA_M = 6056
        Case "9"
            KA_M = 6057
        Case "."
            KA_M = 6046
        Case Else
            KA_M_Skaitlis = -1
        End Select
        If KA_M_Skaitlis = "" Then
            KA_M_Skaitlis = KA_M
        Else
            KA_M_Skaitlis = KA_M_Skaitlis & "," & KA_M
        End If

    Next i

End Function

Private Function ReplQM(iStr As String) As String
    Dim i, ii, iSymb
    ii = Len(iStr)
    For i = 1 To ii
        iSymb = Mid(iStr, i, 1)
''        Debug.Print iSymb
        If iSymb = """" Then
            ReplQM = ReplQM & "\" & iSymb
        Else
            ReplQM = ReplQM & iSymb
        End If
    Next i
End Function

Private Sub DrukatPDatus_AfterUpdate()
    If Me.DrukatPDatus = -1 Then
        Me.fd_PK = Me.fd_PK_LNR_h & ", " & Me.fd_PK_h
        Me.fd_Adrese.Enabled = True
        Me.fd_Adrese2.Enabled = True
    Else
        Me.fd_PK = Me.fd_PK_LNR_h
        Me.fd_Adrese.Enabled = False
        Me.fd_Adrese2.Enabled = False
    End If
End Sub

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
        Me.SkNaudaAtlikums = Me.SkNauda - Forms!ka!KA_sub_cdata!SummaApmaksai
    ElseIf Me.fd_Valuta = 1 Then 'Ls

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
        DoCmd.OpenForm "KA_STOP_saraksta_izmainas"
    End If
End Sub

Private Sub Form_Open(Cancel As Integer)
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
        StrLen = 20 'maksimālais simbolu skaits čeka vienā rindā JTM KA
    Else
        StrLen = 20 'maksimālais simbolu skaits čeka vienā rindā Centrālai un SIC kasei
    End If
    Me.StrGarums = StrLen

    Me.KaseID = KasesID
    Me.lb_MVeids.Requery
    If KasesID = 1 Then
        Me.Kase_txt.Caption = "Kase: centrālā"
        DoCmd.OpenForm "KA_STOP_saraksta_izmainas"
    ElseIf KasesID = 321 Then
        Me.Kase_txt.Caption = "Kase: SIC"
    ElseIf KasesID = 700 Then
        Me.Kase_txt.Caption = "Kase: JTM"
    End If

    Call JaunsCeks_Click
    Me.lb_MVeids.SetFocus
End Sub

Private Sub JaunsCeks_Click()

    Me.SkNauda = Null
    Me.SkNaudaAtlikums = Null
    Me.NaudasVeids = 1
    Me.fd_Valuta = 2
    Me.PID = Null
    Me.fd_VU = Null
    Me.fd_PK = Null
    Me.fd_Adrese = Null
    Me.fd_Adrese2 = Null
    Me.DrukatPircejaDatus = False
    Me.fd_VU_bt.Visible = False
    Me.fd_PK_bt.Visible = False
    Me.fd_Adrese_bt.Visible = False
    Me.fd_Adrese2_bt.Visible = False
    Me.fd_VU.BackColor = 16777215
    Me.fd_PK.BackColor = 16777215
    Me.fd_Adrese.BackColor = 16777215
    Me.fd_Adrese2.BackColor = 16777215
    Me.DrukatPDatus = 0

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
'    Case 1  'studiju maksa
'        Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 10)   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
'    Case 2  'kavējuma nauda
'        Select Case Me.lb_MVeids.Column(5)  'maksājuma veids nodaļā
'        Case 1  'kavējuma nauda - studiju maksa
'            Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 10)   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
'        Case 4, 5, 6, 7  'kavējuma nauda: 4-papildresursi; 5-datornoma; 6-aizdevumi; 7-noma, īre
'            If IsNull(Me.fd_VU) Then
'                Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 10)   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
'            Else
'                Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
'            End If
'        Case 2, 3  '2 - Bibl.un Bibl.(lasītavas) kases ieņēmumi, 3 - JTM kases ieņēmumi
'            Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
'        Case Else
'            MsgBox "Šim maksājuma veidam nav automātiska apstrāde", , "Kase"
'        End Select
'
    Case 2  'JTM kavējuma nauda
        MsgBox "Kavējuma naudas apmaksa notiek 5. un 6. nodaļās kopā ar līguma apmaksu.", , "Kase"
    Case 4  'papildresurss
        Select Case Me.lb_MVeids.Column(5)  'maksājuma veids nodaļā
''        Case 1  'atļaujas
''            Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 30)   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
''        Case 2, 3, 4, 5  'papildresurss: 2-datorlaiks, Internet; 3-datorizdrukas; 4-par ātrāku atjaunošanos; 5-grupas, kursa maiņa
        Case 2, 3  'JTM papildresurss: 2-datorlaiks, Internet; 3-datorizdrukas
            If IsNull(Me.fd_VU) Then
                Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 20, Me.lb_MVeids.Column(8))   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
            Else
                Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta, Me.lb_MVeids.Column(8)) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
            End If
''        Case 312, 313, 314, 316, 350     '- izvēles kursa maiņa, VEK,  diplomdarba atkārtota aizstāvēšana 312 - UVF, UM, 313 - TZF, TM, 314 - STF, SM, 316 - PR, PM, 350 - KOL
''            If IsNull(Me.fd_VU) Then
''                Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 10)   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
''            Else
''                Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
''            End If
''        Case 666, 320, 321, 700  '666 - Bibl.un Bibl.(lasītavas) kases ieņēmumi(kopēšana bez PVN), 320 - Bibl.un Bibl.(lasītavas) ieņēmumi (pārējie papildresursi), 321 - SIC kases ieņēmumi(papildresursi), 700 - JTM kases ieņēmumi(papildresursi)
''            Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
''        Case -2007  'maksa par novēlotu līguma slēgšanu
''            Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
        Case Else
            MsgBox "Šim maksājuma veidam nav automātiska apstrāde", , "Kase"
        End Select

    Case 8  'maksas pakalpojums
        Select Case Me.lb_MVeids.Column(5)  'maksājuma veids nodaļā
        Case 101, 102, 103, 105  'JTM papildaprīkojums
            MsgBox "Papildaprīkojuma apmaksa notiek 5. un 6. nodaļās kopā ar līguma apmaksu.", , "Kase"
        Case Else
            Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta, Me.lb_MVeids.Column(8)) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
        End Select

    Case 11  'maksa par protokoliem
        'vienmēr ver vaļā meklēšanas formu
'        If IsNull(Me.fd_VU) Then
            Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 10, Me.lb_MVeids.Column(8))   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
'        Else
'            Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
'        End If

'    Case 3, 5, 6, 12, 13, 14, 16, 17, 18, 19, 20, 21  'DOKUM.REĢ., SAGAT. KURSI, KURSI, ZAUDĒJ.ATL., AVANSA ATLIK, ATMAKSĀTAIS AIZDEVUMS, AIZDEV.%, TELPU NOMA, NOR.AR DEBIT, PĀRĒJIE, TĀLM.KURSS.S, TĀLM.KURSI
'        If IsNull(Me.fd_VU) Then
'            Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 10)   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
'        Else
'            Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
'        End If
'

    Case 12  'JTM materiālie zaudējumi
        Call WriteCData(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 1, 0, Me.fd_Valuta, Me.lb_MVeids.Column(8)) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta

    Case 15  'AUTOSTĀVVIETA
        Select Case Me.lb_MVeids.Column(5)  'jauna vai atjaunošana
        Case 0  'jauna
            If IsNull(Me.fd_VU) Then
                Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 40, Me.lb_MVeids.Column(8))   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer
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
''            Forms!KA_Caurlaides_sar.ChCarNr.Visible = False
        Case 2  'autostāvvietas stundu apmaksa

            Call WriteCDataASA(Me.lb_MVeids.Column(0), Me.lb_MVeids.Column(4), Me.lb_MVeids.Column(5), 2, 0, Me.fd_Valuta, Me.lb_MVeids.Column(7), Me.lb_MVeids.Column(8)) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta, cena
        End Select

'    Case 7, 9, 10, 22, 23, 24, 25  'GRĀMATAS5, VIESNĪCA, K-VIESNĪCA, VIESNĪCA, no bankas, SIC, suvenīri
    Case 5  'JTM līguma apmaksa - viesi
        Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 50, Me.lb_MVeids.Column(8))   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer

    Case 6  'JTM līguma apmaksa - studenti
        Call OpenPFinfForm(Val(Me.lb_MVeids.Column(0)), Me.lb_MVeids.Column(4), Val(Me.lb_MVeids.Column(5)), Val(Me.lb_MVeids.Column(1)), Val(Me.lb_MVeids.Column(3)), 60, Me.lb_MVeids.Column(8))   'Nod_ID, NodNos, MV_ID, Vajag_LNR, VajagAdresi, FTips As Integer

    Case 26
        MsgBox "Tūrisma nodevas apmaksa tiek veikta caur līguma apmaksu (5.nodaļa)", , "Kase"
    Case Else
        MsgBox "Šim maksājuma veidam nav automātiska apstrāde", , "Kase"
    End Select

End Sub

Sub WriteCData(Nodala As Integer, Nod_txt As String, Artikuls As Integer, Daudzums As Single, Sum As Single, Valuta As Integer, PLU_txt As String)
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

    KStr = "SELECT tmp_KA_cdata.Nodala, tmp_KA_cdata.Nodala_txt, tmp_KA_cdata.Artikuls, tmp_KA_cdata.PLU_txt, tmp_KA_cdata.Daudzums, tmp_KA_cdata.Cena, tmp_KA_cdata.Summa, tmp_KA_cdata.Valuta, tmp_KA_cdata.Logins"
    KStr = KStr & " FROM tmp_KA_cdata;"

    Set KData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)

    KData.AddNew
    KData!Logins = CurrentUser
    KData!Nodala = Nodala
    KData!Nodala_txt = Nod_txt
    KData!PLU_txt = Nodala & PLU_txt
    KData!Artikuls = Artikuls
    KData!Daudzums = Daudzums
    KData!Cena = Sum
    KData!Summa = Sum
    KData!Valuta = Valuta

    KData.Update
    Forms!ka!KA_sub_cdata.Requery


End Sub
Sub WriteCDataASA(Nodala As Integer, Nod_txt As String, Artikuls As Integer, Daudzums As Single, Sum As Single, Valuta As Integer, Cena As Single, PLU_txt As String)
'== autostāvvietas stundu apmaksas ievade

    Dim KStr As String, KData As Recordset, db As Database, SumI, gads, DL_No, DL_Lidz, SumMin, L_st, L_min, TSak, TBeig, SumZ, LZSak, LZBeig, LBeig

Sakums:
    If Daudzums = -2 Then 'kursantu atļaujas - 2EUR dienā
        LSak = Now()
        LBeig = DateSerial(Year(LSak), Month(LSak), Day(LSak)) + TimeSerial(23, 59, 0)
        Artikuls = 2
        SumI = 24 - Hour(LSak)
        Sum = Cena
    Else
        If Sum = 0 Then
            SumI = InputBox("Ievadiet stāvēšanas laiku stundās (h:mm). Minimālais samaksas apjoms 1 st.:", "Kase", 1)
            If Not IsNumeric(SumI) Then
                If SumI = "" Then Exit Sub
                K = InStr(SumI, ":")
                If K > 0 Then
                    If IsNumeric(Left(SumI, K - 1)) And IsNumeric(Mid(SumI, K + 1, 9)) Then
                        If Mid(SumI, K + 1, 9) > 60 Then
                            MsgBox "Jānorāda laiks", vbExclamation, "Kase"
                            Exit Sub
                        ElseIf Left(SumI, K - 1) < 1 Then
                            MsgBox "Minimālais samaksas apjoms par maksas autostāvvietas lietošanu ir 60 minūtes jeb 1 st.", vbExclamation, "Kase"
                            GoTo Sakums
                        Else
                            L_st = Left(SumI, K - 1)
                            L_min = Mid(SumI, K + 1, 9)
                            SumI = Int((L_st + L_min / 60 + 0.005005) * 100) / 100
                            Sum = SumI
                            SumZ = 0
                        End If
                    Else
                        MsgBox "Jānorāda laiks", vbExclamation, "Kase"
                        Exit Sub
                    End If
                Else
                    MsgBox "Jānorāda laiks", vbExclamation, "Kase"
                    Exit Sub
                End If
            ElseIf SumI = 0 Then
                MsgBox "Jānorāda laiks", vbExclamation, "Kase"
                Exit Sub
            ElseIf SumI < 1 Then
                MsgBox "Minimālais samaksas apjoms par maksas autostāvvietas lietošanu ir 60 minūtes jeb 1 st.", vbExclamation, "Kase"
                GoTo Sakums
            Else
                Sum = SumI
            End If
        End If

'''''''    Sum = Int((Sum * Cena + 0.005005) * 100) / 100
'''''
'''''    SumZ = 0
'''''
''''''    TSak = Time()
''''''    TSak = KData!DDat
''''''    LSak = KData!DDat
'''''    LSak = Now()
'''''    TSak = TimeSerial(Hour(LSak), Minute(LSak), Second(LSak))
'''''    SumI = Sum
'''''    LBeig = DateAdd("n", SumI * 60, TSak)
'''''    TBeig = TimeSerial(Hour(LBeig), Minute(LBeig), Second(LBeig))
'''''    If TSak >= TimeSerial(22, 0, 0) Then  '3. laika zona (no plkst.22:00 līdz plkst.08:00)
'''''        LZSak = 3
'''''    ElseIf TSak >= TimeSerial(17, 0, 0) Then  '2. laika zona (no plkst.17:00 līdz plkst.22:00)
'''''        LZSak = 2
'''''    ElseIf TSak >= TimeSerial(8, 0, 0) Then  '1. laika zona (no plkst.08:00 līdz plkst.17:00)
'''''        LZSak = 1
'''''    Else '3. laika zona (no plkst.22:00 līdz plkst.08:00)
'''''        LZSak = 3
'''''    End If
'''''    If TBeig <= TimeSerial(8, 0, 0) Then  '3. laika zona (no plkst.22:00 līdz plkst.08:00)
'''''        LZBeig = 3
'''''    ElseIf TBeig <= TimeSerial(17, 0, 0) Then  '1. laika zona (no plkst.08:00 līdz plkst.17:00)
'''''        LZBeig = 1
'''''    ElseIf TBeig <= TimeSerial(22, 0, 0) Then  '2. laika zona (no plkst.17:00 līdz plkst.22:00)
'''''        LZBeig = 2
'''''    Else '3. laika zona (no plkst.22:00 līdz plkst.08:00)
'''''        LZBeig = 3
'''''    End If
'''''    If LZSak = 1 Then
'''''        If LZBeig = 1 Then
'''''            Zonas = "1"
'''''            SumZ = 4
'''''            Sum = Int((Sum * Cena + 0.005005) * 100) / 100
'''''            If Sum >= SumZ Then
'''''                Sum = SumZ
'''''                TBeig = TimeSerial(17, 0, 0)
'''''            End If
'''''        ElseIf LZBeig = 2 Then
'''''            Zonas = "1-2"
'''''            SumZ = 4 + 2
'''''
'''''            Laiks1z = TimeSerial(17, 0, 0) - TSak
'''''            Sum1z = Int(((Hour(Laiks1z) + Minute(Laiks1z) / 60) * Cena + 0.005005) * 100) / 100
'''''            SumZ1z = 4
'''''            If Sum1z >= SumZ1z Then
'''''                Sum1z = SumZ1z
'''''            End If
'''''
'''''            Laiks2z = TBeig - TimeSerial(17, 0, 0)
'''''            Sum2z = Int(((Hour(Laiks2z) + Minute(Laiks2z) / 60) * Cena + 0.005005) * 100) / 100
'''''            SumZ2z = 2
'''''            If Sum2z >= SumZ2z Then
'''''                Sum = Sum1z + SumZ2z
'''''                TBeig = TimeSerial(22, 0, 0)
'''''            Else
'''''                Sum = Sum1z + Sum2z
'''''            End If
'''''
'''''        ElseIf LZBeig = 3 Then
'''''            Zonas = "1-2-3"
'''''            SumZ = 4 + 2 + 2
'''''            TBeig = TimeSerial(8, 0, 0)
'''''        End If
'''''    ElseIf LZSak = 2 Then
'''''        If LZBeig = 1 Then
'''''            Zonas = "2-3-1"
'''''            SumZ = 2 + 2 + 4
'''''            TBeig = TimeSerial(17, 0, 0)
'''''        ElseIf LZBeig = 2 Then
'''''            Zonas = "2"
'''''            SumZ = 2
'''''            Sum = Int((Sum * Cena + 0.005005) * 100) / 100
'''''            If Sum >= SumZ Then
'''''                Sum = SumZ
'''''                TBeig = TimeSerial(22, 0, 0)
'''''            End If
'''''        ElseIf LZBeig = 3 Then
'''''            Zonas = "2-3"
'''''            SumZ = 2 + 2
'''''
'''''            Laiks1z = TimeSerial(22, 0, 0) - TSak
'''''            Sum1z = Int(((Hour(Laiks1z) + Minute(Laiks1z) / 60) * Cena + 0.005005) * 100) / 100
'''''            SumZ1z = 2
'''''            If Sum1z >= SumZ1z Then
'''''                Sum1z = SumZ1z
'''''            End If
'''''
'''''            Laiks2z = TBeig - TimeSerial(22, 0, 0)
'''''            Sum2z = Int(((Hour(Laiks2z) + Minute(Laiks2z) / 60) * Cena + 0.005005) * 100) / 100
'''''            SumZ2z = 2
'''''            If Sum2z >= SumZ2z Then
'''''                Sum = Sum1z + SumZ2z
'''''                TBeig = TimeSerial(8, 0, 0)
'''''            Else
'''''                Sum = Sum1z + Sum2z
'''''            End If
'''''
'''''        End If
'''''    ElseIf LZSak = 3 Then
'''''        If LZBeig = 1 Then
'''''            Zonas = "3-1"
'''''            SumZ = 2 + 4
'''''
'''''            Laiks1z = TimeSerial(8, 0, 0) - TSak
'''''            Sum1z = Int(((Hour(Laiks1z) + Minute(Laiks1z) / 60) * Cena + 0.005005) * 100) / 100
'''''            SumZ1z = 2
'''''            If Sum1z >= SumZ1z Then
'''''                Sum1z = SumZ1z
'''''            End If
'''''
'''''            Laiks2z = TBeig - TimeSerial(8, 0, 0)
'''''            Sum2z = Int(((Hour(Laiks2z) + Minute(Laiks2z) / 60) * Cena + 0.005005) * 100) / 100
'''''            SumZ2z = 4
'''''            If Sum2z >= SumZ2z Then
'''''                Sum = Sum1z + SumZ2z
'''''                TBeig = TimeSerial(17, 0, 0)
'''''            Else
'''''                Sum = Sum1z + Sum2z
'''''            End If
'''''
'''''        ElseIf LZBeig = 2 Then
'''''            Zonas = "3-2-1"
'''''            SumZ = 2 + 4 + 2
'''''            TBeig = TimeSerial(22, 0, 0)
'''''        ElseIf LZBeig = 3 Then
'''''            Zonas = "3"
'''''            SumZ = 2
'''''            Sum = Int((Sum * Cena + 0.005005) * 100) / 100
'''''            If Sum > SumZ Then
'''''                Sum = SumZ
'''''                TBeig = TimeSerial(8, 0, 0)
'''''            End If
'''''        End If
'''''    End If
'''''
'''''    If Hour(TSak) > Hour(TBeig) Then
'''''        LBeig = DateSerial(Year(LSak), Month(LSak), Day(LSak) + 1) + TimeSerial(Hour(TBeig), Minute(TBeig), 0)
'''''    Else
'''''        LBeig = DateSerial(Year(LSak), Month(LSak), Day(LSak)) + TimeSerial(Hour(TBeig), Minute(TBeig), 0)
'''''    End If
'''''
''''''''    Sum = Int((Sum * Cena + 0.005005) * 100) / 100

'====== no 2018.janv - EUR 1.00 par pirmo stundu; EUR 0.50 par katru nākamo stundu; EUR 8.00 par diennakti.
        LSak = Now()
        TSak = TimeSerial(Hour(LSak), Minute(LSak), Second(LSak))
        SumI = Sum
        SumIdn = Int(SumI / 24)
        SumIst = SumI - SumIdn * 24

        If SumIdn = 0 Then
            If SumIst > 14 Then
                Sum = 8
                LBeig = DateSerial(Year(LSak), Month(LSak), Day(LSak) + 1) + TimeSerial(Hour(LSak), Minute(LSak), 0)
            Else
                Sum = Int(((1 + (SumIst - 1) * 0.5) + 0.005005) * 100) / 100
                LBeig = DateAdd("n", SumI * 60, TSak)
                TBeig = TimeSerial(Hour(LBeig), Minute(LBeig), Second(LBeig))
                If Hour(TSak) > Hour(TBeig) Then
                    LBeig = DateSerial(Year(LSak), Month(LSak), Day(LSak) + 1) + TimeSerial(Hour(TBeig), Minute(TBeig), 0)
                Else
                    LBeig = DateSerial(Year(LSak), Month(LSak), Day(LSak)) + TimeSerial(Hour(TBeig), Minute(TBeig), 0)
                End If

            End If
        Else
            If SumIst > 15 Then
                Sum = 8 * SumIdn + 8
                LBeig = DateSerial(Year(LSak), Month(LSak), Day(LSak) + SumIdn + 1) + TimeSerial(Hour(LSak), Minute(LSak), 0)
            Else
                Sum = 8 * SumIdn + Int(((SumIst * 0.5) + 0.005005) * 100) / 100
                LBeig = DateAdd("n", SumI * 60, TSak)
                TBeig = TimeSerial(Hour(LBeig), Minute(LBeig), Second(LBeig))
                If Hour(TSak) > Hour(TBeig) Then
                    LBeig = DateSerial(Year(LSak), Month(LSak), Day(LSak) + SumIdn + 1) + TimeSerial(Hour(TBeig), Minute(TBeig), 0)
                Else
                    LBeig = DateSerial(Year(LSak), Month(LSak), Day(LSak) + SumIdn) + TimeSerial(Hour(TBeig), Minute(TBeig), 0)
                End If
            End If
        End If
'=== END === no 2018.janv - EUR 1.00 par pirmo stundu; EUR 0.50 par katru nākamo stundu; EUR 8.00 par diennakti.
    End If

    If IsNull(Me.fd_VU) Then
        Me.fd_VU = "Autostāvvietas"
        Me.fd_PK = "apmaksa no-līdz"
        Me.fd_Adrese = Now()
        Me.fd_Adrese2 = LBeig
''        Me.fd_Adrese2 = "līdz: " & DateAdd("n", SumI * 60, Now())
'''        Me.fd_VU = "Autostāvv. st. apm."
'''        Me.fd_Adrese = "no: " & Format(Day(LSak), "00") & "." & Format(Month(LSak), "00") & "." & Right(Year(LSak), 2) & " " & Format(Hour(LSak), "00") & ":" & Format(Minute(LSak), "00")
'''        Me.fd_Adrese2 = "līdz:" & Format(Day(LBeig), "00") & "." & Format(Month(LBeig), "00") & "." & Right(Year(LBeig), 2) & " " & Format(Hour(LBeig), "00") & ":" & Format(Minute(LBeig), "00")
'''''        Me.fd_Adrese = "no: " & Now()
'''''        Me.fd_Adrese2 = "līdz: " & LBeig
'''''        Me.fd_Adrese2 = "līdz: " & DateAdd("n", SumI * 60, Now())
'''
    End If

    Set db = CurrentDb()

    KStr = "SELECT tmp_KA_cdata.Nodala, tmp_KA_cdata.Nodala_txt, tmp_KA_cdata.Artikuls, tmp_KA_cdata.Daudzums, tmp_KA_cdata.Daudzums2, tmp_KA_cdata.PLU_txt, tmp_KA_cdata.Cena, tmp_KA_cdata.Summa, tmp_KA_cdata.Valuta, tmp_KA_cdata.Logins"
    KStr = KStr & " FROM tmp_KA_cdata;"

    Set KData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)

    KData.AddNew
    KData!Logins = CurrentUser
    KData!Nodala = Nodala
    KData!Nodala_txt = Nod_txt
    KData!PLU_txt = Nodala & PLU_txt
    KData!Artikuls = Artikuls
'''    KData!Daudzums = SumI
'''    KData!Cena = Cena
'''    KData!Summa = Sum
    KData!Daudzums = 1
    KData!Daudzums2 = Int((SumI + 0.005005) * 100) / 100
    KData!Cena = Sum
    KData!Summa = Sum
    KData!Valuta = Valuta

    KData.Update
    Forms!ka!KA_sub_cdata.Requery


''    Dim KStr As String, KData As Recordset, db As Database, SumI, gads, DL_No, DL_Lidz, SumMin
''    If Sum = 0 Then
''        SumI = InputBox("Ievadiet stāvēšanas laiku (stundas):", "Kase")
''        If Not IsNumeric(SumI) Then
''            Exit Sub
''        ElseIf SumI = 0 Then
''            MsgBox "Jānorāda laiks", vbExclamation, "Kase"
''            Exit Sub
''        Else
''            Sum = SumI
''        End If
''    End If
''
''    Sum = Int((Sum * Cena + 0.005005) * 100) / 100
''    If IsNull(Me.fd_VU) Then
''        Me.fd_VU = "Autostāvvietas st. apmaksa"
''        Me.fd_Adrese = "no:   " & Now()
''        Me.fd_Adrese2 = "līdz: " & DateAdd("n", SumI * 60, Now())
''
''    End If
''
''    Set db = CurrentDb()
''
''    KStr = "SELECT tmp_KA_cdata.Nodala, tmp_KA_cdata.Nodala_txt, tmp_KA_cdata.Artikuls, tmp_KA_cdata.Daudzums, tmp_KA_cdata.Cena, tmp_KA_cdata.Summa, tmp_KA_cdata.Valuta, tmp_KA_cdata.Logins"
''    KStr = KStr & " FROM tmp_KA_cdata;"
''
''    Set KData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)
''
''    KData.AddNew
''    KData!Logins = CurrentUser
''    KData!Nodala = Nodala
''    KData!Nodala_txt = Nod_txt
''    KData!Artikuls = Artikuls
''    KData!Daudzums = SumI
''    KData!Cena = Cena
''    KData!Summa = Sum
''    KData!Valuta = Valuta
''
''    KData.Update
''    Forms!ka!KA_sub_cdata.Requery


End Sub
Sub OpenPFinfForm(Nod_ID As Integer, NodNos As String, MV_ID As Integer, Vajag_LNR As Integer, VajagAdresi As Integer, FTips As Integer, PLU_txt As String)
'   FTips = 10 - meklēt līgumu, 20 - meklēt personu, 30 - meklēt atļauju, 40 - meklēt protokolu, 50 - meklēt JTM viesa līgumu, 60 - meklēt JTM studenta līgumu
    DoCmd.OpenForm "KA_PersMeklesana"
    Forms!KA_PersMeklesana!MeklTips = FTips
    Forms!KA_PersMeklesana!c_Nod_ID = Nod_ID
    Forms!KA_PersMeklesana!c_NodNos = NodNos
    Forms!KA_PersMeklesana!c_PLU_txt = PLU_txt
    Forms!KA_PersMeklesana!c_MV_ID = MV_ID
    Forms!KA_PersMeklesana!c_Vajag_LNR = Vajag_LNR
    Forms!KA_PersMeklesana!c_VajagAdresi = VajagAdresi
    If FTips = 50 Or FTips = 60 Then 'JTM līguma apmaksa
        Forms!KA_PersMeklesana!AtlOrIstNr_lbl.Caption = "Istabiņas Nr:"
        Forms!KA_PersMeklesana!AtlaujasNr.Visible = True
        Forms!KA_PersMeklesana!Ligu.Visible = True
    ElseIf FTips = 10 Then 'protokoli
        Forms!KA_PersMeklesana!AtlOrIstNr_lbl.Caption = "Protokola Nr:"
        Forms!KA_PersMeklesana!AtlaujasNr.Visible = True
        Forms!KA_PersMeklesana!Ligu.Visible = False
    Else
        Forms!KA_PersMeklesana!AtlOrIstNr_lbl.Caption = "Atļaujas Nr:"
        Forms!KA_PersMeklesana!AtlaujasNr.Visible = False
        Forms!KA_PersMeklesana!Ligu.Visible = False
    End If

End Sub

Private Sub NaudasVeids_AfterUpdate()
    If Me.NaudasVeids = 2 Then 'karte
        Me.SkNauda = Null
        Me.SkNaudaAtlikums = Null
        Me.fd_Valuta = 2
        Me.fd_Valuta.Enabled = False
    ElseIf Me.NaudasVeids = 1 Then 'skaidra nauda
        Me.fd_Valuta.Enabled = True
    End If
End Sub

Private Sub SkNauda_AfterUpdate()
    If Me.NaudasVeids = 2 Then 'karte
        Me.SkNauda = Null
        Me.SkNaudaAtlikums = Null
    Else
        If Me.fd_Valuta = 2 Then 'EUR
            Me.SkNaudaAtlikums = Me.SkNauda - Forms!ka!KA_sub_cdata!SummaApmaksai
        ElseIf Me.fd_Valuta = 1 Then 'Ls

        End If
    End If
End Sub
Private Sub Aizvert_Click()
On Error GoTo Err_Aizvert_Click


    DoCmd.Close

Exit_Aizvert_Click:
    Exit Sub

Err_Aizvert_Click:
    MsgBox Err.Description
    Resume Exit_Aizvert_Click

End Sub
