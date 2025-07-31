Version =19
VersionRequired =19
Begin Report
    LayoutForPrint = NotDefault
    DateGrouping =1
    GridY =10
    Width =7469
    DatasheetFontHeight =9
    ItemSuffix =408
    Left =8250
    Top =390
    RecSrcDt = Begin
        0xf52393e816a3e440
    End
    RecordSource ="SELECT dbo_Viesn_MZAkts_saturs.*, IIf([Inv_Stat]=-10,\"nav nodevis\",IIf([Inv_St"
        "at]=-11,\"bojāts\",IIf([Inv_Stat]=-12,\"pazaudēts\"))) AS Stat, IIf([Inv_Stat]=-"
        "10,\"has not handed over\",IIf([Inv_Stat]=-11,\"has damaged\",IIf([Inv_Stat]=-12"
        ",\"has lost\"))) AS Stat_eng FROM dbo_Viesn_MZAkts_saturs;"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            BackStyle =0
            TextFontCharSet =186
            TextFontFamily =2
            FontName ="Arial"
        End
        Begin Rectangle
            Width =850
            Height =850
        End
        Begin TextBox
            OldBorderStyle =0
            TextFontFamily =2
            Width =1701
            LabelX =-1701
            FontName ="Arial"
        End
        Begin PageHeader
            Height =0
            Name ="PageHeader0"
        End
        Begin Section
            KeepTogether = NotDefault
            Height =272
            Name ="Detail1"
            Begin
                Begin TextBox
                    TextFontCharSet =186
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    Left =30
                    Width =2489
                    Height =272
                    FontSize =11
                    BackColor =12632256
                    Name ="IST_NR"
                    ControlSource ="Inv_Nos_Eng"
                End
                Begin TextBox
                    TextFontCharSet =186
                    TextAlign =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =2535
                    Width =720
                    Height =272
                    FontSize =11
                    TabIndex =1
                    BackColor =12632256
                    Name ="Inv_Skaits"
                    ControlSource ="Inv_Skaits"
                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontCharSet =186
                    TextAlign =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =2494
                    Width =119
                    Height =272
                    FontSize =11
                    TabIndex =2
                    BackColor =12632256
                    Name ="MZA_ID"
                    ControlSource ="MZA_ID"
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontCharSet =186
                    TextAlign =3
                    TextFontFamily =34
                    BackStyle =0
                    Left =3255
                    Width =674
                    Height =272
                    FontSize =11
                    TabIndex =3
                    BackColor =12632256
                    Name ="Inv_Cena"
                    ControlSource ="Inv_Cena"
                    Format ="Standard"
                End
                Begin TextBox
                    DecimalPlaces =2
                    TextFontCharSet =186
                    TextAlign =3
                    TextFontFamily =34
                    BackStyle =0
                    Left =3975
                    Width =900
                    Height =272
                    FontSize =11
                    TabIndex =4
                    BackColor =12632256
                    Name ="Inv_Summa"
                    ControlSource ="Inv_Summa"
                    Format ="Standard"
                End
                Begin TextBox
                    TextFontCharSet =186
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    Left =4965
                    Width =2504
                    Height =272
                    FontSize =11
                    TabIndex =5
                    BackColor =12632256
                    Name ="Stat"
                    ControlSource ="Stat_eng"
                End
            End
        End
        Begin PageFooter
            Height =0
            Name ="PageFooter2"
        End
    End
End
CodeBehindForm
' See "MZAkts_eng_sub.cls"
