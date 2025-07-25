Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DataEntry = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    TabularCharSet =186
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =5050
    DatasheetFontHeight =10
    ItemSuffix =36
    Left =6855
    Top =2055
    Right =11910
    Bottom =6525
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x75e25ec17dace240
    End
    RecordSource ="dbo_crl_Caurlaides"
    Caption ="Caurlaides reģistrēšana"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            BackStyle =0
            TextFontCharSet =186
            BackColor =-2147483633
            ForeColor =-2147483630
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
            SpecialEffect =3
            Width =1701
        End
        Begin Image
            BackStyle =0
            OldBorderStyle =0
            BorderLineStyle =0
            PictureAlignment =2
            Width =1701
            Height =1701
        End
        Begin CommandButton
            TextFontCharSet =186
            Width =1701
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
        End
        Begin OptionButton
            SpecialEffect =2
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =2
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin BoundObjectFrame
            SpecialEffect =2
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            FELineBreak = NotDefault
            SpecialEffect =2
            TextFontCharSet =186
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ListBox
            SpecialEffect =2
            TextFontCharSet =186
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ComboBox
            SpecialEffect =2
            TextFontCharSet =186
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin Subform
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            SpecialEffect =2
            OldBorderStyle =1
            Width =4536
            Height =2835
        End
        Begin ToggleButton
            TextFontCharSet =186
            Width =283
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
        End
        Begin Tab
            TextFontCharSet =186
            BackStyle =0
            Width =5103
            Height =3402
        End
        Begin FormHeader
            Height =0
            BackColor =-2147483633
            Name ="FormHeader"
        End
        Begin Section
            Height =4478
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =56
                    Top =113
                    Width =1035
                    Height =255
                    ColumnWidth =1035
                    TabIndex =12
                    Name ="crl_Karte_ID"
                    ControlSource ="crl_Karte_ID"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2009
                    Top =3117
                    Width =1035
                    Height =255
                    ColumnWidth =1035
                    TabIndex =8
                    Name ="Nr"
                    ControlSource ="Nr"
                    AfterUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =419
                            Top =3117
                            Width =1455
                            Height =255
                            Name ="Nr_Label"
                            Caption ="Caurlaides Nr*"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2009
                    Top =2777
                    Width =1020
                    Height =255
                    ColumnWidth =945
                    TabIndex =7
                    Name ="Datums"
                    ControlSource ="Datums"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =419
                            Top =2777
                            Width =1530
                            Height =255
                            Name ="Datums_Label"
                            Caption ="Iegādes datums*"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1777
                    Top =2037
                    Width =1020
                    Height =255
                    ColumnWidth =945
                    TabIndex =4
                    Name ="Periods_No"
                    ControlSource ="Periods_No"
                    AfterUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =532
                            Top =2037
                            Width =1185
                            Height =255
                            Name ="Periods_No_Label"
                            Caption ="Termiņš no*"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =3450
                    Top =2040
                    Width =1035
                    Height =255
                    ColumnWidth =945
                    TabIndex =5
                    Name ="Periods_Lidz"
                    ControlSource ="Periods_Lidz"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =2895
                            Top =2040
                            Width =495
                            Height =255
                            Name ="Periods_Lidz_Label"
                            Caption ="līdz"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1761
                    Top =2377
                    Width =1305
                    Height =255
                    ColumnWidth =1035
                    TabIndex =6
                    Name ="Cena"
                    ControlSource ="Cena"
                    Format ="#,##0.00\" EUR\";-#,##0.00\" EUR\""
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =1041
                            Top =2377
                            Width =660
                            Height =255
                            Name ="Cena_Label"
                            Caption ="Cena"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2009
                    Top =3471
                    Width =1035
                    Height =255
                    ColumnWidth =2760
                    TabIndex =9
                    Name ="AutoNr"
                    ControlSource ="AutoNr"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            Left =419
                            Top =3471
                            Width =1515
                            Height =255
                            Name ="AutoNr_Label"
                            Caption ="Automašīnas Nr"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =1133
                    Top =113
                    Width =1035
                    Height =255
                    ColumnWidth =1035
                    TabIndex =13
                    Name ="PersID"
                    ControlSource ="PersID"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1313
                    Top =510
                    Width =2760
                    Height =255
                    ColumnWidth =2760
                    Name ="Vards"
                    ControlSource ="Vards"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =353
                            Top =510
                            Width =900
                            Height =255
                            Name ="Vards_Label"
                            Caption ="Vārds*"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1313
                    Top =852
                    Width =2760
                    Height =255
                    ColumnWidth =2760
                    TabIndex =1
                    Name ="Uzvards"
                    ControlSource ="Uzvards"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =353
                            Top =852
                            Width =900
                            Height =255
                            Name ="Uzvards_Label"
                            Caption ="Uzvārds*"
                        End
                    End
                End
                Begin ComboBox
                    OverlapFlags =85
                    ColumnCount =3
                    ListWidth =2268
                    Left =1771
                    Top =1700
                    Width =2280
                    ColumnWidth =1035
                    TabIndex =3
                    Name ="KartesTips"
                    ControlSource ="KartesTips"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT dbo_crl_Veidi.Crl_ID, dbo_crl_Veidi.Tips, dbo_crl_Veidi.Cena, dbo_crl_Vei"
                        "di.Termins FROM dbo_crl_Veidi WHERE (((dbo_crl_Veidi.kl_Tips_ID)=[forms]![KA_Cau"
                        "rlaides_Reg]![KlTips_ID]) AND ((dbo_crl_Veidi.Nelieto) Is Null Or (dbo_crl_Veidi"
                        ".Nelieto)<>-1));"
                    ColumnWidths ="0;1701;567"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="Null"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =76
                            Top =1700
                            Width =1635
                            Height =255
                            Name ="KartesTips_Label"
                            Caption ="Caurlaides veids*"
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    Left =1313
                    Top =1194
                    Width =2760
                    ColumnWidth =2760
                    TabIndex =2
                    Name ="KlTips_ID"
                    ControlSource ="KlTips_ID"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT dbo_crl_KlientuTipi.kl_ID, dbo_crl_KlientuTipi.kl_Nosaukums FROM dbo_crl_"
                        "KlientuTipi ORDER BY dbo_crl_KlientuTipi.kl_ID;"
                    ColumnWidths ="0;2552"
                    AfterUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =135
                            Top =1194
                            Width =1118
                            Height =255
                            Name ="KlTips_Label"
                            Caption ="Klienta tips*"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3173
                    Top =3798
                    Width =1155
                    Height =570
                    TabIndex =10
                    Name ="Saglabat"
                    Caption ="Saglabāt"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4422
                    Top =3798
                    Width =576
                    Height =576
                    TabIndex =11
                    Name ="Aizvert"
                    Caption ="Command25"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadad0dadadadadaadad00adadadadaddad030dadadadada ,
                        0xad0330adadadadad0033300000000adaa03330ff0dadadadd03300ff0adad4da ,
                        0xa03330ff0dad44add03330ff0ad44444a03330ff0d444444d03330ff0ad44444 ,
                        0xa0330fff0dad44add030ffff0adad4daa00fffff0dadadadd00000000adadada ,
                        0xadadadadadadadad000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Aizvērt formu"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =2267
                    Top =113
                    Width =285
                    Height =255
                    TabIndex =14
                    Name ="IrStud"
                End
                Begin Label
                    OverlapFlags =85
                    Top =3911
                    Width =2381
                    Height =227
                    Name ="Label27"
                    Caption ="* obligāti aizpildāmie lauki"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =3458
                    Top =113
                    Width =345
                    Height =255
                    TabIndex =15
                    Name ="OpenFrom"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =3911
                    Top =113
                    Width =345
                    Height =255
                    TabIndex =16
                    Name ="crl_Karte_ID_prev"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =4308
                    Top =113
                    Width =345
                    Height =255
                    TabIndex =17
                    Name ="Stat"
                    ControlSource ="Stat"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =4705
                    Top =113
                    Width =345
                    Height =255
                    TabIndex =18
                    Name ="Comment"
                    ControlSource ="Comment"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3139
                    Top =3118
                    Width =340
                    TabIndex =19
                    Name ="CrlNr"
                    Caption ="..."
                    StatusBarText ="Skatīt izmantojamos karšu Nr diapazonus"
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =2607
                    Top =113
                    Width =570
                    Height =255
                    TabIndex =20
                    Name ="KID"
                    ControlSource ="Kase"
                End
            End
        End
        Begin FormFooter
            Height =0
            BackColor =-2147483633
            Name ="FormFooter"
        End
    End
End
CodeBehindForm
' See "KA_Caurlaides_Reg.cls"
