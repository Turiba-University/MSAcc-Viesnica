Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub AutoNr_BeforeUpdate(Cancel As Integer)
    Dim regex As Object
    Dim inputValue As String

    Set regex = CreateObject("VBScript.RegExp")
    regex.Pattern = "^[A-Za-z0-9,;-]*$"
    regex.IgnoreCase = True
    regex.Global = False

    inputValue = Trim(Nz(Me.AutoNr.Value, ""))

    If inputValue = "" Then
        ' Allow Null or empty
        Exit Sub
    ElseIf regex.Test(inputValue) Then
        ' Valid input
        Exit Sub
    Else
        MsgBox "Atļauti ir tikai burti, cipari, domuzīmes, ',' un ';'", vbExclamation, "Nederīga ievade"
        Cancel = True  ' Prevents focus from leaving the control
    End If
End Sub

Private Sub CrlNr_Click()
    If IsNull(Me.KID) Then
        Dim Tstr, KasesID
        KasesID = Null
        If CurrentProject.AllForms("KA").IsLoaded = True Then
            KasesID = Forms!ka!KaseID
        Else
            Open "C:\KA\KA.ini" For Input As #1
            Do While Not EOF(1)
                Line Input #1, Tstr
                If Left(Tstr, 9) = "KaseID = " Then
                    KasesID = Val(Mid(Tstr, 10))
                    Exit Do
                End If
            Loop
            Close
        End If
    End If

    If IsNull(KasesID) Then
        MsgBox "Nav izdevies identificēt kasi.", vbExclamation, "Kase"
    Else
        Me.KID = KasesID
        DoCmd.OpenQuery "KA_Autostavvietas_Karsu_Nr"
    End If
End Sub

Private Sub Form_Open(Cancel As Integer)

