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
    Width =9098
    ItemSuffix =80
    Left =11520
    Top =225
    Right =21405
    Bottom =5760
    RecSrcDt = Begin
        0x8ca4f1835abbe240
    End
    Caption ="Juridiskas personas meklēšana"
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
            Height =1110
            BackColor =12632256
            Name ="FormHeader1"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =6037
                    Top =56
                    Width =600
                    Height =225
                    Name ="VS"
                    FontName ="MS Sans Serif"
                End
                Begin Label
                    OverlapFlags =85
                    Top =883
                    Width =1865
                    Height =227
                    Name ="Text46"
                    Caption ="Nosaukums"
                End
                Begin Label
                    OverlapFlags =85
                    Left =3422
                    Top =882
                    Width =1950
                    Height =225
                    Name ="Text47"
                    Caption ="Reģ. Nr."
                End
                Begin Label
                    OverlapFlags =85
                    Left =6661
                    Top =883
                    Width =2100
                    Height =225
                    Name ="Text52"
                    Caption ="E-pasts"
                End
                Begin Label
                    OverlapFlags =85
                    Left =5527
                    Top =883
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
                    Left =6776
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
                    Left =8787
                    Top =855
                    Width =311
                    Height =235
                    Name ="Text61"
                    Caption ="OK"
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =93
                    Left =6803
                    Top =425
                    Width =771
                    Height =360
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
                    Left =7476
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
                Begin TextBox
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =1312
                    Top =255
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
                            Left =61
                            Top =255
                            Width =1125
                            Height =240
                            BackColor =16777215
                            Name ="Text45"
                            Caption ="Nosaukums"
                            FontName ="Tahoma"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =1312
                    Top =540
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
                            Left =61
                            Top =540
                            Width =1125
                            Height =240
                            BackColor =16777215
                            Name ="Label71"
                            Caption ="Reģ.Nr."
                            FontName ="Tahoma"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =4372
                    Top =28
                    Width =450
                    Height =240
                    ColumnOrder =8
                    TabIndex =2
                    BackColor =16777164
                    BorderColor =8421376
                    Name ="PKods"
                    StatusBarText ="Ievadiet personas koda sākumu"
                    Begin
                        Begin Label
                            Visible = NotDefault
                            BackStyle =0
                            OverlapFlags =85
                            TextFontCharSet =186
                            TextAlign =3
                            Left =4110
                            Top =84
                            Width =180
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
                    Left =2976
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
                    Visible = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =6321
                    Top =511
                    Width =390
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
                            Visible = NotDefault
                            BackStyle =0
                            OverlapFlags =85
                            TextFontCharSet =186
                            TextAlign =3
                            Left =5896
                            Top =482
                            Width =375
                            Height =240
                            BackColor =16777215
                            Name ="Label76"
                            Caption ="vai studiju līg.nr.:"
                            FontName ="Tahoma"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =186
                    Left =5222
                    Top =115
                    Width =450
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
                            Visible = NotDefault
                            BackStyle =0
                            OverlapFlags =85
                            TextFontCharSet =186
                            TextAlign =3
                            Left =4960
                            Top =113
                            Width =195
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
                    OverlapFlags =247
                    TextFontCharSet =186
                    Left =7540
                    Top =454
                    Width =456
                    ColumnOrder =0
                    TabIndex =9
                    Name ="OpenFrom"
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
                    Width =3399
                    Name ="Vārds"
                    ControlSource ="Vards"
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =3420
                    Width =2049
                    TabIndex =1
                    Name ="Uzvārds"
                    ControlSource ="Uzvards"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =6661
                    Width =2151
                    TabIndex =2
                    Name ="Iela"
                    ControlSource ="Epasts"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =5527
                    Width =1101
                    TabIndex =3
                    Name ="Tel"
                    ControlSource ="Tel1"
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =8872
                    Top =28
                    Width =173
                    Height =200
                    TabIndex =4
                    Name ="okey"
                    DefaultValue ="0"
                    OnClick ="[Event Procedure]"
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
' See "Meklesana_Persona_Jur.cls"
