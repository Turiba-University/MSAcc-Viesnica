Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    AllowDesignChanges = NotDefault
    ScrollBars =2
    TabularCharSet =186
    TabularFamily =84
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =10601
    DatasheetFontHeight =10
    ItemSuffix =46
    Left =6690
    Top =2670
    Right =17295
    Bottom =6420
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0xb327bcb60efde440
    End
    RecordSource ="SELECT dbo_st_Stop.ST_ID, dbo_st_Stop.CKods, dbo_st_Stop.Uzvards, dbo_st_Stop.Va"
        "rds, dbo_st_Iemesli.Iem_Nosaukums, dbo_st_Stop.PK, dbo_st_Stop.Iemesls_ID, dbo_s"
        "t_Stop.In_Kas, dbo_st_Stop.In_Kad, dbo_st_Stop.Out_Kas, dbo_st_Stop.Out_Kad, dbo"
        "_st_Stop.Out_Kapec FROM dbo_st_Stop LEFT JOIN dbo_st_Iemesli ON dbo_st_Stop.Ieme"
        "sls_ID = dbo_st_Iemesli.Iemesls_ID WHERE (((dbo_st_Stop.CKods)=[Forms]![STOP Ar "
        "Rokam subform]![PID]) AND ((dbo_st_Stop.Out_Kad) Is Null Or (dbo_st_Stop.Out_Kad"
        ")>=Date())) ORDER BY dbo_st_Stop.Uzvards, dbo_st_Stop.Vards, dbo_st_Iemesli.Iem_"
        "Nosaukums;"
    Caption ="Persona STOP sarakstā"
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
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ListBox
            SpecialEffect =2
            TextFontCharSet =186
            Width =1701
            Height =1417
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ComboBox
            SpecialEffect =2
            TextFontCharSet =186
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
            Height =1485
            BackColor =-2147483633
            Name ="FormHeader"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =90
                    Top =135
                    Width =480
                    Height =240
                    Name ="Vards_Label"
                    Caption ="Vārds"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =90
                    Top =434
                    Width =660
                    Height =240
                    Name ="Uzvards_Label"
                    Caption ="Uzvārds"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =90
                    Top =737
                    Width =615
                    Height =240
                    Name ="numurs_Label"
                    Caption ="PK"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =623
                    Top =1245
                    Width =600
                    Height =240
                    Name ="Label11"
                    Caption ="Iemesls"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =4195
                    Top =1245
                    Width =930
                    Height =240
                    Name ="Label19"
                    Caption ="Kad ielika"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Top =1245
                    Width =525
                    Height =240
                    Name ="Izņemt"
                    Caption ="Izņemt"
                    Tag ="DetachedLabel"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9902
                    Top =113
                    Width =576
                    Height =576
                    Name ="Aizvert"
                    Caption ="Command24"
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
                        0x0000000000000000000000000000000000000000
                    End
                    ObjectPalette = Begin
                        0x0003100000000000800000000080000080800000000080008000800000808000 ,
                        0x80808000c0c0c000ff000000c0c0c000ffff00000000ff00c0c0c00000ffff00 ,
                        0xffffff0000000000
                    End
                    ControlTipText ="Aizvērt formu"
                End
                Begin CommandButton
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =8879
                    Top =113
                    Width =891
                    Height =576
                    TabIndex =1
                    Name ="PievienotSTOP"
                    Caption ="Ielikt STOP"
                    OnClick ="[Event Procedure]"
                    ObjectPalette = Begin
                        0x0003100000000000800000000080000080800000000080008000800000808000 ,
                        0x80808000c0c0c000ff000000c0c0c000ffff00000000ff00c0c0c00000ffff00 ,
                        0xffffff0000000000
                    End
                    ControlTipText ="Ielikt personu STOP sarakstā"
                End
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =1927
                    Top =1133
                    Width =555
                    Height =276
                    TabIndex =2
                    Name ="PID"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =883
                    Top =135
                    Width =1773
                    Height =276
                    ColumnWidth =2760
                    TabIndex =3
                    BackColor =12632256
                    Name ="Vards"
                    ControlSource ="Vards"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =883
                    Top =434
                    Width =1773
                    Height =276
                    ColumnWidth =2760
                    TabIndex =4
                    BackColor =12632256
                    Name ="Uzvards"
                    ControlSource ="Uzvards"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =883
                    Top =737
                    Width =1191
                    Height =276
                    TabIndex =5
                    BackColor =12632256
                    Name ="PK"
                    ControlSource ="PK"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =5952
                    Top =1245
                    Width =930
                    Height =240
                    Name ="Label28"
                    Caption ="Kad izņēma"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =7620
                    Top =1245
                    Width =2505
                    Height =240
                    Name ="Label29"
                    Caption ="Izņemšanas no STOP pamatojums"
                    Tag ="DetachedLabel"
                End
                Begin OptionGroup
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =2835
                    Top =825
                    Width =4371
                    Height =382
                    TabIndex =6
                    Name ="RaditStavokli"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="1"
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =223
                            Left =2955
                            Top =705
                            Width =1080
                            Height =240
                            Name ="Label33"
                            Caption ="Rādīt stāvokli:"
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =3004
                            Top =963
                            OptionValue =1
                            Name ="Option35"
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    TextAlign =1
                                    Left =3235
                                    Top =939
                                    Width =660
                                    Height =240
                                    Name ="Label36"
                                    Caption ="tekošais"
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =4195
                            Top =963
                            OptionValue =2
                            Name ="Option37"
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =4369
                                    Top =939
                                    Width =600
                                    Height =240
                                    Name ="Label38"
                                    Caption ="vēsture"
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =5159
                            Top =963
                            Width =170
                            Height =170
                            OptionValue =3
                            Name ="Option44"
                            Begin
                                Begin Label
                                    OverlapFlags =87
                                    Left =5325
                                    Top =939
                                    Width =810
                                    Height =240
                                    Name ="Label45"
                                    Caption ="uz datumu"
                                End
                            End
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =7313
                    Top =887
                    Width =227
                    Height =226
                    TabIndex =7
                    Name ="RaditAizliegumus"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="False"
                    Begin
                        Begin Label
                            OverlapFlags =87
                            Left =7539
                            Top =850
                            Width =1230
                            Height =240
                            Name ="Label42"
                            Caption ="rādīt aizliegumus"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =215
                    TextAlign =1
                    Left =6150
                    Top =885
                    Width =945
                    Height =261
                    TabIndex =8
                    Name ="RaditUzDatumu"
                    Format ="Short Date"
                    AfterUpdate ="[Event Procedure]"
                End
            End
        End
        Begin Section
            Height =291
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    OverlapFlags =93
                    TextAlign =1
                    Left =465
                    Width =555
                    Height =276
                    ColumnWidth =1035
                    Name ="PersId"
                    ControlSource ="CKods"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =1238
                    Width =294
                    Height =276
                    ColumnWidth =1035
                    TabIndex =1
                    Name ="Iemesls_ID"
                    ControlSource ="Iemesls_ID"
                    StatusBarText ="Kapec var nostopet"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =255
                    Left =623
                    Width =3531
                    Height =276
                    TabIndex =2
                    Name ="Iemesls"
                    ControlSource ="Iem_Nosaukums"
                End
                Begin CommandButton
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =120
                    Top =15
                    Width =306
                    Height =276
                    TabIndex =3
                    Name ="Command17"
                    Caption ="Command17"
                    StatusBarText ="Izņemt no STOP saraksta"
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
                        0x0000000000000000000000000000000000000000
                    End
                    ObjectPalette = Begin
                        0x0003100000000000800000000080000080800000000080008000800000808000 ,
                        0x80808000c0c0c000ff000000c0c0c000ffff00000000ff00c0c0c00000ffff00 ,
                        0xffffff0000000000
                    End
                    ShortcutMenuBar ="Izņemt no STOP saraksta"
                    ControlTipText ="Izņemt no STOP saraksta"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =247
                    Left =1598
                    Width =414
                    Height =276
                    TabIndex =4
                    Name ="STOP_ID"
                    ControlSource ="ST_ID"
                    StatusBarText ="Kapec var nostopet"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =4210
                    Width =1593
                    Height =276
                    TabIndex =5
                    Name ="Kad"
                    ControlSource ="In_Kad"
                    Format ="General Date"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =5967
                    Width =1593
                    Height =276
                    TabIndex =6
                    Name ="Out_Kad"
                    ControlSource ="Out_Kad"
                    Format ="General Date"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =7596
                    Width =2883
                    Height =276
                    TabIndex =7
                    Name ="Out_Kas"
                    ControlSource ="Out_Kapec"
                End
            End
        End
        Begin FormFooter
            Visible = NotDefault
            Height =2040
            BackColor =-2147483633
            Name ="FormFooter"
            Begin
                Begin ListBox
                    ColumnHeads = NotDefault
                    OverlapFlags =85
                    ColumnCount =3
                    Left =56
                    Top =56
                    Width =7653
                    Height =1984
                    Name ="Aizliegumi"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT dbo_st_STOP_fp.Aizl_Nosaukums AS Aizliegums, Min(dbo_st_STOP_fp.In_Kad) A"
                        "S Ielikts FROM dbo_st_STOP_fp WHERE (((dbo_st_STOP_fp.Out_Kad) Is Null) And ((db"
                        "o_st_STOP_fp.CKods) =  38346 )) GROUP BY dbo_st_STOP_fp.Aizl_Nosaukums ORDER BY "
                        "dbo_st_STOP_fp.Aizl_Nosaukums;"
                    ColumnWidths ="3969;1589;1589"
                End
            End
        End
    End
End
CodeBehindForm
' See "STOP Ar Rokam subform.cls"
