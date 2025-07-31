Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    CloseButton = NotDefault
    FilterOn = NotDefault
    OrderByOn = NotDefault
    TabularCharSet =186
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =22510
    DatasheetFontHeight =10
    ItemSuffix =276
    Left =2925
    Top =870
    Right =25695
    Bottom =11460
    DatasheetGridlinesColor =12632256
    Filter ="(([qryRezerv].[LigNo] Is Null)) AND ([qryRezerv].[Lig_Dat]<=#7/31/2025#)"
    OrderBy ="[qryRezerv].[Istaba], [qryRezerv].[Lig_Dat] DESC, [qryRezerv].[UZVARDS], [qryRez"
        "erv].[VARDS]"
    RecSrcDt = Begin
        0x66076f22213ae640
    End
    RecordSource ="qryRezerv"
    Caption ="Saraksts"
    OnCurrent ="[Event Procedure]"
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
            Height =915
            BackColor =-2147483633
            Name ="FormHeader"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =29
                    Top =660
                    Width =510
                    Height =240
                    FontSize =9
                    Name ="Istaba_Label"
                    Caption ="Istaba"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =566
                    Top =660
                    Width =1158
                    Height =240
                    Name ="VARDS_Label"
                    Caption ="Vārds"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =1751
                    Top =660
                    Width =1527
                    Height =240
                    Name ="UZVARDS_Label"
                    Caption ="Uzvārds"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =4665
                    Top =660
                    Width =1197
                    Height =240
                    Name ="Tel1_Label"
                    Caption ="Telefons"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =2
                    Left =10605
                    Top =660
                    Width =1050
                    Height =240
                    Name ="Lig_Dat_Label"
                    Caption ="Slēgs līg."
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =1
                    Left =20409
                    Top =660
                    Width =1326
                    Height =240
                    Name ="Ievadits_Label"
                    Caption ="Ievadīts"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =11685
                    Top =660
                    Width =1467
                    Height =240
                    Name ="Piezimes_Label"
                    Caption ="Piezīmes"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =19289
                    Top =56
                    Width =660
                    Height =240
                    Name ="lblAtj"
                    Caption ="Atjaunot"
                    Tag ="DetachedLabel"
                End
                Begin ComboBox
                    Visible = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =215
                    Left =623
                    Top =390
                    ColumnOrder =0
                    Name ="combLig"
                    RowSourceType ="Value List"
                    RowSource ="Visi;Jaunie;Vecie"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="\"Visi\""
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =93
                            Top =390
                            Width =645
                            Height =240
                            Name ="Label26"
                            Caption ="Līgums:"
                        End
                    End
                End
                Begin ComboBox
                    Visible = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =87
                    Left =3004
                    Top =391
                    Width =786
                    ColumnOrder =1
                    TabIndex =1
                    Name ="combKurs"
                    RowSourceType ="Value List"
                    RowSource ="Visi;1;2;3;4;5"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="\"Visi\""
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =93
                            Left =2494
                            Top =390
                            Width =510
                            Height =240
                            Name ="Label30"
                            Caption ="Kurss:"
                        End
                    End
                End
                Begin ComboBox
                    Visible = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =87
                    Left =4627
                    Top =391
                    Width =1221
                    ColumnOrder =2
                    TabIndex =2
                    Name ="combStat"
                    RowSourceType ="Value List"
                    RowSource ="Jebkurš;Rinda;Rezervējuši"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="\"Jebkurš\""
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =93
                            Left =3975
                            Top =390
                            Width =645
                            Height =240
                            Name ="Label32"
                            Caption ="Statuss:"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6465
                    Top =75
                    Width =1350
                    Height =405
                    TabIndex =3
                    Name ="cmdShow"
                    Caption ="Rādīt dzēstos"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =10440
                    Width =576
                    Height =576
                    TabIndex =4
                    Name ="cmdClose"
                    Caption ="Aizvērt"
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
                        0x0000000000000000000000000000000000000000
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Aizvērt šo logu"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =8163
                    Top =56
                    Width =2145
                    Height =570
                    TabIndex =5
                    Name ="ActualizeStStat"
                    Caption ="Aktualizēt studentu statusu"
                    OnClick ="[Event Procedure]"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =8310
                    Top =660
                    Width =1005
                    Height =255
                    Name ="Label236"
                    Caption ="Stud. stat."
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =5893
                    Top =660
                    Width =897
                    Height =240
                    Name ="Label238"
                    Caption ="Tips"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =6860
                    Top =660
                    Width =1062
                    Height =240
                    Name ="Label240"
                    Caption ="Valsts"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =7949
                    Top =660
                    Width =327
                    Height =240
                    Name ="Label242"
                    Caption ="Dz."
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =3345
                    Top =660
                    Width =1302
                    Height =240
                    Name ="Label244"
                    Caption ="Pers. kods"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =2
                    Left =17281
                    Top =660
                    Width =1035
                    Height =240
                    Name ="Label246"
                    Caption ="JTM līg.no"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =223
                    TextAlign =2
                    Left =18275
                    Top =660
                    Width =1035
                    Height =240
                    Name ="Label248"
                    Caption ="Līgums līdz:"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =215
                    TextAlign =2
                    Left =19295
                    Top =660
                    Width =600
                    Height =240
                    Name ="Label250"
                    Caption ="Ist."
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =87
                    TextAlign =2
                    Left =19931
                    Top =660
                    Width =480
                    Height =240
                    Name ="Label252"
                    Caption ="ist.sk."
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =9335
                    Top =660
                    Width =372
                    Height =240
                    Name ="Label255"
                    Caption ="MG"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    Left =56
                    Top =56
                    Width =4876
                    Height =284
                    FontSize =10
                    FontWeight =700
                    Name ="MG_txt"
                    Caption =" "
                    FontName ="Arial"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =21761
                    Top =660
                    Width =630
                    Height =240
                    Name ="Label261"
                    Caption ="Rezerv."
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =9864
                    Top =660
                    Width =342
                    Height =240
                    Name ="Label264"
                    Caption ="Lim"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =87
                    TextAlign =1
                    Left =10261
                    Top =660
                    Width =342
                    Height =240
                    Name ="Label266"
                    Caption ="Pr"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =1
                    TextFontFamily =0
                    Left =15330
                    Top =405
                    Width =765
                    Height =510
                    Name ="Label272"
                    Caption ="2023mg ist.aba"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =215
                    TextAlign =2
                    Left =16080
                    Top =450
                    Width =1095
                    Height =465
                    Name ="Label274"
                    Caption ="Rezervācijai ir nosl. līgums "
                    Tag ="DetachedLabel"
                End
            End
        End
        Begin Section
            Height =291
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =2
                    Left =29
                    Width =516
                    Height =255
                    ColumnWidth =900
                    Name ="Istaba"
                    ControlSource ="Istaba"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =566
                    Width =1158
                    Height =255
                    ColumnWidth =1560
                    TabIndex =1
                    Name ="VARDS"
                    ControlSource ="VARDS"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =1751
                    Width =1527
                    Height =255
                    ColumnWidth =2310
                    TabIndex =2
                    Name ="UZVARDS"
                    ControlSource ="UZVARDS"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    TextAlign =1
                    Left =4665
                    Width =1197
                    Height =255
                    ColumnWidth =2310
                    TabIndex =3
                    Name ="Tel1"
                    ControlSource ="Tel1"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =2
                    Left =10635
                    Width =996
                    Height =255
                    ColumnWidth =825
                    TabIndex =4
                    Name ="Lig_Dat"
                    ControlSource ="Lig_Dat"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    TextAlign =1
                    Left =20409
                    Width =1326
                    Height =255
                    ColumnWidth =825
                    TabIndex =5
                    Name ="Ievadits"
                    ControlSource ="Ievadits"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =11691
                    Width =1467
                    Height =255
                    ColumnWidth =2310
                    TabIndex =6
                    Name ="Piezimes"
                    ControlSource ="Piezimes"
                End
                Begin CommandButton
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =13332
                    Top =9
                    Width =246
                    Height =246
                    TabIndex =7
                    Name ="cmdRestore"
                    Caption ="Atjaunot"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadadadadadadadaadadadadadadadaddfffffffffffffda ,
                        0xa788888888888fadd70fffffffff8fdaa70fff0fffff8fadd70ff000ffff8fda ,
                        0xa70f00000fff8fadd70f00f000ff8fdaa70f0fff000f8fadd70ffffff00f8fda ,
                        0xa70fffffff0f8fadd70fffffffff8fdaa700000000008fadd777777777777fda ,
                        0xadadadadadadadad000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Atjaunot sarakstā..."
                End
                Begin CommandButton
                    OverlapFlags =223
                    Left =13168
                    Width =477
                    Height =286
                    TabIndex =8
                    Name ="GotoRec"
                    Caption ="Skatīt"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial Narrow"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    TextAlign =1
                    Left =8315
                    Width =1002
                    Height =255
                    TabIndex =9
                    Name ="Text237"
                    ControlSource ="=[StStat]"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =5899
                    Width =897
                    Height =255
                    TabIndex =10
                    Name ="Text239"
                    ControlSource ="Tips"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    Left =6866
                    Width =1062
                    Height =255
                    TabIndex =11
                    Name ="Text241"
                    ControlSource ="Valsts"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =87
                    Left =7955
                    Width =327
                    Height =255
                    TabIndex =12
                    Name ="Text243"
                    ControlSource ="Dzimums"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =87
                    TextAlign =1
                    Left =3345
                    Width =1302
                    Height =255
                    TabIndex =13
                    Name ="Text245"
                    ControlSource ="Pers_Kods"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    TextAlign =2
                    Left =17265
                    Width =996
                    Height =255
                    TabIndex =14
                    Name ="LigNo"
                    ControlSource ="LigNo"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    TextAlign =2
                    Left =18322
                    Width =951
                    Height =255
                    TabIndex =15
                    Name ="Text249"
                    ControlSource ="LigLidz"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    TextAlign =2
                    Left =19343
                    Width =516
                    Height =255
                    TabIndex =16
                    Name ="Text251"
                    ControlSource ="Ist"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    TextAlign =2
                    Left =19980
                    Width =396
                    Height =255
                    TabIndex =17
                    Name ="Text253"
                    ControlSource ="IstSk"
                End
                Begin CommandButton
                    OverlapFlags =95
                    Left =13657
                    Width =717
                    Height =286
                    TabIndex =18
                    Name ="SlegtLigumu"
                    Caption ="Sl.līgumu"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =87
                    TextAlign =1
                    Left =9335
                    Width =507
                    Height =255
                    TabIndex =19
                    Name ="Text256"
                    ControlSource ="MG"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =14967
                    Width =306
                    Height =291
                    TabIndex =20
                    Name ="DzestRez"
                    Caption ="Command257"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadadadadadadadaadadadadadadadaddadadadadadadada ,
                        0xadadadadadadadaddada177adada77da1dad1177adad17ad11da7117dad71ada ,
                        0x111da1177d117dad1111d7117711dada11111d11111dadad1111da71117adada ,
                        0x111d77111177adad11d711da71177ada1dadadada71177addadadadadad11ada ,
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
                    ControlTipText ="Dzēst rezervistu"
                End
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    OverlapFlags =247
                    TextAlign =2
                    Left =19664
                    Width =441
                    Height =255
                    TabIndex =21
                    Name ="CKods"
                    ControlSource ="CKods"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =87
                    TextAlign =1
                    Left =21757
                    Width =567
                    Height =255
                    TabIndex =22
                    Name ="Rez_MG"
                    ControlSource ="Rez_MG"
                End
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    OverlapFlags =247
                    TextAlign =2
                    Left =18097
                    Width =441
                    Height =255
                    TabIndex =23
                    Name ="V_Rez_RID"
                    ControlSource ="V_Rez_RID"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =9864
                    Width =342
                    TabIndex =24
                    Name ="Text265"
                    ControlSource ="Lim"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =10261
                    Width =342
                    TabIndex =25
                    Name ="Text267"
                    ControlSource ="Progr"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =0
                    Left =16044
                    Width =297
                    TabIndex =26
                    Name ="IrLig"
                    ControlSource ="IrLig"
                    OnDblClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =87
                    Left =14370
                    Width =582
                    Height =286
                    TabIndex =27
                    Name ="ParceltRezUzNakMG"
                    Caption ="->24mg"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    TextFontFamily =0
                    Left =15330
                    Width =666
                    Height =255
                    TabIndex =28
                    Name ="Text273"
                    ControlSource ="IstLastMG"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =2
                    Left =16384
                    Width =747
                    TabIndex =29
                    Name ="Text275"
                    ControlSource ="IrLigNr"
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
' See "Saraksts.cls"
