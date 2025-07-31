Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    OrderByOn = NotDefault
    ScrollBars =2
    TabularCharSet =186
    GridX =5
    GridY =5
    Width =8296
    RowHeight =255
    DatasheetFontHeight =9
    ItemSuffix =62
    Left =4800
    Top =6945
    Right =13215
    Bottom =8745
    AfterInsert ="[Event Procedure]"
    RecSrcDt = Begin
        0x63a323b29053e440
    End
    RecordSource ="SELECT dbo_viesn_Ligumi_PApr_Maksajumi.VLPAM_ID, dbo_viesn_Ligumi_PApr_Maksajumi"
        ".VLPA_ID, dbo_viesn_Ligumi_PApr_Maksajumi.Ligums, dbo_viesn_Ligumi_PApr_Maksajum"
        "i.IstNr, dbo_viesn_Ligumi_PApr_Maksajumi.Dat_No, dbo_viesn_Ligumi_PApr_Maksajumi"
        ".PA_Nos, dbo_viesn_Ligumi_PApr_Maksajumi.Dat_Lidz, dbo_viesn_Ligumi_PApr_Maksaju"
        "mi.Cena, dbo_viesn_Ligumi_PApr_Maksajumi.SamPerSk, dbo_viesn_Ligumi_PApr_Maksaju"
        "mi.SamSum, dbo_viesn_Ligumi_PApr_Maksajumi.PE_Cena, dbo_viesn_Ligumi_PApr_Maksaj"
        "umi.PE_SamSum, dbo_viesn_Ligumi_PApr_Maksajumi.PE_PA_SamaksataSum, dbo_viesn_Lig"
        "umi_PApr_Maksajumi.Fabula, dbo_viesn_Ligumi_PApr_Maksajumi.MaksVeids, dbo_viesn_"
        "Ligumi_PApr_Maksajumi.MaksDat, dbo_viesn_Ligumi_PApr_Maksajumi.PA_SamaksataSum, "
        "dbo_viesn_Ligumi_PApr_Maksajumi.Stat FROM dbo_viesn_Ligumi_PApr_Maksajumi WHERE "
        "(((dbo_viesn_Ligumi_PApr_Maksajumi.Stat) Is Null Or (dbo_viesn_Ligumi_PApr_Maksa"
        "jumi.Stat)<>-1)) ORDER BY dbo_viesn_Ligumi_PApr_Maksajumi.Dat_No DESC , dbo_vies"
        "n_Ligumi_PApr_Maksajumi.PA_Nos;"
    Caption ="MAKSAJUMI"
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
        Begin FormHeader
            Height =241
            BackColor =12632256
            Name ="FormHeader1"
            Begin
                Begin Label
                    BackStyle =0
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =15
                    Top =1
                    Width =390
                    Height =240
                    FontWeight =400
                    BackColor =-2147483633
                    ForeColor =-2147483630
                    Name ="Istaba_Label"
                    Caption ="ist."
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    BackStyle =0
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =2514
                    Top =1
                    Width =735
                    Height =240
                    FontWeight =400
                    BackColor =-2147483633
                    ForeColor =-2147483630
                    Name ="LIDat_No_Label"
                    Caption ="Dat. no"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    BackStyle =0
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =3307
                    Top =1
                    Width =735
                    Height =240
                    FontWeight =400
                    BackColor =-2147483633
                    ForeColor =-2147483630
                    Name ="LIDatLidz_Label"
                    Caption ="Dat. līdz"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    BackStyle =0
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =780
                    Top =1
                    Width =1260
                    Height =240
                    FontWeight =400
                    BackColor =-2147483633
                    ForeColor =-2147483630
                    Name ="Label11"
                    Caption ="Nosaukums"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    BackStyle =0
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =4475
                    Width =375
                    Height =240
                    FontWeight =400
                    BackColor =-2147483633
                    ForeColor =-2147483630
                    Name ="Label13"
                    Caption ="Cena"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    BackStyle =0
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =4055
                    Width =405
                    Height =240
                    FontWeight =400
                    BackColor =-2147483633
                    ForeColor =-2147483630
                    Name ="Label54"
                    Caption ="Mēn."
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    BackStyle =0
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =4865
                    Width =525
                    Height =240
                    FontWeight =400
                    BackColor =-2147483633
                    ForeColor =-2147483630
                    Name ="Label55"
                    Caption ="Summa"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    BackStyle =0
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =6750
                    Width =735
                    Height =240
                    FontWeight =400
                    BackColor =-2147483633
                    ForeColor =-2147483630
                    Name ="Label56"
                    Caption ="Maks. dat."
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    BackStyle =0
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =7500
                    Width =555
                    Height =240
                    FontWeight =400
                    BackColor =-2147483633
                    ForeColor =-2147483630
                    Name ="Label58"
                    Caption ="sum."
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
            End
        End
        Begin Section
            Height =269
            BackColor =12632256
            Name ="Detail0"
            Begin
                Begin TextBox
                    OverlapFlags =93
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =2460
                    Width =795
                    Height =225
                    ColumnWidth =1080
                    ColumnOrder =2
                    TabIndex =3
                    Name ="DAT_NO"
                    ControlSource ="Dat_No"
                    AfterUpdate ="[Event Procedure]"
                    OnEnter ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    OverlapFlags =93
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =3285
                    Width =795
                    Height =225
                    ColumnWidth =1065
                    ColumnOrder =3
                    TabIndex =4
                    Name ="DAT_LIDZ"
                    ControlSource ="Dat_Lidz"
                    AfterUpdate ="[Event Procedure]"
                    OnExit ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    Enabled = NotDefault
                    DecimalPlaces =2
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =4857
                    Width =570
                    Height =225
                    ColumnWidth =720
                    ColumnOrder =5
                    TabIndex =6
                    Name ="TOTAL"
                    ControlSource ="PE_SamSum"
                    Format ="Fixed"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    OverlapFlags =93
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =6750
                    Width =795
                    Height =225
                    ColumnWidth =1080
                    ColumnOrder =6
                    TabIndex =7
                    Name ="LAST_DAT"
                    ControlSource ="MaksDat"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    Visible = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =255
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =7059
                    Width =216
                    Height =225
                    ColumnWidth =0
                    ColumnOrder =7
                    TabIndex =8
                    Name ="FABULA"
                    ControlSource ="Fabula"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextAlign =3
                    TextFontFamily =34
                    Left =4437
                    Width =385
                    Height =225
                    ColumnWidth =735
                    ColumnOrder =4
                    TabIndex =5
                    Name ="MAKS_MEN"
                    ControlSource ="PE_Cena"
                    Format ="Fixed"
                    AfterUpdate ="[Event Procedure]"
                    OnExit ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    OverlapFlags =87
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =750
                    Height =225
                    ColumnOrder =1
                    TabIndex =2
                    Name ="Nosaukums"
                    ControlSource ="PA_Nos"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    Visible = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =255
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =7286
                    Width =225
                    Height =225
                    ColumnWidth =0
                    TabIndex =9
                    Name ="Ligums"
                    ControlSource ="Ligums"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Width =375
                    Height =225
                    ColumnWidth =630
                    ColumnOrder =0
                    Name ="IST_NR"
                    ControlSource ="IstNr"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin CommandButton
                    OverlapFlags =93
                    Left =5490
                    Width =306
                    Height =246
                    TabIndex =10
                    ForeColor =0
                    Name ="Apmaksat"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadadadadadadadaadada00dadadadaddada0ff00adadada ,
                        0xada0f00ff00dadadda0f0ff00ff00adaa0f0fffff00ff00dda0ff00ffff00ff0 ,
                        0xa0ff0ff00ffff00dda00fffff00ffff0ad0ffff44ff00f0dd0ffff4444fff00a ,
                        0xad00f444444ffff0dada07f44fffff0aadadad044ffff0addadadad447ff0ada ,
                        0xadadada44d00adad
                    End
                    FontName ="MS Sans Serif"
                    ObjectPalette = Begin
                        0x0003100000000000800000000080000080800000000080008000800000808000 ,
                        0x80808000c0c0c000ff000000c0c0c000ffff00000000ff00c0c0c00000ffff00 ,
                        0xffffff0000000000
                    End
                    ControlTipText ="Apmaksāt nākošo mēnesi"
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =87
                    TextFontCharSet =186
                    TextAlign =3
                    TextFontFamily =34
                    Left =4095
                    Width =310
                    Height =225
                    TabIndex =11
                    Name ="SamPerSk"
                    ControlSource ="SamPerSk"
                    Format ="Fixed"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =93
                    TextFontCharSet =186
                    TextAlign =1
                    TextFontFamily =34
                    ColumnCount =2
                    ListRows =3
                    ListWidth =851
                    Left =5900
                    Width =810
                    TabIndex =12
                    Name ="MaksVeids"
                    ControlSource ="MaksVeids"
                    RowSourceType ="Value List"
                    RowSource ="1;\"Kase\";2;\"Banka\";3;\"C kase\""
                    ColumnWidths ="0;852"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =255
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =7515
                    Width =570
                    Height =225
                    TabIndex =13
                    Name ="PA_SamaksataSum"
                    ControlSource ="PE_PA_SamaksataSum"
                    Format ="Fixed"
                    FontName ="Arial Narrow"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =420
                    Width =265
                    Height =269
                    TabIndex =1
                    ForeColor =0
                    Name ="PA_sar"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                    FontName ="MS Sans Serif"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =247
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =7710
                    Width =216
                    Height =225
                    TabIndex =14
                    Name ="VLPA_ID"
                    ControlSource ="VLPA_ID"
                    FontName ="Arial Narrow"
                End
                Begin CommandButton
                    OverlapFlags =247
                    Left =8050
                    Width =246
                    Height =261
                    TabIndex =15
                    ForeColor =0
                    Name ="Dzest"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadadadadadadadaadadadadadadadaddadadadadadadada ,
                        0xadadadadadadadaddada177adada77da1dad1177adad17ad11da7117dad71ada ,
                        0x111da1177d117dad1111d7117711dada11111d11111dadad1111da71117adada ,
                        0x111d77111177adad11d711da71177ada1dadadada71177addadadadadad11ada ,
                        0xadadadadadadadad
                    End
                    FontName ="MS Sans Serif"
                    ObjectPalette = Begin
                        0x0003100000000000800000000080000080800000000080008000800000808000 ,
                        0x80808000c0c0c000ff000000c0c0c000ffff00000000ff00c0c0c00000ffff00 ,
                        0xffffff0000000000
                    End
                    ControlTipText ="Dzēst maksājuma ierakstu"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =247
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =5775
                    Width =225
                    Height =225
                    TabIndex =16
                    Name ="Stat"
                    ControlSource ="Stat"
                    FontName ="Arial Narrow"
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
' See "PE_LigumsViesnIstabinas_PASar_Samaksa_sub.cls"
