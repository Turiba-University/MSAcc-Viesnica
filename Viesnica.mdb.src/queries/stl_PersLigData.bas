Operation =1
Option =0
Begin InputTables
    Name ="dbo_STL_PersLigData"
End
Begin OutputColumns
    Alias ="Līgums"
    Expression ="dbo_STL_PersLigData.LIG_NUM"
    Alias ="Datums"
    Expression ="dbo_STL_PersLigData.LIG_DAT"
    Alias ="Vārds"
    Expression ="dbo_STL_PersLigData.Vards"
    Alias ="Uzvārds"
    Expression ="dbo_STL_PersLigData.Uzvards"
    Expression ="dbo_STL_PersLigData.Pers_Kods"
    Alias ="Progr"
    Expression ="[Gr_kods] & IIf([MValoda]=2,\" A\",\" L\")"
    Alias ="StGads"
    Expression ="IIf([Lig_Num]<29600,[KURSS],[StudGads])"
    Alias ="Nodaļa"
    Expression ="IIf(IsNull([Kods]),[TIPS_NODALA],[kods])"
    Expression ="dbo_STL_PersLigData.MGR_Dat"
    Alias ="Nr"
    Expression ="dbo_STL_PersLigData.MGR_DokNr"
    Alias ="Gads"
    Expression ="dbo_STL_PersLigData.MacGads"
    Alias ="Summa"
    Expression ="Format(IIf([Lig_Num]<29600,[LIG_SUM],[StM_Kopeja]),\"Fixed\")"
    Alias ="Val"
    Expression ="IIf([Val_ID]=2,\"EUR\",\"Ls\")"
    Alias ="Filiāle"
    Expression ="IIf(IsNull([Fil_nos]),[Filiale],[Fil_nos])"
    Expression ="dbo_STL_PersLigData.STUDKODS"
    Expression ="dbo_STL_PersLigData.Stud_ID"
    Expression ="dbo_STL_PersLigData.MGR_ID"
    Expression ="dbo_STL_PersLigData.CILVEKS_CKODS"
    Alias ="SakSem"
    Expression ="IIf([StSakSem]=2,2,1)"
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
    Left =4
    Top =304
    Right =1600
    Bottom =690
    Left =-1
    Top =-1
    Right =1585
    Bottom =192
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =342
        Bottom =150
        Top =20
        Name ="dbo_STL_PersLigData"
        Name =""
    End
End
