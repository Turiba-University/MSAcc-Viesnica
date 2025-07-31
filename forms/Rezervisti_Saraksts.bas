Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    CloseButton = NotDefault
    TabularCharSet =186
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =16685
    DatasheetFontHeight =10
    ItemSuffix =242
    Left =180
    Top =225
    Right =17460
    Bottom =7230
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0xd4f0b779723ce440
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
            Height =900
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
                    Name ="Istaba_Label"
                    Caption ="Istaba"
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
                    OverlapFlags =93
                    TextAlign =1
                    Left =1751
                    Top =660
                    Width =1812
                    Height =240
                    Name ="UZVARDS_Label"
                    Caption ="Uzvārds"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =87
                    TextAlign =1
                    Left =3569
                    Top =660
                    Width =1662
                    Height =240
                    Name ="Tel1_Label"
                    Caption ="Telefons"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =5270
                    Top =660
                    Width =1005
                    Height =240
                    Name ="Lig_Dat_Label"
                    Caption ="Slēgs līgumu"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =9522
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
                    Left =10872
                    Top =660
                    Width =2262
                    Height =240
                    Name ="Piezimes_Label"
                    Caption ="Piezīmes"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =14173
                    Top =660
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
                    Top =165
                    Name ="combLig"
                    RowSourceType ="Value List"
                    RowSource ="Visi;Jaunie;Vecie"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="\"Visi\""
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =93
                            Top =165
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
                    Top =166
                    Width =786
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
                            Top =165
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
                    Top =166
                    Width =1221
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
                            Top =165
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
                        0x0003100000000000800000000080000080800000000080008000800000808000 ,
                        0x80808000c0c0c000ff000000c0c0c000ffff00000000ff00c0c0c00000ffff00 ,
                        0xffffff0000000000
                    End
                    ControlTipText ="Aizvērt šo logu"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =8163
                    Top =56
                    Width =2145
                    Height =405
                    TabIndex =5
                    Name ="ActualizeStStat"
                    Caption ="Aktualizēt studentu statusu"
                    OnClick ="[Event Procedure]"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =7391
                    Top =660
                    Width =1272
                    Height =240
                    Name ="Label236"
                    Caption ="Stud. statuss"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =6290
                    Top =660
                    Width =1077
                    Height =240
                    Name ="Label238"
                    Caption ="Tips"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =8728
                    Top =660
                    Width =762
                    Height =240
                    Name ="Label240"
                    Caption ="MG"
                    Tag ="DetachedLabel"
                End
            End
        End
        Begin Section
            Height =256
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
                    OverlapFlags =93
                    Left =1751
                    Width =1812
                    Height =255
                    ColumnWidth =2310
                    TabIndex =2
                    Name ="UZVARDS"
                    ControlSource ="UZVARDS"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =87
                    TextAlign =1
                    Left =3569
                    Width =1662
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
                    Left =5300
                    Width =951
                    Height =255
                    ColumnWidth =825
                    TabIndex =4
                    Name ="Lig_Dat"
                    ControlSource ="LetosNo"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =9522
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
                    Left =10878
                    Width =2262
                    Height =255
                    ColumnWidth =2310
                    TabIndex =6
                    Name ="Piezimes"
                    ControlSource ="Piezimes"
                End
                Begin CommandButton
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =14368
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
                        0x0003100000000000800000000080000080800000000080008000800000808000 ,
                        0x80808000c0c0c000ff000000c0c0c000ffff00000000ff00c0c0c00000ffff00 ,
                        0xffffff0000000000
                    End
                    ControlTipText ="Atjaunot sarakstā..."
                End
                Begin CommandButton
                    OverlapFlags =215
                    Left =14203
                    Width =567
                    Height =256
                    TabIndex =8
                    Name ="GotoRec"
                    Caption ="Skatīt"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x28000000220000000f0000000100180000000000180600000000000000000000 ,
                        0x0000000000000000c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c00000c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c00000c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c00000 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0000000000000000000c0c0c0c0c0c0c0c0c00000 ,
                        0x00c0c0c0c0c0c0c0c0c0000000c0c0c0c0c0c0000000000000000000000000c0 ,
                        0xc0c0c0c0c0000000c0c0c0c0c0c0000000c0c0c0c0c0c0c0c0c0000000c0c0c0 ,
                        0xc0c0c0c0c0c00000c0c0c0c0c0c0c0c0c0000000c0c0c0c0c0c0c0c0c0000000 ,
                        0xc0c0c0c0c0c0000000c0c0c0c0c0c0000000c0c0c0c0c0c0000000c0c0c0c0c0 ,
                        0xc0c0c0c0000000c0c0c0000000c0c0c0c0c0c0c0c0c0000000c0c0c0c0c0c000 ,
                        0x0000c0c0c0c0c0c0c0c0c0c0c0c00000c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0000000c0c0c0c0c0c0000000c0c0c0000000c0c0c0c0c0c0c0c0c0 ,
                        0x000000c0c0c0c0c0c0c0c0c0000000c0c0c0000000c0c0c0c0c0c0c0c0c00000 ,
                        0x00c0c0c0c0c0c0000000c0c0c0c0c0c0c0c0c0c0c0c00000c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0000000c0c0c0c0c0c0000000000000c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0000000000000000000000000c0c0c0000000c0c0c0 ,
                        0xc0c0c0c0c0c0000000c0c0c0c0c0c0000000c0c0c0c0c0c0c0c0c0c0c0c00000 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0000000000000000000c0c0c0c0c0c0c0c0c00000 ,
                        0x00c0c0c0000000c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0000000c0 ,
                        0xc0c0000000c0c0c0c0c0c0c0c0c0000000c0c0c0c0c0c0000000c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c00000c0c0c0c0c0c0c0c0c0000000c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0000000c0c0c0c0c0c0000000c0c0c0c0c0c0c0c0c00000000000 ,
                        0x00000000c0c0c0c0c0c0000000000000c0c0c0c0c0c0000000c0c0c0c0c0c000 ,
                        0x0000000000c0c0c0c0c0c0c0c0c00000c0c0c0c0c0c0c0c0c0000000c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0000000c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0000000c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0000000c0c0c0c0c0c0c0c0c0c0c0c00000c0c0c0c0c0c0c0c0 ,
                        0xc0000000c0c0c0c0c0c0c0c0c0000000c0c0c0c0c0c0000000c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0000000c0c0c0 ,
                        0xc0c0c0000000000000000000c0c0c0000000c0c0c0c0c0c0c0c0c0c0c0c00000 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0000000000000000000c0c0c0c0c0c0c0c0c00000 ,
                        0x00c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c00000c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c00000c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c00000c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0 ,
                        0xc0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c00000 ,
                        0x000000000000000000000000
                    End
                    ObjectPalette = Begin
                        0x000300010000000020000000400000006000000080000000a0000000c0000000 ,
                        0xe00000000020000020200000402000006020000080200000a0200000c0200000 ,
                        0xe02000000040000020400000404000006040000080400000a0400000c0400000 ,
                        0xe04000000060000020600000406000006060000080600000a0600000c0600000 ,
                        0xe06000000080000020800000408000006080000080800000a0800000c0800000 ,
                        0xe080000000a0000020a0000040a0000060a0000080a00000a0a00000c0a00000 ,
                        0xe0a0000000c0000020c0000040c0000060c0000080c00000a0c00000c0c00000 ,
                        0xe0c0000000e0000020e0000040e0000060e0000080e00000a0e00000c0e00000 ,
                        0xe0e000000000400020004000400040006000400080004000a0004000c0004000 ,
                        0xe00040000020400020204000402040006020400080204000a0204000c0204000 ,
                        0xe02040000040400020404000404040006040400080404000a0404000c0404000 ,
                        0xe04040000060400020604000406040006060400080604000a0604000c0604000 ,
                        0xe06040000080400020804000408040006080400080804000a0804000c0804000 ,
                        0xe080400000a0400020a0400040a0400060a0400080a04000a0a04000c0a04000 ,
                        0xe0a0400000c0400020c0400040c0400060c0400080c04000a0c04000c0c04000 ,
                        0xe0c0400000e0400020e0400040e0400060e0400080e04000a0e04000c0e04000 ,
                        0xe0e040000000800020008000400080006000800080008000a0008000c0008000 ,
                        0xe00080000020800020208000402080006020800080208000a0208000c0208000 ,
                        0xe02080000040800020408000404080006040800080408000a0408000c0408000 ,
                        0xe04080000060800020608000406080006060800080608000a0608000c0608000 ,
                        0xe06080000080800020808000408080006080800080808000a0808000c0808000 ,
                        0xe080800000a0800020a0800040a0800060a0800080a08000a0a08000c0a08000 ,
                        0xe0a0800000c0800020c0800040c0800060c0800080c08000a0c08000c0c08000 ,
                        0xe0c0800000e0800020e0800040e0800060e0800080e08000a0e08000c0e08000 ,
                        0xe0e080000000c0002000c0004000c0006000c0008000c000a000c000c000c000 ,
                        0xe000c0000020c0002020c0004020c0006020c0008020c000a020c000c020c000 ,
                        0xe020c0000040c0002040c0004040c0006040c0008040c000a040c000c040c000 ,
                        0xe040c0000060c0002060c0004060c0006060c0008060c000a060c000c060c000 ,
                        0xe060c0000080c0002080c0004080c0006080c0008080c000a080c000c080c000 ,
                        0xe080c00000a0c00020a0c00040a0c00060a0c00080a0c000a0a0c000c0a0c000 ,
                        0xe0a0c00000c0c00020c0c00040c0c00060c0c00080c0c000a0c0c000c0c0c000 ,
                        0xe0c0c00000e0c00020e0c00040e0c00060e0c00080e0c000a0e0c000c0e0c000 ,
                        0xe0e0c00000000000
                    End
                    Picture ="C:\\My Documents\\Sandis\\Viesnica\\Skatit.bmp"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    TextAlign =1
                    Left =7391
                    Width =1272
                    Height =255
                    TabIndex =9
                    Name ="Text237"
                    ControlSource ="=IIf([StudStat]=30,\"akad.līdz \" & [AkLidz],[StudStat])"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =87
                    Left =6296
                    Width =1077
                    Height =255
                    TabIndex =10
                    Name ="Text239"
                    ControlSource ="Tips"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =8728
                    Width =762
                    Height =255
                    TabIndex =11
                    Name ="Text241"
                    ControlSource ="StudMG"
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
' See "Rezervisti_Saraksts.cls"
