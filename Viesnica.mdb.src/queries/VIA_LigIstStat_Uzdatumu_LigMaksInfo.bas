Operation =1
Option =0
Where ="(((dbo_viesn_Maksajumi.Dat_No)<=#1/6/2010#) AND ((dbo_viesn_Maksajumi.Dat_Lidz)>"
    "=#1/6/2010#) AND ((dbo_viesn_Maksajumi.Ligums)=27832) AND ((dbo_viesn_Maksajumi."
    "Ist_Nr)=318))"
Begin InputTables
    Name ="dbo_viesn_Maksajumi"
End
Begin OutputColumns
    Expression ="dbo_viesn_Maksajumi.Dat_No"
    Expression ="dbo_viesn_Maksajumi.Dat_Lidz"
    Expression ="dbo_viesn_Maksajumi.Maks_Day"
    Expression ="dbo_viesn_Maksajumi.Maks_Men"
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
    Left =368
    Top =5
    Right =1289
    Bottom =744
    Left =-1
    Top =-1
    Right =914
    Bottom =182
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =276
        Bottom =150
        Top =8
        Name ="dbo_viesn_Maksajumi"
        Name =""
    End
End
