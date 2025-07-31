Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    TabularCharSet =186
    TabularFamily =124
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =11841
    DatasheetFontHeight =10
    ItemSuffix =55
    Left =45
    Top =60
    Right =11880
    Bottom =6285
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x28f579941223e340
    End
    Caption ="Kase"
    OnOpen ="[Event Procedure]"
    OnClose ="[Event Procedure]"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            BackStyle =0
            TextFontCharSet =186
            FontName ="Tahoma"
        End
        Begin Line
            BorderLineStyle =0
            Width =1701
        End
        Begin CommandButton
            TextFontCharSet =186
            Width =1701
            Height =283
            FontSize =8
            FontWeight =400
            ForeColor =-2147483630
            FontName ="Tahoma"
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
        Begin TextBox
            FELineBreak = NotDefault
            SpecialEffect =2
            OldBorderStyle =0
            TextFontCharSet =186
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontName ="Tahoma"
        End
        Begin ListBox
            SpecialEffect =2
            TextFontCharSet =186
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            FontName ="Tahoma"
        End
        Begin Subform
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin Section
            CanGrow = NotDefault
            Height =6242
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin Line
                    BorderWidth =2
                    OverlapFlags =93
                    Left =7815
                    Top =60
                    Width =0
                    Height =1474
                    Name ="Line26"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =1350
                    Top =975
                    Width =957
                    Height =559
                    Name ="Command465"
                    Caption ="Maksāt"
                    OnClick ="[Event Procedure]"
                    FontName ="MS Sans Serif"
                End
                Begin TextBox
                    OverlapFlags =223
                    TextFontFamily =49
                    Left =5674
                    Top =150
                    Width =3837
                    Height =283
                    TabIndex =1
                    Name ="fd_VU"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Courier New"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4474
                            Top =157
                            Width =1140
                            Height =240
                            Name ="Label2"
                            Caption ="Vārds Uzvārds"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =223
                    TextFontFamily =49
                    Left =5674
                    Top =474
                    Width =3837
                    Height =283
                    TabIndex =2
                    Name ="fd_PK"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Courier New"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4472
                            Top =474
                            Width =1140
                            Height =240
                            Name ="Label4"
                            Caption ="Līg.nr., PK"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =223
                    TextFontFamily =49
                    Left =5674
                    Top =791
                    Width =3837
                    Height =283
                    TabIndex =3
                    Name ="fd_Adrese"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Courier New"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4470
                            Top =791
                            Width =1140
                            Height =240
                            Name ="Label6"
                            Caption ="Adrese"
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =87
                    Left =5359
                    Top =1959
                    Width =6420
                    Height =4260
                    TabIndex =4
                    Name ="KA_sub_cdata"
                    SourceObject ="Form.KA_sub_cdata"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =5359
                            Top =1719
                            Width =1110
                            Height =240
                            Name ="KA_sub_cdata Label"
                            Caption ="Čeks:"
                            EventProcPrefix ="KA_sub_cdata_Label"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    FELineBreak = NotDefault
                    SpecialEffect =0
                    OverlapFlags =85
                    Left =8220
                    Top =1642
                    Width =397
                    Height =219
                    TabIndex =6
                    BackColor =12632256
                    Name ="PID"
                    FontName ="MS Sans Serif"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2427
                    Top =975
                    Width =957
                    Height =559
                    TabIndex =7
                    Name ="JaunsCeks"
                    Caption ="Attīrīt"
                    OnClick ="[Event Procedure]"
                    FontName ="MS Sans Serif"
                End
                Begin ListBox
                    OverlapFlags =85
                    ColumnCount =8
                    Left =60
                    Top =1984
                    Width =5268
                    Height =4258
                    TabIndex =5
                    Name ="lb_MVeids"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT dbo_KA_Nodalas.Nodala_ID, dbo_KA_Nodalas.Vajag_LNR, dbo_KA_Nodalas.Vajag_"
                        "PersData, dbo_KA_Nodalas.Vajag_Adrese, dbo_KA_Nodalas.Nodala_txt, dbo_KA_Nodalas"
                        ".MV_ID, dbo_KA_Nodalas.MV_txt, dbo_KA_Nodalas.Cena, dbo_KA_Nodalas.PLU_txt FROM "
                        "dbo_KA_Nodalas WHERE (((dbo_KA_Nodalas.Kase_ID)=[forms]![KA]![KaseID]) AND ((dbo"
                        "_KA_Nodalas.Stat) Is Null)) ORDER BY dbo_KA_Nodalas.Skirot, dbo_KA_Nodalas.Nod_M"
                        "V_ID;"
                    ColumnWidths ="341;0;0;0;1134;491;2268;0"
                    OnDblClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =60
                            Top =1700
                            Width =1710
                            Height =240
                            Name ="Label13"
                            Caption ="Norādiet veidu:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =223
                    TextFontFamily =49
                    Left =5674
                    Top =1125
                    Width =3837
                    Height =283
                    TabIndex =8
                    Name ="fd_Adrese2"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Courier New"
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =87
                    Left =9510
                    Top =150
                    Width =1281
                    Height =284
                    FontWeight =700
                    ForeColor =16711680
                    Name ="fd_VU_bt"
                    Caption ="teksts pārāk garš!"
                    FontName ="Arial Narrow"
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =87
                    Left =9510
                    Top =474
                    Width =1281
                    Height =284
                    FontWeight =700
                    ForeColor =16711680
                    Name ="fd_PK_bt"
                    Caption ="teksts pārāk garš!"
                    FontName ="Arial Narrow"
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =95
                    Left =9510
                    Top =791
                    Width =1281
                    Height =284
                    FontWeight =700
                    ForeColor =16711680
                    Name ="fd_Adrese_bt"
                    Caption ="teksts pārāk garš!"
                    FontName ="Arial Narrow"
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =87
                    Left =9510
                    Top =1087
                    Width =1281
                    Height =284
                    FontWeight =700
                    ForeColor =16711680
                    Name ="fd_Adrese2_bt"
                    Caption ="teksts pārāk garš!"
                    FontName ="Arial Narrow"
                End
                Begin Label
                    OverlapFlags =85
                    Left =120
                    Top =15
                    Width =2031
                    Height =299
                    FontSize =12
                    Name ="Kase_txt"
                    Caption ="Kase: JTM"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =6519
                    Top =1642
                    Width =242
                    Height =224
                    TabIndex =9
                    Name ="KaseID"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =7878
                    Top =1642
                    Width =302
                    Height =209
                    TabIndex =10
                    Name ="StrGarums"
                End
                Begin Label
                    OverlapFlags =85
                    Left =4474
                    Top =1125
                    Width =1140
                    Height =240
                    Name ="Label25"
                    Caption ="Adrese"
                End
                Begin OptionGroup
                    OverlapFlags =85
                    Left =3435
                    Top =165
                    Width =977
                    Height =628
                    TabIndex =11
                    Name ="fd_Valuta"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="2"
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =215
                            Left =3555
                            Top =45
                            Width =705
                            Height =240
                            BackColor =-2147483633
                            Name ="Label28"
                            Caption ="Saņemti:"
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =3615
                            Top =463
                            OptionValue =2
                            Name ="Option30"
                            Begin
                                Begin Label
                                    OverlapFlags =215
                                    Left =3849
                                    Top =435
                                    Width =375
                                    Height =240
                                    Name ="Label31"
                                    Caption ="EUR"
                                End
                            End
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =6855
                    Top =1635
                    Width =167
                    Height =224
                    TabIndex =12
                    Name ="KaseID_txt"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =87
                    TextAlign =1
                    Left =858
                    Top =373
                    Width =1353
                    Height =397
                    FontSize =14
                    FontWeight =700
                    TabIndex =13
                    Name ="SkNauda"
                    Format ="Standard"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =270
                            Top =417
                            Width =570
                            Height =240
                            Name ="Label39"
                            Caption ="Nauda:"
                        End
                    End
                End
                Begin OptionGroup
                    OverlapFlags =85
                    Left =60
                    Top =895
                    Width =1187
                    Height =680
                    TabIndex =14
                    Name ="NaudasVeids"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="1"
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =215
                            Left =64
                            Top =780
                            Width =570
                            Height =240
                            BackColor =-2147483633
                            Name ="Label43"
                            Caption ="maksā:"
                        End
                        Begin OptionButton
                            OverlapFlags =95
                            Left =117
                            Top =1082
                            OptionValue =1
                            Name ="Option45"
                            Begin
                                Begin Label
                                    OverlapFlags =255
                                    Left =349
                                    Top =1065
                                    Width =795
                                    Height =240
                                    Name ="Label46"
                                    Caption ="sk. naudā"
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =120
                            Top =1335
                            OptionValue =2
                            Name ="Option47"
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =352
                                    Top =1305
                                    Width =585
                                    Height =240
                                    Name ="Label48"
                                    Caption ="ar karti"
                                End
                            End
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =10828
                    Top =793
                    Width =957
                    Height =559
                    TabIndex =15
                    Name ="AutoCrlSar"
                    Caption ="Auto caurlaides"
                    OnClick ="[Event Procedure]"
                    FontName ="MS Sans Serif"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =11190
                    Top =165
                    Width =576
                    Height =576
                    TabIndex =16
                    Name ="Aizvert"
                    Caption ="Command50"
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
                    ControlTipText ="Aizvērt"
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =9180
                    Top =1672
                    Width =170
                    Height =170
                    TabIndex =17
                    Name ="DrukatPDatus"
                    AfterUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =9416
                            Top =1635
                            Width =1845
                            Height =240
                            Name ="Label52"
                            Caption ="drukāt čekā PK un adresi"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =7143
                    Top =1642
                    Width =287
                    Height =224
                    TabIndex =18
                    Name ="fd_PK_h"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =7483
                    Top =1642
                    Width =287
                    Height =224
                    TabIndex =19
                    Name ="fd_PK_LNR_h"
                End
                Begin TextBox
                    Locked = NotDefault
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =2265
                    Top =373
                    Width =1098
                    Height =397
                    FontSize =14
                    FontWeight =700
                    TabIndex =20
                    Name ="SkNaudaAtlikums"
                    Format ="Standard"
                    FontName ="MS Sans Serif"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =2325
                            Top =90
                            Width =1065
                            Height =225
                            Name ="Label41"
                            Caption ="Atlikums EUR:"
                        End
                    End
                End
                Begin CheckBox
                    SpecialEffect =0
                    OverlapFlags =85
                    Left =4592
                    Top =1451
                    Width =227
                    Height =170
                    TabIndex =21
                    BorderColor =13553360
                    Name ="DrukatPircejaDatus"
                    DefaultValue ="False"
                    Begin
                        Begin Label
                            OverlapFlags =87
                            Left =4824
                            Top =1417
                            Width =1530
                            Height =240
                            Name ="Label53"
                            Caption ="Drukāt pircēja datus"
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "KA.cls"
