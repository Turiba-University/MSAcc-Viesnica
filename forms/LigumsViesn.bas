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
    Width =18031
    ItemSuffix =212
    Left =1275
    Top =195
    Right =19065
    Bottom =10680
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
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
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
            ForeColor =-2147483630
            FontName ="Tahoma"
        End
        Begin OptionButton
            AddColon = NotDefault
            SpecialEffect =2
            LabelAlign =3
            BorderLineStyle =0
            Width =187
            Height =187
            LabelX =-236
        End
        Begin CheckBox
            AddColon = NotDefault
            SpecialEffect =2
            LabelAlign =3
            BorderLineStyle =0
            Width =187
            Height =187
            LabelX =-236
        End
        Begin OptionGroup
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin TextBox
            SpecialEffect =2
            LabelAlign =3
            TextFontFamily =0
            BorderLineStyle =0
            Width =1701
            Height =255
            LabelX =-236
        End
        Begin ListBox
            SpecialEffect =2
            LabelAlign =3
            TextFontFamily =0
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-236
        End
        Begin ComboBox
            SpecialEffect =2
            LabelAlign =3
            TextFontFamily =0
            BorderLineStyle =0
            Width =1701
            Height =255
            LabelX =-236
        End
        Begin Subform
            BorderLineStyle =0
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
            Height =370
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
                    Left =4455
                    Width =1029
                    Height =333
                    ColumnOrder =1
                    Name ="Ieraksts"
                    Caption ="Ierakstīt"
                    FontName ="Arial"
                    OnClick ="[Event Procedure]"
                End
                Begin ToggleButton
                    Enabled = NotDefault
                    OverlapFlags =255
                    TextFontFamily =34
                    Left =5476
                    Width =810
                    Height =330
                    ColumnOrder =2
                    TabIndex =1
                    Name ="Jauns"
                    Caption ="Jauns"
                    FontName ="Arial"
                    OnClick ="[Event Procedure]"
                End
                Begin ToggleButton
                    OverlapFlags =247
                    Left =6270
                    Width =966
                    Height =336
                    ColumnOrder =3
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
                    Left =7515
                    Top =45
                    Width =1360
                    ColumnOrder =4
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
                    Visible = NotDefault
                    RowSourceTypeInt =1
                    SpecialEffect =0
                    OverlapFlags =85
                    TextFontFamily =34
                    ListWidth =1690
                    Left =14137
                    Top =18
                    Width =1810
                    ColumnOrder =5
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
                    Left =960
                    Width =1134
                    Height =333
                    ColumnOrder =6
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
                    Left =3435
                    Width =1029
                    Height =333
                    ColumnOrder =7
                    TabIndex =6
                    Name ="Labot"
                    Caption ="Labot"
                    FontName ="Arial"
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =12764
                    Top =62
                    Width =1131
                    ColumnOrder =8
                    TabIndex =7
                    BackColor =12632256
                    Name ="Datums_Lidz"
                    Format ="Short Date"
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =85
                            Left =11685
                            Top =60
                            Width =1020
                            Height =240
                            Name ="Label140"
                            Caption ="līgums līdz:"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =8922
                    Top =18
                    Width =1315
                    Height =325
                    FontSize =10
                    FontWeight =700
                    TabIndex =8
                    ForeColor =0
                    Name ="PrintLV"
                    Caption ="Drukāt LV"
                    OnClick ="[Event Procedure]"
                    FontName ="System"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =10282
                    Width =1315
                    Height =325
                    FontSize =10
                    FontWeight =700
                    TabIndex =9
                    ForeColor =0
                    Name ="Command186"
                    Caption ="Drukāt ENG"
                    OnClick ="[Event Procedure]"
                    FontName ="System"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =16065
                    Top =45
                    Width =805
                    Height =325
                    FontSize =10
                    FontWeight =700
                    TabIndex =10
                    ForeColor =0
                    Name ="PritVPLV"
                    Caption ="VP LV"
                    OnClick ="[Event Procedure]"
                    FontName ="System"
                End
                Begin ToggleButton
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =2130
                    Width =984
                    Height =333
                    ColumnOrder =0
                    TabIndex =11
                    Name ="RezPers"
                    Caption ="Rez.pers."
                    FontName ="Arial"
                    OnClick ="[Event Procedure]"
                End
            End
        End
        Begin Section
            CanGrow = NotDefault
            Height =10125
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
                    Width =1140
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
                            Left =2147
                            Top =37
                            Width =900
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
                    Top =675
                    Width =1935
                    TabIndex =1
                    BackColor =12632256
                    Name ="UZVARDS"
                    AfterUpdate ="[Event Procedure]"
                    OnExit ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =676
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
                    Left =943
                    Top =975
                    Width =1935
                    TabIndex =2
                    BackColor =12632256
                    Name ="PK"
                    BeforeUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =390
                            Top =977
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
                    Top =2220
                    Width =1935
                    TabIndex =3
                    BackColor =12632256
                    Name ="Pase"
                    BeforeUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =125
                            Top =2220
                            Width =715
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
                    Left =3898
                    Top =1950
                    Width =1830
                    TabIndex =5
                    BackColor =12632256
                    Name ="PILSETA"
                    BeforeUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =3015
                            Top =1950
                            Width =825
                            Height =240
                            Name ="Text37"
                            Caption ="Pilsēta:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    Left =1140
                    Top =2640
                    Width =6225
                    Height =270
                    TabIndex =11
                    BackColor =12632256
                    Name ="PIEZIMES"
                    BeforeUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =2661
                            Width =1039
                            Height =240
                            Name ="Text49"
                            Caption ="Piezīmes:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =3898
                    Top =2235
                    Width =1836
                    TabIndex =6
                    BackColor =12632256
                    Name ="Iela"
                    BeforeUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =3270
                            Top =2235
                            Width =570
                            Height =240
                            Name ="Text64"
                            Caption ="Iela:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    Left =3898
                    Top =1395
                    Width =1836
                    TabIndex =4
                    BackColor =12632256
                    Name ="Novads"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =2910
                            Top =1395
                            Width =930
                            Height =240
                            Name ="Text66"
                            Caption ="Novads:"
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =87
                    Left =2280
                    Top =3495
                    Width =15751
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
                            Top =3255
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
                    Top =2940
                    Width =8639
                    Name ="Line102"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =12131
                    Top =2323
                    Width =246
                    TabIndex =13
                    Name ="PERS_ID"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =119
                    Left =6759
                    Top =1930
                    Width =1125
                    Height =645
                    TabIndex =10
                    BackColor =12632256
                    Name ="PilnvarotaPersona"
                    Begin
                        Begin Label
                            OverlapFlags =255
                            TextFontCharSet =186
                            TextAlign =1
                            Left =5790
                            Top =1926
                            Width =960
                            Height =750
                            Name ="Label112"
                            Caption ="JP līg. pilnv. persona:"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =11791
                    Top =2342
                    Width =246
                    TabIndex =14
                    Name ="LIGUM_ID"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =12925
                    Top =2248
                    Width =246
                    TabIndex =15
                    Name ="CKods"
                End
                Begin Label
                    OverlapFlags =93
                    TextFontCharSet =186
                    TextAlign =1
                    TextFontFamily =34
                    Left =9405
                    Top =690
                    Width =2805
                    Height =510
                    FontSize =10
                    FontWeight =400
                    BackColor =255
                    Name ="PersStat"
                    Caption ="Nav students"
                    FontName ="Tahoma"
                End
                Begin Label
                    BackStyle =0
                    OverlapFlags =223
                    TextFontCharSet =186
                    TextAlign =1
                    TextFontFamily =34
                    Left =9405
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
                    Left =9405
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
                    Left =9405
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
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextAlign =1
                    TextFontFamily =34
                    Left =9405
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
                    Left =10318
                    Width =1899
                    Height =491
                    TabIndex =16
                    BackColor =12632256
                    Name ="StSar"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT dbo_stop.CKods, Sum(IIf(([Aizl_ID]=1 or [Aizl_ID]=3 or [Aizl_ID]=9),1,0))"
                        " AS Viesn, Sum(IIf([Aizl_ID]=2,1,0)) AS Info, Sum(IIf([Aizl_ID]=2,0,1)) AS Stop "
                        " FROM dbo_stop WHERE (((dbo_stop.CKods) = 92034)) GROUP BY dbo_stop.CKods;"
                    ColumnWidths ="0;567;567;567"
                    OnMouseDown ="[Event Procedure]"
                End
                Begin Label
                    BackStyle =0
                    OverlapFlags =93
                    TextFontCharSet =186
                    TextAlign =1
                    Left =9420
                    Width =900
                    Height =435
                    FontWeight =400
                    BackColor =16777215
                    Name ="Label76"
                    Caption ="STOP saraksts:"
                End
                Begin ComboBox
                    Locked = NotDefault
                    OverlapFlags =93
                    Left =5585
                    Top =37
                    Width =1455
                    TabIndex =7
                    BackColor =12632256
                    Name ="POSITION"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT dbo_viesn_kl_LBData.POSITION FROM dbo_viesn_kl_LBData WHERE ((Not (dbo_vi"
                        "esn_kl_LBData.POSITION) Is Null)) OR (((dbo_viesn_kl_LBData.ID)=8)) ORDER BY dbo"
                        "_viesn_kl_LBData.POSITION;"
                    BeforeUpdate ="[Event Procedure]"
                    AfterUpdate ="[Event Procedure]"
                    OnDblClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =2
                            Left =4528
                            Top =37
                            Width =990
                            Height =240
                            Name ="Text47"
                            Caption ="Stāvoklis:"
                        End
                    End
                End
                Begin CheckBox
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =9411
                    Top =2305
                    Width =226
                    Height =208
                    TabIndex =17
                    Name ="Labosana"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =95
                    TextFontCharSet =186
                    Left =2955
                    Top =625
                    Width =1251
                    TabIndex =18
                    BackColor =12632256
                    Name ="Valsts"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextFontCharSet =186
                            Left =2955
                            Top =360
                            Width =1575
                            Height =255
                            Name ="Label120"
                            Caption ="Mītnes valsts:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =6749
                    Top =1598
                    Width =1131
                    TabIndex =19
                    BackColor =12632256
                    Name ="Datums_Out"
                    Format ="Short Date"
                    AfterUpdate ="[Event Procedure]"
                    OnEnter ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =5790
                            Top =1596
                            Width =900
                            Height =240
                            Name ="Label122"
                            Caption ="Izvācas:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =6749
                    Top =1298
                    Width =1131
                    TabIndex =20
                    BackColor =12632256
                    Name ="Datums_In"
                    Format ="Short Date"
                    AfterUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =5790
                            Top =1296
                            Width =900
                            Height =240
                            Name ="Label124"
                            Caption ="Ievācas:"
                        End
                    End
                End
                Begin CommandButton
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =95
                    Left =4195
                    Top =642
                    Width =310
                    Height =265
                    TabIndex =21
                    Name ="Valstis"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                End
                Begin Subform
                    OverlapFlags =87
                    Top =3510
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
                            Top =3270
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
                    OverlapFlags =87
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =6254
                    Top =2955
                    Width =1080
                    FontWeight =700
                    TabIndex =23
                    BackColor =12632256
                    Name ="LSumKopa"
                    ControlSource ="=[Forms]![LigumsViesn]![MAKSAJUMIbeta]!LSumKopa"
                    Format ="Standard"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =3705
                            Top =2962
                            Width =2490
                            Height =240
                            Name ="Label129"
                            Caption ="Summa līgumam kopā:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =87
                    Left =3898
                    Top =1665
                    Width =1836
                    TabIndex =24
                    BackColor =12632256
                    Name ="Pagasts"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =2910
                            Top =1665
                            Width =930
                            Height =240
                            Name ="Label136"
                            Caption ="Pagasts:"
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =87
                    Top =6150
                    Width =2235
                    Height =1410
                    TabIndex =25
                    Name ="LigumsViesnIstValstis_sub"
                    SourceObject ="Form.LigumsViesnIstValstis_sub"
                    LinkChildFields ="LIGUMS"
                    LinkMasterFields ="LIGUMS"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =0
                            Top =5910
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
                    Left =14596
                    Width =246
                    TabIndex =26
                    Name ="OpenFrom"
                    DefaultValue ="0"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =255
                    Left =14823
                    Width =246
                    TabIndex =27
                    Name ="c_Nod_ID"
                    DefaultValue ="0"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =255
                    Left =15049
                    Width =246
                    TabIndex =28
                    Name ="c_NodNos"
                    DefaultValue ="0"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =247
                    Left =15276
                    Width =246
                    TabIndex =29
                    Name ="c_MV_ID"
                    DefaultValue ="0"
                End
                Begin Subform
                    OverlapFlags =247
                    Left =12555
                    Top =277
                    Width =4110
                    Height =1950
                    TabIndex =30
                    Name ="Child145"
                    SourceObject ="Form.VL_Komentari_sub"
                    LinkChildFields ="PERS_ID"
                    LinkMasterFields ="PERS_ID"
                    Begin
                        Begin Label
                            OverlapFlags =255
                            TextAlign =0
                            Left =12555
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
                    OverlapFlags =215
                    Left =2295
                    Top =2985
                    Width =1476
                    Height =210
                    TabIndex =31
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
                    Left =8115
                    Top =1215
                    Width =1215
                    Height =645
                    FontWeight =400
                    Name ="PicNotFound"
                    Caption ="Fotogrāfijas fails nav atrasts"
                    FontName ="Tahoma"
                End
                Begin CheckBox
                    OverlapFlags =93
                    Left =8112
                    Top =2345
                    Width =255
                    Height =240
                    TabIndex =32
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
                            Left =8338
                            Top =2345
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
                    PictureType =1
                    Left =8085
                    Top =645
                    Width =1276
                    Name ="Bilde"
                End
                Begin Subform
                    OverlapFlags =87
                    Top =7830
                    Width =5325
                    Height =1590
                    TabIndex =33
                    Name ="LigumsViesnIstabinas_InvIst_sub"
                    SourceObject ="Form.LigumsViesnIstabinas_InvIst_sub"
                    LinkChildFields ="ligums"
                    LinkMasterFields ="ligums"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =0
                            Top =7590
                            Width =2895
                            Height =240
                            Name ="LigumsViesnIstabinas_InvIst_sub Label"
                            Caption ="Inventārs istabā:"
                            EventProcPrefix ="LigumsViesnIstabinas_InvIst_sub_Label"
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =87
                    Left =5400
                    Top =7830
                    Width =6390
                    Height =2295
                    TabIndex =34
                    Name ="LigumsViesnIstabinas_InvSanem_sub"
                    SourceObject ="Form.LigumsViesnIstabinas_InvSanem_sub"
                    LinkChildFields ="ligums"
                    LinkMasterFields ="ligums"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =0
                            Left =5400
                            Top =7590
                            Width =3255
                            Height =240
                            Name ="LigumsViesnIstabinas_InvSanem_sub Label"
                            Caption ="Inventārs ko saņem:"
                            EventProcPrefix ="LigumsViesnIstabinas_InvSanem_sub_Label"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =11840
                    Top =7617
                    Width =1021
                    Height =378
                    TabIndex =35
                    Name ="ZAAkts"
                    Caption ="Veidot aktu"
                    OnClick ="[Event Procedure]"
                End
                Begin Subform
                    OverlapFlags =87
                    Left =11840
                    Top =8273
                    Width =4305
                    Height =1800
                    TabIndex =36
                    Name ="LigumsViesnIstabinas_MZAkti_sub"
                    SourceObject ="Form.LigumsViesnIstabinas_MZAkti_sub"
                    LinkChildFields ="LigNr"
                    LinkMasterFields ="ligums"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =0
                            Left =11840
                            Top =8033
                            Width =3015
                            Height =240
                            Name ="LigumsViesnIstabinas_MZAkti_sub Label"
                            Caption ="Mat. zaudējumu akti"
                            EventProcPrefix ="LigumsViesnIstabinas_MZAkti_sub_Label"
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextAlign =0
                    TextFontFamily =34
                    Left =12910
                    Top =7665
                    Width =3450
                    Height =270
                    FontWeight =400
                    Name ="Depozits"
                    Caption ="Depozīts: 0.00 EUR; atlikums 0.00 EUR"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =15921
                    Top =7995
                    Width =246
                    TabIndex =37
                    Name ="Depozits_sum"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =12240
                    Top =30
                    Width =272
                    Height =276
                    TabIndex =38
                    Name ="STOP_in"
                    Caption ="+"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =12240
                    Top =315
                    Width =272
                    Height =276
                    TabIndex =39
                    Name ="STOP_out"
                    Caption ="-"
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =943
                    Top =1260
                    Width =1935
                    TabIndex =40
                    BackColor =12632256
                    Name ="DzDat"
                    Format ="Short Date"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontCharSet =186
                            Left =-15
                            Top =1260
                            Width =855
                            Height =255
                            Name ="Label161"
                            Caption ="Dz.dat.:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =943
                    Top =1560
                    Width =1935
                    TabIndex =41
                    BackColor =12632256
                    Name ="Epasts"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontCharSet =186
                            Left =-15
                            Top =1560
                            Width =930
                            Height =255
                            Name ="Label163"
                            Caption ="E-pasts:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =943
                    Top =1860
                    Width =1935
                    TabIndex =42
                    BackColor =12632256
                    Name ="TelNr"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontCharSet =186
                            Left =-15
                            Top =1860
                            Width =855
                            Height =255
                            Name ="Label165"
                            Caption ="Tel.Nr.:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =255
                    TextFontCharSet =186
                    Left =3898
                    Top =1155
                    Width =1836
                    TabIndex =43
                    BackColor =12632256
                    Name ="D_Valsts"
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextFontCharSet =186
                            Left =2910
                            Top =1155
                            Width =930
                            Height =255
                            Name ="Label167"
                            Caption ="Valsts:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =95
                    TextFontCharSet =186
                    Left =4620
                    Top =623
                    Width =1281
                    TabIndex =44
                    BackColor =12632256
                    Name ="Pilsoniba"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextFontCharSet =186
                            TextAlign =1
                            Left =4627
                            Top =360
                            Width =1590
                            Height =255
                            Name ="Label169"
                            Caption ="Pilsonība:"
                        End
                    End
                End
                Begin CommandButton
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =95
                    Left =5895
                    Top =630
                    Width =310
                    Height =265
                    TabIndex =45
                    Name ="Command170"
                    Caption ="..."
                End
                Begin Label
                    BackStyle =0
                    OverlapFlags =247
                    TextFontCharSet =186
                    TextAlign =1
                    TextFontFamily =34
                    Left =2955
                    Top =885
                    Width =2715
                    Height =255
                    FontSize =10
                    FontWeight =400
                    BackColor =16777215
                    Name ="Label171"
                    Caption ="Deklarētā dzīvesvieta:"
                    FontName ="Arial"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    TextFontCharSet =186
                    Left =11337
                    Top =2342
                    Width =246
                    TabIndex =46
                    Name ="Dok_Veids"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    TextFontCharSet =186
                    Left =9977
                    Top =2267
                    Width =246
                    TabIndex =47
                    Name ="Dok_Valsts"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =10544
                    Top =2286
                    Width =246
                    TabIndex =48
                    Name ="Dok_Datums"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =87
                    TextFontCharSet =186
                    Left =9637
                    Top =2267
                    Width =246
                    TabIndex =49
                    Name ="Dok_Termins"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    TextFontCharSet =186
                    Left =10884
                    Top =2380
                    Width =246
                    TabIndex =50
                    Name ="Dok_Veids_Eng"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =247
                    TextFontCharSet =186
                    Left =10203
                    Top =2267
                    Width =246
                    TabIndex =51
                    Name ="Position_ENG"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9840
                    Top =2595
                    Width =310
                    Height =265
                    TabIndex =52
                    Name ="Maksatajs"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =247
                    TextFontCharSet =186
                    Left =10206
                    Top =2607
                    Width =4761
                    TabIndex =53
                    BackColor =12632256
                    Name ="Maksatajs_txt"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontCharSet =186
                            Left =7530
                            Top =2595
                            Width =2235
                            Height =255
                            Name ="Label181"
                            Caption ="Maksātājs (jur.pers.):"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =12585
                    Top =2286
                    Width =246
                    TabIndex =54
                    Name ="Maksatajs_PID"
                End
                Begin ComboBox
                    Locked = NotDefault
                    OverlapFlags =87
                    ColumnCount =7
                    ListRows =4
                    Left =10091
                    Top =2940
                    Width =675
                    Height =246
                    TabIndex =55
                    Name ="IstVSk"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT dbo_viesn_kl_LBData.ID, dbo_viesn_kl_LBData.MCena_Stud, dbo_viesn_kl_LBDa"
                        "ta.MCena_Viesis, dbo_viesn_kl_LBData.MCena_Citi, dbo_viesn_kl_LBData.MCenaComf_S"
                        "tud, dbo_viesn_kl_LBData.MCenaComf_Viesis, dbo_viesn_kl_LBData.MCenaComf_Citi FR"
                        "OM dbo_viesn_kl_LBData WHERE (((dbo_viesn_kl_LBData.ID)<5));"
                    ColumnWidths ="567;0;0;0;0;0;0"
                    AfterUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =8850
                            Top =2940
                            Width =1245
                            Height =240
                            Name ="Label188"
                            Caption ="Vietu sk. ist.:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    DecimalPlaces =2
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =14264
                    Top =2940
                    Width =1080
                    FontWeight =700
                    TabIndex =56
                    BackColor =12632256
                    Name ="IstMCena"
                    Format ="Standard"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =12240
                            Top =2947
                            Width =1965
                            Height =240
                            Name ="Label190"
                            Caption ="Cena EUR mēnesī:"
                        End
                    End
                End
                Begin CheckBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =10890
                    Top =2970
                    Width =255
                    Height =240
                    TabIndex =57
                    Name ="IstComf"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="0"
                    Begin
                        Begin Label
                            BackStyle =0
                            OverlapFlags =247
                            TextFontCharSet =186
                            TextAlign =0
                            TextFontFamily =34
                            Left =11116
                            Top =2970
                            Width =825
                            Height =240
                            FontWeight =400
                            BackColor =16777215
                            Name ="Label192"
                            Caption ="komforta"
                            FontName ="Tahoma"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =6786
                    Top =968
                    Width =1140
                    TabIndex =58
                    BackColor =12632256
                    Name ="PersCertTerm"
                    Format ="Short Date"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontCharSet =186
                            Left =6165
                            Top =964
                            Width =555
                            Height =255
                            Name ="Label194"
                            Caption ="term:"
                        End
                    End
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    Locked = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    TextFontCharSet =186
                    ColumnCount =2
                    ListWidth =2268
                    Left =6773
                    Top =604
                    Width =1140
                    TabIndex =59
                    BackColor =12632256
                    Name ="PersCert"
                    RowSourceType ="Value List"
                    RowSource ="11;\"vīiza\";12;\"TUA\";0;\"nav\""
                    ColumnWidths ="0;2268"
                    AfterUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextFontCharSet =186
                            TextAlign =2
                            Left =6122
                            Top =604
                            Width =615
                            Height =255
                            Name ="Label196"
                            Caption ="TUA:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =87
                    TextFontCharSet =186
                    Left =7029
                    Top =37
                    Width =2271
                    TabIndex =60
                    BackColor =12632256
                    Name ="Position_Comment"
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    Visible = NotDefault
                    Locked = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =215
                    TextFontCharSet =186
                    ColumnCount =2
                    ListWidth =2268
                    Left =14203
                    Top =2324
                    Width =810
                    TabIndex =61
                    BackColor =12632256
                    Name ="TNVeids--"
                    RowSourceType ="Value List"
                    RowSource ="1;\"tūrists\";2;\"darbs, studijas\""
                    ColumnWidths ="0;2268"
                    AfterUpdate ="[Event Procedure]"
                    EventProcPrefix ="TNVeids__"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextFontCharSet =186
                            TextAlign =2
                            Left =13492
                            Top =2324
                            Width =735
                            Height =255
                            Name ="Label197"
                            Caption ="Veids:"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    OverlapFlags =87
                    TextFontCharSet =186
                    TextAlign =3
                    Left =15472
                    Top =2326
                    Width =330
                    TabIndex =62
                    BackColor =12632256
                    Name ="TNKopa--"
                    AfterUpdate ="[Event Procedure]"
                    EventProcPrefix ="TNKopa__"
                    ControlTipText ="Kopējais viesu skaits līgumā"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextFontCharSet =186
                            TextFontFamily =34
                            Left =15052
                            Top =2324
                            Width =420
                            Height =255
                            FontWeight =400
                            Name ="Label201"
                            Caption ="viesi:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    OverlapFlags =87
                    TextFontCharSet =186
                    TextAlign =3
                    Left =16430
                    Top =2332
                    Width =330
                    TabIndex =63
                    BackColor =12632256
                    Name ="TNNepiemero--"
                    AfterUpdate ="[Event Procedure]"
                    EventProcPrefix ="TNNepiemero__"
                    ControlTipText ="Viesu skaits, kuriem nepiemēro tūrisma nodevu"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextFontCharSet =186
                            TextFontFamily =34
                            Left =15865
                            Top =2324
                            Width =567
                            Height =255
                            FontWeight =400
                            Name ="Label203"
                            Caption ="TN nav:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =215
                    TextFontCharSet =186
                    Left =13379
                    Top =2305
                    Width =246
                    TabIndex =64
                    Name ="TNLabots"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =215
                    TextFontCharSet =186
                    Left =13719
                    Top =2305
                    Width =246
                    TabIndex =65
                    Name ="TNAttiecas"
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextAlign =0
                    TextFontFamily =34
                    Left =3570
                    Top =3240
                    Width =13896
                    Height =210
                    FontWeight =400
                    BackColor =15195103
                    Name ="TN_info"
                    Caption ="NB! Tūrisma nodeva. Maksājumu tabulā jānorāda \"<18\" ailē - nepilngadīgie, \"DS"
                        "\" - darba vai studiju dēl ceļojošie, \"sk\" - cik viesiem piemēro TN."
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =16554
                    Top =18
                    Width =567
                    TabIndex =66
                    Name ="MG"
                    ControlSource ="=2024"
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =93
                            Left =15874
                            Top =56
                            Width =570
                            Height =240
                            Name ="Label208"
                            Caption ="MG:"
                        End
                    End
                End
                Begin CheckBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =8421
                    Top =2970
                    Width =255
                    Height =240
                    TabIndex =67
                    Name ="TNGrupa"
                    DefaultValue ="0"
                    ControlTipText ="Jāatzīmē, ja dzīvo vairāki cilvēki ar dažādiem ievākšanās/izvākšanās datumiem. T"
                        "ūrisma nodeva tiks rēķināta bez 10 dienu limita."
                    Begin
                        Begin Label
                            BackStyle =0
                            OverlapFlags =85
                            TextFontCharSet =186
                            TextAlign =0
                            TextFontFamily =34
                            Left =7740
                            Top =2970
                            Width =570
                            Height =240
                            BackColor =16777215
                            Name ="Label211"
                            Caption ="Grupa"
                            FontName ="Tahoma"
                        End
                    End
                End
            End
        End
        Begin FormFooter
            Visible = NotDefault
            CanGrow = NotDefault
            Height =2399
            BackColor =12632256
            Name ="FormFooter2"
            Begin
                Begin Subform
                    OverlapFlags =215
                    Left =4762
                    Top =338
                    Width =8670
                    Height =1815
                    Name ="LigumsViesnIstabinas_PASar_Samaksa_sub"
                    SourceObject ="Form.LigumsViesnIstabinas_PASar_Samaksa_sub"
                    LinkChildFields ="Ligums"
                    LinkMasterFields ="Ligums"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =0
                            Left =4762
                            Top =113
                            Width =2400
                            Height =240
                            Name ="Label133"
                            Caption ="Papildaprīkojuma apmaksa:"
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =87
                    Top =353
                    Width =4680
                    Height =1800
                    TabIndex =1
                    Name ="LigumsViesnIstabinas_PASar_sub"
                    SourceObject ="Form.LigumsViesnIstabinas_PASar_sub"
                    LinkChildFields ="Ligums"
                    LinkMasterFields ="Ligums"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            TextAlign =0
                            Top =113
                            Width =2205
                            Height =240
                            Name ="Label131"
                            Caption ="Papildaprīkojums:"
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "LigumsViesn.cls"
