Version =19
VersionRequired =19
Begin Form
    AutoResize = NotDefault
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    AllowAdditions = NotDefault
    ScrollBars =2
    ViewsAllowed =1
    GridX =20
    GridY =20
    Width =14831
    ItemSuffix =83
    Left =420
    Top =2100
    Right =19710
    Bottom =9975
    RecSrcDt = Begin
        0x8ca4f1835abbe240
    End
    Caption ="Personas meklēšana"
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
            FontSize =11
            FontWeight =400
            FontName ="Calibri"
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
            Height =1410
            BackColor =12632256
            Name ="FormHeader1"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =7993
                    Top =56
                    Width =600
                    Height =225
                    Name ="VS"
                    FontName ="MS Sans Serif"
                End
                Begin Label
                    OverlapFlags =85
                    Top =1183
                    Width =1865
                    Height =227
                    Name ="Text46"
                    Caption ="Vārds"
                End
                Begin Label
                    OverlapFlags =85
                    Left =2014
                    Top =1182
                    Width =690
                    Height =225
                    Name ="Text47"
                    Caption ="Uzvārds"
                End
                Begin Label
                    OverlapFlags =85
                    Left =3259
                    Top =1182
                    Width =735
                    Height =225
                    Name ="Text48"
                    Caption ="Pases Nr"
                End
                Begin Label
                    OverlapFlags =85
                    Left =4280
                    Top =1183
                    Width =1155
                    Height =225
                    Name ="Text49"
                    Caption ="Personas kods"
                End
                Begin Label
                    OverlapFlags =85
                    Left =6644
                    Top =1183
                    Width =690
                    Height =225
                    Name ="Text50"
                    Caption ="Novads"
                End
                Begin Label
                    OverlapFlags =85
                    Left =9367
                    Top =1183
                    Width =690
                    Height =225
                    Name ="Text51"
                    Caption ="Pilsēta"
                End
                Begin Label
                    OverlapFlags =85
                    Left =10614
                    Top =1183
                    Width =315
                    Height =225
                    Name ="Text52"
                    Caption ="Iela"
                End
                Begin Label
                    OverlapFlags =85
                    Left =11975
                    Top =1183
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
                    Left =8732
                    Width =681
                    Height =346
                    ColumnOrder =3
                    FontSize =8
                    FontWeight =400
                    TabIndex =6
                    Name ="Jauns"
                    Caption ="Jauns"
                    FontName ="Arial"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Reģistrēt jaunu personu"
                End
                Begin Label
                    OverlapFlags =85
                    Left =14520
                    Top =1155
                    Width =311
                    Height =235
                    Name ="Text61"
                    Caption ="OK"
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =11226
                    Top =56
                    Width =456
                    ColumnOrder =5
                    TabIndex =8
                    Name ="PID"
                    ControlSource ="PID"
                End
                Begin ToggleButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =0
                    TextFontFamily =34
                    Left =9432
                    Width =681
                    Height =346
                    ColumnOrder =4
                    FontSize =8
                    FontWeight =400
                    TabIndex =7
                    Name ="Cancel"
                    Caption ="Atcelt"
                    FontName ="Arial"
                    OnClick ="[Event Procedure]"
                End
                Begin Label
                    OverlapFlags =85
                    Left =5652
                    Top =1183
                    Width =690
                    Height =225
                    Name ="Label67"
                    Caption ="Valsts"
                End
                Begin Label
                    OverlapFlags =85
                    Left =7977
                    Top =1183
                    Width =690
                    Height =225
                    Name ="Label69"
                    Caption ="Pagasts"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =1296
                    Width =1440
                    Height =240
                    ColumnOrder =6
                    BackColor =16777164
                    BorderColor =8421376
                    Name ="Vard"
                    StatusBarText ="Ievadiet vārda sākumu"
                    Begin
                        Begin Label
                            BackStyle =0
                            OverlapFlags =85
                            TextFontCharSet =186
                            TextAlign =3
                            Left =645
                            Width =525
                            Height =240
                            BackColor =16777215
                            Name ="Text45"
                            Caption ="Vārds:"
                            FontName ="Tahoma"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =1296
                    Top =285
                    Width =1440
                    Height =240
                    ColumnOrder =7
                    TabIndex =1
                    BackColor =16777164
                    BorderColor =8421376
                    Name ="Uzva"
                    StatusBarText ="Ievadiet uzvārda sākumu"
                    Begin
                        Begin Label
                            BackStyle =0
                            OverlapFlags =85
                            TextFontCharSet =186
                            TextAlign =3
                            Left =465
                            Top =285
                            Width =705
                            Height =240
                            BackColor =16777215
                            Name ="Label71"
                            Caption ="Uzvārds:"
                            FontName ="Tahoma"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =1296
                    Top =570
                    Width =1440
                    Height =240
                    ColumnOrder =8
                    TabIndex =2
                    BackColor =16777164
                    BorderColor =8421376
                    Name ="PKods"
                    StatusBarText ="Ievadiet personas koda sākumu"
                    Begin
                        Begin Label
                            BackStyle =0
                            OverlapFlags =85
                            TextFontCharSet =186
                            TextAlign =3
                            Top =570
                            Width =1170
                            Height =240
                            BackColor =16777215
                            Name ="Label102"
                            Caption ="Personas kods:"
                            FontName ="Tahoma"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4932
                    Width =822
                    Height =346
                    FontSize =8
                    TabIndex =5
                    Name ="Meklet"
                    Caption ="Meklēt"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =3088
                    Top =340
                    Width =1320
                    Height =240
                    ColumnOrder =2
                    TabIndex =4
                    BackColor =16777164
                    BorderColor =8421376
                    Name ="StudLigNr"
                    StatusBarText ="Ievadiet vārda sākumu"
                    OnChange ="[Event Procedure]"
                    Begin
                        Begin Label
                            BackStyle =0
                            OverlapFlags =85
                            TextFontCharSet =186
                            TextAlign =3
                            Left =3089
                            Top =28
                            Width =1305
                            Height =240
                            BackColor =16777215
                            Name ="Label76"
                            Caption ="vai studiju līg.nr.:"
                            FontName ="Tahoma"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =1296
                    Top =855
                    Width =1440
                    Height =240
                    ColumnOrder =1
                    TabIndex =3
                    BackColor =16777164
                    BorderColor =8421376
                    Name ="DzDatums"
                    Format ="Short Date"
                    StatusBarText ="Ievadiet personas koda sākumu"
                    Begin
                        Begin Label
                            BackStyle =0
                            OverlapFlags =85
                            TextFontCharSet =186
                            TextAlign =3
                            Left =-15
                            Top =855
                            Width =1185
                            Height =240
                            BackColor =16777215
                            Name ="Label78"
                            Caption ="Dzimšanas dat."
                            FontName ="Tahoma"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =11226
                    Top =431
                    Width =456
                    ColumnOrder =0
                    TabIndex =9
                    Name ="OpenFrom"
                End
                Begin Label
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =13035
                    Top =1183
                    Width =690
                    Height =225
                    Name ="Label80"
                    Caption ="Epasts"
                End
            End
        End
        Begin Section
            Height =255
            BackColor =12632256
            Name ="Detail0"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    Width =1974
                    Name ="Vārds"
                    ControlSource ="Vards"
                End
                Begin TextBox
                    OverlapFlags =93
                    Left =2012
                    Width =1239
                    TabIndex =1
                    Name ="Uzvārds"
                    ControlSource ="Uzvards"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =95
                    Left =3259
                    Width =1026
                    TabIndex =2
                    Name ="Pase"
                    ControlSource ="Dok_Nr"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =255
                    Left =4280
                    Width =1296
                    TabIndex =3
                    Name ="PK"
                    ControlSource ="Pers_Kods"
                    AfterUpdate ="[Event Procedure]"
                    InputMask ="000000\\-00000;_"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    Left =10614
                    Width =1371
                    TabIndex =6
                    Name ="Iela"
                    ControlSource ="D_Iela"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =247
                    Left =11975
                    Width =1026
                    TabIndex =7
                    Name ="Tel"
                    ControlSource ="Tel1"
                End
                Begin CheckBox
                    OverlapFlags =93
                    Left =14605
                    Top =28
                    Width =173
                    Height =200
                    TabIndex =8
                    Name ="okey"
                    DefaultValue ="0"
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    Left =6531
                    Width =1355
                    TabIndex =4
                    Name ="Novads"
                    ControlSource ="D_Novads"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =9253
                    Width =1330
                    TabIndex =5
                    Name ="Pilsēta"
                    ControlSource ="D_Pilseta"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =247
                    Left =5539
                    Width =965
                    TabIndex =9
                    Name ="Valsts"
                    ControlSource ="Valsts"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =247
                    Left =7864
                    Width =1355
                    TabIndex =10
                    Name ="Pagasts"
                    ControlSource ="D_Pagasts"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    TextFontCharSet =186
                    Left =13035
                    Width =1536
                    TabIndex =11
                    Name ="Epasts"
                    ControlSource ="Epasts"
                End
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    OverlapFlags =247
                    TextFontCharSet =186
                    Left =14343
                    Width =306
                    TabIndex =12
                    Name ="Pilsoniba"
                    ControlSource ="Pilsoniba"
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
' See "Meklesana_Persona.cls"
