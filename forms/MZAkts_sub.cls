Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database

Private Sub Nosaukums_DblClick(Cancel As Integer)
    Dim a, St
        Dim MyDB As Database, Jaun As Recordset, Lstr As String
    a = MsgBox("Vai vēlaties dzēst no akta šo ierakstu?", vbYesNo + vbQuestion, "JTM līgumi")
    If a = vbYes Then
        St = "UPDATE dbo_Viesn_MZAkts_saturs SET dbo_Viesn_MZAkts_saturs.Stat = -1"
        St = St & " WHERE (((dbo_Viesn_MZAkts_saturs.RID)=" & Me.RID & "));"
        DoCmd.SetWarnings 0
        DoCmd.RunSQL St
        DoCmd.SetWarnings -1
        Me.Requery

        Set MyDB = CurrentDb()
        Lstr = "SELECT Sum(dbo_Viesn_MZAkts_saturs.Inv_Summa) AS SumOfInv_Summa"
        Lstr = Lstr & " FROM dbo_Viesn_MZAkts_saturs"
        Lstr = Lstr & " WHERE (((dbo_Viesn_MZAkts_saturs.Stat) Is Null Or (dbo_Viesn_MZAkts_saturs.Stat)=0) AND ((dbo_Viesn_MZAkts_saturs.MZA_ID)=" & Me.MZA_ID & "));"
        Set Jaun = MyDB.OpenRecordset(Lstr, dbOpenDynaset, dbSeeChanges)
        If Jaun.EOF Then
            Forms!MZAkts!Summa = 0
        Else
            Forms!MZAkts!Summa = Jaun!SumOfInv_Summa
        End If

    End If
End Sub
