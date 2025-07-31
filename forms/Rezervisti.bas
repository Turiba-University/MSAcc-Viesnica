Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    TabularCharSet =186
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    Cycle =1
    GridY =10
    Width =6207
    DatasheetFontHeight =10
    ItemSuffix =41
    Left =1875
    Top =75
    Right =11430
    Bottom =8115
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x94d920735874e540
    End
    Caption ="Rezervisti"
    OnOpen ="[Event Procedure]"
    OnClose ="[Event Procedure]"
    DatasheetFontName ="Arial"
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
        Begin CheckBox
            SpecialEffect =2
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin TextBox
            FELineBreak = NotDefault
            SpecialEffect =2
            OldBorderStyle =0
            TextFontCharSet =186
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontName ="Tahoma"
        End
        Begin ComboBox
            SpecialEffect =2
            TextFontCharSet =186
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontName ="Tahoma"
        End
        Begin FormHeader
            Height =899
            BackColor =-2147483633
            Name ="FormHeader"
            Begin
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Top =340
                    Width =765
                    Height =555
                    Name ="cmdNew"
                    Caption ="Jauns"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =793
                    Top =340
                    Width =765
                    Height =555
                    TabIndex =1
                    Name ="cmdEdit"
                    Caption ="Labot"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =1587
                    Top =340
                    Width =765
                    Height =555
                    TabIndex =2
                    Name ="cmdDel"
                    Caption ="Dzēst"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =2381
                    Top =340
                    Width =765
                    Height =555
                    TabIndex =3
                    Name ="cmdList"
                    Caption ="Saraksts"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =5442
                    Top =340
                    Width =765
                    Height =555
                    TabIndex =4
                    Name ="cmdClose"
                    Caption ="Beigt"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =3180
                    Top =344
                    Width =705
                    Height =555
                    TabIndex =5
                    Name ="cmdIstabas"
                    Caption ="Istabas"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =3945
                    Top =344
                    Width =705
                    Height =555
                    TabIndex =6
                    Name ="IstabasPaValstim"
                    Caption ="Ist. / valsts"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =4705
                    Top =340
                    Width =705
                    Height =555
                    TabIndex =7
                    Name ="IrIstLigumi"
                    Caption ="Ist. / līgumi"
                    OnClick ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    ListWidth =1440
                    Left =1133
                    Top =56
                    Width =1078
                    Height =227
                    ColumnOrder =0
                    TabIndex =8
                    Name ="R_MG"
                    RowSourceType ="Value List"
                    RowSource ="2024;2023;2022;2021;2020;2019;2018;2017;2016;2015;2014"
                    ColumnWidths ="1440"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="2023"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =56
                            Width =1080
                            Height =240
                            Name ="Mācību gads_Label"
                            Caption ="Mācību gads"
                            EventProcPrefix ="Mācību_gads_Label"
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    BackStyle =0
                    Left =2325
                    Top =60
                    Width =2711
                    Height =227
                    ColumnOrder =1
                    TabIndex =9
                    Name ="MG_txt"
                    ControlSource ="=[r_mg] & \"./\" & [r_mg]+1 & \". mācību gads\""
                End
            End
        End
        Begin Section
            Height =3874
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =1247
                    Top =283
                    Height =255
                    BackColor =12632256
                    Name ="Istaba"
                    ControlSource ="Istaba"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =540
                            Top =283
                            Width =600
                            Height =240
                            Name ="Label0"
                            Caption ="Istaba"
                        End
                    End
                End
                Begin TextBox
                    SpecialEffect =0
                    OverlapFlags =85
                    Left =3412
                    Top =283
                    Width =0
                    TabIndex =1
                    BackColor =12632256
                    ForeColor =12632256
                    Name ="CKods"
                    ControlSource ="CKods"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =1247
                    Top =615
                    Height =255
                    ColumnWidth =810
                    TabIndex =2
                    BackColor =12632256
                    Name ="Vards"
                    ControlSource ="VARDS"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =600
                            Top =615
                            Width =540
                            Height =240
                            Name ="Label3"
                            Caption ="Vārds"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =1247
                    Top =945
                    Height =255
                    ColumnWidth =1170
                    TabIndex =3
                    BackColor =12632256
                    Name ="Uzvards"
                    ControlSource ="UZVARDS"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =420
                            Top =945
                            Width =720
                            Height =240
                            Name ="Label4"
                            Caption ="Uzvārds"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =1247
                    Top =1530
                    Height =255
                    TabIndex =4
                    BackColor =12632256
                    Name ="Dzimums"
                    ControlSource ="Dzimums"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =450
                            Top =1530
                            Width =690
                            Height =240
                            Name ="Label5"
                            Caption ="Dzimums"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =1247
                    Top =2933
                    Height =255
                    ColumnWidth =720
                    TabIndex =7
                    BackColor =12632256
                    Name ="Tel1"
                    ControlSource ="Tel1"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =450
                            Top =2929
                            Width =690
                            Height =240
                            Name ="Label6"
                            Caption ="Telefons"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =1247
                    Top =2241
                    Height =255
                    TabIndex =5
                    BackColor =12632256
                    Name ="Lig_Dat"
                    ControlSource ="Lig_Dat"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Top =2239
                            Width =1140
                            Height =240
                            Name ="Label7"
                            Caption ="Lietos no:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =1247
                    Top =2584
                    Height =255
                    ColumnWidth =2085
                    TabIndex =6
                    BackColor =12632256
                    Name ="Ievadits"
                    ControlSource ="Ievadits"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =420
                            Top =2584
                            Width =720
                            Height =240
                            Name ="Label8"
                            Caption ="Ievadīts"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =1247
                    Top =3273
                    Height =255
                    TabIndex =8
                    BackColor =12632256
                    Name ="Piezimes"
                    ControlSource ="Piezimes"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =405
                            Top =3273
                            Width =735
                            Height =240
                            Name ="Label9"
                            Caption ="Piezīmes"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =1247
                    Top =3619
                    Height =255
                    TabIndex =9
                    BackColor =12632256
                    Name ="Tips"
                    ControlSource ="Tips"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =405
                            Top =3619
                            Width =735
                            Height =240
                            Name ="Label28"
                            Caption ="Tips"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =1247
                    Top =1815
                    Height =255
                    TabIndex =10
                    BackColor =12632256
                    Name ="MValsts"
                    ControlSource ="Valsts"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =135
                            Top =1815
                            Width =1005
                            Height =240
                            Name ="Label30"
                            Caption ="Mītnes valsts"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =1247
                    Top =1230
                    Height =255
                    TabIndex =11
                    BackColor =12632256
                    Name ="Pers_Kods"
                    ControlSource ="Pers_Kods"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =450
                            Top =1230
                            Width =690
                            Height =240
                            Name ="Label33"
                            Caption ="PK"
                        End
                    End
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
' See "Rezervisti.cls"
