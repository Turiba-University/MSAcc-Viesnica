Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database   'Use database order for string comparisons
Dim Cap As String

Private Sub Cancel_Click()
    DoCmd.Close , , acSaveNo
End Sub

Private Sub Iela_AfterUpdate()
If Not IsNull(Me.Iela) Then
    P = Left$(Me.Iela, 1)
    pp = UCase(P)
    gar = Len(Me.Iela)
    ppp = gar - 1
    pppp = Right(Me.Iela, ppp)
    gp = pp + pppp
    Me.Iela = gp
End If
End Sub



Private Sub Pilsēta_AfterUpdate()
If Not IsNull(Me.Pilsēta) Then
    P = Left$(Me.Pilsēta, 1)
    pp = UCase(P)
    gar = Len(Me.Pilsēta)
    ppp = gar - 1
    pppp = Right(Me.Pilsēta, ppp)
    gp = pp + pppp
    Me.Pilsēta = gp
End If
End Sub

Private Sub Novads_AfterUpdate()
If Not IsNull(Me.Novads) Then
    P = Left$(Me.Novads, 1)
    pp = UCase(P)
    gar = Len(Me.Novads)
    ppp = gar - 1
    pppp = Right(Me.Novads, ppp)
    gp = pp + pppp
    Me.Novads = gp
End If
End Sub


Private Sub Saglabat_Click()
    If IsNull(Me.Vārds) Or IsNull(Me.Uzvārds) Then
        MsgBox "Aizpildiet obligātos laukus - Vārds , Uzvārds"
        Exit Sub
    End If
    Dim KONTROLE As Control
    Dim MyDB As Database, Jaun As Recordset
    Set MyDB = DBEngine.Workspaces(0).Databases(0)
    Set Jaun = MyDB.OpenRecordset("dbo_Personas", DB_OPEN_DYNASET, dbSeeChanges)
    Jaun.AddNew
    Jaun!Aud_User = CurrentUser()
    Jaun!Aud_Date = Date
    Jaun!Vards = Me.Vārds
    Jaun!Uzvards = Me.Uzvārds
    Jaun!Dok_Nr = Me.Pase
    Jaun!D_Pilseta = Me.Pilsēta
    Jaun!D_Novads = Me.Novads
    Jaun!D_Iela = Me.Iela
    Jaun!Tel1 = Me.Tel
    Jaun!Pozicija = "Viesn, rezervists"
    Jaun.Update

    DoCmd.Close

End Sub

Private Sub Uzvārds_AfterUpdate()
If Not IsNull(Me.Uzvārds) Then
    P = Left$(Me.Uzvārds, 1)
    pp = UCase(P)
    gar = Len(Me.Uzvārds)
    ppp = gar - 1
    pppp = Right(Me.Uzvārds, ppp)
    gp = pp + pppp
    Me.Uzvārds = gp
End If
End Sub

Private Sub Vārds_AfterUpdate()
If Not IsNull(Me.Vārds) Then
    P = Left$(Me.Vārds, 1)
    pp = UCase(P)
    gar = Len(Me.Vārds)
    ppp = gar - 1
    pppp = Right(Me.Vārds, ppp)
    gp = pp + pppp
    Me.Vārds = gp
End If
End Sub
