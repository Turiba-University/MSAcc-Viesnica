Operation =1
Option =0
Begin InputTables
    Name ="dbo_viesn_Ligumi"
    Name ="dbo_Personas"
    Name ="LigumaInfo_PEKonv"
    Name ="dbo_Personas"
    Alias ="dbo_Personas_1"
End
Begin OutputColumns
    Expression ="dbo_viesn_Ligumi.LIGUM_ID"
    Expression ="dbo_viesn_Ligumi.Pers_ID"
    Expression ="dbo_viesn_Ligumi.Ligums"
    Expression ="dbo_viesn_Ligumi.Lig_Dat"
    Expression ="dbo_Personas.Vards"
    Expression ="dbo_Personas.Uzvards"
    Alias ="PK"
    Expression ="dbo_Personas.Pers_Kods"
    Alias ="Pase"
    Expression ="dbo_Personas.Dok_Nr"
    Expression ="dbo_viesn_Ligumi.Piezimes"
    Expression ="dbo_viesn_Ligumi.Valsts"
    Expression ="dbo_Personas.D_Valsts"
    Alias ="Rajons"
    Expression ="dbo_Personas.D_Rajons"
    Alias ="Novads"
    Expression ="dbo_Personas.D_Novads"
    Alias ="Pagasts"
    Expression ="dbo_Personas.D_Pagasts"
    Alias ="Pilseta"
    Expression ="dbo_Personas.D_Pilseta"
    Alias ="Iela"
    Expression ="dbo_Personas.D_Iela"
    Expression ="dbo_viesn_Ligumi.Position"
    Expression ="dbo_viesn_Ligumi.PositionComment"
    Expression ="dbo_viesn_Ligumi.Pilnv_Persona"
    Expression ="dbo_viesn_Ligumi.Datums_In"
    Expression ="dbo_viesn_Ligumi.Datums_Lidz"
    Expression ="dbo_viesn_Ligumi.Datums_Out"
    Expression ="LigumaInfo_PEKonv.PE_Konv"
    Expression ="dbo_Personas.DzDatums"
    Expression ="dbo_Personas.Tel1"
    Expression ="dbo_Personas.Epasts"
    Expression ="dbo_Personas.Pilsoniba"
    Expression ="dbo_viesn_Ligumi.Maksatajs_PID"
    Alias ="Maksatajs_Nos"
    Expression ="dbo_Personas_1.Vards"
    Expression ="dbo_viesn_Ligumi.IstVSk"
    Expression ="dbo_viesn_Ligumi.IstMCena"
    Expression ="dbo_viesn_Ligumi.IstComf"
    Expression ="dbo_viesn_Ligumi.TNVeids"
    Expression ="dbo_viesn_Ligumi.TNKopa"
    Expression ="dbo_viesn_Ligumi.TNNepiemero"
    Expression ="dbo_viesn_Ligumi.TNGrupa"
End
Begin Joins
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_Personas"
    Expression ="dbo_viesn_Ligumi.[Pers_ID] = dbo_Personas.[Personas_ID]"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="LigumaInfo_PEKonv"
    Expression ="dbo_viesn_Ligumi.[Ligums] = LigumaInfo_PEKonv.[Ligums]"
    Flag =2
    LeftTable ="dbo_viesn_Ligumi"
    RightTable ="dbo_Personas_1"
    Expression ="dbo_viesn_Ligumi.[Maksatajs_PID] = dbo_Personas_1.Personas_ID"
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
        dbText "Name" ="dbo_viesn_Ligumi.LIGUM_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.DzDatums"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Tel1"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Epasts"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="PK"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Pase"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Rajons"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Novads"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Pagasts"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Pilseta"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Iela"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Pilsoniba"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.Valsts"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Valsts"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas.D_Valsts"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="Maksatajs_Nos"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas_1.Vards"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.Maksatajs_PID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.IstComf"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.PositionComment"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.TNNepiemero"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_viesn_Ligumi.TNGrupa"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =57
    Top =25
    Right =1257
    Bottom =768
    Left =-1
    Top =-1
    Right =1177
    Bottom =237
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =223
        Bottom =248
        Top =0
        Name ="dbo_viesn_Ligumi"
        Name =""
    End
    Begin
        Left =405
        Top =9
        Right =595
        Bottom =251
        Top =0
        Name ="dbo_Personas"
        Name =""
    End
    Begin
        Left =729
        Top =30
        Right =939
        Bottom =107
        Top =0
        Name ="LigumaInfo_PEKonv"
        Name =""
    End
    Begin
        Left =961
        Top =16
        Right =1114
        Bottom =198
        Top =0
        Name ="dbo_Personas_1"
        Name =""
    End
End
