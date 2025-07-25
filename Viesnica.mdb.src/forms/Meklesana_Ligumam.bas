Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    TabularCharSet =186
    Width =12069
    ItemSuffix =107
    Left =3210
    Top =3615
    Right =15285
    Bottom =8460
    HelpContextId =109
    RecSrcDt = Begin
        0xc74566a4b98de140
    End
    Caption ="Meklēšana"
    OnOpen ="[Event Procedure]"
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
            Height =1883
            BackColor =12632256
            Name ="FormHeader0"
            Begin
                Begin Label
                    OverlapFlags =93
                    TextFontFamily =0
                    Left =10500
                    Top =1185
                    Width =960
                    Height =288
                    FontWeight =400
                    Name ="Label104"
                    Caption ="Izziņas"
                End
                Begin TextBox
                    SpecialEffect =2
                    OldBorderStyle =1
                    OverlapFlags =85
                    TextAlign =3
                    Left =1196
                    Top =1050
                    Width =855
                    ColumnOrder =3
                    BackColor =16777215
                    BorderColor =8421376
                    Name ="Ligu"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =30
                            Top =1050
                            Width =1020
                            Height =225
                            FontWeight =400
                            Name ="Text43"
                            Caption ="Līguma. Nr:"
                            FontName ="Tahoma"
                        End
                    End
                End
                Begin TextBox
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =1196
                    Top =1305
                    Width =1965
                    ColumnOrder =4
                    TabIndex =2
                    BackColor =16777164
                    BorderColor =8421376
                    Name ="Vard"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =60
                            Top =1305
                            Width =990
                            Height =240
                            FontWeight =400
                            Name ="Vard_txt"
                            Caption ="Vārds:"
                            FontName ="Tahoma"
                        End
                    End
                End
                Begin TextBox
                    SpecialEffect =2
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =1207
                    Top =1575
                    Width =1965
                    ColumnOrder =5
                    TabIndex =3
                    BackColor =16777164
                    BorderColor =8421376
                    Name ="Uzva"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =56
                            Top =1575
                            Width =1005
                            Height =240
                            FontWeight =400
                            Name ="Uzva_txt"
                            Caption ="Uzvārds:"
                            FontName ="Tahoma"
                        End
                    End
                End
                Begin CommandButton
                    Default = NotDefault
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =3285
                    Top =1260
                    Width =1140
                    Height =576
                    FontSize =8
                    FontWeight =400
                    TabIndex =4
                    HelpContextId =300
                    Name ="MekletLigumus"
                    Caption ="Meklēt pēc kritērijiem"
                    StatusBarText ="Rādīt līgumus, kas atbilst ievadītajiem kritērijiem"
                    OnClick ="[Event Procedure]"
                    FontName ="Tahoma"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    TextFontFamily =0
                    Left =75
                    Width =3690
                    Height =330
                    FontSize =12
                    FontWeight =400
                    Name ="Text51"
                    Caption ="Ievadiet meklēšanas kritērijus:"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =4796
                    Top =1260
                    Width =1101
                    Height =576
                    FontWeight =400
                    TabIndex =5
                    ForeColor =-2147483630
                    Name ="Skatit_Ligumu"
                    Caption ="Skatīt / labot līgumu"
                    OnClick ="[Event Procedure]"
                    FontName ="Tahoma"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =6311
                    Top =1260
                    Width =1155
                    Height =576
                    FontSize =8
                    FontWeight =400
                    TabIndex =6
                    ForeColor =-2147483630
                    Name ="Jauns_Ligums"
                    Caption ="Jauns līgums"
                    OnClick ="[Event Procedure]"
                    FontName ="Tahoma"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =11325
                    Top =60
                    Width =591
                    Height =516
                    TabIndex =7
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
                        0x0000000000000000000000000000000000000000
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Aizvērt formu"
                End
                Begin ToggleButton
                    OverlapFlags =85
                    Left =7856
                    Top =1260
                    Width =1134
                    Height =576
                    ColumnOrder =6
                    TabIndex =8
                    ForeColor =0
                    Name ="cmdRez"
                    Caption ="Rezervisti"
                    FontName ="Arial"
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    SpecialEffect =2
                    OldBorderStyle =1
                    OverlapFlags =85
                    Left =1196
                    Top =780
                    Width =855
                    ColumnOrder =7
                    TabIndex =9
                    BackColor =16777215
                    BorderColor =8421376
                    Name ="Istaba"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =210
                            Top =780
                            Width =840
                            Height =240
                            FontWeight =400
                            Name ="Label83"
                            Caption ="Istabas Nr:"
                            FontName ="Tahoma"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =5996
                    Top =600
                    Width =1134
                    Height =578
                    FontSize =8
                    FontWeight =400
                    TabIndex =10
                    Name ="IstStatUzDatumu"
                    Caption ="Istabiņu stāvoklis"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =7311
                    Top =600
                    Width =1359
                    Height =578
                    FontSize =8
                    FontWeight =400
                    TabIndex =11
                    Name ="PA_apmaksa"
                    Caption ="Papildaprīkojuma apmaksa"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =8774
                    Top =600
                    Width =1359
                    Height =578
                    FontSize =8
                    FontWeight =400
                    TabIndex =12
                    Name ="PA_Apmaksa_quest"
                    Caption ="Papildaprīkojuma apmaksa jaut."
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =4635
                    Top =600
                    Width =1134
                    Height =578
                    FontSize =8
                    FontWeight =400
                    TabIndex =13
                    Name ="Kase"
                    Caption ="Kase"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =3285
                    Top =827
                    Width =1140
                    Height =351
                    FontSize =8
                    FontWeight =400
                    TabIndex =1
                    HelpContextId =300
                    Name ="ClearCrit"
                    Caption ="Attīrīt kritērijus"
                    StatusBarText ="Attīrīt kritēriju laukus"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin CommandButton
                    OverlapFlags =87
                    TextFontFamily =34
                    Left =10248
                    Top =600
                    Width =969
                    Height =578
                    FontSize =8
                    FontWeight =400
                    TabIndex =14
                    Name ="JTM_IK_sar"
                    Caption ="JTM ieejas kartes"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =2211
                    Top =847
                    Width =113
                    Height =189
                    ColumnOrder =2
                    TabIndex =15
                    Name ="Istaba_Sodien"
                    DefaultValue ="True"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            TextFontFamily =0
                            Left =2437
                            Top =800
                            Width =750
                            Height =285
                            FontWeight =400
                            Name ="Label95"
                            Caption ="šodien"
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =226
                    Top =472
                    Width =113
                    Height =189
                    ColumnOrder =0
                    TabIndex =16
                    Name ="Mekl_Irnieks"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="True"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            TextFontFamily =0
                            Left =452
                            Top =425
                            Width =750
                            Height =285
                            FontWeight =400
                            Name ="Label97"
                            Caption ="īrnieks"
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =1417
                    Top =472
                    Width =113
                    Height =189
                    ColumnOrder =1
                    TabIndex =17
                    Name ="Mekl_Maksatajs"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="False"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =1
                            TextFontFamily =0
                            Left =1650
                            Top =420
                            Width =1005
                            Height =285
                            FontWeight =400
                            Name ="Label99"
                            Caption ="maksātājs"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =215
                    TextFontFamily =34
                    Left =10245
                    Top =1455
                    Width =864
                    Height =323
                    FontSize =8
                    FontWeight =400
                    TabIndex =18
                    Name ="Izzin_Jauns"
                    Caption ="Sagatavot"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                End
                Begin CommandButton
                    OverlapFlags =215
                    TextFontFamily =34
                    Left =11168
                    Top =1455
                    Width =864
                    Height =323
                    FontSize =8
                    FontWeight =400
                    TabIndex =19
                    Name ="Command101"
                    Caption ="Saraksts"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =9127
                    Top =1228
                    Width =969
                    Height =578
                    FontSize =8
                    FontWeight =400
                    TabIndex =20
                    Name ="TNSaraksts"
                    Caption ="TN saraksts"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =11325
                    Top =585
                    Width =744
                    Height =578
                    FontSize =8
                    FontWeight =400
                    TabIndex =21
                    Name ="MZakti_saraksts"
                    Caption ="MZ akti, saraksts"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                End
            End
        End
        Begin Section
            CanGrow = NotDefault
            Height =2968
            BackColor =12632256
            Name ="Detail1"
            Begin
                Begin ListBox
                    ColumnHeads = NotDefault
                    OverlapFlags =85
                    TextFontFamily =0
                    ColumnCount =10
                    Left =56
                    Top =47
                    Width =11907
                    Height =2921
                    FontSize =12
                    BackColor =12632256
                    Name ="AForma"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT tab.LIGUM_ID, tab.Ligums, tab.Lig_Dat AS Datums, dbo_Personas.Vards AS Vā"
                        "rds, dbo_Personas.Uzvards AS Uzvārds, dbo_Personas.Pers_Kods AS PK, dbo_Personas"
                        ".Valsts, tab.Datums_In AS Ievācas, tab.Datums_Out AS Izvācas, tab.Position AS St"
                        "āvoklis FROM dbo_viesn_Ligumi AS tab LEFT JOIN dbo_Personas ON tab.Pers_ID = dbo"
                        "_Personas.Personas_ID  WHERE ((dbo_Personas.VARDS LIKE \"a*\") AND (dbo_Personas"
                        ".UZVARDS LIKE \"a*\")) ORDER BY tab.Ligums DESC;"
                    ColumnWidths ="0;854;1304;1134;1701;1762;1134;1304;1304;1134"
                    ValidationText ="Izvēlieties līgumu"
                    ControlTipText ="Izvēlieties līgumu"
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
' See "Meklesana_Ligumam.cls"
