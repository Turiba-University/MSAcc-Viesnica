Version =19
VersionRequired =19
Begin Form
    Modal = NotDefault
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    ScrollBars =2
    TabularFamily =0
    GridX =5
    GridY =5
    Width =8380
    ItemSuffix =43
    Left =5100
    Top =1185
    Right =13740
    Bottom =9225
    RecSrcDt = Begin
        0xd561ad819437e240
    End
    Caption ="Meklēšana"
    OnOpen ="[Event Procedure]"
    Begin
        Begin Label
            BackStyle =0
            TextFontCharSet =186
            FontName ="Tahoma"
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
        Begin OptionGroup
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin TextBox
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin ListBox
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
        End
        Begin ComboBox
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin ToggleButton
            TextFontCharSet =186
            TextFontFamily =2
            Width =283
            Height =283
        End
        Begin Section
            Height =8049
            BackColor =12632256
            Name ="Detail0"
            Begin
                Begin ListBox
                    ColumnHeads = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    ColumnCount =11
                    Left =105
                    Top =1590
                    Width =8275
                    Height =1463
                    FontWeight =300
                    TabIndex =2
                    BoundColumn =7
                    BackColor =12632256
                    Name ="List"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="1422;1422;1134;1134;855;567;567;1134;0;0;0"
                    OnDblClick ="[Event Procedure]"
                    FontName ="arial"
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    SpecialEffect =1
                    OverlapFlags =85
                    Left =1342
                    Top =340
                    Width =2046
                    Height =345
                    FontSize =12
                    BackColor =12632256
                    Name ="Vards"
                    FontName ="arial"
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =85
                            TextFontCharSet =0
                            TextAlign =3
                            Left =226
                            Top =340
                            Width =1065
                            Height =345
                            FontSize =12
                            FontWeight =600
                            BackColor =12632256
                            Name ="Text11"
                            Caption ="Vārds:"
                            FontName ="arial"
                        End
                    End
                End
                Begin TextBox
                    SpecialEffect =1
                    OverlapFlags =85
                    Left =1342
                    Top =793
                    Width =2046
                    Height =345
                    FontSize =12
                    TabIndex =1
                    BackColor =12632256
                    Name ="Uzvards"
                    FontName ="arial"
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =85
                            TextFontCharSet =0
                            TextAlign =3
                            Left =226
                            Top =793
                            Width =1065
                            Height =345
                            FontSize =12
                            FontWeight =600
                            BackColor =12632256
                            Name ="Text13"
                            Caption ="Uzvārds:"
                            FontName ="arial"
                        End
                    End
                End
                Begin ToggleButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =3591
                    Top =7596
                    Width =1137
                    Height =453
                    TabIndex =4
                    Name ="ok"
                    Caption ="Paņemt"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Iezīmēto studentu ieraksta rezervistu formā"
                End
                Begin ToggleButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =2267
                    Top =7596
                    Width =1275
                    Height =450
                    TabIndex =3
                    Name ="Atgriezties"
                    Caption ="Atgriezties"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Atgriežas rezervistu formā"
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =93
                    TextFontCharSet =0
                    Left =120
                    Top =3075
                    Width =1665
                    Height =240
                    BackColor =12632256
                    Name ="Label27"
                    Caption ="Atrasto ierakstu skaits:"
                    FontName ="MS Sans Serif"
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    TabStop = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =215
                    TextAlign =1
                    Left =1755
                    Top =3075
                    Width =907
                    TabIndex =5
                    BackColor =12632256
                    Name ="Text28"
                    ControlSource ="=IIf([List].ListCount<>0,[List].ListCount-1,0)"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3491
                    Top =555
                    Width =1305
                    Height =405
                    FontWeight =700
                    TabIndex =6
                    Name ="cmdFind"
                    Caption ="Meklēt..."
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4875
                    Top =566
                    Width =1665
                    Height =405
                    TabIndex =7
                    Name ="Reg_Rezervistu"
                    Caption ="Reģistrēt rezervistu"
                    OnClick ="[Event Procedure]"
                End
                Begin Label
                    OverlapFlags =85
                    Left =120
                    Top =1350
                    Width =1814
                    Height =220
                    Name ="Label34"
                    Caption ="Studenti:"
                End
                Begin ListBox
                    ColumnHeads = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    ColumnCount =7
                    Left =105
                    Top =3675
                    Width =6804
                    Height =1463
                    FontWeight =300
                    TabIndex =8
                    BackColor =12632256
                    Name ="ListDrb"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="0;1425;1420;1134;1134;567;851"
                    OnDblClick ="[Event Procedure]"
                    FontName ="arial"
                    OnClick ="[Event Procedure]"
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =93
                    TextFontCharSet =0
                    Left =120
                    Top =5160
                    Width =1665
                    Height =240
                    BackColor =12632256
                    Name ="Label36"
                    Caption ="Atrasto ierakstu skaits:"
                    FontName ="MS Sans Serif"
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    TabStop = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =215
                    TextAlign =1
                    Left =1755
                    Top =5160
                    Width =907
                    TabIndex =9
                    BackColor =12632256
                    Name ="Text37"
                    ControlSource ="=IIf([ListDrb].ListCount<>0,[ListDrb].ListCount-1,0)"
                End
                Begin Label
                    OverlapFlags =85
                    Left =120
                    Top =3435
                    Width =1814
                    Height =220
                    Name ="Label38"
                    Caption ="Darbinieki:"
                End
                Begin ListBox
                    ColumnHeads = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    ColumnCount =7
                    Left =105
                    Top =5760
                    Width =6804
                    Height =1463
                    FontWeight =300
                    TabIndex =10
                    BackColor =12632256
                    Name ="ListPers"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="0;1426;1421;1134;1134;567;852"
                    OnDblClick ="[Event Procedure]"
                    FontName ="arial"
                    OnClick ="[Event Procedure]"
                End
                Begin Label
                    BackStyle =1
                    OverlapFlags =93
                    TextFontCharSet =0
                    Left =120
                    Top =7245
                    Width =1665
                    Height =240
                    BackColor =12632256
                    Name ="Label40"
                    Caption ="Atrasto ierakstu skaits:"
                    FontName ="MS Sans Serif"
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    TabStop = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =215
                    TextAlign =1
                    Left =1755
                    Top =7245
                    Width =907
                    TabIndex =11
                    BackColor =12632256
                    Name ="Text41"
                    ControlSource ="=IIf([ListPers].ListCount<>0,[ListPers].ListCount-1,0)"
                End
                Begin Label
                    OverlapFlags =85
                    Left =120
                    Top =5520
                    Width =1814
                    Height =220
                    Name ="Label42"
                    Caption ="Personas:"
                End
            End
        End
    End
End
CodeBehindForm
' See "Meklesana.cls"
