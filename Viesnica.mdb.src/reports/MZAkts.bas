Version =19
VersionRequired =19
Begin Report
    LayoutForPrint = NotDefault
    FilterOn = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    TabularCharSet =186
    TabularFamily =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =9878
    DatasheetFontHeight =10
    ItemSuffix =33
    Left =135
    Top =150
    DatasheetGridlinesColor =12632256
    Filter ="RID=770"
    RecSrcDt = Begin
        0x37934820100de640
    End
    RecordSource ="MZAkts"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            BackStyle =0
            TextFontCharSet =186
            TextFontFamily =2
            FontName ="Arial"
        End
        Begin TextBox
            FELineBreak = NotDefault
            OldBorderStyle =0
            TextFontCharSet =186
            TextFontFamily =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontName ="Arial"
        End
        Begin Subform
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            OldBorderStyle =1
            Width =4536
            Height =2835
        End
        Begin PageHeader
            Height =0
            Name ="PageHeaderSection"
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =12359
            Name ="Detail"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Left =6805
                    Top =2776
                    Width =402
                    Height =225
                    Name ="RID"
                    ControlSource ="RID"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Top =4931
                    Width =9876
                    Height =675
                    FontSize =11
                    TabIndex =1
                    Name ="Txt1"
                    ControlSource ="=\"       konstatēja, ka JTM \" & [LigIstaba] & \".istabas īrnieks \" & [LigVard"
                        "s] & \" \" & [LigUzvards] & IIf(IsNull([Pers_Kods]),IIf(IsNull([DzDatums]),\" \""
                        ",\", dz.dat. \" & [DzDatums]),\", personas kods: \" & [Pers_Kods]) & \", īres lī"
                        "gums Nr.\" & [LigNr] & \", \" & [LigDatums] & \". ir radījis šādus materiālos za"
                        "udējumus:\""
                End
                Begin Label
                    BackStyle =1
                    TextFontCharSet =0
                    TextAlign =2
                    TextFontFamily =34
                    Left =4515
                    Top =1875
                    Width =825
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="Text78"
                    Caption ="AKTS"
                End
                Begin TextBox
                    FELineBreak = NotDefault
                    TextFontCharSet =0
                    TextFontFamily =34
                    Left =2
                    Top =2663
                    Width =3006
                    Height =285
                    FontSize =10
                    TabIndex =2
                    Name ="Field81"
                    ControlSource ="=Year([Datums]) & \".gada \" & Day([Datums]) & \". \" & Menesis(Month([Datums]),"
                        "5)"
                End
                Begin TextBox
                    FELineBreak = NotDefault
                    TextFontCharSet =0
                    TextFontFamily =34
                    Left =8676
                    Top =2663
                    Width =1200
                    Height =285
                    FontSize =10
                    TabIndex =3
                    Name ="Text114"
                    ControlSource ="=\"Nr: \" & [Nr]"
                End
                Begin TextBox
                    FELineBreak = NotDefault
                    TextFontCharSet =0
                    TextAlign =2
                    TextFontFamily =34
                    Left =4277
                    Top =2262
                    Width =1200
                    Height =285
                    FontSize =10
                    TabIndex =4
                    Name ="Text33"
                    ControlSource ="=\"Rīgā\""
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2
                    Top =3513
                    Width =4761
                    Height =285
                    FontSize =11
                    TabIndex =5
                    Name ="Text34"
                    ControlSource ="=\"Komisija šādā sastāvā:\""
                End
                Begin Label
                    Visible = NotDefault
                    BackStyle =1
                    TextFontCharSet =0
                    TextAlign =3
                    TextFontFamily =34
                    Left =6120
                    Top =1590
                    Width =3690
                    Height =390
                    FontSize =10
                    FontWeight =500
                    Name ="Label0"
                    Caption ="APSTIPRINU\015\012SIA \"Biznesa augstskola Turība\"\015\012    Valdes priekšsēdē"
                        "tājs I.Bergs\015\012\015\012Rīgā___.___.202_.\015\012"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =3060
                    Width =8790
                    Height =375
                    FontSize =12
                    FontWeight =700
                    Name ="Label2"
                    Caption ="Materiālo zaudējumu konstatēšanas un atlīdzināšanas akts"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2
                    Top =3918
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =6
                    Name ="Text3"
                    ControlSource ="KomAmats1"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Top =4223
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =7
                    Name ="Text5"
                    ControlSource ="KomAmats2"
                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Top =4523
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =8
                    Name ="Text6"
                    ControlSource ="KomAmats3"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2664
                    Top =3910
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =9
                    Name ="Text7"
                    ControlSource ="KomVU1"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2662
                    Top =4215
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =10
                    Name ="Text8"
                    ControlSource ="KomVU2"
                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Left =2662
                    Top =4515
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =11
                    Name ="Text9"
                    ControlSource ="KomVU3"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Top =7765
                    Width =9876
                    Height =795
                    FontSize =11
                    TabIndex =12
                    Name ="Text12"
                    ControlSource ="=IIf([LigIrDepozits]=-1,\"Saskaņā ar Līguma par izglītības iegūšanu apakšpunktu "
                        "7.1.7. kopējā zaudējumu summa \" & Format([Summa],\"0.00\") & \" EUR (\" & Summa"
                        "VardiemVal([Summa],2) & \") apmērā tiek ieturēta no iemaksātās depozīta maksas.\""
                        ",\"Zaudējumi jāatlīdzina 7 (septiņu) dienu laikā veicot samaksu BAT vai JTM kasē"
                        " vai pārskaitot naudu uz BAT kontu, maksājumā norādot ‘JTM materiālie zaudējumi'"
                        ".\")"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2
                    Top =8672
                    Width =4761
                    Height =285
                    FontSize =11
                    TabIndex =13
                    Name ="Text13"
                    ControlSource ="=\"Komisijas locekļi:\""
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2
                    Top =9077
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =14
                    Name ="Text14"
                    ControlSource ="KomAmats1"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Top =9382
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =15
                    Name ="Text15"
                    ControlSource ="KomAmats2"
                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Top =9682
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =16
                    Name ="Text16"
                    ControlSource ="KomAmats3"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2664
                    Top =9069
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =17
                    Name ="Text17"
                    ControlSource ="KomVU1"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2662
                    Top =9374
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =18
                    Name ="Text18"
                    ControlSource ="KomVU2"
                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Left =2662
                    Top =9674
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =19
                    Name ="Text19"
                    ControlSource ="KomVU3"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =5329
                    Top =9069
                    Width =4200
                    Height =285
                    FontSize =11
                    FontWeight =500
                    Name ="Label114"
                    Caption ="___________________________________"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =5325
                    Top =9373
                    Width =4200
                    Height =285
                    FontSize =11
                    FontWeight =500
                    Name ="Label20"
                    Caption ="___________________________________"
                End
                Begin Label
                    Visible = NotDefault
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =5321
                    Top =9677
                    Width =4200
                    Height =285
                    FontSize =11
                    FontWeight =500
                    Name ="Label21"
                    Caption ="___________________________________"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =10373
                    Width =8505
                    Height =285
                    FontSize =11
                    FontWeight =500
                    Name ="Label22"
                    Caption ="Iepazinos: ___________________________________"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =10778
                    Width =7320
                    Height =1395
                    FontSize =11
                    FontWeight =500
                    Name ="Label23"
                    Caption ="Grāmatvedības informācija par apmaksu:\015\012\015\012o zaudējumi segti no drošī"
                        "bas depozīta\015\012o zaudējumi samaksāti kasē vai ar pārskaitījumu.\015\012"
                End
                Begin Subform
                    OldBorderStyle =0
                    Left =60
                    Top =5910
                    Width =7484
                    Height =1001
                    TabIndex =20
                    Name ="MZAkts_sub"
                    SourceObject ="Report.MZAkts_sub"
                    LinkChildFields ="MZA_ID"
                    LinkMasterFields ="RID"
                End
                Begin Label
                    TextFontFamily =34
                    Top =5611
                    Width =2490
                    Height =285
                    FontSize =11
                    Name ="Label401"
                    Caption ="Nosaukums"
                End
                Begin Label
                    TextFontFamily =34
                    Left =2535
                    Top =5611
                    Width =720
                    Height =285
                    FontSize =11
                    Name ="Label402"
                    Caption ="Skaits"
                End
                Begin Label
                    TextFontFamily =34
                    Left =3255
                    Top =5611
                    Width =675
                    Height =285
                    FontSize =11
                    Name ="Label404"
                    Caption ="Cena"
                End
                Begin Label
                    TextFontFamily =34
                    Left =3975
                    Top =5611
                    Width =900
                    Height =285
                    FontSize =11
                    Name ="Label405"
                    Caption ="Summa"
                End
                Begin Label
                    TextFontFamily =34
                    Left =4965
                    Top =5611
                    Width =2445
                    Height =285
                    FontSize =11
                    Name ="Label406"
                    Caption ="Komentārs"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Top =7028
                    Width =9816
                    Height =675
                    FontSize =11
                    TabIndex =21
                    Name ="Text28"
                    ControlSource ="=\"Kopējā zaudējumu summa: \" & Format([Summa],\"0.00\") & \" EUR (\" & SummaVar"
                        "diemVal([Summa],2) & \").\""
                End
                Begin Label
                    BackStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =1306
                    Top =113
                    Width =7200
                    Height =330
                    FontSize =12
                    FontWeight =700
                    Name ="Label29"
                    Caption ="SIA “Biznesa augstskola Turība”"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =1290
                    Top =465
                    Width =7215
                    Height =630
                    FontSize =12
                    Name ="Label30"
                    Caption ="Vienotais reģistrācijas Nr.40003135880\015\012Graudu iela 68, Rīga, LV-1058\015\012"
                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Left =6576
                    Top =2267
                    Width =402
                    Height =225
                    TabIndex =22
                    Name ="Pers_Kods"
                    ControlSource ="Pers_Kods"
                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Left =7200
                    Top =2267
                    Width =402
                    Height =225
                    TabIndex =23
                    Name ="DzDatums"
                    ControlSource ="DzDatums"
                End
            End
        End
        Begin PageFooter
            Height =0
            Name ="PageFooterSection"
        End
    End
End
