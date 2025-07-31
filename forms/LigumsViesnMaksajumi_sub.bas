Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    ScrollBars =2
    TabularCharSet =186
    GridX =5
    GridY =5
    Width =15780
    RowHeight =255
    DatasheetFontHeight =9
    ItemSuffix =104
    Left =5115
    Top =5550
    Right =20595
    Bottom =9360
    AfterInsert ="[Event Procedure]"
    RecSrcDt = Begin
        0x3417e0028ff0e540
    End
    RecordSource ="SELECT dbo_viesn_Maksajumi.*, IIf((IIf(IsNull([Total]),0,[Total])+IIf(IsNull([Ka"
        "vN_Summa]),0,[KavN_Summa]))-(IIf(IsNull([Ist_SamSum]),0,[Ist_SamSum])+IIf(IsNull"
        "([KavN_SamSum]),0,[KavN_SamSum]))>0,1,Null) AS P FROM dbo_viesn_Maksajumi WHERE "
        "(((dbo_viesn_Maksajumi.Stat) Is Null Or (dbo_viesn_Maksajumi.Stat)<>-1));"
    Caption ="MAKSAJUMI"
    AfterUpdate ="[Event Procedure]"
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
        Begin FormHeader
            Height =510
            BackColor =12632256
            Name ="FormHeader1"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =93
                    Left =10617
                    Top =290
                    Width =561
                    Height =180
                    ColumnOrder =0
                    Name ="LSumKopa"
                    ControlSource ="=Sum(IIf(Not IsNull([maks_day]),[sk_ist]*([dat_lidz]-[dat_no])*[maks_day],IIf(No"
                        "t IsNull([maks_men]),[sk_ist]*[maks_men])))"
                End
                Begin Label
                    OverlapFlags =85
                    Top =243
                    Width =567
                    Height =227
                    Name ="Label58"
                    Caption ="ist.nr."
                End
                Begin Label
                    OverlapFlags =85
                    Left =660
                    Top =243
                    Width =342
                    Height =227
                    Name ="Label59"
                    Caption ="sk."
                End
                Begin Label
                    OverlapFlags =85
                    Left =1188
                    Top =243
                    Width =567
                    Height =227
                    Name ="Label60"
                    Caption ="no:"
                End
                Begin Label
                    OverlapFlags =85
                    Left =1983
                    Top =243
                    Width =567
                    Height =227
                    Name ="Label61"
                    Caption ="līdz:"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =2580
                    Top =5
                    Width =660
                    Height =465
                    Name ="Label62"
                    Caption ="sum dienā"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Left =3435
                    Top =5
                    Width =765
                    Height =465
                    Name ="Label63"
                    Caption ="sum mēn."
                End
                Begin Label
                    OverlapFlags =85
                    Left =4422
                    Top =243
                    Width =567
                    Height =227
                    Name ="Label64"
                    Caption ="kopā"
                End
                Begin Label
                    OverlapFlags =85
                    Left =5101
                    Top =230
                    Width =570
                    Height =240
                    Name ="Label65"
                    Caption ="Atl.%"
                End
                Begin Label
                    OverlapFlags =93
                    Left =8055
                    Top =15
                    Width =1215
                    Height =255
                    Name ="Label66"
                    Caption ="Apmaksai"
                End
                Begin Label
                    OverlapFlags =247
                    Left =11070
                    Top =245
                    Width =1290
                    Height =225
                    Name ="Label67"
                    Caption ="Apmaksāts"
                End
                Begin Label
                    OverlapFlags =93
                    Left =9510
                    Width =1380
                    Height =255
                    Name ="Label69"
                    Caption ="Kavējuma n."
                End
                Begin Label
                    OverlapFlags =247
                    Left =9930
                    Top =245
                    Width =735
                    Height =225
                    Name ="Label73"
                    Caption ="summa"
                End
                Begin Label
                    OverlapFlags =85
                    Left =12657
                    Top =5
                    Width =720
                    Height =465
                    Name ="Label75"
                    Caption ="ist.apm. sum"
                End
                Begin Label
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =13425
                    Top =5
                    Width =510
                    Height =465
                    Name ="Label77"
                    Caption ="kav.n. sum"
                    FontName ="Arial Narrow"
                End
                Begin Label
                    OverlapFlags =223
                    Left =7935
                    Top =225
                    Width =750
                    Height =255
                    Name ="Label79"
                    Caption ="summ."
                End
                Begin Label
                    OverlapFlags =215
                    Left =8670
                    Top =226
                    Width =795
                    Height =240
                    Name ="Label80"
                    Caption ="termiņš"
                End
                Begin Label
                    OverlapFlags =215
                    Left =9598
                    Top =225
                    Width =255
                    Height =240
                    Name ="Label81"
                    Caption ="d."
                End
                Begin Label
                    OverlapFlags =85
                    Left =14883
                    Top =226
                    Width =345
                    Height =225
                    Name ="Label88"
                    Caption ="Br."
                End
                Begin Label
                    OverlapFlags =85
                    Left =15315
                    Top =225
                    Width =465
                    Height =225
                    Name ="Label89"
                    Caption ="Paz."
                End
                Begin Label
                    OverlapFlags =93
                    TextFontCharSet =186
                    Left =6585
                    Top =225
                    Width =345
                    Height =255
                    FontWeight =400
                    Name ="Label93"
                    Caption ="sk."
                End
                Begin Label
                    OverlapFlags =95
                    TextFontCharSet =186
                    TextAlign =2
                    Left =5775
                    Width =1935
                    Height =225
                    Name ="Label95"
                    Caption ="Tūrisma nodeva"
                End
                Begin Label
                    OverlapFlags =95
                    TextFontCharSet =186
                    Left =6962
                    Top =225
                    Width =345
                    Height =255
                    FontWeight =400
                    Name ="Label96"
                    Caption ="n.."
                End
                Begin Label
                    OverlapFlags =215
                    TextFontCharSet =186
                    Left =7262
                    Top =225
                    Width =465
                    Height =255
                    FontWeight =400
                    Name ="Label97"
                    Caption ="sum"
                End
                Begin Label
                    OverlapFlags =87
                    TextFontCharSet =186
                    Left =5790
                    Top =225
                    Width =330
                    Height =255
                    FontWeight =400
                    Name ="Label100"
                    Caption ="<18"
                End
                Begin Label
                    OverlapFlags =87
                    TextFontCharSet =186
                    Left =6180
                    Top =225
                    Width =330
                    Height =285
                    FontWeight =400
                    Name ="Label91"
                    Caption ="DS."
                End
                Begin Label
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =13950
                    Top =5
                    Width =450
                    Height =465
                    Name ="Label102"
                    Caption ="TN sum"
                    FontName ="Arial Narrow"
                End
            End
        End
        Begin Section
            Height =261
            BackColor =12632256
            Name ="Detail0"
            Begin
                Begin TextBox
                    OverlapFlags =93
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =662
                    Width =330
                    Height =225
                    ColumnWidth =330
                    ColumnOrder =1
                    TabIndex =1
                    Name ="SK_IST"
                    ControlSource ="SK_IST"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    OverlapFlags =87
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =1005
                    Width =750
                    Height =225
                    ColumnWidth =1080
                    ColumnOrder =2
                    TabIndex =2
                    Name ="DAT_NO"
                    ControlSource ="DAT_NO"
                    AfterUpdate ="[Event Procedure]"
                    OnEnter ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =1800
                    Width =750
                    Height =225
                    ColumnWidth =1065
                    ColumnOrder =3
                    TabIndex =3
                    Name ="DAT_LIDZ"
                    ControlSource ="DAT_LIDZ"
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
                    Left =8009
                    Width =675
                    Height =225
                    ColumnWidth =780
                    ColumnOrder =8
                    TabIndex =6
                    Name ="TOTAL"
                    ControlSource ="Total"
                    Format ="Fixed"
                    FontName ="Arial Narrow"
                End
                Begin ComboBox
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextAlign =3
                    TextFontFamily =34
                    DecimalPlaces =2
                    ListWidth =851
                    Left =2580
                    Width =790
                    Height =225
                    ColumnWidth =795
                    ColumnOrder =4
                    TabIndex =4
                    Name ="MAKS_DAY"
                    ControlSource ="MAKS_DAY"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT dbo_viesn_kl_LBData.DIENA FROM dbo_viesn_kl_LBData WHERE ((Not (dbo_viesn"
                        "_kl_LBData.DIENA) Is Null)) OR (((dbo_viesn_kl_LBData.ID)=8)) ORDER BY dbo_viesn"
                        "_kl_LBData.DIENA DESC;"
                    ColumnWidths ="851"
                    AfterUpdate ="[Event Procedure]"
                    OnEnter ="[Event Procedure]"
                    OnExit ="[Event Procedure]"
                    OnDblClick ="[Event Procedure]"
                    FontName ="Arial Narrow"
                    Format ="Fixed"
                End
                Begin ComboBox
                    OverlapFlags =93
                    TextFontCharSet =186
                    TextAlign =3
                    TextFontFamily =34
                    DecimalPlaces =2
                    ListWidth =907
                    Left =3435
                    Width =790
                    Height =225
                    ColumnWidth =870
                    ColumnOrder =5
                    TabIndex =5
                    Name ="MAKS_MEN"
                    ControlSource ="MAKS_MEN"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT dbo_viesn_kl_LBData.MENESS FROM dbo_viesn_kl_LBData WHERE ((Not (dbo_vies"
                        "n_kl_LBData.MENESS) Is Null)) OR (((dbo_viesn_kl_LBData.ID)=8)) ORDER BY dbo_vie"
                        "sn_kl_LBData.MENESS DESC;"
                    ColumnWidths ="907"
                    AfterUpdate ="[Event Procedure]"
                    OnEnter ="[Event Procedure]"
                    OnExit ="[Event Procedure]"
                    OnDblClick ="[Event Procedure]"
                    FontName ="Arial Narrow"
                    Format ="Fixed"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =11931
                    Width =750
                    Height =225
                    ColumnWidth =1080
                    ColumnOrder =9
                    TabIndex =7
                    Name ="LAST_DAT"
                    ControlSource ="LAST_DAT"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    Visible = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =93
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =4308
                    Width =231
                    Height =225
                    ColumnWidth =0
                    ColumnOrder =10
                    TabIndex =8
                    Name ="FABULA"
                    ControlSource ="FABULA"
                    FontName ="Arial Narrow"
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    OverlapFlags =87
                    TextFontCharSet =186
                    TextFontFamily =34
                    Width =645
                    Height =225
                    ColumnWidth =660
                    ColumnOrder =0
                    Name ="IST_NR"
                    ControlSource ="IST_NR"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCT dbo_viesn_Ligumi_Istabas.Istaba FROM dbo_viesn_Ligumi_Istabas WH"
                        "ERE ((Not (dbo_viesn_Ligumi_Istabas.Istaba) Is Null) AND ((dbo_viesn_Ligumi_Ista"
                        "bas.Ligums)=[forms]![LigumsViesn]![ligums])) ORDER BY dbo_viesn_Ligumi_Istabas.I"
                        "staba;"
                    AfterUpdate ="[Event Procedure]"
                    OnDblClick ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    ColumnHidden = NotDefault
                    DecimalPlaces =2
                    OverlapFlags =93
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =14656
                    Width =240
                    Height =225
                    ColumnWidth =0
                    ColumnOrder =11
                    TabIndex =9
                    Name ="Text48"
                    ControlSource ="=IIf(Not IsNull([maks_day]),[sk_ist]*([dat_lidz]-[dat_no])*[maks_day],IIf(Not Is"
                        "Null([maks_men]),[sk_ist]*[maks_men]))"
                    Format ="Fixed"
                    FontName ="Arial Narrow"
                End
                Begin ComboBox
                    LimitToList = NotDefault
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextAlign =1
                    TextFontFamily =34
                    ColumnCount =2
                    ListRows =5
                    ListWidth =851
                    Left =11070
                    Width =810
                    Height =225
                    ColumnWidth =750
                    ColumnOrder =12
                    TabIndex =10
                    Name ="MaksVeids"
                    ControlSource ="MaksVeids"
                    RowSourceType ="Value List"
                    RowSource ="1;\"Kase\";2;\"Banka\";3;\"C kase\";4;\"Depozīts\";5;\"Iekš.norēķini\""
                    ColumnWidths ="0;851"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    Enabled = NotDefault
                    DecimalPlaces =2
                    OverlapFlags =255
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =4422
                    Width =675
                    Height =225
                    ColumnWidth =825
                    ColumnOrder =6
                    TabIndex =11
                    Name ="Kopa"
                    ControlSource ="Kopa"
                    Format ="Fixed"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =119
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =5102
                    Width =555
                    Height =225
                    ColumnWidth =630
                    ColumnOrder =7
                    TabIndex =12
                    Name ="Atlaide"
                    ControlSource ="Atlaide"
                    Format ="Percent"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    OverlapFlags =93
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =8715
                    Width =750
                    Height =225
                    TabIndex =13
                    Name ="IstMaksTermins"
                    ControlSource ="IstMaksTermins"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    OverlapFlags =93
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =9598
                    Width =330
                    Height =225
                    TabIndex =14
                    Name ="KavN_Dienas"
                    ControlSource ="KavN_Dienas"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    Enabled = NotDefault
                    DecimalPlaces =2
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =9990
                    Width =675
                    Height =225
                    TabIndex =15
                    Name ="KavN_Summa"
                    ControlSource ="KavN_Summa"
                    Format ="Fixed"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =12717
                    Width =675
                    Height =225
                    TabIndex =16
                    Name ="Ist_SamSum"
                    ControlSource ="Ist_SamSum"
                    Format ="Fixed"
                    FontName ="Arial Narrow"
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =13425
                    Width =450
                    Height =225
                    TabIndex =17
                    Name ="KavN_SamSum"
                    ControlSource ="KavN_SamSum"
                    Format ="Fixed"
                    FontName ="Arial Narrow"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =10725
                    Top =15
                    Width =261
                    Height =231
                    TabIndex =18
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
                        0x000301000000000000000000
                    End
                    ControlTipText ="Apmaksāt nākamo mēnesi"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =247
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =4081
                    Width =231
                    Height =225
                    TabIndex =19
                    Name ="Ligums"
                    ControlSource ="Ligums"
                    FontName ="Arial Narrow"
                End
                Begin CommandButton
                    OverlapFlags =247
                    Left =14646
                    Width =246
                    Height =261
                    TabIndex =20
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
                    FontName ="MS Sans Serif"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Dzēst maksājuma ierakstu"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =87
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =9483
                    Width =111
                    Height =225
                    TabIndex =21
                    Name ="Stat"
                    ControlSource ="Stat"
                    FontName ="Arial Narrow"
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =15000
                    Top =30
                    Width =188
                    Height =188
                    TabIndex =22
                    Name ="Bridinajums"
                    ControlSource ="Brid"
                    OnClick ="[Event Procedure]"
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =15435
                    Top =30
                    Width =188
                    Height =188
                    TabIndex =23
                    Name ="Pazinojums"
                    ControlSource ="Paz"
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =14430
                    Width =180
                    Height =225
                    TabIndex =24
                    Name ="Text90"
                    ControlSource ="P"
                    Format ="Fixed"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000066000000010000000000000002000000000000000200000001000000 ,
                        0x00000000ff000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x310000000000
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =6169
                    Width =330
                    Height =225
                    TabIndex =25
                    Name ="TNNepiemeroDS"
                    ControlSource ="TNNepiemeroDS"
                    StatusBarText ="TN neattiecas - darbs vai studijas"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial Narrow"
                    ShortcutMenuBar ="TN neattiecas - darbs vai studijas"
                    ControlTipText ="TN neattiecas - darbs vai studijas"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =6589
                    Width =330
                    Height =225
                    TabIndex =26
                    Name ="TNKopa"
                    ControlSource ="TNKopa"
                    StatusBarText ="TN piemēro"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial Narrow"
                    ShortcutMenuBar ="TN piemēro"
                    ControlTipText ="TN piemēro"
                    ConditionalFormat = Begin
                        0x0100000066000000010000000000000005000000000000000200000001000000 ,
                        0x00000000ed1c2400000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x300000000000
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =6964
                    Width =330
                    Height =225
                    TabIndex =27
                    Name ="TNNaktis"
                    ControlSource ="TNNaktis"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =7384
                    Width =330
                    Height =225
                    TabIndex =28
                    Name ="TNSum"
                    ControlSource ="TNSum"
                    FontName ="Arial Narrow"
                    ConditionalFormat = Begin
                        0x0100000066000000010000000000000005000000000000000200000001000000 ,
                        0x00000000ed1c2400000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x300000000000
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =5784
                    Width =330
                    Height =225
                    TabIndex =29
                    Name ="TNNepiemero18"
                    ControlSource ="TNNepiemero18"
                    StatusBarText ="TN nepiemēro - mazāk par 18 gadiem"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial Narrow"
                    ShortcutMenuBar ="TN nepiemēro - mazāk par 18 gadiem"
                    ControlTipText ="TN nepiemēro - mazāk par 18 gadiem"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    TextFontCharSet =186
                    TextFontFamily =34
                    Left =13950
                    Width =450
                    Height =225
                    TabIndex =30
                    Name ="TN_SamSum"
                    ControlSource ="TN_SamSum"
                    Format ="Fixed"
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
' See "LigumsViesnMaksajumi_sub.cls"
