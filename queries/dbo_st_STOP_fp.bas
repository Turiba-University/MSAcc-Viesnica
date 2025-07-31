Operation =1
Option =0
Begin InputTables
    Name ="dbo_st_Stop"
    Name ="dbo_st_Iem_Aizl"
    Name ="dbo_st_Aizliegumi"
End
Begin OutputColumns
    Expression ="dbo_st_Stop.CKods"
    Expression ="dbo_st_Stop.Uzvards"
    Expression ="dbo_st_Stop.Vards"
    Expression ="dbo_st_Stop.PK"
    Expression ="dbo_st_Aizliegumi.Aizl_Nosaukums"
    Expression ="dbo_st_Stop.In_Kas"
    Expression ="dbo_st_Stop.In_Kad"
    Expression ="dbo_st_Stop.Out_Kas"
    Expression ="dbo_st_Stop.Out_Kad"
End
Begin Joins
    LeftTable ="dbo_st_Iem_Aizl"
    RightTable ="dbo_st_Aizliegumi"
    Expression ="dbo_st_Iem_Aizl.Aizl_ID = dbo_st_Aizliegumi.Aizliegums_ID"
    Flag =1
    LeftTable ="dbo_st_Stop"
    RightTable ="dbo_st_Iem_Aizl"
    Expression ="dbo_st_Stop.Iemesls_ID = dbo_st_Iem_Aizl.Iem_ID"
    Flag =1
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
    Left =84
    Top =66
    Right =1378
    Bottom =740
    Left =-1
    Top =-1
    Right =1287
    Bottom =511
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =72
        Top =54
        Right =361
        Bottom =317
        Top =0
        Name ="dbo_st_Stop"
        Name =""
    End
    Begin
        Left =399
        Top =6
        Right =495
        Bottom =98
        Top =0
        Name ="dbo_st_Iem_Aizl"
        Name =""
    End
    Begin
        Left =533
        Top =6
        Right =629
        Bottom =83
        Top =0
        Name ="dbo_st_Aizliegumi"
        Name =""
    End
End
