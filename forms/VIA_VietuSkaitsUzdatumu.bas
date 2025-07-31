Version =19
VersionRequired =19
Begin Form
    AutoCenter = NotDefault
    OrderByOn = NotDefault
    AllowDesignChanges = NotDefault
    TabularCharSet =186
    TabularFamily =124
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =15405
    DatasheetFontHeight =10
    ItemSuffix =103
    Left =6330
    Top =480
    Right =22020
    Bottom =10755
    DatasheetGridlinesColor =12632256
    OrderBy ="[VIA_Ist_vsk_Uzdatumu].[IstabasNr], [VIA_Ist_vsk_Uzdatumu].[Aizn] DESC, [VIA_Ist"
        "_vsk_Uzdatumu].[Brivas]"
    RecSrcDt = Begin
        0x7e49eed9ac5ae540
    End
    RecordSource ="VIA_Ist_vsk_Uzdatumu"
    Caption ="Istabu stāvoklis uz datumu"
    OnOpen ="[Event Procedure]"
    OnClose ="[Event Procedure]"
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
            Height =1594
            BackColor =-2147483633
            Name ="FormHeader"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =60
                    Top =1320
                    Width =630
                    Height =240
                    Name ="Ist_Nr_Label"
                    Caption ="Ist_Nr"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =741
                    Top =1320
                    Width =345
                    Height =255
                    Name ="Vietas_Label"
                    Caption ="Sk.:"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =3
                    Left =3739
                    Top =1320
                    Width =465
                    Height =240
                    Name ="Aizn_Label"
                    Caption ="Iev."
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =215
                    TextAlign =3
                    Left =4189
                    Top =1320
                    Width =465
                    Height =240
                    Name ="Brivas_Label"
                    Caption ="Dz."
                    Tag ="DetachedLabel"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1630
                    Top =61
                    Width =984
                    Height =283
                    ColumnOrder =0
                    Name ="Stat_Datums"
                    Format ="Short Date"
                    AfterUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =56
                            Top =56
                            Width =1545
                            Height =240
                            Name ="Label9"
                            Caption ="Stāvoklis uz datumu:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =5615
                    Top =315
                    Width =724
                    Height =284
                    ColumnOrder =1
                    TabIndex =1
                    BackColor =16777088
                    Name ="Isk_kopa"
                    ControlSource ="=Count([Ist_Nr])"
                    OnDblClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4935
                            Top =319
                            Width =630
                            Height =240
                            Name ="Label13"
                            Caption ="istabas:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =5615
                    Top =634
                    Width =724
                    Height =284
                    ColumnOrder =2
                    TabIndex =2
                    Name ="Vsk_kopa"
                    ControlSource ="=Sum([Vietas])"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4935
                            Top =638
                            Width =630
                            Height =240
                            Name ="Label15"
                            Caption ="vietas:"
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    Left =5615
                    Width =735
                    Height =240
                    Name ="Label16"
                    Caption ="Kopā:"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =6409
                    Top =315
                    Width =724
                    Height =284
                    ColumnOrder =3
                    TabIndex =3
                    BackColor =16777088
                    Name ="Isk_brivs"
                    ControlSource ="=Sum([BrIst])"
                    OnDblClick ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =6409
                    Top =634
                    Width =724
                    Height =284
                    ColumnOrder =4
                    TabIndex =4
                    Name ="Vsk_brIst"
                    ControlSource ="=Sum([BrIst_Vsk])"
                End
                Begin Label
                    OverlapFlags =85
                    Left =6405
                    Width =690
                    Height =240
                    Name ="Label21"
                    Caption ="Brīvas.:"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =7200
                    Top =315
                    Width =724
                    Height =284
                    ColumnOrder =5
                    TabIndex =5
                    BackColor =16777088
                    Name ="Isk_Dbrivs"
                    ControlSource ="=Sum([DBrIst])"
                    OnDblClick ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =7200
                    Top =634
                    Width =724
                    Height =284
                    ColumnOrder =6
                    TabIndex =6
                    Name ="Vsk_DbrIst"
                    ControlSource ="=Sum([DBrIst_Vsk])"
                End
                Begin Label
                    OverlapFlags =85
                    Left =7200
                    Width =885
                    Height =270
                    Name ="Label24"
                    Caption ="Daļēji brīvas:"
                    FontName ="Arial Narrow"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2670
                    Top =30
                    Width =720
                    Height =300
                    TabIndex =7
                    Name ="Refresh"
                    Caption ="refresh"
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =8119
                    Top =315
                    Width =724
                    Height =284
                    ColumnOrder =7
                    TabIndex =8
                    BackColor =16777088
                    Name ="Text26"
                    ControlSource ="=Sum([PIst])"
                    OnDblClick ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =8119
                    Top =634
                    Width =724
                    Height =284
                    ColumnOrder =8
                    TabIndex =9
                    Name ="Text27"
                    ControlSource ="=Sum([PIst_Vsk])"
                End
                Begin Label
                    OverlapFlags =85
                    Left =8115
                    Width =675
                    Height =240
                    Name ="Label28"
                    Caption ="Pilnas:"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =8910
                    Top =315
                    Width =724
                    Height =284
                    ColumnOrder =9
                    TabIndex =10
                    BackColor =16777088
                    Name ="Text29"
                    ControlSource ="=Sum([PpIst])"
                    OnDblClick ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =8910
                    Top =634
                    Width =724
                    Height =284
                    ColumnOrder =10
                    TabIndex =11
                    Name ="Text30"
                    ControlSource ="=Sum([PpIst_Vsk])"
                End
                Begin Label
                    OverlapFlags =85
                    Left =8910
                    Width =885
                    Height =240
                    Name ="Label31"
                    Caption ="Pārpild..:"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3407
                    Top =30
                    Width =1455
                    Height =300
                    TabIndex =12
                    Name ="Nesamaksajusie"
                    Caption ="Nesamaksājušie"
                    OnClick ="[Event Procedure]"
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =2
                    Left =1035
                    Top =1050
                    Width =1470
                    Height =240
                    Name ="Label33"
                    Caption ="Vietas"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =4669
                    Top =1320
                    Width =465
                    Height =240
                    Name ="Label34"
                    Caption ="Izv."
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =5194
                    Top =1320
                    Width =465
                    Height =240
                    Name ="Label35"
                    Caption ="Brīvas"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =3
                    Left =1161
                    Top =1320
                    Width =465
                    Height =240
                    Name ="Label40"
                    Caption ="Aizņ."
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =5675
                    Top =1320
                    Width =510
                    Height =240
                    Name ="Label42"
                    Caption ="Nakts"
                    Tag ="DetachedLabel"
                End
                Begin Line
                    OverlapFlags =95
                    Left =885
                    Top =1290
                    Width =5180
                    Height =15
                    Name ="Line44"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =6320
                    Top =1320
                    Width =465
                    Height =240
                    Name ="Label45"
                    Caption ="brīva"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =7374
                    Top =1320
                    Width =465
                    Height =240
                    Name ="Label46"
                    Caption ="pilna"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =7884
                    Top =1320
                    Width =465
                    Height =240
                    Name ="Label47"
                    Caption ="pārp."
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =2
                    Left =6425
                    Top =1050
                    Width =1485
                    Height =240
                    Name ="Label48"
                    Caption ="Istaba"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =6830
                    Top =1320
                    Width =495
                    Height =240
                    Name ="Label49"
                    Caption ="d.brīva"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Line
                    OverlapFlags =87
                    Left =6227
                    Top =1290
                    Width =2075
                    Name ="Line50"
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =2355
                    Top =390
                    Width =2520
                    Height =285
                    TabIndex =13
                    Name ="LigSar"
                    Caption ="Līgumu saraksts uz datumu"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =315
                    Top =674
                    Width =1950
                    Height =300
                    TabIndex =14
                    Name ="LigSar_all"
                    Caption ="Līgumu, istabiņu sar."
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =12435
                    Top =915
                    Width =840
                    Height =330
                    TabIndex =15
                    Name ="ParskatsPaValstim"
                    Caption ="Pa valstīm"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =12442
                    Top =1257
                    Width =840
                    Height =330
                    TabIndex =16
                    Name ="ParskatsPaTipiem"
                    Caption ="Pa tipiem"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin CommandButton
                    OverlapFlags =215
                    Left =315
                    Top =390
                    Width =1950
                    Height =300
                    TabIndex =17
                    Name ="LigSar_all_Ligumi"
                    Caption ="Līgumu saraksts"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =87
                    Left =2355
                    Top =674
                    Width =2520
                    Height =300
                    TabIndex =18
                    Name ="LigSarUzDat"
                    Caption ="Līgumu, istabiņu sar. uz dat."
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =93
                    Left =13294
                    Top =583
                    Width =984
                    Height =268
                    ColumnOrder =12
                    TabIndex =20
                    Name ="DatLidz"
                    Format ="Short Date"
                End
                Begin TextBox
                    OverlapFlags =93
                    Left =12132
                    Top =573
                    Width =984
                    Height =283
                    ColumnOrder =11
                    TabIndex =19
                    Name ="DatNo"
                    Format ="Short Date"
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =13322
                    Top =913
                    Width =1125
                    Height =330
                    TabIndex =21
                    Name ="ParskatsMaksajumi"
                    Caption ="Maksājumi"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin OptionGroup
                    OverlapFlags =255
                    Left =11910
                    Top =120
                    Width =2608
                    Height =1474
                    ColumnOrder =13
                    TabIndex =22
                    Name ="Frame65"
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =247
                            Left =12030
                            Width =690
                            Height =240
                            Name ="Label66"
                            Caption ="Pārskati"
                        End
                    End
                End
                Begin Label
                    OverlapFlags =247
                    TextAlign =3
                    Left =12139
                    Top =295
                    Width =780
                    Height =240
                    Name ="Label67"
                    Caption ="Datums no:"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =247
                    TextAlign =3
                    Left =13294
                    Top =295
                    Width =780
                    Height =225
                    Name ="Label68"
                    Caption ="līdz:"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin CommandButton
                    OverlapFlags =247
                    Left =13324
                    Top =1255
                    Width =1125
                    Height =330
                    TabIndex =23
                    Name ="ParskatsSumPaValstim"
                    Caption ="Sum pa valstīm"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9864
                    Top =56
                    Width =1650
                    Height =300
                    TabIndex =24
                    Name ="BridPazinSaraksts"
                    Caption ="Brīd./paziņojumi"
                    OnClick ="[Event Procedure]"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =8507
                    Top =1320
                    Width =465
                    Height =240
                    Name ="Label72"
                    Caption ="līg.sk."
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =9017
                    Top =1320
                    Width =465
                    Height =240
                    Name ="Label73"
                    Caption ="starp."
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =2
                    Left =8585
                    Top =1050
                    Width =855
                    Height =240
                    Name ="Label74"
                    Caption ="Līgumi"
                    Tag ="DetachedLabel"
                End
                Begin Line
                    OverlapFlags =95
                    Left =8435
                    Top =1290
                    Width =1100
                    Name ="Line75"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9864
                    Top =476
                    Width =1650
                    Height =300
                    TabIndex =25
                    Name ="kl_Istabas"
                    Caption ="Vietu sk. istabās"
                    OnClick ="[Event Procedure]"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =2151
                    Top =1320
                    Width =345
                    Height =240
                    Name ="Label79"
                    Caption ="Rez"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =10027
                    Top =1320
                    Width =285
                    Height =240
                    Name ="Label80"
                    Caption ="V"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =10402
                    Top =1320
                    Width =285
                    Height =240
                    Name ="Label81"
                    Caption ="LV"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =95
                    TextAlign =2
                    TextFontFamily =0
                    Left =9547
                    Top =1020
                    Width =1515
                    Height =255
                    Name ="Label82"
                    Caption ="Rezervācijas"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =9607
                    Top =1320
                    Width =330
                    Height =240
                    Name ="Label83"
                    Caption ="S"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Line
                    OverlapFlags =95
                    Left =9571
                    Top =1260
                    Width =1565
                    Name ="Line84"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =10762
                    Top =1320
                    Width =315
                    Height =240
                    Name ="Label85"
                    Caption ="Ārv"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =87
                    TextAlign =3
                    Left =2526
                    Top =1305
                    Width =495
                    Height =240
                    Name ="Label91"
                    Caption ="Nerez."
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =87
                    TextAlign =3
                    Left =1626
                    Top =1320
                    Width =480
                    Height =240
                    Name ="Label93"
                    Caption ="Brīvas"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin CommandButton
                    OverlapFlags =247
                    TextFontFamily =0
                    Left =11130
                    Top =1140
                    Width =975
                    Height =450
                    TabIndex =26
                    Name ="IstAiznSar"
                    Caption ="Saraksts"
                    OnClick ="[Event Procedure]"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                End
                Begin Label
                    OverlapFlags =87
                    TextAlign =2
                    Left =3420
                    Top =1305
                    Width =285
                    Height =240
                    Name ="Label99"
                    Caption ="V"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =87
                    TextAlign =2
                    Left =3045
                    Top =1305
                    Width =330
                    Height =240
                    Name ="Label100"
                    Caption ="S"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
            End
        End
        Begin Section
            Height =270
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =12132
                    Width =735
                    Height =255
                    ColumnWidth =1035
                    Name ="Ist_Nr"
                    ControlSource ="Ist_Nr"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =735
                    Width =345
                    Height =255
                    ColumnWidth =675
                    TabIndex =1
                    Name ="Vietas"
                    ControlSource ="Vietas"
                End
                Begin TextBox
                    OverlapFlags =93
                    Left =3810
                    Width =360
                    Height =255
                    ColumnWidth =2760
                    TabIndex =2
                    Name ="Iev"
                    ControlSource ="Iev"
                End
                Begin TextBox
                    OverlapFlags =95
                    Left =4185
                    Width =465
                    Height =255
                    ColumnWidth =2760
                    TabIndex =3
                    Name ="Brivas"
                    ControlSource ="Dz"
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =4665
                    Width =465
                    Height =255
                    TabIndex =4
                    Name ="Text36"
                    ControlSource ="Izv"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =5190
                    Width =465
                    Height =255
                    TabIndex =5
                    Name ="Text37"
                    ControlSource ="Brivas"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =3
                    Left =1161
                    Width =465
                    Height =255
                    TabIndex =6
                    Name ="Aizn"
                    ControlSource ="Aizn"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =5720
                    Width =465
                    Height =255
                    TabIndex =7
                    Name ="Text43"
                    ControlSource ="Nakts"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =6320
                    Width =465
                    Height =255
                    TabIndex =8
                    Name ="Text51"
                    ControlSource ="BrIst"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =7370
                    Width =465
                    Height =255
                    TabIndex =9
                    Name ="Text52"
                    ControlSource ="PIst"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =7880
                    Width =465
                    Height =255
                    TabIndex =10
                    Name ="Text53"
                    ControlSource ="PpIst"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =3
                    Left =6830
                    Width =495
                    Height =255
                    TabIndex =11
                    Name ="Text54"
                    ControlSource ="DBrIst"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =8503
                    Width =465
                    Height =255
                    TabIndex =12
                    Name ="Text76"
                    ControlSource ="IstLigSk"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =9013
                    Width =465
                    Height =255
                    TabIndex =13
                    Name ="Text77"
                    ControlSource ="=IIf([LigSkStarp]=0,Null,[LigSkStarp])"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =2175
                    Width =360
                    Height =255
                    TabIndex =14
                    Name ="RezVietas"
                    ControlSource ="RezVietasIst"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =10057
                    Width =285
                    Height =255
                    TabIndex =15
                    Name ="Text87"
                    ControlSource ="V"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =10432
                    Width =285
                    Height =255
                    TabIndex =16
                    Name ="Text88"
                    ControlSource ="LV"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =3
                    TextFontFamily =0
                    Left =9607
                    Width =315
                    Height =255
                    TabIndex =17
                    Name ="Text89"
                    ControlSource ="S"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =2624
                    Width =375
                    Height =255
                    TabIndex =18
                    Name ="Text92"
                    ControlSource ="BrivasNeRez"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =10779
                    Width =285
                    Height =255
                    TabIndex =19
                    Name ="Text90"
                    ControlSource ="ne-LV"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =1671
                    Top =15
                    Width =435
                    Height =255
                    TabIndex =20
                    Name ="Text94"
                    ControlSource ="Brivas"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =56
                    Width =630
                    Height =255
                    TabIndex =21
                    Name ="IstNr"
                    ControlSource ="IstabasNr"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =3450
                    Top =15
                    Width =285
                    Height =255
                    TabIndex =22
                    Name ="Text101"
                    ControlSource ="DzV"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =3
                    TextFontFamily =0
                    Left =3045
                    Top =15
                    Width =315
                    Height =255
                    TabIndex =23
                    Name ="Text102"
                    ControlSource ="DzS"
                End
            End
        End
        Begin FormFooter
            CanGrow = NotDefault
            Height =4374
            BackColor =-2147483633
            Name ="FormFooter"
            Begin
                Begin Subform
                    OverlapFlags =85
                    Left =60
                    Top =340
                    Width =15240
                    Height =1815
                    Name ="VIA_LigIst_Uzdatumu_LigInfo"
                    SourceObject ="Form.VIA_LigIst_Uzdatumu_LigInfo"
                    LinkChildFields ="Ist_Nr"
                    LinkMasterFields ="Ist_Nr"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =56
                            Width =2175
                            Height =240
                            Name ="VIA_LigIst_Uzdatumu_LigInfo Label"
                            Caption ="Līgumi istabai:"
                            EventProcPrefix ="VIA_LigIst_Uzdatumu_LigInfo_Label"
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =85
                    Left =60
                    Top =2559
                    Width =15345
                    Height =1815
                    TabIndex =1
                    Name ="Child95"
                    SourceObject ="Form.VIA_LigIst_Uzdatumu_RezInfo_19"
                    LinkChildFields ="Istaba"
                    LinkMasterFields ="Ist_Nr"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =0
                            Top =2275
                            Width =2175
                            Height =240
                            Name ="Label96"
                            Caption ="Rezervācijas:"
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "VIA_VietuSkaitsUzdatumu.cls"
