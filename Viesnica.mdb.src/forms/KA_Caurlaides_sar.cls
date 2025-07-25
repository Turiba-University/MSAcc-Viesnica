Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Aizvert_Click()
    DoCmd.Close
End Sub

Private Sub AnuletCaurlaidi_Click()
    Dim a
    a = MsgBox("Vai esat pārliecināti ka gribat anulēt caurlaidi?", vbYesNo + vbQuestion, "Kase")
    If a = vbNo Then Exit Sub
    a = InputBox("Lūdzu norādiet anulēšanas iemeslu:", "Kase")
    If Len(a) < 7 Then
        MsgBox "Ir jānorāda anulēšanas iemesls!", vbOKOnly + vbExclamation, "Kase"
        Exit Sub
    End If

    Dim db As Database, Crl_rst As Recordset, Crl_str As String
    Set db = CurrentDb

    Crl_str = "SELECT crl_Karte_ID, Stat, Comment"
    Crl_str = Crl_str & " FROM dbo_crl_Caurlaides WHERE (((dbo_crl_Caurlaides.crl_Karte_ID)=" & Me.crl_Karte_ID & "));"

    Set Crl_rst = db.OpenRecordset(Crl_str, dbOpenDynaset, dbSeeChanges)

    Crl_rst.Edit
    Crl_rst!Stat = -1
    Crl_rst!Comment = a & "," & CurrentUser & "," & Date
    Crl_rst.Update

    Me.Aizvert.SetFocus
End Sub

Private Sub AtjaunotCrl_Click()
    Dim db As Database, Crl_rst As Recordset, Crl_str As String
    Set db = CurrentDb

    Crl_str = "SELECT crl_Karte_ID, KartesTips, Nr, Datums, Periods_No, Periods_Lidz, Cena, AutoNr, PersID, Vards, Uzvards, KlTips_ID, KlTips, Stat"
    Crl_str = Crl_str & " FROM dbo_crl_Caurlaides WHERE (((dbo_crl_Caurlaides.crl_Karte_ID)=" & Me.crl_Karte_ID & "));"

    Set Crl_rst = db.OpenRecordset(Crl_str, dbOpenSnapshot, dbSeeChanges)

    DoCmd.OpenForm "KA_Caurlaides_Reg"
    Forms!KA_Caurlaides_Reg!PersId = Crl_rst!PersId
    Forms!KA_Caurlaides_Reg!Vards = Crl_rst!Vards
    Forms!KA_Caurlaides_Reg!Uzvards = Crl_rst!Uzvards
    Forms!KA_Caurlaides_Reg!Periods_No = Crl_rst!Periods_No
    Forms!KA_Caurlaides_Reg!Periods_Lidz = Crl_rst!Periods_Lidz
    Forms!KA_Caurlaides_Reg!KlTips_ID = Crl_rst!KlTips_ID
    Forms!KA_Caurlaides_Reg!KartesTips = Crl_rst!KartesTips
    Forms!KA_Caurlaides_Reg!Cena = Crl_rst!Cena
    Forms!KA_Caurlaides_Reg!AutoNr = Crl_rst!AutoNr
    Forms!KA_Caurlaides_Reg!Datums = Date
    Forms!KA_Caurlaides_Reg!OpenFrom = 20
    Forms!KA_Caurlaides_Reg!crl_Karte_ID_prev = Crl_rst!crl_Karte_ID
    Forms!KA_Caurlaides_Reg!Stat = 20
    Forms!KA_Caurlaides_Reg!Comment = "CrlID " & Crl_rst!crl_Karte_ID & "vietā, atjaunota"
End Sub

Private Sub ChCarNr_Click()
    Dim db As Database, Crl_rst As Recordset, Crl_str As String
    Set db = CurrentDb

    Crl_str = "SELECT crl_Karte_ID, KartesTips, Nr, Datums, Periods_No, Periods_Lidz, Cena, AutoNr, PersID, Vards, Uzvards, KlTips_ID, KlTips, Stat"
    Crl_str = Crl_str & " FROM dbo_crl_Caurlaides WHERE (((dbo_crl_Caurlaides.crl_Karte_ID)=" & Me.crl_Karte_ID & "));"

    Set Crl_rst = db.OpenRecordset(Crl_str, dbOpenSnapshot, dbSeeChanges)

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

    DoCmd.OpenForm "KA_Caurlaides_Reg", , , , acFormAdd
    Forms!KA_Caurlaides_Reg!PersId = Crl_rst!PersId
    Forms!KA_Caurlaides_Reg!Vards = Crl_rst!Vards
    Forms!KA_Caurlaides_Reg!Uzvards = Crl_rst!Uzvards
    Forms!KA_Caurlaides_Reg!Periods_No = Crl_rst!Periods_No
    Forms!KA_Caurlaides_Reg!Periods_Lidz = Crl_rst!Periods_Lidz
    Forms!KA_Caurlaides_Reg!KlTips_ID = Crl_rst!KlTips_ID
    Forms!KA_Caurlaides_Reg!KartesTips = Crl_rst!KartesTips
    Forms!KA_Caurlaides_Reg!Cena = Crl_rst!Cena
    Forms!KA_Caurlaides_Reg!Datums = Date

    Forms!KA_Caurlaides_Reg!Kase = KasesID

    Forms!KA_Caurlaides_Reg!OpenFrom = 10
    Forms!KA_Caurlaides_Reg!crl_Karte_ID_prev = Crl_rst!crl_Karte_ID
    Forms!KA_Caurlaides_Reg!Stat = 10
    Forms!KA_Caurlaides_Reg!Comment = "CrlID " & Crl_rst!crl_Karte_ID & "vietā, a/mNr maiņa"

End Sub

Private Sub Form_Open(Cancel As Integer)
    Me.Nr.SetFocus
    Me.AtjaunotCrl.Visible = False

End Sub

Private Sub LabotAutoNr_Click()
    Dim a
    If IsNull(Me.AutoNr) Then
        a = InputBox("Ievadiet automašīnas Nr:", "Kase")
    Else
        a = InputBox("Ievadiet automašīnas Nr:", "Kase", Me.AutoNr)
    End If
    Me.AutoNr = a
    DoCmd.GoToRecord , , acNext
End Sub
