Attribute VB_Name = "stop"
Option Compare Database

Function StopSaraksts(PersId As Long, aizlieguma_id As Integer)
Dim rec As Recordset, e   As String, db As Database
Dim msg, msg0, msg1, msg2, St_vards, St_uzvards As String
e = "SELECT vards, uzvards, Kapec, Aizliegts, Aizl_ID FROM dbo_Stop WHERE CKods = " & PersId & " GROUP BY vards, uzvards, Kapec, Aizliegts, Aizl_ID having (Aizl_ID = 1 or Aizl_ID = 2 or Aizl_ID = " & aizlieguma_id & ");"
Set db = CurrentDb()
Set rec = db.OpenRecordset(e, dbOpenSnapshot, dbSeeChanges)
If rec.RecordCount > 0 Then
    rec.MoveLast
    Do While rec.BOF = False
        St_vards = rec!Vards
        St_uzvards = rec!Uzvards
        If rec!Aizl_ID = 1 Then
            If msg1 = "" Then
                msg1 = "!!! Šī persona ir STOP sarakstā, aizliegti visi 1.sarakstā minētie pakalpojumi, iemesls:" & Chr(13) & "   " & rec!kapec & Chr(13)
            Else
                msg1 = msg1 & "   " & rec!kapec & Chr(13)
            End If
'            StopSaraksts = 1
'        ElseIf rec!Aizliegts = "starptautiskais internets" Then
'            If msg2 = "" Then
'                msg2 = "Šī persona ir STOP sarakstā, iemesls:" & Chr(13) & "   " & rec!kapec & Chr(13)
'            Else
'                msg2 = msg2 & "   " & rec!kapec & Chr(13)
'            End If
''            StopSaraksts = 2
'        ElseIf rec!Aizliegts = "starptautiskais internets tekosais" Then
'            If msg2 = "" Then
'                msg2 = "Šī persona ir STOP sarakstā, iemesls:" & Chr(13) & "   " & "Šai personai ir neapmaksāts tekošais rēķins par Internet." & Chr(13)
'            Else
'                msg2 = msg2 & "   " & "Šai personai ir neapmaksāts tekošais rēķins par Internet." & Chr(13)
'            End If
''            StopSaraksts = 2
        ElseIf rec!Aizl_ID = 2 Then
            If msg0 = "" Then
                msg0 = "Šai personai jāatgādina, ka:" & Chr(13) & "   " & rec!kapec & Chr(13)
            Else
                msg0 = msg0 & "   " & rec!kapec & Chr(13)
            End If
'            StopSaraksts = 0
        Else
            If msg2 = "" Then
                msg2 = "Šī persona ir STOP sarakstā, iemesls:" & Chr(13) & "   " & rec!kapec & Chr(13)
            Else
                msg2 = msg2 & "   " & rec!kapec & Chr(13)
            End If
'            StopSaraksts = 2
        End If
        rec.MovePrevious
    Loop
    If msg1 <> "" Then
        StopSaraksts = 1
    ElseIf msg2 <> "" Then
        StopSaraksts = 2
    ElseIf msg0 <> "" Then
        StopSaraksts = 0
    End If
    msg = "Persona: " & St_vards & " " & St_uzvards & Chr(13) + Chr(13) & IIf(msg1 = "", "", msg1 & Chr(13)) & IIf(msg2 = "", "", msg2 & Chr(13)) & IIf(msg0 = "", "", msg0 & Chr(13))
    MsgBox msg, , "Izvēlētā persona ir STOP sarakstā"
Else
    StopSaraksts = 0
End If
rec.Close
db.Close

'================= Prev 030411 version
'''''Dim rec As Recordset, e   As String, db As Database
'''''e = "select * from stop where stop.CILVEKS_CKODS = " & persid
'''''Set db = CurrentDb()
'''''Set rec = db.OpenRecordset(e)
'''''If rec.RecordCount > 0 Then
'''''    If rec!aizlegts = "visi 1.sarakstā minētie pakalpojumi" Then
'''''        MsgBox ("Šī persona ir STOP sarakstā, aizliegti visi 1.sarakstā minētie pakalpojumi. Iemesls: " & rec!numurs)
'''''        StopSaraksts = 1
'''''    ElseIf rec!aizlegts = "starptautiskais internets" Then
'''''        MsgBox ("Šī persona ir STOP sarakstā. Iemesls: " & rec!numurs)
'''''        StopSaraksts = 2
'''''    ElseIf rec!aizlegts = "starptautiskais internets tekosais" Then
'''''        MsgBox ("Šai personai ir neapmaksāts tekošais rēķins par Internet.")
'''''        StopSaraksts = 2
'''''    ElseIf rec!aizlegts = "tikai jāinformē" Then
'''''        MsgBox ("Šai personai jāatgādina, ka " & rec!numurs)
'''''        StopSaraksts = 0
'''''    ElseIf rec!aizlegts = "studentu viesnīcas izmantošana, telpu nomas līgumu slēgšana" Then
'''''        MsgBox ("Šai personai jāatgādina, ka " & rec!numurs)
'''''        StopSaraksts = 0
'''''    Else
'''''        MsgBox ("Šī persona ir STOP sarakstā. Iemesls: " & rec!numurs)
'''''        StopSaraksts = 2
'''''    End If
'''''Else
'''''    StopSaraksts = 0
'''''End If
End Function
