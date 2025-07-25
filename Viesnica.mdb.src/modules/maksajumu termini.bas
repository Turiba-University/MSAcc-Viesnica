Attribute VB_Name = "maksajumu termini"
Option Compare Database   'Use database order for string comparisons

Sub Button0_Click()
Dim MyDB As Database, līgumi As Recordset, termiņi As Recordset
Set MyDB = DBEngine.Workspaces(0).Databases(0)
Dim Datums As Variant
Set līgumi = MyDB.OpenRecordset("A Līgumi", DB_OPEN_TABLE)        ' Open table.
Set termiņi = MyDB.OpenRecordset("Apm termiņi", DB_OPEN_TABLE)        ' Open table.

Exit Sub
līgumi.MoveFirst   ' Locate first record.
Do Until līgumi.EOF    ' Begin loop.
    If līgumi!pavars = 1 Or līgumi!makstips = 3 Then
        termiņi.AddNew
        termiņi("Līguma ID") = līgumi("Līguma ID")
        termiņi("Persona ID") = līgumi("Persona ID")
        termiņi("Līguma Nr") = līgumi("Ligums")
        termiņi("summa") = līgumi("summa")
        termiņi("datums") = IIf(līgumi("datums") > #8/15/1996#, līgumi!Datums, "15.08.96")
        termiņi("kavējums") = 0.003
        termiņi.Update

    ElseIf līgumi!makstips = 1 Then
        termiņi.AddNew
        termiņi("Līguma ID") = līgumi("Līguma ID")
        termiņi("Persona ID") = līgumi("Persona ID")
        termiņi("Līguma Nr") = līgumi("Ligums")
        termiņi("summa") = līgumi("summa") / 2
        Datums = IIf(līgumi!Ligums > 426, #9/15/1996#, #8/15/1996#)
        termiņi("datums") = IIf(līgumi("datums") > Datums, līgumi!Datums, Datums)
        termiņi("kavējums") = 0.003
        termiņi.Update

        termiņi.AddNew
        termiņi("Līguma ID") = līgumi("Līguma ID")
        termiņi("Persona ID") = līgumi("Persona ID")
        termiņi("Līguma Nr") = līgumi("Ligums")
        termiņi("summa") = līgumi("summa") / 2
        termiņi("datums") = #12/15/1996#
        termiņi("kavējums") = 0.003
        termiņi.Update

    ElseIf līgumi!makstips = 2 Then
        termiņi.AddNew
        termiņi("Līguma ID") = līgumi("Līguma ID")
        termiņi("Persona ID") = līgumi("Persona ID")
        termiņi("Līguma Nr") = līgumi("Ligums")
        termiņi("summa") = līgumi("summa") / 10
        termiņi("datums") = līgumi("datums")
        termiņi("kavējums") = 0.003
        termiņi.Update

        Dim i As Integer, jj As Variant
        Datums = IIf(līgumi!KURSS = 1, #9/15/1996#, #8/15/1996#)
        For i = 1 To 10
        termiņi.AddNew
        termiņi("Līguma ID") = līgumi("Līguma ID")
        termiņi("Persona ID") = līgumi("Persona ID")
        termiņi("Līguma Nr") = līgumi("Ligums")
        termiņi("summa") = līgumi("summa") / 10
        termiņi("datums") = IIf(Datums > līgumi!Datums, Datums, līgumi!Datums)
        Datums = DateAdd("m", 1, Datums)
        termiņi("kavējums") = 0.003
        termiņi.Update
        jj = SysCmd(SYSCMD_SETSTATUS, Datums)
        Next

    ElseIf līgumi!makstips = 4 Then     'bezmaksas
        termiņi.AddNew
        termiņi("Līguma ID") = līgumi("Līguma ID")
        termiņi("Persona ID") = līgumi("Persona ID")
        termiņi("Līguma Nr") = līgumi("Ligums")
        termiņi("summa") = 0
        termiņi("datums") = līgumi!Datums
        termiņi.Update

    Else
    MsgBox ("jkjk")

    End If
    līgumi.MoveNext    ' Locate next record.
Loop                            ' End of loop.
līgumi.Close           ' Close table.
termiņi.Close           ' Close table.
jj = SysCmd(SYSCMD_CLEARSTATUS)

End Sub

Function max(a As Variant, b As Variant)

If a > b Then max = a Else max = b
End Function

Function Menesis(men As Integer, lj As Integer) As String
Static mas(1 To 12) As String

    mas(1) = "janvār"
    mas(2) = "februār"
    mas(3) = "mart"
    mas(4) = "aprīl"
    mas(5) = "maij"
    mas(6) = "jūnij"
    mas(7) = "jūlij"
    mas(8) = "august"
    mas(9) = "septembr"
    mas(10) = "oktobr"
    mas(11) = "novembr"
    mas(12) = "decembr"
Select Case lj
    Case 1: 'nominatīvs
        Menesis = mas(men) & IIf(men = 1 Or men = 2 Or men = 4 Or men = 9 Or men = 10 Or men = 11 Or men = 12, "is", "s")
    Case 2: 'ģenitīvs
        Menesis = mas(men) & IIf(men = 1 Or men = 2 Or men = 4 Or men = 9 Or men = 10 Or men = 11 Or men = 12, "a", "a")
    Case 3: 'datīvs
        Menesis = mas(men) & IIf(men = 1 Or men = 2 Or men = 4 Or men = 9 Or men = 10 Or men = 11 Or men = 12, "im", "am")
    Case 4: 'akuzatīvs
        Menesis = mas(men) & IIf(men = 1 Or men = 2 Or men = 4 Or men = 9 Or men = 10 Or men = 11 Or men = 12, "i", "u")
    Case 5: 'lokatīvs
        Menesis = mas(men) & IIf(men = 1 Or men = 2 Or men = 4 Or men = 9 Or men = 10 Or men = 11 Or men = 12, "ī", "ā")
End Select


End Function

Function Menesis_eng(men As Integer) As String
Static mas(1 To 12) As String

    mas(1) = "january"
    mas(2) = "february"
    mas(3) = "march"
    mas(4) = "april"
    mas(5) = "may"
    mas(6) = "june"
    mas(7) = "july"
    mas(8) = "august"
    mas(9) = "september"
    mas(10) = "october"
    mas(11) = "november"
    mas(12) = "december"

    Menesis_eng = mas(men)

End Function

Sub Sarakstīt_maksājumu_termiņus()
Dim MyDB As Database, līgumi As Recordset, termiņi As Recordset
Set MyDB = DBEngine.Workspaces(0).Databases(0)
Set līgumi = MyDB.OpenRecordset("A Līgumi", DB_OPEN_TABLE)        ' Open table.
Set termiņi = MyDB.OpenRecordset("Apm termiņi", DB_OPEN_TABLE)        ' Open table.

līgumi.MoveFirst   ' Locate first record.
Do Until līgumi.EOF    ' Begin loop.
    If līgumi!Ligums > 500 Then
        Select Case makstips
            Case 1:
            If drošība > 0 Then
                termiņi.AddNew
                termiņi("Līguma ID") = līgumi("līguma ID")
                termiņi("Persona ID") = līgumi("Persona ID")
                termiņi("Līguma Nr") = līgumi("ligums")
                termiņi("summa") = līgumi("drošība")
                termiņi("datums") = līgumi("datums")
                termiņi.Update

                termiņi.AddNew
                termiņi("Līguma ID") = līgumi("līguma ID")
                termiņi("Persona ID") = līgumi("Persona ID")
                termiņi("Līguma Nr") = līgumi("ligums")
                termiņi("summa") = līgumi!Summa - līgumi!drošība
                termiņi("datums") = IIf(spec = 12 And KURSS = 1, max(līgumi("datums") + 1, #9/15/1997#), max(līgumi("datums") + 1, #8/15/1997#))
                termiņi.Update
            Else
                termiņi.AddNew
                termiņi("Līguma ID") = līgumi("līguma ID")
                termiņi("Persona ID") = līgumi("Persona ID")
                termiņi("Līguma Nr") = līgumi("ligums")
                termiņi("summa") = līgumi!Summa
                termiņi("datums") = IIf(spec = 12 And KURSS = 1, max(līgumi("datums") + 1, #9/15/1997#), max(līgumi("datums") + 1, #8/15/1997#))
                termiņi.Update
            End If

            Case 3:
            If drošība > 0 Then
                termiņi.AddNew
                termiņi("Līguma ID") = līgumi("līguma ID")
                termiņi("Persona ID") = līgumi("Persona ID")
                termiņi("Līguma Nr") = līgumi("ligums")
                termiņi("summa") = līgumi("drošība")
                termiņi("datums") = līgumi("datums")
                termiņi.Update

                termiņi.AddNew
                termiņi("Līguma ID") = līgumi("līguma ID")
                termiņi("Persona ID") = līgumi("Persona ID")
                termiņi("Līguma Nr") = līgumi("ligums")
                termiņi("summa") = līgumi!Summa / 2 - līgumi!drošība
                termiņi("datums") = IIf(spec = 12 And KURSS = 1, max(līgumi("datums") + 1, #9/15/1997#), max(līgumi("datums") + 1, #8/15/1997#))
                termiņi.Update

            Else
                termiņi.AddNew
                termiņi("Līguma ID") = līgumi("līguma ID")
                termiņi("Persona ID") = līgumi("Persona ID")
                termiņi("Līguma Nr") = līgumi("ligums")
                termiņi("summa") = līgumi!Summa / 2
                termiņi("datums") = IIf(spec = 12 And KURSS = 1, max(līgumi("datums") + 1, #9/15/1997#), max(līgumi("datums") + 1, #8/15/1997#))
                termiņi.Update
            End If
                termiņi.AddNew
                termiņi("Līguma ID") = līgumi("līguma ID")
                termiņi("Persona ID") = līgumi("Persona ID")
                termiņi("Līguma Nr") = līgumi("ligums")
                termiņi("summa") = līgumi!Summa / 2 - līgumi!drošība
                termiņi("datums") = #12/15/1997#
                termiņi.Update

            Case 2:
                termiņi.AddNew
                termiņi("Līguma ID") = līgumi("līguma ID")
                termiņi("Persona ID") = līgumi("Persona ID")
                termiņi("Līguma Nr") = līgumi("ligums")
                termiņi("summa") = līgumi!Summa / 10
                termiņi("datums") = IIf(līgumi!drošība > 0, līgumi!Datums, IIf(spec = 12 And KURSS = 1, max(līgumi("datums") + 1, #9/15/1997#), max(līgumi("datums") + 1, #8/15/1997#)))
                termiņi.Update

                dat = IIf(spec = 12 And KURSS = 1, #9/15/1997#, #8/15/1997#)
                For i = 1 To 10
                    termiņi.AddNew
                    termiņi("Līguma ID") = līgumi("līguma ID")
                    termiņi("Persona ID") = līgumi("Persona ID")
                    termiņi("Līguma Nr") = līgumi("ligums")
                    termiņi("summa") = līgumi!Summa / 10
                    termiņi("datums") = max(līgumi("datums") + 1, dat)
                    termiņi.Update
                    dat = DateAdd("m", 1, dat)
                Next
            End Select
    End If
    jj = SysCmd(SYSCMD_SETSTATUS, līgumi!Ligums)
    līgumi.MoveNext    ' Locate next record.
Loop                            ' End of loop.
līgumi.Close           ' Close table.
termiņi.Close           ' Close table.

End Sub
