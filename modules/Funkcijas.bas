Attribute VB_Name = "Funkcijas"
Option Compare Database
Global Sk(10) As String, Sk_(10) As String, TEXT(6) As String, Sk_E(10) As String, Sk11_E(10) As String, Sk10_E(10) As String, TEXT_E(6) As String

'======== Lieto kases maksājumu ievadei
Public Sub WriteCData(Nodala As Integer, Nod_txt As String, Artikuls As Long, Daudzums As Single, Sum As Single, Valuta As Integer, Optional PLU_txt As String)
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

    KStr = "SELECT tmp_KA_cdata.Nodala, tmp_KA_cdata.Nodala_txt, tmp_KA_cdata.PLU_txt, tmp_KA_cdata.Artikuls, tmp_KA_cdata.Daudzums, tmp_KA_cdata.Cena, tmp_KA_cdata.Summa, tmp_KA_cdata.Valuta, tmp_KA_cdata.Logins"
    KStr = KStr & " FROM tmp_KA_cdata;"

    Set KData = db.OpenRecordset(KStr, DB_OPEN_DYNASET, dbSeeChanges)

    KData.AddNew
    KData!Logins = CurrentUser
    KData!Nodala = Nodala
    KData!Nodala_txt = Nod_txt
    If Not IsNull(PLU_txt) Then
        KData!PLU_txt = Nodala & PLU_txt
    End If
    KData!Artikuls = Artikuls
    KData!Daudzums = Daudzums
    KData!Cena = Sum
    KData!Summa = Sum
    KData!Valuta = Valuta

    KData.Update
    Forms!ka!KA_sub_cdata.Requery


End Sub
'====   END   ==== Lieto kases maksājumu ievadei


