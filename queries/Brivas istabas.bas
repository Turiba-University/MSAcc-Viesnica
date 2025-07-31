Operation =1
Option =0
Begin InputTables
    Name ="Istabas"
    Name ="Aiznemtas istabas"
End
Begin OutputColumns
    Expression ="Istabas.Istaba"
    Expression ="Istabas.[Vietu Sk]"
    Alias ="Aiznemtas vietas"
    Expression ="IIf(IsNull([Cik aiznemts]),0,[Cik aiznemts])"
    Alias ="Brivas vietas"
    Expression ="[Vietu Sk]-[Aiznemtas vietas]"
End
Begin Joins
    LeftTable ="Istabas"
    RightTable ="Aiznemtas istabas"
    Expression ="Istabas.Istaba = [Aiznemtas istabas].IST_NR"
    Flag =2
End
Begin OrderBy
    Expression ="Istabas.Istaba"
    Flag =0
End
Begin Groups
    Expression ="Istabas.Istaba"
    GroupLevel =0
    Expression ="Istabas.[Vietu Sk]"
    GroupLevel =0
    Expression ="IIf(IsNull([Cik aiznemts]),0,[Cik aiznemts])"
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
    Left =40
    Top =22
    Right =1002
    Bottom =550
    Left =-1
    Top =-1
    Right =955
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =543
    Begin
        Left =86
        Top =3
        Right =182
        Bottom =110
        Top =0
        Name ="Istabas"
        Name =""
    End
    Begin
        Left =392
        Top =19
        Right =488
        Bottom =96
        Top =0
        Name ="Aiznemtas istabas"
        Name =""
    End
End
