Operation =1
Option =0
Begin InputTables
    Name ="dbo_viesn_kl_Istabas"
    Name ="Rezervisti_14"
End
Begin OutputColumns
    Expression ="dbo_viesn_kl_Istabas.Istaba"
    Alias ="AiznVSk"
    Expression ="Count(Rezervisti_14.Istaba)"
End
Begin Joins
    LeftTable ="dbo_viesn_kl_Istabas"
    RightTable ="Rezervisti_14"
    Expression ="dbo_viesn_kl_Istabas.Istaba = Rezervisti_14.Istaba"
    Flag =1
    LeftTable ="dbo_viesn_kl_Istabas"
    RightTable ="Rezervisti_14"
    Expression ="dbo_viesn_kl_Istabas.Istaba = Rezervisti_14.Istaba"
    Flag =1
End
Begin OrderBy
    Expression ="dbo_viesn_kl_Istabas.Istaba"
    Flag =0
End
Begin Groups
    Expression ="dbo_viesn_kl_Istabas.Istaba"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
Begin
End
Begin
    State =0
    Left =141
    Top =6
    Right =1323
    Bottom =848
    Left =-1
    Top =-1
    Right =1171
    Bottom =392
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =584
        Top =70
        Right =808
        Bottom =184
        Top =0
        Name ="dbo_viesn_kl_Istabas"
        Name =""
    End
    Begin
        Left =248
        Top =57
        Right =516
        Bottom =350
        Top =0
        Name ="Rezervisti_14"
        Name =""
    End
End
