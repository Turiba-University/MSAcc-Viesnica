Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    DefaultView =0
    TabularCharSet =186
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =4308
    DatasheetFontHeight =10
    ItemSuffix =20
    Left =1575
    Top =210
    Right =6135
    Bottom =4725
    DatasheetGridlinesColor =12632256
    Tag ="9106212, 3484176"
    RecSrcDt = Begin
        0x653c99d19349e240
    End
    Caption ="Labot"
    OnOpen ="[Event Procedure]"
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
            Height =510
            BackColor =-2147483633
            Name ="FormHeader"
            Begin
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =1230
                    Top =60
                    Width =1125
                    Height =405
                    Name ="cmdSave"
                    Caption ="Saglabāt"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =85
                    Left =2385
                    Top =60
                    Width =1125
                    Height =405
                    TabIndex =1
                    Name ="cmdCancel"
                    Caption ="Atcelt"
                    OnClick ="[Event Procedure]"
                End
            End
        End
        Begin Section
            Height =4025
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =3289
                    Top =1987
                    Width =786
                    TabIndex =1
                    Name ="CKods"
                End
                Begin TextBox
                    Locked = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =1450
                    Top =375
                    Height =255
                    ColumnWidth =810
                    TabIndex =2
                    BackColor =12632256
                    Name ="Vards"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =803
                            Top =375
                            Width =540
                            Height =240
                            Name ="Label3"
                            Caption ="Vārds"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =1450
                    Top =705
                    Height =255
                    ColumnWidth =1170
                    TabIndex =3
                    BackColor =12632256
                    Name ="Uzvards"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =623
                            Top =705
                            Width =720
                            Height =240
                            Name ="Label4"
                            Caption ="Uzvārds"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    Left =1442
                    Top =3056
                    Height =255
                    ColumnWidth =720
                    TabIndex =6
                    Name ="Tel1"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =645
                            Top =3052
                            Width =690
                            Height =240
                            Name ="Label6"
                            Caption ="Telefons"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    Left =1442
                    Top =2364
                    Height =255
                    TabIndex =4
                    Name ="Lig_Dat"
                    Format ="Short Date"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Top =2362
                            Width =1335
                            Height =240
                            Name ="Label7"
                            Caption ="Slēgs īres līgumu"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =1442
                    Top =3397
                    Height =255
                    ColumnWidth =2085
                    TabIndex =7
                    BackColor =12632256
                    Name ="Ievadits"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =615
                            Top =3397
                            Width =720
                            Height =240
                            Name ="Label8"
                            Caption ="Ievadīts"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextAlign =1
                    Left =1442
                    Top =2707
                    Height =255
                    TabIndex =5
                    Name ="Piezimes"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =600
                            Top =2707
                            Width =735
                            Height =240
                            Name ="Label9"
                            Caption ="Piezīmes"
                        End
                    End
                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =1
                    ColumnCount =9
                    ListRows =15
                    ListWidth =4536
                    Left =1457
                    Top =1987
                    Name ="Istaba"
                    RowSourceType ="Table/Query"
                    RowSource ="qryBrivasVietas"
                    ColumnWidths ="0;567;886;1247;286;286;0;398;398"
                    AfterUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =750
                            Top =1987
                            Width =600
                            Height =240
                            Name ="Label0"
                            Caption ="Istaba"
                        End
                    End
                End
                Begin Label
                    OverlapFlags =93
                    Left =56
                    Width =794
                    Height =226
                    ForeColor =12632256
                    Name ="lbl_ist_nr"
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OldBorderStyle =0
                    OverlapFlags =85
                    TextAlign =1
                    Left =1457
                    Top =3772
                    TabIndex =8
                    Name ="Tips"
                    RowSourceType ="Value List"
                    RowSource ="\"BAT students\";\"Cita augstskola\";\"BAT darbinieks\";\"Tūrists\";\"Pastāvīgs "
                        "viesis\""
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =615
                            Top =3772
                            Width =735
                            Height =240
                            Name ="Label28"
                            Caption ="Tips"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =1457
                    Top =1282
                    Height =255
                    TabIndex =9
                    BackColor =12632256
                    Name ="Dzimums"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =660
                            Top =1282
                            Width =690
                            Height =240
                            Name ="Label16"
                            Caption ="Dzimums"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    TabStop = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =1457
                    Top =1612
                    Height =255
                    TabIndex =10
                    BackColor =12632256
                    Name ="MValsts"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =345
                            Top =1612
                            Width =1005
                            Height =240
                            Name ="Label18"
                            Caption ="Mītnes valsts"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =1442
                    Top =994
                    Height =255
                    TabIndex =11
                    BackColor =12632256
                    Name ="Pers_Kods"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextAlign =3
                            Left =645
                            Top =994
                            Width =690
                            Height =240
                            Name ="Label33"
                            Caption ="PK"
                        End
                    End
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    ListWidth =1440
                    Left =1473
                    Top =56
                    Width =1078
                    Height =227
                    TabIndex =12
                    Name ="R_MG"
                    RowSourceType ="Value List"
                    RowSource ="2024;2023;2022;2021;2020;2019;2018;2017;2016;2015;2014"
                    ColumnWidths ="1441"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="2024"
                    Begin
                        Begin Label
                            OverlapFlags =215
                            Left =340
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
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =3289
                    Top =2347
                    Width =786
                    TabIndex =13
                    Name ="OpenFrom"
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
' See "Jauns_rezervists.cls"
