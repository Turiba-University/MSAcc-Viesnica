Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    FilterOn = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    TabularCharSet =186
    TabularFamily =124
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =9524
    DatasheetFontHeight =10
    ItemSuffix =64
    Left =5955
    Top =1725
    Right =15720
    Bottom =8160
    DatasheetGridlinesColor =12632256
    Filter ="[RID]=808"
    RecSrcDt = Begin
        0xf69133b5d59be440
    End
    RecordSource ="dbo_Viesn_MZAkts"
    Caption ="Materiālo zaudējumu atlīdzināšanas akts"
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
            CanGrow = NotDefault
            Height =6444
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =4508
                    Top =1875
                    Width =426
                    Height =255
                    ColumnWidth =1701
                    Name ="RID"
                    ControlSource ="RID"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =752
                    Top =113
                    Width =675
                    Height =255
                    ColumnWidth =675
                    TabIndex =1
                    Name ="Nr"
                    ControlSource ="Nr"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =56
                            Top =113
                            Width =636
                            Height =255
                            Name ="Nr_Label"
                            Caption ="Nr"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =752
                    Top =455
                    Width =1005
                    Height =255
                    ColumnWidth =945
                    TabIndex =2
                    Name ="Datums"
                    ControlSource ="Datums"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =56
                            Top =455
                            Width =636
                            Height =255
                            Name ="Datums_Label"
                            Caption ="Datums"
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =1176
                    Top =855
                    Width =1095
                    Height =255
                    ColumnWidth =1035
                    TabIndex =3
                    Name ="LigNr"
                    ControlSource ="LigNr"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =60
                            Top =855
                            Width =1071
                            Height =255
                            Name ="LigNr_Label"
                            Caption ="Līguma Nr"
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =3333
                    Top =855
                    Width =1020
                    Height =255
                    ColumnWidth =945
                    TabIndex =4
                    Name ="LigDatums"
                    ControlSource ="LigDatums"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =2352
                            Top =855
                            Width =921
                            Height =255
                            Name ="LigDatums_Label"
                            Caption ="Datums"
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =93
                    Left =1176
                    Top =1138
                    Width =1350
                    Height =255
                    ColumnWidth =2760
                    TabIndex =5
                    Name ="LigVards"
                    ControlSource ="LigVards"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =60
                            Top =1138
                            Width =1056
                            Height =255
                            Name ="LigVards_Label"
                            Caption ="Īrnieks"
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =1176
                    Top =1422
                    Width =1035
                    Height =255
                    ColumnWidth =1035
                    TabIndex =6
                    Name ="LigIstaba"
                    ControlSource ="LigIstaba"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =60
                            Top =1422
                            Width =1056
                            Height =255
                            Name ="LigIstaba_Label"
                            Caption ="Istaba"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    Left =43
                    Top =2403
                    Width =2220
                    Height =255
                    ColumnWidth =2760
                    TabIndex =7
                    Name ="KomAmats1"
                    ControlSource ="KomAmats1"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =30
                            Top =2147
                            Width =1596
                            Height =210
                            Name ="KomAmats1_Label"
                            Caption ="Amats"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =95
                    Left =4588
                    Top =2411
                    Width =2220
                    Height =255
                    ColumnWidth =2760
                    TabIndex =8
                    Name ="KomVU1"
                    ControlSource ="KomVU1"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =4588
                            Top =2165
                            Width =1596
                            Height =255
                            Name ="KomVU1_Label"
                            Caption ="Vārds Uzvārds"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =30
                    Top =2669
                    Width =2220
                    Height =255
                    ColumnWidth =2760
                    TabIndex =9
                    Name ="KomAmats2"
                    ControlSource ="KomAmats2"
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =4560
                    Top =2669
                    Width =2217
                    Height =255
                    ColumnWidth =2760
                    TabIndex =10
                    Name ="KomVU2"
                    ControlSource ="KomVU2"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =30
                    Top =2953
                    Width =2217
                    Height =255
                    ColumnWidth =2760
                    TabIndex =11
                    Name ="KomAmats3"
                    ControlSource ="KomAmats3"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =4560
                    Top =2953
                    Width =2217
                    Height =255
                    ColumnWidth =2760
                    TabIndex =12
                    Name ="KomVU3"
                    ControlSource ="KomVU3"
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =6426
                    Top =795
                    Width =1167
                    Height =255
                    ColumnWidth =2760
                    TabIndex =13
                    Name ="Summa"
                    ControlSource ="Summa"
                    Format ="Fixed"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4545
                            Top =795
                            Width =1821
                            Height =255
                            Name ="Summa_Label"
                            Caption ="Summa"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =6426
                    Top =1137
                    Width =675
                    Height =255
                    ColumnWidth =675
                    TabIndex =14
                    Name ="Samaksats"
                    ControlSource ="Samaksats"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4545
                            Top =1137
                            Width =1821
                            Height =255
                            Name ="Samaksats_Label"
                            Caption ="Samaksāts"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =6426
                    Top =1479
                    Width =1065
                    Height =255
                    ColumnWidth =945
                    TabIndex =15
                    Name ="SamaksatsDat"
                    ControlSource ="SamaksatsDat"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =4545
                            Top =1479
                            Width =1821
                            Height =255
                            Name ="SamaksatsDat_Label"
                            Caption ="Samaksas datums"
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =215
                    Left =127
                    Top =3549
                    Width =9345
                    Height =2895
                    TabIndex =16
                    Name ="MZAkts_sub"
                    SourceObject ="Form.MZAkts_sub"
                    LinkChildFields ="MZA_ID"
                    LinkMasterFields ="RID"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =120
                            Top =3270
                            Width =960
                            Height =300
                            Name ="MZAkts_sub Label"
                            Caption ="Inventārs:"
                            EventProcPrefix ="MZAkts_sub_Label"
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =87
                    Left =2522
                    Top =1138
                    Width =1845
                    Height =255
                    TabIndex =17
                    Name ="Text38"
                    ControlSource ="LigUzvards"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7937
                    Top =113
                    Width =576
                    Height =576
                    TabIndex =18
                    Name ="Aizvert"
                    Caption ="Command40"
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
                    ControlTipText ="Close Form"
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =1218
                    Top =1762
                    Width =170
                    Height =170
                    TabIndex =19
                    Name ="LigIrDepozits"
                    ControlSource ="LigIrDepozits"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =60
                            Top =1705
                            Width =1050
                            Height =240
                            Name ="Label42"
                            Caption ="Ir depozīts"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7200
                    Top =113
                    Width =576
                    Height =576
                    TabIndex =20
                    Name ="Drukat"
                    Caption ="Command43"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadadadadadadada000000000000ad000ffffffffff0d000 ,
                        0x0fffffff0000700d0ffffff0788707da0fffff0788e770ad0fffff08888780da ,
                        0x0fffff08e88780ad0fffff07ee8770da0ffffff078870dad0fffffff0000dada ,
                        0x0ffffffffff0adad0fffffff0000dada0fffffff080dadad0fffffff00dadada ,
                        0x000000000dadadad000000000000000000000000000000000000000000000000 ,
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
                    ControlTipText ="Preview Report"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6823
                    Top =2405
                    Width =285
                    Height =270
                    TabIndex =21
                    Name ="Izv1"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =6823
                    Top =2690
                    Width =285
                    Height =270
                    TabIndex =22
                    Name ="Command45"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =87
                    Left =6823
                    Top =2960
                    Width =285
                    Height =270
                    TabIndex =23
                    Name ="Command46"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                End
                Begin OptionGroup
                    OverlapFlags =85
                    Left =5385
                    Top =113
                    Width =1712
                    Height =628
                    TabIndex =24
                    Name ="IzdrukasValoda"
                    DefaultValue ="1"
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =215
                            Left =5490
                            Width =690
                            Height =240
                            Name ="Label50"
                            Caption ="Izdruka"
                        End
                        Begin OptionButton
                            OverlapFlags =95
                            Left =6291
                            Top =208
                            OptionValue =1
                            Name ="Option52"
                            Begin
                                Begin Label
                                    OverlapFlags =255
                                    Left =6521
                                    Top =180
                                    Width =375
                                    Height =240
                                    Name ="Label53"
                                    Caption ="LV"
                                End
                            End
                        End
                        Begin OptionButton
                            OverlapFlags =87
                            Left =6276
                            Top =448
                            OptionValue =2
                            Name ="Option54"
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =6506
                                    Top =420
                                    Width =525
                                    Height =240
                                    Name ="Label55"
                                    Caption ="ENG"
                                End
                            End
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    Left =2310
                    Top =2415
                    Width =2220
                    Height =255
                    TabIndex =25
                    Name ="KomAmatsENG1"
                    ControlSource ="KomAmatsEng1"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =2297
                            Top =2159
                            Width =1596
                            Height =210
                            Name ="Label57"
                            Caption ="Amats angliski"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =2297
                    Top =2681
                    Width =2220
                    Height =255
                    TabIndex =26
                    Name ="KomAmatsENG2"
                    ControlSource ="KomAmatsEng2"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2297
                    Top =2965
                    Width =2217
                    Height =255
                    TabIndex =27
                    Name ="KomAmatsENG3"
                    ControlSource ="KomAmatsEng3"
                End
                Begin Label
                    OverlapFlags =215
                    Left =30
                    Top =1955
                    Width =1596
                    Height =210
                    Name ="Label60"
                    Caption ="Komisija:"
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =2267
                    Top =170
                    Width =227
                    Height =226
                    TabIndex =28
                    Name ="Stat"
                    ControlSource ="Stat"
                    AfterUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =87
                            Left =2497
                            Top =140
                            Width =855
                            Height =285
                            Name ="Label62"
                            Caption ="Anulēt"
                        End
                    End
                End
                Begin Label
                    OverlapFlags =93
                    Left =1140
                    Top =3285
                    Width =2895
                    Height =255
                    Name ="Label63"
                    Caption ="dzēst - 2xklikšķis uz nosaukuma"
                    FontName ="Arial Narrow"
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
' See "MZAkts.cls"
