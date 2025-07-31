Version =19
VersionRequired =19
Begin Form
    Modal = NotDefault
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    CloseButton = NotDefault
    AllowAdditions = NotDefault
    ScrollBars =2
    ViewsAllowed =1
    GridX =20
    GridY =20
    Width =10969
    ItemSuffix =67
    Left =4335
    Top =1605
    Right =15900
    Bottom =4020
    RecSrcDt = Begin
        0x86189beed43be440
    End
    RecordSource ="SELECT DISTINCTROW dbo_Personas.Vards, dbo_Personas.Uzvards, dbo_Personas.Pers_K"
        "ods, dbo_Personas.Pozicija, dbo_Personas.Dok_Nr, dbo_Personas.D_Novads, dbo_Pers"
        "onas.D_Pilseta, dbo_Personas.D_Iela, dbo_Personas.Tel1, dbo_Personas.Personas_ID"
        " AS PID FROM dbo_Personas WHERE (((dbo_Personas.Vards) Like \"e*\") AND ((dbo_Pe"
        "rsonas.Uzvards) Like \"x*\")) ORDER BY dbo_Personas.Uzvards;"
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
            Width =850
            Height =850
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
                    Left =3061
                    Top =421
                    Width =1155
                    Height =225
                    Name ="Text49"
                    Caption ="Personas kods"
                End
                Begin Label
                    OverlapFlags =85
                    Left =4308
                    Top =421
                    Width =690
                    Height =225
                    Name ="Text50"
                    Caption ="Novads"
                End
                Begin Label
                    OverlapFlags =85
                    Left =5669
                    Top =421
                    Width =690
                    Height =225
                    Name ="Text51"
                    Caption ="Pilsēta"
                End
                Begin Label
                    OverlapFlags =85
                    Left =6916
                    Top =421
                    Width =315
                    Height =225
                    Name ="Text52"
                    Caption ="Iela"
                End
                Begin Label
                    OverlapFlags =85
                    Left =8277
                    Top =421
                    Width =690
                    Height =225
                    Name ="Text53"
                    Caption ="Tālrunis"
                End
                Begin Label
                    OverlapFlags =85
                    Left =9411
                    Top =421
                    Width =690
                    Height =225
                    Name ="Text54"
                    Caption ="Pozīcija"
                End
                Begin ToggleButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =0
                    TextFontFamily =34
                    Left =7370
                    Width =681
                    Height =346
                    FontSize =8
                    FontWeight =400
                    Name ="Jauns"
                    Caption ="Jauns"
                    FontName ="Arial"
                    OnClick ="[Event Procedure]"
                End
                Begin Label
                    OverlapFlags =85
                    Left =10658
                    Top =393
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
                    Left =10155
                    Top =390
                    Width =456
                    TabIndex =2
                    Name ="PID"
                    ControlSource ="PID"
                End
                Begin ToggleButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =0
                    TextFontFamily =34
                    Left =8070
                    Width =681
                    Height =346
                    FontSize =8
                    FontWeight =400
                    TabIndex =1
                    Name ="Cancel"
                    Caption ="Atcelt"
                    FontName ="Arial"
                    OnClick ="[Event Procedure]"
                End
            End
        End
        Begin Section
            Height =255
            BackColor =12632256
            Name ="Detail0"
            Begin
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    Width =789
                    Name ="Vārds"
                    ControlSource ="Vards"
                    AfterUpdate ="[Event Procedure]"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =95
                    Left =793
                    Width =1239
                    TabIndex =1
                    Name ="Uzvārds"
                    ControlSource ="Uzvards"
                    AfterUpdate ="[Event Procedure]"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =95
                    Left =2040
                    Width =1026
                    TabIndex =2
                    Name ="Pase"
                    ControlSource ="Dok_Nr"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =95
                    Left =3061
                    Width =1146
                    TabIndex =3
                    Name ="PK"
                    ControlSource ="Pers_Kods"
                    AfterUpdate ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    Left =6916
                    Width =1371
                    TabIndex =6
                    Name ="Iela"
                    ControlSource ="D_Iela"
                    AfterUpdate ="[Event Procedure]"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =87
                    Left =8277
                    Width =1026
                    TabIndex =7
                    Name ="Tel"
                    ControlSource ="Tel1"
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =10743
                    Top =28
                    Width =173
                    Height =200
                    TabIndex =9
                    Name ="okey"
                    DefaultValue ="0"
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =9325
                    Width =1330
                    TabIndex =8
                    Name ="Dažādi"
                    ControlSource ="Pozicija"
                    AfterUpdate ="[Event Procedure]"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =95
                    Left =4195
                    Width =1355
                    Height =235
                    TabIndex =4
                    Name ="Rajons"
                    ControlSource ="D_Novads"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =247
                    Left =5555
                    Width =1375
                    Height =227
                    TabIndex =5
                    Name ="Pilsēta"
                    ControlSource ="D_Pilseta"
                    AfterUpdate ="[Event Procedure]"
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
' See "Pers_meklesana.cls"
