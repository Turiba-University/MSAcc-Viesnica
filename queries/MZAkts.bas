Operation =1
Option =0
Begin InputTables
    Name ="dbo_Viesn_MZAkts"
    Name ="dbo_viesn_Ligumi"
    Name ="dbo_Personas"
End
Begin OutputColumns
    Expression ="dbo_Viesn_MZAkts.*"
    Expression ="dbo_Personas.Pers_Kods"
    Expression ="dbo_Personas.DzDatums"
End
Begin Joins
    LeftTable ="dbo_Viesn_MZAkts"
    RightTable ="dbo_viesn_Ligumi"
    Expression ="dbo_Viesn_MZAkts.LigNr = dbo_viesn_Ligumi.Ligums"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_Personas"
    Expression ="dbo_viesn_Ligumi.Pers_ID = dbo_Personas.Personas_ID"
    Flag =2
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="0"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="dbo_Personas.Pers_Kods"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.DzDatums"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =0
    Top =40
    Right =1754
    Bottom =806
    Left =-1
    Top =-1
    Right =1722
    Bottom =466
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =48
        Top =12
        Right =192
        Bottom =156
        Top =0
        Name ="dbo_Viesn_MZAkts"
        Name =""
    End
    Begin
        Left =240
        Top =12
        Right =384
        Bottom =156
        Top =0
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
    Begin
        Left =432
        Top =12
        Right =576
        Bottom =156
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
End
