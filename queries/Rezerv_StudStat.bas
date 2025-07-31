Operation =3
Name ="tmp_RezStudStat"
Option =0
Begin InputTables
    Name ="dbo_stl_Stud_LastMGR_Data"
    Name ="qryRezerv"
    Name ="StudStat_kodi"
End
Begin OutputColumns
    Name ="CKods"
    Expression ="qryRezerv.CKods"
    Alias ="St"
    Name ="St"
    Expression ="IIf([Stat]=20,1,IIf([Stat]=50,2,IIf([Stat]=30,3,IIf([Stat]=10,4,5))))"
    Alias ="MG"
    Name ="MG"
    Expression ="dbo_stl_Stud_LastMGR_Data.MacGads"
    Alias ="StudStat"
    Name ="StudStat"
    Expression ="First(StudStat_kodi.Koda_Atsifr)"
    Alias ="FirstOfProgr"
    Name ="Progr"
    Expression ="First(dbo_stl_Stud_LastMGR_Data.Progr)"
    Alias ="FirstOfLim"
    Name ="Lim"
    Expression ="First(dbo_stl_Stud_LastMGR_Data.Lim)"
    Alias ="FirstOfStat"
    Name ="Stat"
    Expression ="First(dbo_stl_Stud_LastMGR_Data.Stat)"
End
Begin Joins
    LeftTable ="qryRezerv"
    RightTable ="dbo_stl_Stud_LastMGR_Data"
    Expression ="qryRezerv.CKods = dbo_stl_Stud_LastMGR_Data.PID"
    Flag =1
    LeftTable ="dbo_stl_Stud_LastMGR_Data"
    RightTable ="StudStat_kodi"
    Expression ="dbo_stl_Stud_LastMGR_Data.Stat = StudStat_kodi.Kods"
    Flag =1
End
Begin OrderBy
    Expression ="qryRezerv.CKods"
    Flag =0
    Expression ="IIf([Stat]=20,1,IIf([Stat]=50,2,IIf([Stat]=30,3,IIf([Stat]=10,4,5))))"
    Flag =0
    Expression ="dbo_stl_Stud_LastMGR_Data.MacGads"
    Flag =1
End
Begin Groups
    Expression ="qryRezerv.CKods"
    GroupLevel =0
    Expression ="IIf([Stat]=20,1,IIf([Stat]=50,2,IIf([Stat]=30,3,IIf([Stat]=10,4,5))))"
    GroupLevel =0
    Expression ="dbo_stl_Stud_LastMGR_Data.MacGads"
    GroupLevel =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
dbBoolean "UseTransaction" ="-1"
Begin
    Begin
        dbText "Name" ="qryRezerv.CKods"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="StudStat"
        dbInteger "ColumnWidth" ="2385"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MG"
        dbInteger "ColumnWidth" ="735"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="St"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="600"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="tmp_StStat.Stud_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_stl_Stud_LastMGR_Data.MacGads"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FirstOfKoda_Atsifr"
        dbInteger "ColumnWidth" ="2385"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="qryRezerv.StStat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="StudStat_kodi.Koda_Atsifr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_stl_Stud_LastMGR_Data.Stat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="MaxOfMacGads"
        dbInteger "ColumnWidth" ="1860"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FirstOfStat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FirstOfProgr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_stl_Stud_LastMGR_Data.Progr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_stl_Stud_LastMGR_Data.Lim"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="FirstOfLim"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =48
    Top =11
    Right =1267
    Bottom =750
    Left =-1
    Top =-1
    Right =1187
    Bottom =405
    Left =0
    Top =0
    ColumnsShown =655
    Begin
        Left =398
        Top =47
        Right =601
        Bottom =396
        Top =0
        Name ="dbo_stl_Stud_LastMGR_Data"
        Name =""
    End
    Begin
        Left =92
        Top =26
        Right =321
        Bottom =384
        Top =0
        Name ="qryRezerv"
        Name =""
    End
    Begin
        Left =688
        Top =43
        Right =832
        Bottom =187
        Top =0
        Name ="StudStat_kodi"
        Name =""
    End
End
