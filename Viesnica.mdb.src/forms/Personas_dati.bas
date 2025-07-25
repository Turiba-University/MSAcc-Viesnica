Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    FilterOn = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    RecordLocks =2
    TabularCharSet =186
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =8910
    DatasheetFontHeight =10
    ItemSuffix =126
    Left =-105
    Top =3045
    Right =8805
    Bottom =9375
    DatasheetGridlinesColor =12632256
    Filter ="Personas_ID = 92666"
    RecSrcDt = Begin
        0x27e78afd5bafe240
    End
    RecordSource ="dbo_Personas"
    Caption ="Personas datu ievadīšana"
    OnOpen ="[Event Procedure]"
    OnClose ="[Event Procedure]"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            BackStyle =0
            TextFontCharSet =186
            TextFontFamily =0
            BackColor =-2147483633
            ForeColor =-2147483630
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            Width =850
            Height =850
        End
        Begin Line
            SpecialEffect =3
            Width =1701
        End
        Begin Image
            BackStyle =0
            OldBorderStyle =0
            PictureAlignment =2
            Width =1701
            Height =1701
        End
        Begin CommandButton
            TextFontCharSet =186
            TextFontFamily =0
            Width =1701
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
        End
        Begin OptionButton
            SpecialEffect =2
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =2
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            SpecialEffect =3
            Width =1701
            Height =1701
        End
        Begin BoundObjectFrame
            SpecialEffect =2
            OldBorderStyle =0
            BackStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            FELineBreak = NotDefault
            SpecialEffect =2
            TextFontCharSet =186
            TextFontFamily =0
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ListBox
            SpecialEffect =2
            TextFontCharSet =186
            TextFontFamily =0
            Width =1701
            Height =1417
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ComboBox
            SpecialEffect =2
            TextFontCharSet =186
            TextFontFamily =0
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin Subform
            SpecialEffect =2
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
            TextFontFamily =0
            Width =283
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
        End
        Begin Tab
            TextFontCharSet =186
            TextFontFamily =0
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
            Height =6348
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =2310
                    Top =3603
                    Width =615
                    Height =255
                    ColumnWidth =1701
                    Name ="Personas ID"
                    ControlSource ="Personas_ID"
                    EventProcPrefix ="Personas_ID"
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =3375
                    Top =285
                    Width =1365
                    Height =255
                    ColumnWidth =1560
                    TabIndex =3
                    Name ="Pers"
                    ControlSource ="Pers_Kods"
                    AfterUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =3390
                            Top =15
                            Width =1473
                            Height =255
                            Name ="Personas Kods_Label"
                            Caption ="Personas kods"
                            EventProcPrefix ="Personas_Kods_Label"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =45
                    Top =285
                    Width =1365
                    Height =255
                    ColumnWidth =2310
                    TabIndex =1
                    Name ="Vard"
                    ControlSource ="Vards"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =75
                            Top =15
                            Width =1218
                            Height =255
                            Name ="Vārds_Label"
                            Caption ="Vārds*"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =1770
                    Top =285
                    Width =1365
                    Height =255
                    ColumnWidth =2310
                    TabIndex =2
                    Name ="Uzva"
                    ControlSource ="Uzvards"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =1770
                            Top =15
                            Width =1218
                            Height =255
                            Name ="Uzvārds_Label"
                            Caption ="Uzvārds*"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =880
                    Top =1293
                    Width =1200
                    Height =255
                    ColumnWidth =1260
                    TabIndex =10
                    Name ="Pases Nr"
                    ControlSource ="Dok_Nr"
                    EventProcPrefix ="Pases_Nr"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =1293
                            Width =798
                            Height =255
                            Name ="Pases Nr_Label"
                            Caption ="Pases Nr"
                            EventProcPrefix ="Pases_Nr_Label"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =880
                    Top =2553
                    Width =2640
                    Height =255
                    ColumnWidth =2310
                    TabIndex =19
                    Name ="Tel1"
                    ControlSource ="Tel1"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =2553
                            Width =783
                            Height =255
                            Name ="Tel1_Label"
                            Caption ="Tālrunis"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =95
                    Left =6651
                    Top =270
                    Width =885
                    Height =255
                    ColumnWidth =2310
                    TabIndex =6
                    Name ="Pozi"
                    ControlSource ="Pozicija"
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =93
                            Left =6651
                            Width =873
                            Height =255
                            Name ="Dažādi_Label"
                            Caption ="Pozīcija*"
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =15
                    Top =3603
                    Width =2190
                    Height =270
                    Name ="Label52"
                    Caption ="Deklarētā dzīvesvieta"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =4593
                    Top =3963
                    Width =2700
                    Height =255
                    TabIndex =23
                    Name ="Dz_Rajons"
                    ControlSource ="F_Rajons"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =4593
                    Top =4305
                    Width =2700
                    Height =255
                    TabIndex =24
                    Name ="Dz_Pilseta"
                    ControlSource ="F_Pilseta"
                End
                Begin TextBox
                    Visible = NotDefault
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    Left =4578
                    Top =4653
                    Width =2700
                    Height =450
                    TabIndex =25
                    Name ="Dz_Iela"
                    ControlSource ="F_Iela"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =4578
                    Top =5166
                    Width =750
                    Height =255
                    TabIndex =26
                    Name ="Dz_Indekss"
                    ControlSource ="F_Indekss"
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =4575
                    Top =3603
                    Width =2280
                    Height =270
                    Name ="Dz_lbl"
                    Caption ="Faktiskā dzīvesvieta**"
                End
                Begin CheckBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =4410
                    Top =3303
                    Width =165
                    Height =225
                    TabIndex =22
                    Name ="PierAddr_to_DzvAddr"
                    DefaultValue ="0"
                    OnClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =93
                            Left =4635
                            Top =3273
                            Width =2505
                            Height =240
                            Name ="Label63"
                            Caption ="tāda pati, kā deklarētā dzīvesvieta"
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =87
                    Left =6030
                    Top =285
                    Width =585
                    ColumnWidth =390
                    TabIndex =5
                    Name ="Dzim"
                    ControlSource ="Dzimums"
                    RowSourceType ="Value List"
                    RowSource ="s;v"
                    Begin
                        Begin Label
                            OverlapFlags =223
                            Left =6060
                            Top =15
                            Width =798
                            Height =255
                            Name ="Dzimums_Label"
                            Caption ="Dzimums"
                        End
                    End
                End
                Begin Label
                    Visible = NotDefault
                    BackStyle =1
                    OverlapFlags =93
                    TextAlign =1
                    TextFontFamily =34
                    Left =5955
                    Top =2403
                    Width =1215
                    Height =645
                    BackColor =12632256
                    ForeColor =0
                    Name ="PicNotFound"
                    Caption ="Fotogrāfijas fails nav atrasts"
                    FontName ="Tahoma"
                End
                Begin CheckBox
                    TabStop = NotDefault
                    OverlapFlags =93
                    Left =5370
                    Top =2733
                    Width =255
                    TabIndex =27
                    Name ="ShowPicture"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="0"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =5175
                            Top =2223
                            Width =420
                            Height =480
                            BackColor =16777215
                            ForeColor =0
                            Name ="Label7"
                            Caption ="Rādīt bildi"
                            FontName ="Tahoma"
                        End
                    End
                End
                Begin Image
                    Visible = NotDefault
                    SizeMode =3
                    Left =5610
                    Top =1863
                    Width =1816
                    Height =2046
                    Name ="Bilde"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =8100
                    Top =105
                    Width =741
                    Height =576
                    TabIndex =28
                    Name ="Command64"
                    Caption ="Command64"
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
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Saglabāt izmaiņas un aizvērt"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7995
                    Top =1170
                    Width =906
                    Height =576
                    TabIndex =29
                    Name ="Slegt_Ligumu"
                    Caption ="Turpināt"
                    OnClick ="[Event Procedure]"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Saglabāt izmaiņas un turpināt"
                End
                Begin CheckBox
                    Enabled = NotDefault
                    OverlapFlags =87
                    Left =7426
                    Top =2522
                    Width =225
                    Height =195
                    TabIndex =30
                    Name ="Jaun"
                    DefaultValue ="0"
                    Begin
                        Begin Label
                            OverlapFlags =87
                            Left =7651
                            Top =2492
                            Width =765
                            Height =405
                            Name ="Label67"
                            Caption ="Jauna persona"
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =60
                    Top =6123
                    Width =1860
                    Height =225
                    Name ="Label68"
                    Caption ="* obligāti aizpildāmie lauki"
                End
                Begin CheckBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =7635
                    Top =3712
                    Width =165
                    Height =180
                    TabIndex =31
                    Name ="OpenFromViesnLig"
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =85
                            Left =7860
                            Top =3682
                            Width =1050
                            Height =240
                            Name ="Label71"
                            Caption ="OpenFromViesnLig"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =4365
                    Top =6025
                    Width =840
                    Height =255
                    TabIndex =32
                    Name ="aud_date"
                    ControlSource ="Aud_Date"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =3458
                    Top =5723
                    Width =840
                    Height =255
                    TabIndex =33
                    Name ="aud_user"
                    ControlSource ="Aud_User"
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =3970
                    Top =1585
                    Width =1005
                    Height =255
                    TabIndex =13
                    Name ="DokDerTermins"
                    ControlSource ="DokDerTerm"
                    Format ="Short Date"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =3118
                            Top =1592
                            Width =840
                            Height =255
                            Name ="Label91"
                            Caption ="derīga līdz"
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =5010
                    Top =1608
                    Width =171
                    Height =170
                    TabIndex =14
                    Name ="DokDerBezterm"
                    AfterUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =5246
                            Top =1578
                            Width =1110
                            Height =240
                            Name ="Label93"
                            Caption ="beztermiņa"
                        End
                    End
                End
                Begin CheckBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =5725
                    Top =5828
                    Width =165
                    Height =180
                    TabIndex =34
                    Name ="OpenFromJL"
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =93
                            Left =5950
                            Top =5798
                            Width =1065
                            Height =240
                            Name ="Label97"
                            Caption ="Open from JL"
                        End
                    End
                End
                Begin CheckBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =7635
                    Top =3967
                    Width =165
                    Height =180
                    TabIndex =35
                    Name ="OpenFromPersMekl"
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =85
                            Left =7860
                            Top =3937
                            Width =990
                            Height =405
                            Name ="Label100"
                            Caption ="Open from PersMekl"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =880
                    Top =2881
                    Width =3150
                    Height =255
                    TabIndex =20
                    Name ="Epasts"
                    ControlSource ="Epasts"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =2881
                            Width =783
                            Height =255
                            Name ="Label102"
                            Caption ="E-pasts"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =880
                    Top =1593
                    Width =2220
                    Height =255
                    TabIndex =12
                    Name ="Dok_Izdots_Vieta"
                    ControlSource ="Dok_Izdots_Vieta"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =1593
                            Width =783
                            Height =255
                            Name ="Label104"
                            Caption ="Izd. vieta"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =215
                    Left =880
                    Top =1921
                    Width =4140
                    Height =255
                    TabIndex =15
                    Name ="Dok_Izdots_Iestade"
                    ControlSource ="Dok_Izdots_Iestade"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Top =1923
                            Width =900
                            Height =255
                            Name ="Label106"
                            Caption ="Izd.iestāde"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =3064
                    Top =1301
                    Width =1036
                    Height =255
                    TabIndex =11
                    Name ="Dok_Izdots_Datums"
                    ControlSource ="Dok_Izdots_Datums"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =2154
                            Top =1301
                            Width =870
                            Height =255
                            Name ="Label108"
                            Caption ="Izd.datums"
                        End
                    End
                End
                Begin CheckBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =5725
                    Top =6098
                    Width =165
                    Height =180
                    TabIndex =36
                    Name ="OpenFromOldAT"
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =93
                            Left =5950
                            Top =6068
                            Width =1350
                            Height =255
                            Name ="Label111"
                            Caption ="Open from old AT"
                        End
                    End
                End
                Begin CheckBox
                    Visible = NotDefault
                    OverlapFlags =215
                    Left =6292
                    Top =5658
                    Width =165
                    Height =180
                    TabIndex =37
                    Name ="OpenFromMGRParsl"
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =215
                            Left =6517
                            Top =5628
                            Width =1230
                            Height =240
                            Name ="Label113"
                            Caption ="Open from MGR"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =4365
                    Top =5742
                    Width =840
                    Height =255
                    TabIndex =38
                    Name ="Aud_Comment"
                    ControlSource ="Aud_Comment"
                End
                Begin CheckBox
                    Visible = NotDefault
                    OverlapFlags =215
                    Left =6292
                    Top =5928
                    Width =165
                    Height =180
                    TabIndex =39
                    Name ="OpenFromISICData"
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =215
                            Left =6517
                            Top =5898
                            Width =1380
                            Height =270
                            Name ="Label118"
                            Caption ="Open from ISIC data"
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =1255
                    Top =623
                    Width =1905
                    Height =255
                    TabIndex =21
                    BackColor =16777088
                    Name ="Valsts"
                    ControlSource ="Valsts"
                    DefaultValue ="\"Latvija\""
                    ControlTipText ="Mītnes valsts"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =623
                            Width =1215
                            Height =255
                            Name ="Label122"
                            Caption ="Mītnes valsts*"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =880
                    Top =2238
                    Width =2010
                    TabIndex =16
                    BackColor =16777088
                    Name ="Pilsoniba"
                    ControlSource ="Pilsoniba"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =2238
                            Width =798
                            Height =255
                            Name ="Label95"
                            Caption ="Pilsonība"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =3398
                    Top =2208
                    Width =315
                    Height =270
                    TabIndex =18
                    Name ="ValstsIzvelePils"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =2948
                    Top =2268
                    Width =170
                    Height =170
                    TabIndex =17
                    Name ="LV_Pilsoniba"
                    OnClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =215
                            Left =3148
                            Top =2238
                            Width =270
                            Height =240
                            Name ="Label127"
                            Caption ="LV"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =3713
                    Top =639
                    Width =315
                    Height =270
                    TabIndex =8
                    Name ="ValstsIzvele"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =3263
                    Top =684
                    Width =170
                    Height =170
                    TabIndex =7
                    Name ="LV_Valsts"
                    OnClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =215
                            Left =3463
                            Top =654
                            Width =270
                            Height =240
                            Name ="Label129"
                            Caption ="LV"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =933
                    Top =4233
                    Width =2295
                    Height =255
                    TabIndex =40
                    Name ="P_Novads"
                    ControlSource ="D_Novads"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =30
                            Top =4233
                            Width =843
                            Height =255
                            Name ="Rajons_Label"
                            Caption ="Novads"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1098
                    Top =4833
                    Width =2130
                    Height =255
                    TabIndex =41
                    Name ="P_Pilseta"
                    ControlSource ="D_Pilseta"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =30
                            Top =4833
                            Width =1005
                            Height =255
                            Name ="Pilsēta_Label"
                            Caption ="Pilsēta (ciems)"
                            FontName ="Arial Narrow"
                        End
                    End
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    Left =933
                    Top =5181
                    Width =2700
                    Height =450
                    TabIndex =42
                    Name ="P_Iela"
                    ControlSource ="D_Iela"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =15
                            Top =5181
                            Width =843
                            Height =255
                            Name ="Iela_Label"
                            Caption ="Iela, māja"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =933
                    Top =5694
                    Width =930
                    Height =255
                    TabIndex =43
                    Name ="P_Indekss"
                    ControlSource ="D_Indekss"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =15
                            Top =5694
                            Width =843
                            Height =255
                            Name ="Indekss_Label"
                            Caption ="Indekss"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =933
                    Top =3933
                    Width =2310
                    Height =255
                    TabIndex =44
                    Name ="P_Valsts"
                    ControlSource ="D_Valsts"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =30
                            Top =3933
                            Width =843
                            Height =255
                            Name ="Label131"
                            Caption ="Valsts"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =933
                    Top =4533
                    Width =2295
                    Height =255
                    TabIndex =45
                    Name ="P_Pagasts"
                    ControlSource ="D_Pagasts"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =30
                            Top =4533
                            Width =843
                            Height =255
                            Name ="Label133"
                            Caption ="Pagasts"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =3735
                    Top =3933
                    Width =315
                    Height =270
                    TabIndex =46
                    Name ="ValstsIzvele_Dekl"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =3285
                    Top =3978
                    Width =170
                    Height =170
                    TabIndex =47
                    Name ="LV_D_Valsts"
                    OnClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =87
                            Left =3485
                            Top =3948
                            Width =255
                            Height =240
                            Name ="Label136"
                            Caption ="LV"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3270
                    Top =4248
                    Width =315
                    Height =270
                    TabIndex =48
                    Name ="Adr_Novads"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3270
                    Top =4548
                    Width =315
                    Height =270
                    TabIndex =49
                    Name ="Adr_Pagasts"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3270
                    Top =4833
                    Width =315
                    Height =270
                    TabIndex =50
                    Name ="Adr_Pilseta"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                End
                Begin CheckBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =7635
                    Top =4383
                    Width =165
                    Height =180
                    TabIndex =51
                    Name ="OpenFromRezervJauns"
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =85
                            Left =7860
                            Top =4353
                            Width =990
                            Height =405
                            Name ="Label125"
                            Caption ="Open from RezervJauns"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =4875
                    Top =270
                    Width =1020
                    Height =255
                    TabIndex =4
                    Name ="DzDatums"
                    ControlSource ="DzDatums"
                    Format ="Short Date"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =4875
                            Width =1020
                            Height =255
                            Name ="Label148"
                            Caption ="Dz.datums*"
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =85
                    ColumnCount =2
                    ListRows =3
                    Left =1474
                    Top =990
                    Width =1650
                    TabIndex =9
                    Name ="PAplVeids"
                    ControlSource ="DokVeids"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT dbo_kl_Kodi.Kods, dbo_kl_Kodi.Koda_Atsifr FROM dbo_kl_Kodi WHERE (((dbo_k"
                        "l_Kodi.Tips)=21));"
                    ColumnWidths ="0;2268"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =990
                            Width =1440
                            Height =255
                            Name ="Label146"
                            Caption ="Pers.apl.dok.veids*"
                        End
                    End
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
' See "Personas_dati.cls"
