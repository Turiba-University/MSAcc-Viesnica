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
    ItemSuffix =52
    Left =10830
    Top =180
    Right =24180
    Bottom =9420
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
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            SpecialEffect =3
            Width =1701
            Height =1701
        End
        Begin TextBox
            FELineBreak = NotDefault
            SpecialEffect =2
            OldBorderStyle =0
            TextFontCharSet =186
            Width =1701
            LabelX =-1701
            FontName ="Tahoma"
        End
        Begin ListBox
            SpecialEffect =2
            TextFontCharSet =186
            Width =1701
            Height =1417
            LabelX =-1701
            FontName ="Tahoma"
        End
        Begin Subform
            SpecialEffect =2
            Width =1701
            Height =1701
        End
        Begin Section
            CanGrow = NotDefault
            Height =6580
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin Line
                    BorderWidth =2
                    OverlapFlags =93
                    Left =8959
                    Top =60
                    Width =0
                    Height =1474
                    Name ="Line26"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =1350
                    Top =1395
                    Width =957
                    Height =559
                    Name ="Command465"
                    Caption ="Maksāt"
                    OnClick ="[Event Procedure]"
                    FontName ="MS Sans Serif"
                End
                Begin TextBox
                    OverlapFlags =215
                    TextFontFamily =49
                    Left =5674
                    Top =150
                    Width =4452
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
                    OverlapFlags =215
                    TextFontFamily =49
                    Left =5674
                    Top =474
                    Width =4452
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
                            Caption ="Personas kods"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =215
                    TextFontFamily =49
                    Left =5674
                    Top =791
                    Width =4452
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
                    Top =2297
                    Width =6420
                    Height =4260
                    TabIndex =4
                    Name ="KA_sub_cdata"
                    SourceObject ="Form.KA_sub_cdata"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =5359
                            Top =2057
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
                    Top =1980
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
                    Top =1395
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
                    ColumnCount =7
                    Left =60
                    Top =2322
                    Width =5268
                    Height =4258
                    TabIndex =5
                    Name ="lb_MVeids"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT dbo_KA_Nodalas.Nodala_ID, dbo_KA_Nodalas.Vajag_LNR, dbo_KA_Nodalas.Vajag_"
                        "PersData, dbo_KA_Nodalas.Vajag_Adrese, dbo_KA_Nodalas.Nodala_txt, dbo_KA_Nodalas"
                        ".MV_ID, dbo_KA_Nodalas.MV_txt FROM dbo_KA_Nodalas WHERE (((dbo_KA_Nodalas.Kase_I"
                        "D)=[forms]![KA]![KaseID])) ORDER BY dbo_KA_Nodalas.Skirot, dbo_KA_Nodalas.Nod_MV"
                        "_ID;"
                    ColumnWidths ="341;0;0;0;1134;489;2268"
                    OnDblClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =60
                            Top =2038
                            Width =1710
                            Height =240
                            Name ="Label13"
                            Caption ="Norādiet veidu:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =215
                    TextFontFamily =49
                    Left =5674
                    Top =1125
                    Width =4452
                    Height =283
                    TabIndex =8
                    Name ="fd_Adrese2"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Courier New"
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =10140
                    Top =150
                    Width =1701
                    Height =284
                    FontWeight =700
                    ForeColor =16711680
                    Name ="fd_VU_bt"
                    Caption ="teksts pārāk garš!"
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =10140
                    Top =474
                    Width =1701
                    Height =284
                    FontWeight =700
                    ForeColor =16711680
                    Name ="fd_PK_bt"
                    Caption ="teksts pārāk garš!"
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =10140
                    Top =791
                    Width =1701
                    Height =284
                    FontWeight =700
                    ForeColor =16711680
                    Name ="fd_Adrese_bt"
                    Caption ="teksts pārāk garš!"
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =87
                    Left =10140
                    Top =1087
                    Width =1701
                    Height =284
                    FontWeight =700
                    ForeColor =16711680
                    Name ="fd_Adrese2_bt"
                    Caption ="teksts pārāk garš!"
                End
                Begin Label
                    OverlapFlags =85
                    Left =120
                    Top =15
                    Width =2031
                    Height =299
                    FontSize =12
                    Name ="Kase_txt"
                    Caption ="Kase: SIC"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =6519
                    Top =1980
                    Width =527
                    Height =224
                    TabIndex =9
                    Name ="KaseID"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =7653
                    Top =1980
                    Width =527
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
                    Height =853
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
                            Left =3621
                            Top =403
                            OptionValue =2
                            Name ="Option30"
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =3855
                                    Top =375
                                    Width =375
                                    Height =240
                                    Name ="Label31"
                                    Caption ="EUR"
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =3621
                            Top =733
                            OptionValue =1
                            Name ="Option32"
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =3851
                                    Top =705
                                    Width =375
                                    Height =240
                                    Name ="Label33"
                                    Caption ="LVL"
                                End
                            End
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =7086
                    Top =1980
                    Width =527
                    Height =224
                    TabIndex =12
                    Name ="KaseID_txt"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =95
                    Left =858
                    Top =360
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
                Begin TextBox
                    Locked = NotDefault
                    DecimalPlaces =2
                    OverlapFlags =87
                    Left =2265
                    Top =358
                    Width =1098
                    Height =442
                    FontSize =14
                    FontWeight =700
                    TabIndex =14
                    Name ="SkNaudaAtlikums"
                    Format ="Standard"
                    FontName ="MS Sans Serif"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =2325
                            Top =120
                            Width =1065
                            Height =225
                            Name ="Label41"
                            Caption ="Atlikums EUR:"
                        End
                    End
                End
                Begin OptionGroup
                    OverlapFlags =85
                    Left =60
                    Top =1315
                    Width =1187
                    Height =680
                    TabIndex =15
                    Name ="NaudasVeids"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="1"
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =223
                            Left =64
                            Top =1200
                            Width =570
                            Height =240
                            BackColor =-2147483633
                            Name ="Label43"
                            Caption ="maksā:"
                        End
                        Begin OptionButton
                            OverlapFlags =95
                            Left =117
                            Top =1502
                            OptionValue =1
                            Name ="Option45"
                            Begin
                                Begin Label
                                    OverlapFlags =255
                                    Left =349
                                    Top =1485
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
                            Top =1755
                            OptionValue =2
                            Name ="Option47"
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =352
                                    Top =1725
                                    Width =585
                                    Height =240
                                    Name ="Label48"
                                    Caption ="ar karti"
                                End
                            End
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    DecimalPlaces =2
                    OverlapFlags =215
                    Left =963
                    Top =803
                    Width =1248
                    Height =397
                    FontSize =14
                    TabIndex =16
                    Name ="SkNaudaEUR"
                    Format ="Standard"
                    FontName ="MS Sans Serif"
                    Begin
                        Begin Label
                            OverlapFlags =223
                            Top =735
                            Width =990
                            Height =465
                            Name ="Label51"
                            Caption ="Saņemts EUR (0.702804):"
                            FontName ="Arial Narrow"
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "zdel_KA_val.cls"