Public Function TiesibasDarbibai(DID As Integer) As Boolean
    Dim db As Database, Prav As Recordset, str As String ', Drikst As Boolean
    Set db = CurrentDb()
    str = "SELECT dbo_kl_v_Login_Rights.Darbiba_ID, dbo_kl_v_Login_Rights.Login, dbo_kl_v_Login_Rights.W"
    str = str & " FROM dbo_kl_v_Login_Rights"
    str = str & " WHERE (((dbo_kl_v_Login_Rights.Darbiba_ID)=" & DID & ") AND ((dbo_kl_v_Login_Rights.Login)=""" & CurrentUser() & """));"
    TiesibasDarbibai = False
    Set Prav = db.OpenRecordset(str, DB_OPEN_DYNASET, dbSeeChanges)
    If Prav.RecordCount > 0 Then TiesibasDarbibai = True
    Prav.Close
End Function


Function SummaVardiemVal(s, Valuta)
    Dim a As Long, Sint As Long, negat As Boolean, V As String, VS As String
    If Valuta = 2 Then
        V = "EUR"
        VS = "c."
    Else
        V = "LVL"
        VS = "sant."
    End If
    Sk(0) = "": Sk(1) = "vien": Sk(2) = "div": Sk(3) = "trīs": Sk(4) = "četr": Sk(5) = "piec"
    Sk(6) = "seš": Sk(7) = "septiņ": Sk(8) = "astoņ": Sk(9) = "deviņ": Sk(10) = "desmit"
    Sk_(0) = "": Sk_(1) = "s": Sk_(2) = "i": Sk_(3) = "": Sk_(4) = "i": Sk_(5) = "i"
    Sk_(6) = "i": Sk_(7) = "i": Sk_(8) = "i": Sk_(9) = "i": Sk_(10) = ""
    TEXT(1) = V: TEXT(2) = V: TEXT(3) = "tūkstotis": TEXT(4) = "tūkstoši": TEXT(5) = "miljons": TEXT(6) = "miljoni"
''    TEXT(1) = "Ls": TEXT(2) = "Ls": TEXT(3) = "tūkstotis": TEXT(4) = "tūkstoši": TEXT(5) = "miljons": TEXT(6) = "miljoni"
    If Not IsNumeric(s) Then
        SummaVardiemVal = "----------" 'MsgBox "Ievadītam jābūt skaitlim."
        Exit Function
    End If

    On Error GoTo Kluda1
    If s < 0 Then negat = True Else negat = False
    s = Abs(s)
    Sint = Int(s)
    a = (s - Sint) * 100
    If a - Int(a / 10) * 10 = 1 And a <> 11 Then
        SumV = Format(a, "00") & " " & VS
    Else
        SumV = Format(a, "00") & " " & VS
    End If
     SummaVardiemVal = SumV
    If Sint = 0 Then GoTo Beigas

    a = Sint
    SumV = Desmiti(a, 1) & " " & SumV
    SummaVardiemVal = SumV
    If Sint < 1000 Then GoTo Beigas

    a = Int(Sint / 1000)
    SumV = Desmiti(a, 3) & " " & SumV
    SummaVardiemVal = SumV
    If Sint < 1000000 Then GoTo Beigas

    a = Int(Sint / 1000000)
    SumV = Desmiti(a, 5) & " " & SumV
    SummaVardiemVal = SumV
    GoTo Beigas
Kluda1:
    MsgBox ("Summu neizdevās uzrakstīt vārdiem. Pārveidošanas kļūda.")
    SummaVardiemVal = ""
    Exit Function
Beigas:
    If negat = True Then SummaVardiemVal = "mīnus " & SummaVardiemVal
End Function

Function Desmiti(a, i)
Dim a10 As Long
On Error GoTo kluda
a10 = a - Int(a / 100) * 100
Select Case a10
Case 0: Desmiti_ = TEXT(i + 1)
Case 1: Desmiti_ = Sk(a10) & Sk_(a10) & " " & TEXT(i)
Case 2 To 10: Desmiti_ = Sk(a10) & Sk_(a10) & " " & TEXT(i + 1)
Case 11 To 19: Desmiti_ = Sk(a10 - Int(a10 / 10) * 10) & "padsmit " & TEXT(i + 1)
Case Else
    Desmiti_ = Sk(Int(a10 / 10)) & "desmit"
    a10 = a10 - Int(a10 / 10) * 10
    Select Case a10
    Case 0:        Desmiti_ = Desmiti_ & " " & TEXT(i + 1)
    Case 1:        Desmiti_ = Desmiti_ & " " & Sk(a10) & Sk_(a10) & " " & TEXT(i)
    Case Else:     Desmiti_ = Desmiti_ & " " & Sk(a10) & Sk_(a10) & " " & TEXT(i + 1)
    End Select
End Select
Desmiti = Desmiti_
If a < 100 Then Exit Function

a10 = Int((a - Int(a / 1000) * 1000) / 100)
Select Case a10
Case 0:
Case 1: Desmiti_ = Sk(a10) & Sk_(a10) & " simts " & Desmiti_
Case Else:    Desmiti_ = Sk(a10) & Sk_(a10) & " simti " & Desmiti_
End Select
Desmiti = Desmiti_
Exit Function
kluda:
MsgBox ("Summu neizdevās uzrakstīt vārdiem. Pārveidošanas kļūda.")
Desmiti = ""
End Function


Function Desmiti_eng(a, i)
Dim a10 As Long
On Error GoTo kluda
a10 = a - Int(a / 100) * 100
Select Case a10
Case 0: Desmiti_ = TEXT_E(i + 1)
Case 1: Desmiti_ = Sk_E(a10) & " " & TEXT_E(i)
Case 2 To 10: Desmiti_ = Sk_E(a10) & " " & TEXT_E(i + 1)
Case 11 To 19: Desmiti_ = Sk11_E(a10 - Int(a10 / 10) * 10) & " " & TEXT_E(i + 1)
Case Else
    Desmiti_ = Sk10_E(Int(a10 / 10))
    a10 = a10 - Int(a10 / 10) * 10
    Select Case a10
        Case 0:        Desmiti_ = Desmiti_ & " " & TEXT_E(i + 1)
        Case 1:        Desmiti_ = Desmiti_ & " " & Sk_E(a10) & " " & TEXT_E(i)
        Case Else:     Desmiti_ = Desmiti_ & " " & Sk_E(a10) & " " & TEXT_E(i + 1)
    End Select
End Select
Desmiti_eng = Desmiti_
If a < 100 Then Exit Function

a10 = Int((a - Int(a / 1000) * 1000) / 100)
Select Case a10
Case 0:
Case 1: Desmiti_ = Sk_E(a10) & " hundred " & Desmiti_
Case Else:    Desmiti_ = Sk_E(a10) & " hundred " & Desmiti_
End Select
Desmiti_eng = Desmiti_
Exit Function
kluda:
MsgBox ("Summu neizdevās uzrakstīt vārdiem. Pārveidošanas kļūda.")
Desmiti_eng = ""
End Function

Function SummaVardiemVal_eng(s, Valuta)
    Dim a As Long, Sint As Long, V As String, VS As String
    If Valuta = 2 Then
        V = "EUR"
        VS = "c."
    Else
        V = "LVL"
        VS = "sant."
    End If
    Sk_E(0) = "": Sk_E(1) = "one": Sk_E(2) = "two": Sk_E(3) = "three": Sk_E(4) = "four": Sk_E(5) = "five"
    Sk_E(6) = "six": Sk_E(7) = "seven": Sk_E(8) = "eight": Sk_E(9) = "nine": Sk_E(10) = "ten"
    Sk11_E(0) = "": Sk11_E(1) = "eleven": Sk11_E(2) = "twelve": Sk11_E(3) = "thirteen": Sk11_E(4) = "fourteen": Sk11_E(5) = " fifteen"
    Sk11_E(6) = "sixteen": Sk11_E(7) = "seventeen": Sk11_E(8) = "eighteen": Sk11_E(9) = "nineteen": Sk11_E(10) = "ten"
    Sk10_E(0) = "": Sk10_E(1) = "ten": Sk10_E(2) = "twenty": Sk10_E(3) = "thirty": Sk10_E(4) = "fourty": Sk10_E(5) = " fifty"
    Sk10_E(6) = "sixty": Sk10_E(7) = "seventy": Sk10_E(8) = "eighty": Sk10_E(9) = "ninety": Sk10_E(10) = "ten"
    ''Sk_(0) = "": Sk_(1) = "s": Sk_(2) = "i": Sk_(3) = "": Sk_(4) = "i": Sk_(5) = "i"
    ''Sk_(6) = "i": Sk_(7) = "i": Sk_(8) = "i": Sk_(9) = "i": Sk_(10) = ""
    TEXT_E(1) = V: TEXT_E(2) = V:
    TEXT_E(3) = "thousand": TEXT_E(4) = "thousand": TEXT_E(5) = "million": TEXT_E(6) = "million"
    If Not IsNumeric(s) Then
        SummaVardiemVal_eng = "----------" 'MsgBox "Ievadītam jābūt skaitlim."
        Exit Function
    End If

    On Error GoTo Kluda1

    s = Abs(s)
    Sint = Int(s)
    a = (s - Sint) * 100
    If a - Int(a / 10) * 10 = 1 And a <> 11 Then
        SumV = Format(a, "00") & " " & VS
    Else
        SumV = Format(a, "00") & " " & VS
    End If
    SummaVardiemVal_eng = SumV
    If Sint = 0 Then Exit Function

    a = Sint
    SumV = Desmiti_eng(a, 1) & " " & SumV
    SummaVardiemVal_eng = SumV
    If Sint < 1000 Then Exit Function

    a = Int(Sint / 1000)
    SumV = Desmiti_eng(a, 3) & " " & SumV
    SummaVardiemVal_eng = SumV
    If Sint < 1000000 Then Exit Function

    a = Int(Sint / 1000000)
    SumV = Desmiti_eng(a, 5) & " " & SumV
    SummaVardiemVal_eng = SumV
    Exit Function
Kluda1:
    MsgBox ("Summu neizdevās uzrakstīt vārdiem. Pārveidošanas kļūda.")
    SummaVardiemVal_eng = ""
End Function
