Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    AllowDeletions = NotDefault
    CloseButton = NotDefault
    AllowAdditions = NotDefault
    TabularCharSet =186
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =12266
    DatasheetFontHeight =10
    ItemSuffix =256
    Left =675
    Top =2265
    Right =16740
    Bottom =6615
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0xee8daa2d9426e640
    End
    RecordSource ="qryRezerv_pers"
    Caption ="Rezervācijas"
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
                    Width =600
                    Height =240
                    FontSize =10
                    Name ="Istaba_Label"
                    Caption ="Istaba"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =705
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
                    Left =1890
                    Top =660
                    Width =1812
                    Height =240
                    Name ="UZVARDS_Label"
                    Caption ="Uzvārds"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =223
                    TextAlign =2
                    Left =3679
                    Top =660
                    Width =1155
                    Height =255
                    Name ="Lig_Dat_Label"
                    Caption ="Ievadīts"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =6724
                    Top =660
                    Width =3342
                    Height =240
                    Name ="Piezimes_Label"
                    Caption ="Piezīmes"
                    Tag ="DetachedLabel"
                End
                Begin ComboBox
                    Visible = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =215
                    Left =623
                    Top =340
                    Name ="combLig"
                    RowSourceType ="Value List"
                    RowSource ="Visi;Jaunie;Vecie"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="\"Visi\""
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =93
                            Top =340
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
                    Top =341
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
                            Top =340
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
                    OverlapFlags =95
                    Left =4627
                    Top =341
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
                            Top =340
                            Width =645
                            Height =240
                            Name ="Label32"
                            Caption ="Statuss:"
                        End
                    End
                End
                Begin CommandButton
                    Visible = NotDefault
                    OverlapFlags =247
                    Left =5215
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
                    Left =10714
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
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =6913
                    Top =56
                    Width =2145
                    Height =405
                    TabIndex =5
                    Name ="ActualizeStStat"
                    Caption ="Aktualizēt studentu statusu"
                    OnClick ="[Event Procedure]"
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =1
                    Left =5921
                    Top =660
                    Width =762
                    Height =240
                    Name ="Label240"
                    Caption ="MG"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    TextFontFamily =0
                    Top =60
                    Width =4815
                    Height =255
                    Name ="Label243"
                    Caption ="Atvērtās reģistrācijas personai."
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =215
                    TextAlign =2
                    TextFontFamily =0
                    Left =4774
                    Top =660
                    Width =1155
                    Height =255
                    Name ="Label245"
                    Caption ="No"
                    Tag ="DetachedLabel"
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =9411
                    Top =56
                    Width =1182
                    Height =571
                    TabIndex =6
                    Name ="RezervNew"
                    Caption ="Jauna rezervācija"
                    OnClick ="[Event Procedure]"
                    Picture ="Skatit.bmp"
                End
            End
        End
        Begin Section
            Height =346
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =2
                    Left =29
                    Width =606
                    Height =346
                    ColumnWidth =900
                    Name ="Istaba"
                    ControlSource ="Istaba"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =705
                    Width =1158
                    Height =346
                    ColumnWidth =1560
                    TabIndex =1
                    Name ="VARDS"
                    ControlSource ="VARDS"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =1890
                    Width =1812
                    Height =346
                    ColumnWidth =2310
                    TabIndex =2
                    Name ="UZVARDS"
                    ControlSource ="UZVARDS"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =2
                    Left =3740
                    Width =1041
                    Height =346
                    ColumnWidth =825
                    TabIndex =3
                    Name ="Lig_Dat"
                    ControlSource ="Ievadits"
                    Format ="Short Date"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    Left =6730
                    Width =3342
                    Height =346
                    ColumnWidth =2310
                    TabIndex =4
                    Name ="Piezimes"
                    ControlSource ="Piezimes"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =5921
                    Width =762
                    Height =346
                    TabIndex =5
                    Name ="Text241"
                    ControlSource ="Rez_MG"
                End
                Begin CommandButton
                    OverlapFlags =95
                    TextFontFamily =0
                    Left =10060
                    Width =687
                    Height =346
                    TabIndex =6
                    Name ="SlegtReg"
                    Caption ="Slēgt"
                    OnClick ="[Event Procedure]"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    Picture ="Skatit.bmp"
                End
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    OverlapFlags =247
                    TextFontFamily =0
                    Left =9946
                    Width =222
                    Height =346
                    TabIndex =7
                    Name ="V_Rez_RID"
                    ControlSource ="V_Rez_RID"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =2
                    TextFontFamily =0
                    Left =4820
                    Width =1071
                    Height =346
                    TabIndex =8
                    Name ="Text246"
                    ControlSource ="Lig_Dat"
                    Format ="Short Date"
                End
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =11137
                    Top =56
                    Width =222
                    Height =286
                    TabIndex =9
                    Name ="Tel1"
                    ControlSource ="Tel1"
                End
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =11478
                    Top =56
                    Width =222
                    Height =286
                    TabIndex =10
                    Name ="Dzimums"
                    ControlSource ="Dzimums"
                End
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =11762
                    Top =56
                    Width =222
                    Height =286
                    TabIndex =11
                    Name ="Valsts"
                    ControlSource ="Valsts"
                End
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =10797
                    Top =56
                    Width =222
                    Height =286
                    TabIndex =12
                    Name ="Pers_Kods"
                    ControlSource ="Pers_Kods"
                End
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =12044
                    Top =56
                    Width =222
                    Height =286
                    TabIndex =13
                    Name ="CKods"
                    ControlSource ="CKods"
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
' See "Rezervisti_PersRezerv.cls"
