Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

Private Sub Change_STOP_Click()
Dim STOP_Ch As String
DoCmd.SetWarnings 0
    STOP_Ch = "INSERT INTO dbo_st_Stop ( CKODS, UZVARDS, VARDS, PK, Iemesls_ID, In_Kas_ID, In_Kas, In_Kad )"
    STOP_Ch = STOP_Ch & " SELECT tmp_STOP_now.CILVEKS_CKODS, tmp_STOP_now.UZVARDS, tmp_STOP_now.VARDS, tmp_STOP_now.Pers_Kods, tmp_STOP_now.Iemesls_ID, Null AS In_Kas_ID, tmp_STOP_now.Kas, tmp_STOP_now.Kad"
    STOP_Ch = STOP_Ch & " FROM tmp_STOP_now LEFT JOIN dbo_STOP ON (tmp_STOP_now.CILVEKS_CKODS = dbo_STOP.CKODS) AND (tmp_STOP_now.Iemesls_ID = dbo_STOP.Iemesls_ID)"
    STOP_Ch = STOP_Ch & " WHERE (((dbo_STOP.CKODS) Is Null));"
    DoCmd.RunSQL STOP_Ch, 0

    STOP_Ch = "UPDATE tmp_STOP_now RIGHT JOIN dbo_st_Stop ON tmp_STOP_now.CILVEKS_CKODS = dbo_st_Stop.CKODS SET dbo_st_Stop.Out_Kas = ""Dators"", dbo_st_Stop.Out_Kad = Now()"
    STOP_Ch = STOP_Ch & " WHERE (((dbo_st_Stop.Out_Kad) Is Null) AND ((tmp_STOP_now.CILVEKS_CKODS) Is Null) AND ((dbo_st_Stop.Iemesls_ID)=26));"
    DoCmd.RunSQL STOP_Ch, 0
DoCmd.SetWarnings 1

    Me.In_STOP_l.Visible = False
    Me.In_STOP.Visible = False
    Me.Out_STOP_l.Visible = False
    Me.Out_STOP.Visible = False

    MsgBox "Dati uz STOP sarakstu pārnesti", , "STOP saraksts"
    DoCmd.Close


End Sub


Private Sub Form_Close()
    DoCmd.SetWarnings 0
    DoCmd.RunSQL "DELETE tmp_STOP_now.* FROM tmp_STOP_now;"
    DoCmd.SetWarnings 1
End Sub

Private Sub Form_Load()
    Me!In_STOP.RowSource = ""
    Me!Out_STOP.RowSource = ""
    DoCmd.SetWarnings 0
    Dim MakeStopTemp As String, STOP_in As String, STOP_out As String
    MakeStopTemp = "SELECT ApmaksasParadnieki2000.CILVEKS_CKODS, ApmaksasParadnieki2000.UZVARDS, ApmaksasParadnieki2000.VARDS, ApmaksasParadnieki2000.Pers_Kods, ""Dators"" AS Kas, Now() AS Kad, 26 AS Iemesls_ID INTO tmp_STOP_now"
    MakeStopTemp = MakeStopTemp & " FROM ApmaksasParadnieki2000 WHERE (((ApmaksasParadnieki2000.Parads_forSTOP) > 0.01)) ORDER BY ApmaksasParadnieki2000.UZVARDS, ApmaksasParadnieki2000.VARDS;"
    DoCmd.RunSQL MakeStopTemp, 0

    STOP_in = "SELECT tmp_STOP_now.UZVARDS, tmp_STOP_now.VARDS, tmp_STOP_now.Pers_Kods"
    STOP_in = STOP_in & " FROM tmp_STOP_now LEFT JOIN dbo_STOP ON (tmp_STOP_now.CILVEKS_CKODS = dbo_STOP.CKODS) AND (tmp_STOP_now.Iemesls_ID = dbo_STOP.Iemesls_ID)"
    STOP_in = STOP_in & " WHERE (((dbo_STOP.CKODS) Is Null));"
    Me!In_STOP.RowSource = STOP_in

    STOP_out = "SELECT dbo_st_Stop.UZVARDS, dbo_st_Stop.VARDS, dbo_st_Stop.PK"
    STOP_out = STOP_out & " FROM tmp_STOP_now RIGHT JOIN dbo_st_Stop ON tmp_STOP_now.CILVEKS_CKODS = dbo_st_Stop.CKODS"
    STOP_out = STOP_out & " WHERE (((dbo_st_Stop.Out_Kad) Is Null) AND ((tmp_STOP_now.CILVEKS_CKODS) Is Null) AND ((dbo_st_Stop.Iemesls_ID)=26));"
    Me!Out_STOP.RowSource = STOP_out

    Me.In_STOP_l.Visible = True
    Me.In_STOP.Visible = True
    Me.Out_STOP_l.Visible = True
    Me.Out_STOP.Visible = True
    Me.Change_STOP.Visible = True

    DoCmd.SetWarnings 1

End Sub

Private Sub Form_Open(Cancel As Integer)
'    Call EventRec("Form", Me.Name, CurrentUser())
End Sub
