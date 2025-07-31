Version =19
VersionRequired =19
Begin Form
    AllowDeletions = NotDefault
    AllowAdditions = NotDefault
    OrderByOn = NotDefault
    AllowEdits = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =2
    TabularCharSet =186
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =4618
    DatasheetFontHeight =10
    ItemSuffix =15
    Top =30
    Right =10095
    Bottom =5025
    DatasheetGridlinesColor =12632256
    OrderBy ="aizlegts"
    RecSrcDt = Begin
        0xb976ca1ac1e6e140
    End
    RecordSource ="SELECT DISTINCT STOP.* FROM STOP ORDER BY [STOP].[UZVARDS]; "
    Caption ="STOP"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            BackStyle =0
            TextFontCharSet =186
            FontName ="Tahoma"
        End
        Begin TextBox
            FELineBreak = NotDefault
            SpecialEffect =2
            OldBorderStyle =0
            TextFontCharSet =186
            Width =1701
            LabelX =-1701
            FontName ="Tahoma"
        End
        Begin Section
            Height =3074
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    Left =1984
                    Top =2494
                    ColumnWidth =675
                    TabIndex =4
                    Name ="CILVEKS_CKODS"
                    ControlSource ="CILVEKS_CKODS"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =113
                            Top =2494
                            Width =1275
                            Height =240
                            Name ="Label1"
                            Caption ="Kods"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    FilterLookup =2
                    Left =1984
                    Top =170
                    Width =2490
                    ColumnWidth =1455
                    Name ="UZVARDS"
                    ControlSource ="UZVARDS"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =113
                            Top =170
                            Width =765
                            Height =240
                            Name ="Label3"
                            Caption ="Uzvārds"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1984
                    Top =453
                    Width =2490
                    ColumnWidth =975
                    TabIndex =1
                    Name ="VARDS"
                    ControlSource ="VARDS"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =113
                            Top =453
                            Width =570
                            Height =240
                            Name ="Label5"
                            Caption ="Vārds"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2097
                    Top =793
                    Width =2490
                    ColumnWidth =3585
                    TabIndex =2
                    Name ="numurs"
                    ControlSource ="numurs"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =226
                            Top =793
                            Width =510
                            Height =240
                            Name ="Label7"
                            Caption ="Kapec"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1984
                    Top =1474
                    Width =2490
                    ColumnWidth =1515
                    TabIndex =5
                    Name ="Personas Kods"
                    ControlSource ="Personas Kods"
                    EventProcPrefix ="Personas_Kods"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =113
                            Top =1474
                            Width =1125
                            Height =240
                            Name ="Label9"
                            Caption ="Personas kods"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1984
                    Top =1814
                    Width =2490
                    ColumnWidth =1080
                    TabIndex =6
                    Name ="Kas"
                    ControlSource ="Kas"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =113
                            Top =1814
                            Width =330
                            Height =240
                            Name ="Label11"
                            Caption ="Kas"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1984
                    Top =2154
                    ColumnWidth =1110
                    TabIndex =7
                    Name ="Kād"
                    ControlSource ="Kād"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =113
                            Top =2154
                            Width =345
                            Height =240
                            Name ="Label13"
                            Caption ="Kad"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2095
                    Top =1137
                    ColumnWidth =3180
                    TabIndex =3
                    Name ="aizlegts"
                    ControlSource ="aizlegts"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =396
                            Top =1133
                            Width =1545
                            Height =240
                            Name ="Label14"
                            Caption ="Liegtais pakalpojums"
                        End
                    End
                End
            End
        End
    End
End