'''    If CurrentUser() = "Valdis" Or CurrentUser() = "Imants" Then
'''        Me.CrlSaraksts.Visible = True
'''    Else
'''        Me.CrlSaraksts.Visible = False
'''    End If

End Sub

Private Sub KartesTips_AfterUpdate()
Dim per
    Me.Cena = DLookup("Cena", "dbo_crl_Veidi", "Crl_ID = " & Me.KartesTips)
    per = DLookup("Termins", "dbo_crl_Veidi", "Crl_ID = " & Me.KartesTips)
    If per = 0 Then
        Me.Periods_Lidz = Null
    ElseIf Not IsNull(Me.Periods_No) And per > 0 Then
        Me.Periods_Lidz = DateAdd("m", per, Me.Periods_No - 1)
    End If
End Sub

Private Sub KlTips_AfterUpdate()
    If Me.KlTips = "students" And Me.IrStud = 0 Then
        MsgBox ("Izvēlētā persona nav students!")
        Me.KlTips = Null
    End If
End Sub

Private Sub KlTips_ID_AfterUpdate()
    Me.KartesTips.Requery
End Sub

Private Sub Nr_AfterUpdate()
    Dim db As Database, Nr_rst As Recordset, Nr_str As String, Var, Nevar
    Set db = CurrentDb

    Nr_str = "SELECT dbo_crl_NrDiapazoni.NrNo, dbo_crl_NrDiapazoni.NrLidz, dbo_crl_NrDiapazoni.Nelietot FROM dbo_crl_NrDiapazoni"
    Nr_str = Nr_str & " WHERE (((NrNo)<=" & Me.Nr & ") AND ((NrLidz)>=" & Me.Nr & "));"
    Set Nr_rst = db.OpenRecordset(Nr_str, dbOpenDynaset, dbSeeChanges)
    If Nr_rst.EOF Then Var = 0 Else Var = 1

    Nr_str = "SELECT dbo_crl_NrDiapazoni.NrNo, dbo_crl_NrDiapazoni.NrLidz, dbo_crl_NrDiapazoni.Nelietot FROM dbo_crl_NrDiapazoni"
    Nr_str = Nr_str & " WHERE (((NrNo)<=" & Me.Nr & ") AND ((NrLidz)>=" & Me.Nr & ") AND ((dbo_crl_NrDiapazoni.Nelietot)=-1));"
    Set Nr_rst = db.OpenRecordset(Nr_str, dbOpenDynaset, dbSeeChanges)
    If Nr_rst.EOF Then Nevar = 0 Else Nevar = 1

    If Var = 0 Or Nevar = 1 Then
        MsgBox "Ievadīto kartes Nr nedrīkst lietot.", vbOKOnly + vbExclamation, "Stāvvietas caurlaides"
        Me.Nr = Null
        Exit Sub
    End If


    Nr_str = "SELECT dbo_crl_Caurlaides.Nr FROM dbo_crl_Caurlaides WHERE (((dbo_crl_Caurlaides.Nr)=" & Me.Nr & ")  AND ((dbo_crl_Caurlaides.Stat) Is Null Or (dbo_crl_Caurlaides.Stat)>0));"
    Set Nr_rst = db.OpenRecordset(Nr_str, dbOpenDynaset, dbSeeChanges)
    If Not Nr_rst.EOF Then
        MsgBox "Šāds kartes Nr jau ir reģistrēts. Atkārtoti nedrīkst lietot.", vbOKOnly + vbExclamation, "Stāvvietas caurlaides"
        Me.Nr = Null
    End If
End Sub


Private Sub Periods_No_AfterUpdate()
Dim per
    If Not IsNull(Me.KartesTips) Then
        Me.Cena = DLookup("Cena", "dbo_crl_Veidi", "Crl_ID = " & Me.KartesTips)
        per = DLookup("Termins", "dbo_crl_Veidi", "Crl_ID = " & Me.KartesTips)
        If per = 0 Then
            Me.Periods_Lidz = Null
        ElseIf Not IsNull(Me.KartesTips) And per > 0 Then
            Me.Periods_Lidz = DateAdd("m", per, Me.Periods_No - 1)
        End If
    End If
    If IsNull(Me.Datums) Then Me.Datums = Me.Periods_No
End Sub

Private Sub Saglabat_Click()
    If IsNull(Me.Vards) Or IsNull(Me.Uzvards) Or IsNull(Me.KlTips_ID) Or IsNull(Me.KartesTips) Or IsNull(Me.Periods_No) Or IsNull(Me.Datums) Or IsNull(Me.Nr) Or (Not Me.Nr > 0) Then
        MsgBox "Jāaizpilda obligātie lauki!", vbExclamation, "Kase"
        Exit Sub
    End If
    If IsNull(Me.Stat) Then
        Me.Stat = 1
    End If

    If IsNull(Me.KID) Then
        Dim Tstr, KasesID
        KasesID = Null
        If CurrentProject.AllForms("KA").IsLoaded = True Then
            KasesID = Forms!ka!KaseID
        Else
            Open "C:\KA\KA.ini" For Input As #1
            Do While Not EOF(1)
                Line Input #1, Tstr
                If Left(Tstr, 9) = "KaseID = " Then
                    KasesID = Val(Mid(Tstr, 10))
                    Exit Do
                End If
            Loop
            Close
        End If
        Me.KID = KasesID
    End If

    DoCmd.DoMenuItem acFormBar, acRecordsMenu, acSaveRecord, , acMenuVer70
    Dim db As Database, Crl_rst As Recordset, Crl_str As String

    If Me.OpenFrom = 10 Then 'caurlaides bezmaksas maiņa sakarā ar a/m nr maiņu
        Set db = CurrentDb

        Crl_str = "SELECT crl_Karte_ID, Stat, Comment"
        Crl_str = Crl_str & " FROM dbo_crl_Caurlaides WHERE (((dbo_crl_Caurlaides.crl_Karte_ID)=" & Me.crl_Karte_ID_prev & "));"

        Set Crl_rst = db.OpenRecordset(Crl_str, dbOpenDynaset, dbSeeChanges)
        Crl_rst.Edit
        Crl_rst!Stat = -10
        Crl_rst!Comment = "Mainīta pret citu, a/m Nr maiņa"
        Crl_rst.Update
        Crl_rst.Close
    ElseIf Me.OpenFrom = 20 Then '5 EUR caurlaide sakarā ar nozaudēšanu
        Set db = CurrentDb

        Crl_str = "SELECT crl_Karte_ID, Stat, Comment"
        Crl_str = Crl_str & " FROM dbo_crl_Caurlaides WHERE (((dbo_crl_Caurlaides.crl_Karte_ID)=" & Me.crl_Karte_ID_prev & "));"

        Set Crl_rst = db.OpenRecordset(Crl_str, dbOpenDynaset, dbSeeChanges)
        Crl_rst.Edit
        Crl_rst!Stat = -20
        Crl_rst!Comment = "Atjaunota, bija nozaudēta"
        Crl_rst.Update
        Crl_rst.Close

        If IsNull(Forms!ka!fd_VU) Then
            Forms!ka!fd_VU = Me.Vards & " " & Me.Uzvards
        End If
        Call WriteCData(Forms!ka.lb_MVeids.Column(0), Forms!ka.lb_MVeids.Column(4), Me.Nr, 1, 5, Forms!ka.fd_Valuta, Forms!ka.lb_MVeids.Column(8)) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
''''        Call WriteCData(Forms!ka.lb_MVeids.Column(0), Forms!ka.lb_MVeids.Column(4), Forms!ka.lb_MVeids.Column(5), 1, 1, Forms!ka.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
    ElseIf Me.OpenFrom = 30 Then 'Caurlaide nereģistrētai personai
        If IsNull(Forms!ka!fd_VU) Then
            Forms!ka!fd_VU = Me.Vards & " " & Me.Uzvards
        End If
        Call WriteCData(Forms!ka.lb_MVeids.Column(0), Forms!ka.lb_MVeids.Column(4), Me.Nr, 1, Me.Cena, Forms!ka.fd_Valuta, Forms!ka.lb_MVeids.Column(8)) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
''''        Call WriteCData(Forms!ka.lb_MVeids.Column(0), Forms!ka.lb_MVeids.Column(4), Forms!ka.lb_MVeids.Column(5), 1, Me.Cena, Forms!ka.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
    Else
        Call WriteCData(Forms!ka.lb_MVeids.Column(0), Forms!ka.lb_MVeids.Column(4), Me.Nr, 1, Me.Cena, Forms!ka.fd_Valuta, Forms!ka.lb_MVeids.Column(8)) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
''''        Call WriteCData(Forms!ka.lb_MVeids.Column(0), Forms!ka.lb_MVeids.Column(4), Forms!ka.lb_MVeids.Column(5), 1, Me.Cena, Forms!ka.fd_Valuta) 'Nodala, Nod_txt, Artikuls, Daudzums, Sum, valuta
    End If

    DoCmd.Close acForm, "KA_Caurlaides_sar"
    DoCmd.Close
End Sub
Private Sub Aizvert_Click()
    Me.Stat = -11
    Me.Nr = Null
    Me.Comment = "NoSave, " & Me.Comment
    DoCmd.Close
End Sub
