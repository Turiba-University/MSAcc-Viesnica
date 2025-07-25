Operation =1
Option =0
Where ="((([dbo_st_Stop].[Iemesls_ID])=8) And (([dbo_st_Stop].[Out_Kad]) Is Null))"
Begin InputTables
    Name ="dbo_st_Stop"
    Name ="dbo_st_Iemesli"
End
Begin OutputColumns
    Expression ="[dbo_st_Stop].[CKods]"
    Expression ="[dbo_st_Iemesli].[Iem_Nosaukums]"
    Alias ="Ielikts"
    Expression ="Min([dbo_st_Stop].[In_Kad])"
    Alias ="sk"
    Expression ="Count([dbo_st_Stop].[ST_ID])"
End
Begin Joins
    LeftTable ="dbo_st_Stop"
    RightTable ="dbo_st_Iemesli"
    Expression ="[dbo_st_Stop].[Iemesls_ID]=[dbo_st_Iemesli].[Iemesls_ID]"
    Flag =2
End
Begin Groups
    Expression ="[dbo_st_Stop].[CKods]"
    GroupLevel =0
    Expression ="[dbo_st_Iemesli].[Iem_Nosaukums]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbMemo "Filter" ="((Not Query1.sk=1))"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
    Begin
        dbText "Name" ="dbo_st_Stop.CKods"
        dbInteger "ColumnWidth" ="885"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_st_Iemesli.Iem_Nosaukums"
        dbInteger "ColumnWidth" ="4215"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="Ielikts"
        dbInteger "ColumnWidth" ="2205"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =225
    Top =12
    Right =916
    Bottom =738
    Left =-1
    Top =-1
    Right =1393
    Bottom =198
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =167
        Top =0
        Name ="dbo_st_Stop"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =367
        Bottom =120
        Top =0
        Name ="dbo_st_Iemesli"
        Name =""
    End
End
