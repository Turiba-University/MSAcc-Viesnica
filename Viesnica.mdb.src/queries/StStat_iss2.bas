Operation =1
Option =0
Begin InputTables
    Name ="tmp_StStat"
    Name ="StStat_MinStudStat2"
    Name ="VIA_StudStatData"
End
Begin OutputColumns
    Expression ="[tmp_StStat].[CKods]"
    Expression ="[tmp_StStat].[StStat]"
    Expression ="[tmp_StStat].[StStat_Nr]"
    Alias ="MG"
    Expression ="Max([tmp_StStat].[MG])"
    Alias ="Lim"
    Expression ="First([VIA_StudStatData].[Lim])"
    Alias ="Progr"
    Expression ="First([VIA_StudStatData].[Progr])"
End
Begin Joins
    LeftTable ="tmp_StStat"
    RightTable ="StStat_MinStudStat2"
    Expression ="[tmp_StStat].[StStat_Nr]=[StStat_MinStudStat2].[StStatNr]"
    Flag =1
    LeftTable ="tmp_StStat"
    RightTable ="StStat_MinStudStat2"
    Expression ="[tmp_StStat].[CKods]=[StStat_MinStudStat2].[PID]"
    Flag =1
    LeftTable ="tmp_StStat"
    RightTable ="VIA_StudStatData"
    Expression ="[tmp_StStat].[CKods]=[VIA_StudStatData].[CKods]"
    Flag =2
End
Begin Groups
    Expression ="[tmp_StStat].[CKods]"
    GroupLevel =0
    Expression ="[tmp_StStat].[StStat]"
    GroupLevel =0
    Expression ="[tmp_StStat].[StStat_Nr]"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
Begin
End
Begin
    State =0
    Left =106
    Top =88
    Right =1342
    Bottom =571
    Left =-1
    Top =-1
    Right =1225
    Bottom =211
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =38
        Top =6
        Right =176
        Bottom =173
        Top =0
        Name ="tmp_StStat"
        Name =""
    End
    Begin
        Left =243
        Top =6
        Right =483
        Bottom =83
        Top =0
        Name ="StStat_MinStudStat2"
        Name =""
    End
    Begin
        Left =521
        Top =13
        Right =667
        Bottom =168
        Top =0
        Name ="VIA_StudStatData"
        Name =""
    End
End
