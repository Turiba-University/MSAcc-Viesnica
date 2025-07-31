Operation =1
Option =0
Where ="(((dbo_Personas_Cert.CertTips)=2))"
Begin InputTables
    Name ="dbo_Personas_Cert"
End
Begin OutputColumns
    Expression ="dbo_Personas_Cert.Personas_ID"
    Expression ="dbo_Personas_Cert.CertVeids"
    Expression ="dbo_Personas_Cert.CertDatums"
    Expression ="dbo_Personas_Cert.CertTips"
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
        dbText "Name" ="dbo_Personas_Cert.Personas_ID"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas_Cert.CertTips"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas_Cert.CertVeids"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="dbo_Personas_Cert.CertDatums"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =30
    Top =203
    Right =1222
    Bottom =803
    Left =-1
    Top =-1
    Right =1157
    Bottom =413
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =49
        Top =22
        Right =266
        Bottom =207
        Top =0
        Name ="dbo_Personas_Cert"
        Name =""
    End
End
