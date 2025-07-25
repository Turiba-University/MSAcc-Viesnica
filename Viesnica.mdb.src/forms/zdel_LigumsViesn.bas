Version =19
VersionRequired =19
Begin Form
    AllowFilters = NotDefault
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    AllowAdditions = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    GridX =5
    GridY =30
    Width =15421
    ItemSuffix =149
    Left =4530
    Top =1245
    Right =19950
    Bottom =9960
    RecSrcDt = Begin
        0xc2253c707063e340
    End
    Caption ="JTM līgums"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            TextAlign =3
            TextFontFamily =0
            FontWeight =700
            BackColor =12632256
        End
        Begin Rectangle
            SpecialEffect =2
            Width =850
            Height =850
        End
        Begin Line
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
            Width =1701
            Height =283
            FontSize =8
            FontWeight =400
            ForeColor =-2147483630
            FontName ="Tahoma"
        End
        Begin OptionButton
            AddColon = NotDefault
            SpecialEffect =2
            LabelAlign =3
            Width =187
            Height =187
            LabelX =-236
        End
        Begin CheckBox
            AddColon = NotDefault
            SpecialEffect =2
            LabelAlign =3
            Width =187
            Height =187
            LabelX =-236
        End
        Begin OptionGroup
            Width =1701
            Height =1701
        End
        Begin TextBox
            SpecialEffect =2
            LabelAlign =3
            TextFontFamily =0
            Width =1701
            Height =255
            LabelX =-236
        End
        Begin ListBox
            SpecialEffect =2
            LabelAlign =3
            TextFontFamily =0
            Width =1701
            Height =1417
            LabelX =-236
        End
        Begin ComboBox
            SpecialEffect =2
            LabelAlign =3
            TextFontFamily =0
            Width =1701
            Height =255
            LabelX =-236
        End
        Begin Subform
            Width =1701
            Height =1701
        End
        Begin PageBreak
            Width =283
        End
        Begin ToggleButton
            TextFontCharSet =186
            TextFontFamily =2
            Width =283
            Height =283
        End
        Begin FormHeader
            Height =336
            BackColor =12632256
            Name ="FormHeader1"
            Begin
                Begin Label
                    BackStyle =0
                    OverlapFlags =85
                    TextAlign =1
                    TextFontFamily =34
                    Left =15
                    Width =930
                    Height =330
                    FontSize =12
                    ForeColor =16777215
                    Name ="Text13"
                    Caption ="Līgums"
                    FontName ="Arial"
                End
                Begin ToggleButton
                    Enabled = NotDefault
                    OverlapFlags =93
                    TextFontCharSet =0
                    TextFontFamily =34
                    Left =3600
                    Width =1029
                    Height =333
                    Name ="Ieraksts"
                    Caption ="Ierakstīt"
                    FontName ="Arial"
                    OnClick ="[Event Procedure]"
                End
                Begin ToggleButton
                    Enabled = NotDefault
                    OverlapFlags =255
                    TextFontFamily =34
                    Left =4621
                    Width =810
                    Height =330
                    TabIndex =1
                    Name ="Jauns"
                    Caption ="Jauns"
                    FontName ="Arial"
                    OnClick ="[Event Procedure]"
                End
                Begin ToggleButton
                    OverlapFlags =247
                    Left =5415
                    Width =966
                    Height =336
                    TabIndex =2
                    Name ="Beigas"
                    Caption ="Aizvērt"
                    OnClick ="[Event Procedure]"
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    SpecialEffect =0
                    OverlapFlags =85
                    TextFontFamily =34
                    ListWidth =1690
                    Left =7029
                    Top =39
                    Width =1360
                    FontSize =9
                    FontWeight =600
                    TabIndex =3
                    BackColor =12632256
                    Name ="Caurlaide"
                    RowSourceType ="Value List"
                    RowSource ="\"Jauna\";\"Skatīt\""
                    ColumnWidths ="1440"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="\"Caurlaides\""
                    FontName ="Arial"
                    OnClick ="[Event Procedure]"
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    SpecialEffect =0
                    OverlapFlags =85
                    TextFontFamily =34
                    ListWidth =1690
                    Left =8504
                    Top =37
                    Width =1810
                    FontSize =9
                    FontWeight =600
                    TabIndex =4
                    BackColor =12632256
                    Name ="Ligum_rep"
                    RowSourceType ="Value List"
                    RowSource ="\"Viesa\";\"Viesa_eng\";\"Studenta\";\"Studenta_eng\""
                    ColumnWidths ="1440"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="\"Līgums\""
                    FontName ="Arial"
                End
                Begin ToggleButton
                    OverlapFlags =85
                    TextFontCharSet =0
                    TextFontFamily =34
                    Left =1050
                    Width =1134
                    Height =333
                    TabIndex =5
                    Name ="cmdRez"
                    Caption ="Rezervisti"
                    FontName ="Arial"
                    OnClick ="[Event Procedure]"
                End
                Begin ToggleButton
                    OverlapFlags =247
                    TextFontCharSet =0
                    TextFontFamily =34
                    Left =2580
                    Width =1029
                    Height =333
                    TabIndex =6
                    Name ="Labot"
                    Caption ="Labot"
                    FontName ="Arial"
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =11579
                    Top =62
                    Width =1131
                    TabIndex =7
                    Name ="Datums_Lidz"
                    Format ="Short Date"
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =85
                            Left =10500
                            Top =60
                            Width =1020
                            Height =240
                            Name ="Label140"
                            Caption ="līgums līdz:"
                        End
                    End
                End
            End
        End
        Begin Section
            CanGrow = NotDefault
            Height =8400
            BackColor =12632256
            Name ="Detail0"
            Begin
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextAlign =3
                    TextFontFamily =34
                    Left =904
                    Top =37
                    Width =1275
                    TabIndex =8
                    BackColor =12632256
                    Name ="LIGUMS"
                    OnEnter ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =37
                            Width =806
                            Height =240
                            Name ="Text19"
                            Caption ="Līgums:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =3145
                    Top =37
                    Width =1275
                    TabIndex =9
                    BackColor =12632256
                    Name ="LIG_DAT"
                    Format ="Short Date"
                    OnEnter ="[Event Procedure]"
                    OnExit ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =2267
                            Top =37
                            Width =780
                            Height =240
                            Name ="Text21"
                            Caption ="Datums:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =941
                    Top =375
                    Width =1935
                    BackColor =12632256
                    Name ="VARDS"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =162
                            Top =376
                            Width =678
                            Height =240
                            Name ="Text27"
                            Caption ="Vārds:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =941
                    Top =715
                    Width =1935
                    TabIndex =1
                    BackColor =12632256
                    Name ="UZVARDS"
                    AfterUpdate ="[Event Procedure]"
                    OnExit ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =716
                            Width =840
                            Height =240
                            Name ="Text29"
                            Caption ="Uzvārds:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =941
                    Top =1055
                    Width =1935
                    TabIndex =2
                    BackColor =12632256
                    Name ="PK"
                    BeforeUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =388
                            Top =1057
                            Width =452
                            Height =240
                            Name ="Text31"
                            Caption ="PK:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =941
                    Top =1395
                    Width =1935
                    TabIndex =3
                    BackColor =12632256
                    Name ="Pase"
                    BeforeUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =275
                            Top =1395
                            Width =565
                            Height =240
                            Name ="Text33"
                            Caption ="Pase:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =3853
                    Top =1140
                    Width =1935
                    TabIndex =5
                    BackColor =12632256
                    Name ="PILSETA"
                    BeforeUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =3075
                            Top =1140
                            Width =720
                            Height =240
                            Name ="Text37"
                            Caption ="Pilsēta:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =1140
                    Top =1710
                    Width =6225
                    Height =270
                    TabIndex =11
                    BackColor =12632256
                    Name ="PIEZIMES"
                    BeforeUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =120
                            Top =1731
                            Width =919
                            Height =240
                            Name ="Text49"
                            Caption ="Piezīmes:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =3853
                    Top =1425
                    Width =1941
                    TabIndex =6
                    BackColor =12632256
                    Name ="Iela"
                    BeforeUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =3330
                            Top =1425
                            Width =465
                            Height =240
                            Name ="Text64"
                            Caption ="Iela:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    Left =3853
                    Top =585
                    Width =1941
                    TabIndex =4
                    BackColor =12632256
                    Name ="Novads"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =3000
                            Top =585
                            Width =795
                            Height =240
                            Name ="Text66"
                            Caption ="Novads:"
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =87
                    Left =2280
                    Top =2265
                    Width =13141
                    Height =4087
                    TabIndex =12
                    Name ="MAKSAJUMIbeta"
                    SourceObject ="Form.LigumsViesnMaksajumi_sub"
                    LinkChildFields ="LIGUMS"
                    LinkMasterFields ="LIGUMS"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =0
                            Left =2280
                            Top =2025
                            Width =1245
                            Height =240
                            Name ="Text100"
                            Caption ="Maksājumi:"
                        End
                    End
                End
                Begin Line
                    BorderWidth =1
                    OverlapFlags =93
                    Top =2010
                    Width =8639
                    Name ="Line102"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =7365
                    Top =30
                    Width =246
                    TabIndex =13
                    Name ="PERS_ID"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =87
                    Left =6759
                    Top =1009
                    Width =1125
                    Height =645
                    TabIndex =10
                    BackColor =12632256
                    Name ="PilnvarotaPersona"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextFontCharSet =186
                            TextAlign =1
                            TextFontFamily =34
                            Left =5835
                            Top =1005
                            Width =915
                            Height =615
                            Name ="Label112"
                            Caption ="JP līg. pilnvarotā persona:"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =7635
                    Top =30
                    Width =246
                    TabIndex =14
                    Name ="LIGUM_ID"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =9184
                    Top =2003
                    Width =246
                    TabIndex =15
                    Name ="CKods"
                End
                Begin Label
                    OverlapFlags =93
                    TextFontCharSet =186
                    TextAlign =1
                    TextFontFamily =34
                    Left =9570
                    Top =690
                    Width =2805
                    Height =510
                    FontSize =10
                    FontWeight =400
                    BackColor =16776960
                    Name ="PersStat"
                    Caption ="studē, UV, Rīga"
                    FontName ="Tahoma"
                End
                Begin Label
                    BackStyle =0
                    OverlapFlags =223
                    TextFontCharSet =186
                    TextAlign =1
                    TextFontFamily =34
                    Left =9570
                    Top =465
                    Width =1355
                    Height =238
                    FontSize =10
                    FontWeight =400
                    BackColor =16777215
                    Name ="Label91"
                    Caption ="Students:"
                    FontName ="Arial"
                End
                Begin Label
                    OverlapFlags =93
                    TextFontCharSet =186
                    TextAlign =1
                    TextFontFamily =34
                    Left =9570
                    Top =1440
                    Width =2805
                    Height =510
                    FontSize =10
                    FontWeight =400
                    BackColor =255
                    Name ="DarbinStat"
                    Caption ="Nav darba attiecības ar BAT"
                    FontName ="Tahoma"
                End
                Begin Label
                    BackStyle =0
                    OverlapFlags =215
                    TextFontCharSet =186
                    TextAlign =1
                    TextFontFamily =34
                    Left =9570
                    Top =1215
                    Width =1365
                    Height =255
                    FontSize =10
                    FontWeight =400
                    BackColor =16777215
                    Name ="Label93"
                    Caption ="Darbinieks:"
                    FontName ="Arial"
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =93
                    TextFontCharSet =186
                    TextAlign =1
                    TextFontFamily =34
                    Left =9570
                    Top =1964
                    Width =2805
                    Height =270
                    FontSize =10
                    FontWeight =400
                    BackColor =16776960
                    Name ="DarbinStat_pmd"
                    Caption ="Līgums pamatdarbā beztermiņa"
                    FontName ="Tahoma"
                End
                Begin ListBox
                    ColumnHeads = NotDefault
                    SpecialEffect =0
                    OverlapFlags =215
                    TextFontCharSet =186
                    TextFontFamily =34
                    ColumnCount =4
                    Left =10365
                    Width =1899
                    Height =491
                    TabIndex =16
                    BackColor =12632256
                    Name ="StSar"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT dbo_stop.CKods, Sum(IIf(([Aizl_ID]=1 or [Aizl_ID]=3 or [Aizl_ID]=9),1,0))"
                        " AS Viesn, Sum(IIf([Aizl_ID]=2,1,0)) AS Info, Sum(IIf([Aizl_ID]=2,0,1)) AS Stop "
                        " FROM dbo_stop WHERE (((dbo_stop.CKods) = 73224)) GROUP BY dbo_stop.CKods;"
                    ColumnWidths ="0;567;567;567"
                    OnMouseDown ="[Event Procedure]"
                End
                Begin Label
                    BackStyle =0
                    OverlapFlags =93
                    TextFontCharSet =186
                    TextAlign =1
                    Left =9660
                    Width =705
                    Height =435
                    FontWeight =400
                    BackColor =16777215
                    Name ="Label76"
                    Caption ="STOP saraksts:"
                End
                Begin ComboBox
                    OverlapFlags =85
                    Left =5585
                    Top =37
                    Width =1455
                    TabIndex =7
                    Name ="POSITION"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT dbo_viesn_kl_LBData.POSITION FROM dbo_viesn_kl_LBData WHERE ((Not (dbo_vi"
                        "esn_kl_LBData.POSITION) Is Null)) OR (((dbo_viesn_kl_LBData.ID)=8)) ORDER BY dbo"
                        "_viesn_kl_LBData.POSITION;"
                    BeforeUpdate ="[Event Procedure]"
                    OnDblClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =2
                            Left =4648
                            Top =37
                            Width =870
                            Height =240
                            Name ="Text47"
                            Caption ="Stāvoklis:"
                        End
                    End
                End
                Begin CheckBox
                    Visible = NotDefault
                    OverlapFlags =87
                    Left =7143
                    Top =75
                    Width =226
                    Height =208
                    TabIndex =17
                    Name ="Labosana"
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =87
                    Left =3853
                    Top =315
                    Width =1596
                    TabIndex =18
                    Name ="Valsts"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =3060
                            Top =315
                            Width =735
                            Height =240
                            Name ="Label120"
                            Caption ="Valsts:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =6749
                    Top =677
                    Width =1131
                    TabIndex =19
                    Name ="Datums_Out"
                    Format ="Short Date"
                    AfterUpdate ="[Event Procedure]"
                    OnEnter ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =5880
                            Top =675
                            Width =810
                            Height =240
                            Name ="Label122"
                            Caption ="Izvācas:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =6749
                    Top =377
                    Width =1131
                    TabIndex =20
                    Name ="Datums_In"
                    Format ="Short Date"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =5865
                            Top =375
                            Width =825
                            Height =240
                            Name ="Label124"
                            Caption ="Ievācas:"
                        End
                    End
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =215
                    Left =5475
                    Top =315
                    Width =310
                    Height =265
                    TabIndex =21
                    Name ="Valstis"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                End
                Begin Subform
                    OverlapFlags =87
                    Top =2280
                    Width =2265
                    Height =2325
                    TabIndex =22
                    Name ="LigumsViesnIstabinas_sub"
                    SourceObject ="Form.LigumsViesnIstabinas_sub"
                    LinkChildFields ="Ligums"
                    LinkMasterFields ="Ligums"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =0
                            Top =2040
                            Width =2205
                            Height =240
                            Name ="LigumsViesnIstabinas_sub Label"
                            Caption ="Istabas:"
                            EventProcPrefix ="LigumsViesnIstabinas_sub_Label"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    DecimalPlaces =2
                    OverlapFlags =95
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =7529
                    Top =2010
                    Width =1080
                    FontWeight =700
                    TabIndex =23
                    BackColor =12632256
                    Name ="LSumKopa"
                    ControlSource ="=[Forms]![LigumsViesn]![MAKSAJUMIbeta]!LSumKopa"
                    Format ="Standard"
                    Begin
                        Begin Label
                            OverlapFlags =87
                            Left =5505
                            Top =2017
                            Width =1965
                            Height =240
                            Name ="Label129"
                            Caption ="Summa līgumam kopā:"
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =87
                    Top =6600
                    Width =4680
                    Height =1800
                    TabIndex =24
                    Name ="LigumsViesnIstabinas_PASar_sub"
                    SourceObject ="Form.LigumsViesnIstabinas_PASar_sub"
                    LinkChildFields ="Ligums"
                    LinkMasterFields ="Ligums"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =0
                            Top =6360
                            Width =2205
                            Height =240
                            Name ="Label131"
                            Caption ="Papildaprīkojums:"
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =215
                    Left =4710
                    Top =6585
                    Width =8670
                    Height =1815
                    TabIndex =25
                    Name ="LigumsViesnIstabinas_PASar_Samaksa_sub"
                    SourceObject ="Form.LigumsViesnIstabinas_PASar_Samaksa_sub"
                    LinkChildFields ="Ligums"
                    LinkMasterFields ="Ligums"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =0
                            Left =4710
                            Top =6360
                            Width =2400
                            Height =240
                            Name ="Label133"
                            Caption ="Papildaprīkojuma apmaksa:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =87
                    Left =3853
                    Top =855
                    Width =1941
                    TabIndex =26
                    BackColor =12632256
                    Name ="Pagasts"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =2970
                            Top =855
                            Width =825
                            Height =240
                            Name ="Label136"
                            Caption ="Pagasts:"
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =87
                    Top =4920
                    Width =2235
                    Height =1410
                    TabIndex =27
                    Name ="LigumsViesnIstValstis_sub"
                    SourceObject ="Form.LigumsViesnIstValstis_sub"
                    LinkChildFields ="LIGUMS"
                    LinkMasterFields ="LIGUMS"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =0
                            Top =4680
                            Width =915
                            Height =240
                            Name ="LigumsViesnIstValstis_sub Label"
                            Caption ="Valstis:"
                            EventProcPrefix ="LigumsViesnIstValstis_sub_Label"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =14416
                    Width =246
                    TabIndex =28
                    Name ="OpenFrom"
                    DefaultValue ="0"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =255
                    Left =14643
                    Width =246
                    TabIndex =29
                    Name ="c_Nod_ID"
                    DefaultValue ="0"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =255
                    Left =14869
                    Width =246
                    TabIndex =30
                    Name ="c_NodNos"
                    DefaultValue ="0"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =247
                    Left =15096
                    Width =246
                    TabIndex =31
                    Name ="c_MV_ID"
                    DefaultValue ="0"
                End
                Begin Subform
                    OverlapFlags =119
                    Left =12375
                    Top =277
                    Width =3030
                    Height =1950
                    TabIndex =32
                    Name ="Child145"
                    SourceObject ="Form.VL_Komentari_sub"
                    LinkChildFields ="Lig_Nr"
                    LinkMasterFields ="Ligums"
                    Begin
                        Begin Label
                            OverlapFlags =255
                            TextAlign =0
                            Left =12375
                            Top =37
                            Width =2205
                            Height =240
                            Name ="Label146"
                            Caption ="Komentāri:"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =0
                    OverlapFlags =85
                    Left =3795
                    Top =2040
                    Width =1476
                    Height =210
                    TabIndex =33
                    BackColor =33023
                    Name ="PE_Konvertets"
                    ControlSource ="=\"konvertēts no Ls*\""
                    OnDblClick ="[Event Procedure]"
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =93
                    TextFontCharSet =186
                    TextAlign =1
                    TextFontFamily =34
                    Left =8280
                    Top =570
                    Width =1215
                    Height =645
                    FontWeight =400
                    Name ="PicNotFound"
                    Caption ="Fotogrāfijas fails nav atrasts"
                    FontName ="Tahoma"
                End
                Begin CheckBox
                    OverlapFlags =93
                    Left =8277
                    Top =1700
                    Width =255
                    Height =240
                    TabIndex =34
                    Name ="ShowPicture"
                    DefaultValue ="0"
                    OnClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            BackStyle =0
                            OverlapFlags =247
                            TextFontCharSet =186
                            TextAlign =0
                            TextFontFamily =34
                            Left =8503
                            Top =1700
                            Width =825
                            Height =240
                            FontWeight =400
                            BackColor =16777215
                            Name ="Label7"
                            Caption ="Rādīt bildi"
                            FontName ="Tahoma"
                        End
                    End
                End
                Begin Image
                    Visible = NotDefault
                    SizeMode =3
                    Left =8250
                    Width =1276
                    Name ="Bilde"
                End
            End
        End
        Begin FormFooter
            CanGrow = NotDefault
            Height =0
            BackColor =12632256
            Name ="FormFooter2"
        End
    End
End
CodeBehindForm
' See "zdel_LigumsViesn.cls"
