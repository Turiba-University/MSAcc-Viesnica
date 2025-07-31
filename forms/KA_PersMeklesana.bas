Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    TabularCharSet =186
    Width =13005
    ItemSuffix =123
    Left =2910
    Top =1590
    Right =15915
    Bottom =8385
    HelpContextId =109
    RecSrcDt = Begin
        0xc74566a4b98de140
    End
    Caption ="Meklēt ligumus"
    OnOpen ="[Event Procedure]"
    OnClose ="[Event Procedure]"
    Begin
        Begin Label
            BackStyle =0
            TextFontCharSet =186
            TextAlign =3
            FontWeight =700
        End
        Begin Rectangle
            SpecialEffect =2
            BorderLineStyle =0
        End
        Begin CommandButton
            TextFontCharSet =186
            TextFontFamily =2
        End
        Begin OptionButton
            AddColon = NotDefault
            SpecialEffect =2
            LabelAlign =3
            BorderLineStyle =0
            Width =202
            Height =202
            LabelX =-168
        End
        Begin CheckBox
            AddColon = NotDefault
            SpecialEffect =2
            LabelAlign =3
            BorderLineStyle =0
            Width =202
            Height =202
            LabelX =-168
        End
        Begin TextBox
            OldBorderStyle =0
            LabelAlign =3
            TextFontCharSet =186
            BorderLineStyle =0
            LabelX =-168
            BackColor =12632256
        End
        Begin ListBox
            TextFontCharSet =186
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
        End
        Begin ComboBox
            SpecialEffect =2
            TextFontCharSet =186
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin Subform
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin ToggleButton
            TextFontCharSet =186
            Width =283
            Height =283
            FontSize =8
            FontWeight =400
            ForeColor =-2147483630
            FontName ="MS Sans Serif"
        End
        Begin FormHeader
            Height =2240
            BackColor =12632256
            Name ="FormHeader0"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    SpecialEffect =2
                    OldBorderStyle =1
                    OverlapFlags =93
                    Left =1626
                    Top =765
                    Width =945
                    ColumnOrder =0
                    BackColor =16777215
                    BorderColor =8421376
                    Name ="Ligu"
                    StatusBarText ="Līguma numurs"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =0
                            Left =360
                            Top =765
                            Width =1140
                            Height =240
                            FontWeight =400
                            Name ="Text43"
                            Caption ="Līguma Nr:"
                        End
                    End
                End
                Begin TextBox
                    SpecialEffect =2
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =1626
                    Top =1320
                    ColumnOrder =2
                    TabIndex =2
                    BackColor =16777164
                    BorderColor =8421376
                    Name ="Vard"
                    StatusBarText ="Ievadiet vārda sākumu"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =0
                            Left =675
                            Top =1320
                            Width =825
                            Height =240
                            FontWeight =400
                            Name ="Text45"
                            Caption ="Vārds:"
                        End
                    End
                End
                Begin TextBox
                    SpecialEffect =2
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =1626
                    Top =1605
                    ColumnOrder =3
                    TabIndex =3
                    BackColor =16777164
                    BorderColor =8421376
                    Name ="Uzva"
                    StatusBarText ="Ievadiet uzvārda sākumu"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =0
                            Left =495
                            Top =1605
                            Width =1005
                            Height =240
                            FontWeight =400
                            Name ="Text47"
                            Caption ="Uzvārds:"
                        End
                    End
                End
                Begin CommandButton
                    Default = NotDefault
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =3225
                    Top =480
                    Width =1430
                    Height =570
                    FontSize =8
                    FontWeight =400
                    TabIndex =5
                    HelpContextId =300
                    Name ="Show Customers"
                    Caption ="Meklēt pēc kritērijiem"
                    StatusBarText ="Rādīt līgumus, kas atbilst ievadītajiem kritērijiem"
                    OnClick ="[Event Procedure]"
                    FontName ="MS Sans Serif"
                    EventProcPrefix ="Show_Customers"
                End
                Begin Label
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =60
                    Top =60
                    Width =3570
                    Height =345
                    FontSize =12
                    FontWeight =400
                    Name ="Text51"
                    Caption ="Ievadiet meklēšanas kritērijus:"
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    Visible = NotDefault
                    SpecialEffect =2
                    OldBorderStyle =1
                    OverlapFlags =87
                    Left =1626
                    Top =1020
                    Width =945
                    ColumnOrder =1
                    TabIndex =1
                    BackColor =16777215
                    BorderColor =8421376
                    Name ="Datu"
                    StatusBarText ="Līguma datums"
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =85
                            TextFontFamily =0
                            Left =540
                            Top =1020
                            Width =960
                            Height =240
                            FontWeight =400
                            Name ="Label66"
                            Caption ="Datums:"
                        End
                    End
                End
                Begin CommandButton
                    Visible = NotDefault
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =7200
                    Top =1680
                    Width =1125
                    Height =540
                    FontSize =8
                    FontWeight =400
                    TabIndex =6
                    ForeColor =-2147483630
                    Name ="Apmaksas_Termini"
                    Caption ="Apmaksas termiņi"
                    OnClick ="[Event Procedure]"
                    FontName ="MS Sans Serif"
                End
                Begin CommandButton
                    Visible = NotDefault
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =7200
                    Top =1005
                    Width =1125
                    Height =600
                    FontSize =8
                    FontWeight =400
                    TabIndex =7
                    ForeColor =-2147483630
                    Name ="Atlaujas"
                    Caption ="Atļaujas līgumam"
                    OnClick ="[Event Procedure]"
                    FontName ="MS Sans Serif"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9807
                    Top =94
                    Width =516
                    Height =471
                    TabIndex =8
                    Name ="Aizvert"
                    Caption ="Command81"
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
                Begin CommandButton
                    Visible = NotDefault
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =4815
                    Top =480
                    Width =1190
                    Height =570
                    FontSize =8
                    FontWeight =400
                    TabIndex =9
                    Name ="MekletPersonu"
                    Caption ="Personas meklēšana"
                    OnClick ="[Event Procedure]"
                    FontName ="MS Sans Serif"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =11055
                    Top =30
                    ColumnOrder =5
                    TabIndex =10
                    Name ="Text94"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =11055
                    Top =322
                    ColumnOrder =6
                    TabIndex =11
                    Name ="Text96"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =10544
                    Top =47
                    Width =397
                    Height =219
                    ColumnOrder =7
                    TabIndex =12
                    Name ="MGRid"
                End
                Begin TextBox
                    SpecialEffect =2
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =1626
                    Top =1890
                    ColumnOrder =4
                    TabIndex =4
                    BackColor =16777164
                    BorderColor =8421376
                    Name ="PK"
                    StatusBarText ="Ievadiet personas koda sākumu"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =0
                            Left =30
                            Top =1890
                            Width =1470
                            Height =240
                            FontWeight =400
                            Name ="Label102"
                            Caption ="Personas kods:"
                        End
                    End
                End
                Begin CommandButton
                    Visible = NotDefault
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =3225
                    Top =1065
                    Width =1430
                    Height =570
                    FontSize =8
                    FontWeight =400
                    TabIndex =13
                    HelpContextId =300
                    Name ="Ligumi personai"
                    Caption ="Meklēt līgumus personai"
                    StatusBarText ="Meklēt līgumus personai"
                    OnClick ="[Event Procedure]"
                    FontName ="MS Sans Serif"
                    EventProcPrefix ="Ligumi_personai"
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =3225
                    Top =1650
                    Width =1430
                    Height =570
                    FontSize =8
                    FontWeight =400
                    TabIndex =14
                    HelpContextId =300
                    Name ="ClearCriteria"
                    Caption ="Attīrīt kritērijus"
                    StatusBarText ="Attīrīt meklēšanas kritērijus"
                    OnClick ="[Event Procedure]"
                    FontName ="MS Sans Serif"
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =8415
                    Top =1676
                    Width =1470
                    Height =540
                    FontSize =8
                    TabIndex =15
                    ForeColor =-2147483630
                    Name ="IzveletiesLigumu"
                    Caption ="Apmaksāt"
                    OnClick ="[Event Procedure]"
                    FontName ="MS Sans Serif"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =10544
                    Top =386
                    Width =397
                    Height =219
                    ColumnOrder =8
                    TabIndex =16
                    Name ="c_Nod_ID"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =11905
                    Top =630
                    Width =397
                    Height =219
                    ColumnOrder =9
                    TabIndex =17
                    Name ="c_NodNos"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =87
                    Left =11905
                    Top =855
                    Width =397
                    Height =219
                    ColumnOrder =10
                    TabIndex =18
                    Name ="c_MV_ID"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =12472
                    Top =614
                    Width =397
                    Height =219
                    ColumnOrder =11
                    TabIndex =19
                    Name ="c_Vajag_LNR"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =255
                    Left =12471
                    Top =826
                    Width =397
                    Height =219
                    ColumnOrder =12
                    TabIndex =20
                    Name ="c_VajagAdresi"
                End
                Begin TextBox
                    SpecialEffect =2
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =1621
                    Top =469
                    Width =1200
                    ColumnOrder =13
                    TabIndex =21
                    BackColor =16777215
                    BorderColor =8421376
                    Name ="AtlaujasNr"
                    StatusBarText ="Atļaujas-norīkojuma numurs"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =0
                            Left =120
                            Top =465
                            Width =1380
                            Height =240
                            FontWeight =400
                            Name ="AtlOrIstNr_lbl"
                            Caption ="Protokola Nr:"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =255
                    Left =12471
                    Top =1039
                    Width =340
                    Height =236
                    ColumnOrder =14
                    TabIndex =22
                    Name ="MeklTips"
                End
                Begin CommandButton
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =10148
                    Top =1700
                    Width =1035
                    Height =540
                    FontSize =8
                    FontWeight =400
                    TabIndex =23
                    ForeColor =-2147483630
                    Name ="cmdIzveidotAtlauju"
                    Caption ="Izveidot atļauju"
                    StatusBarText ="Izveidot atļauju"
                    OnClick ="[Event Procedure]"
                    FontName ="Tahoma"
                    ControlTipText ="Izveidot atļauju"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =119
                    Left =12471
                    Top =1275
                    Width =340
                    Height =236
                    ColumnOrder =15
                    TabIndex =24
                    Name ="Atl_Veidot"
                End
                Begin CommandButton
                    Visible = NotDefault
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =8415
                    Top =645
                    Width =1475
                    Height =960
                    FontSize =8
                    FontWeight =400
                    TabIndex =25
                    Name ="Crl_NeregPers"
                    Caption ="Autostāvvietas karte nereģistrētai personai"
                    OnClick ="[Event Procedure]"
                    FontName ="MS Sans Serif"
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =9975
                    Top =645
                    Width =1250
                    Height =960
                    FontSize =8
                    FontWeight =400
                    TabIndex =26
                    Name ="Prot_NeregPers"
                    Caption ="Protokols nereģistrētai personai"
                    OnClick ="[Event Procedure]"
                    FontName ="MS Sans Serif"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =12415
                    Top =1559
                    Width =397
                    Height =219
                    ColumnOrder =16
                    TabIndex =27
                    Name ="c_PLU_txt"
                End
            End
        End
        Begin Section
            CanGrow = NotDefault
            Height =4582
            BackColor =12632256
            Name ="Detail1"
            Begin
                Begin ListBox
                    ColumnHeads = NotDefault
                    OverlapFlags =255
                    ColumnCount =9
                    Left =56
                    Width =12925
                    Height =4500
                    BackColor =12632256
                    Name ="AForma"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="0;856;1027;1474;1134;1247;1247;1247;2835"
                    ValidationText ="Izvēlieties līgumu"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Izvēlieties līgumu"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =11055
                    Top =614
                    Width =510
                    Height =236
                    TabIndex =1
                    Name ="txt_stud_id"
                End
                Begin ListBox
                    ColumnHeads = NotDefault
                    Visible = NotDefault
                    OverlapFlags =247
                    ColumnCount =10
                    Left =60
                    Top =2415
                    Width =12925
                    Height =2070
                    TabIndex =2
                    BackColor =12632256
                    Name ="lb_AtlPiepr"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="0;0;1363;1363;1418;1418;1418;567;1418;1418"
                    ValidationText ="Izvēlieties līgumu"
                    OnClick ="[Event Procedure]"
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =93
                    TextAlign =1
                    Left =75
                    Top =2190
                    Width =3150
                    Height =240
                    FontWeight =400
                    Name ="lb_AtlPiepr_lbl"
                    Caption ="Protokoli:"
                End
            End
        End
        Begin FormFooter
            Height =0
            BackColor =12632256
            Name ="FormFooter2"
        End
    End
End
CodeBehindForm
' See "KA_PersMeklesana.cls"
