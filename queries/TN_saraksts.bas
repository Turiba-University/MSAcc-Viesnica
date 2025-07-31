Operation =1
Option =0
Where ="(((dbo_viesn_kl_LBData.TN)=-1) AND ((dbo_viesn_Ligumi.Lig_Dat)>=#1/1/2023#) AND "
    "((dbo_viesn_Maksajumi.Stat) Is Null Or (dbo_viesn_Maksajumi.Stat)=0))"
Begin InputTables
    Name ="dbo_viesn_kl_LBData"
    Name ="dbo_viesn_Ligumi"
    Name ="dbo_viesn_Maksajumi"
End
Begin OutputColumns
    Expression ="dbo_viesn_Ligumi.Ligums"
    Expression ="dbo_viesn_Ligumi.Lig_Dat"
    Expression ="dbo_viesn_Ligumi.Vards"
    Expression ="dbo_viesn_Ligumi.Uzvards"
    Expression ="dbo_viesn_Ligumi.PK"
    Expression ="dbo_viesn_Maksajumi.Ist_Nr"
    Expression ="dbo_viesn_Maksajumi.Sk_Ist"
    Expression ="dbo_viesn_Maksajumi.Dat_No"
    Expression ="dbo_viesn_Maksajumi.Dat_Lidz"
    Alias ="Naktis"
    Expression ="DateDiff(\"d\",[Dat_No],[Dat_Lidz])"
    Alias ="TNNep18"
    Expression ="dbo_viesn_Maksajumi.TNNepiemero18"
    Alias ="TNNepDS"
    Expression ="dbo_viesn_Maksajumi.TNNepiemeroDS"
    Alias ="TNsk"
    Expression ="dbo_viesn_Maksajumi.TNKopa"
    Expression ="dbo_viesn_Maksajumi.TNNaktis"
    Expression ="dbo_viesn_Maksajumi.TNSum"
    Expression ="dbo_viesn_Maksajumi.TN_SamSum"
    Alias ="TNz18"
    Expression ="[TNNep18]*[Naktis]"
    Alias ="TNz10d"
    Expression ="[TNsk]*[TNNaktis]"
    Alias ="TNv10d"
    Expression ="[Naktis]*[TNSk]-[TNz10d]"
End
Begin Joins
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_viesn_kl_LBData"
    Expression ="dbo_viesn_Ligumi.Position = dbo_viesn_kl_LBData.POSITION"
    Flag =1
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_viesn_Maksajumi"
    Expression ="dbo_viesn_Ligumi.Ligums = dbo_viesn_Maksajumi.Ligums"
    Flag =2
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
Begin
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.PK"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Maksajumi.TN_SamSum"
        dbInteger "ColumnWidth" ="1575"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Maksajumi.Ist_Nr"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Vards"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Maksajumi.Sk_Ist"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="960"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_Maksajumi.TNNaktis"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1260"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Ligums"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1065"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_Maksajumi.Dat_Lidz"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Maksajumi.Dat_No"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Maksajumi.TNSum"
        dbLong "AggregateType" ="-1"
        dbInteger "ColumnWidth" ="1080"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Lig_Dat"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Uzvards"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TNNep18"
        dbInteger "ColumnWidth" ="1275"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TNNepDS"
        dbInteger "ColumnWidth" ="1305"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TNsk"
        dbInteger "ColumnWidth" ="1140"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Naktis"
        dbInteger "ColumnWidth" ="1005"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TNz18"
        dbInteger "ColumnWidth" ="975"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TNz10d"
        dbInteger "ColumnWidth" ="1095"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TNv10d"
        dbInteger "ColumnWidth" ="1110"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =20
    Top =10
    Right =1385
    Bottom =376
    Left =-1
    Top =-1
    Right =1333
    Bottom =110
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =403
        Top =48
        Right =547
        Bottom =265
        Top =0
        Name ="dbo_viesn_kl_LBData"
        Name =""
    End
    Begin
        Left =40
        Top =9
        Right =303
        Bottom =264
        Top =0
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
    Begin
        Left =652
        Top =28
        Right =856
        Bottom =272
        Top =0
        Name ="dbo_viesn_Maksajumi"
        Name =""
    End
End
