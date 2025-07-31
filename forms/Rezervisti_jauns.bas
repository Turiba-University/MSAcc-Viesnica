Version =19
VersionRequired =19
Begin Form
    AutoResize = NotDefault
    RecordSelectors = NotDefault
    CloseButton = NotDefault
    AllowAdditions = NotDefault
    ScrollBars =2
    ViewsAllowed =1
    GridX =20
    GridY =20
    Width =12199
    ItemSuffix =72
    Left =4485
    Top =120
    Right =14985
    Bottom =3570
    RecSrcDt = Begin
        0x8ca4f1835abbe240
    End
    Caption ="Jauns"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            TextAlign =1
            BackColor =12632256
            FontName ="Arial"
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
        Begin ToggleButton
            TextFontCharSet =186
            TextFontFamily =2
            Width =283
            Height =283
        End
        Begin FormHeader
            Height =648
            BackColor =12632256
            Name ="FormHeader1"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextFontFamily =0
                    Width =3060
                    Height =210
                    Name ="VS"
                    FontName ="MS Sans Serif"
                End
                Begin Label
                    OverlapFlags =85
                    Top =421
                    Width =680
                    Height =227
                    Name ="Text46"
                    Caption ="Vārds"
                End
                Begin Label
                    OverlapFlags =85
                    Left =795
                    Top =420
                    Width =690
                    Height =225
                    Name ="Text47"
                    Caption ="Uzvārds"
                End
                Begin Label
                    OverlapFlags =85
                    Left =2040
                    Top =420
                    Width =735
                    Height =225
                    Name ="Text48"
                    Caption ="Pases Nr"
                End
                Begin Label
                    OverlapFlags =85
                    Left =8220
                    Top =421
                    Width =690
                    Height =225
                    Name ="Text50"
                    Caption ="Rajons"
                End
                Begin Label
                    OverlapFlags =85
                    Left =9581
                    Top =421
                    Width =690
                    Height =225
                    Name ="Text51"
                    Caption ="Pilsēta"
                End
                Begin Label
                    OverlapFlags =85
                    Left =10828
                    Top =421
                    Width =315
                    Height =225
                    Name ="Text52"
                    Caption ="Iela"
                End
                Begin Label
                    OverlapFlags =85
                    Left =3061
                    Top =421
                    Width =690
                    Height =225
                    Name ="Text53"
                    Caption ="Tālrunis"
                End
                Begin ToggleButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =0
                    TextFontFamily =34
                    Left =7552
                    Top =28
                    Width =681
                    Height =346
                    FontSize =8
                    FontWeight =400
                    Name ="Cancel"
                    Caption ="Aizvērt"
                    FontName ="Arial"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5725
                    Top =56
                    Width =1080
                    Height =345
                    TabIndex =1
                    Name ="Saglabat"
                    Caption ="Saglabāt"
                    OnClick ="[Event Procedure]"
                End
                Begin Label
                    OverlapFlags =85
                    Left =4110
                    Top =420
                    Width =540
                    Height =225
                    Name ="Label68"
                    Caption ="Valsts"
                End
                Begin Label
                    OverlapFlags =85
                    Left =5612
                    Top =420
                    Width =540
                    Height =225
                    Name ="Label70"
                    Caption ="Valsts"
                End
            End
        End
        Begin Section
            Height =255
            BackColor =12632256
            Name ="Detail0"
            Begin
                Begin TextBox
                    OverlapFlags =93
                    Width =789
                    Name ="Vārds"
                    AfterUpdate ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =95
                    Left =793
                    Width =1239
                    TabIndex =1
                    Name ="Uzvārds"
                    AfterUpdate ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =95
                    Left =2040
                    Width =1026
                    TabIndex =2
                    Name ="Pase"
                End
                Begin TextBox
                    OverlapFlags =93
                    Left =10828
                    Width =1371
                    TabIndex =5
                    Name ="Iela"
                    AfterUpdate ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =3061
                    Width =1026
                    TabIndex =6
                    Name ="Tel"
                End
                Begin ComboBox
                    OverlapFlags =93
                    Left =8107
                    Width =1355
                    Height =235
                    TabIndex =3
                    Name ="Rajons"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCTROW [ND Nodaļas].[Nodaļa] FROM [ND Nodaļas] ORDER BY [ND Nodaļas]"
                        ".[Nodaļa]; "
                End
                Begin ComboBox
                    OverlapFlags =247
                    ListWidth =1690
                    Left =9467
                    Width =1375
                    Height =227
                    TabIndex =4
                    Name ="Pilsēta"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT [ND Nodaļas].[Nodaļa] FROM [ND Nodaļas] ORDER BY [ND Nodaļas].[Nodaļa]; "
                    ColumnWidths ="1440"
                    AfterUpdate ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =4110
                    Width =1116
                    TabIndex =7
                    Name ="D_Valsts"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =5612
                    Width =1371
                    TabIndex =8
                    Name ="Text71"
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
' See "Rezervisti_jauns.cls"
