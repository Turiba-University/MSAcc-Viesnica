Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    OrderByOn = NotDefault
    AllowEdits = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =2
    TabularCharSet =186
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =7426
    DatasheetFontHeight =11
    ItemSuffix =14
    Top =705
    Right =18585
    Bottom =10950
    DatasheetGridlinesColor =15062992
    OrderBy ="[dbo_Viesn_Izzinas].[Izz_Datums] DESC, [dbo_Viesn_Izzinas].[Izz_Nr] DESC"
    RecSrcDt = Begin
        0xf487a157515fe540
    End
    RecordSource ="dbo_Viesn_Izzinas"
    Caption ="JTM izziņas"
    DatasheetFontName ="Calibri"
    Begin
        Begin Label
            BackStyle =0
            TextFontCharSet =186
            FontSize =11
            FontName ="Calibri"
        End
        Begin CommandButton
            TextFontCharSet =186
            Width =1701
            Height =283
            FontSize =11
            FontWeight =400
            FontName ="Calibri"
        End
        Begin TextBox
            FELineBreak = NotDefault
            TextFontCharSet =186
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontSize =11
            FontName ="Calibri"
        End
        Begin Subform
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin Section
            Height =3004
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1757
                    Top =840
                    Height =315
                    BorderColor =13553360
                    Name ="Izz_Datums"
                    ControlSource ="Izz_Datums"
                    OnDblClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =56
                            Top =840
                            Width =1185
                            Height =315
                            BorderColor =16777215
                            Name ="Label0"
                            Caption ="Datums:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1757
                    Top =1181
                    Height =315
                    TabIndex =1
                    BorderColor =13553360
                    Name ="Izz_Nr"
                    ControlSource ="Izz_Nr"
                    OnDblClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =56
                            Top =1181
                            Width =705
                            Height =315
                            BorderColor =16777215
                            Name ="Label1"
                            Caption ="Nr:"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =6746
                    Top =2314
                    Width =501
                    Height =315
                    TabIndex =2
                    BorderColor =13553360
                    ForeColor =3484194
                    Name ="Pers_ID"
                    ControlSource ="Pers_ID"
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =5499
                    Top =840
                    Height =315
                    ColumnWidth =1815
                    TabIndex =3
                    BorderColor =13553360
                    Name ="Vards"
                    ControlSource ="Vards"
                    OnDblClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =3798
                            Top =840
                            Width =660
                            Height =315
                            BorderColor =16777215
                            Name ="Label3"
                            Caption ="Vārds:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =5499
                    Top =1237
                    Height =315
                    ColumnWidth =3465
                    TabIndex =4
                    BorderColor =13553360
                    Name ="Uzvards"
                    ControlSource ="Uzvards"
                    OnDblClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =3798
                            Top =1237
                            Width =855
                            Height =315
                            BorderColor =16777215
                            Name ="Label4"
                            Caption ="Uzvārds:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =5586
                    Top =1680
                    Height =315
                    TabIndex =5
                    BorderColor =13553360
                    Name ="PK"
                    ControlSource ="PK"
                    OnDblClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =3885
                            Top =1680
                            Width =375
                            Height =315
                            BorderColor =16777215
                            Name ="Label5"
                            Caption ="PK:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1746
                    Top =1579
                    Height =315
                    TabIndex =6
                    BorderColor =13553360
                    Name ="Dat_No"
                    ControlSource ="Dat_No"
                    OnDblClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =45
                            Top =1579
                            Width =1410
                            Height =315
                            BorderColor =16777215
                            Name ="Label6"
                            Caption ="Dzīvos JTM no:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1746
                    Top =1976
                    Height =315
                    TabIndex =7
                    BorderColor =13553360
                    Name ="Dat_Lidz"
                    ControlSource ="Dat_Lidz"
                    OnDblClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =45
                            Top =1976
                            Width =1380
                            Height =315
                            BorderColor =16777215
                            Name ="Label7"
                            Caption ="lidz:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1077
                    Top =2541
                    Height =315
                    TabIndex =8
                    BorderColor =13553360
                    Name ="Paraksta_Amats"
                    ControlSource ="Paraksta_Amats"
                    OnDblClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =56
                            Top =2541
                            Width =960
                            Height =315
                            BorderColor =16777215
                            Name ="Label8"
                            Caption ="Paraksta:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2891
                    Top =2541
                    Height =315
                    ColumnWidth =1575
                    TabIndex =9
                    BorderColor =13553360
                    Name ="Paraksta_VU"
                    ControlSource ="Paraksta_VU"
                    OnDblClick ="[Event Procedure]"
                End
                Begin TextBox
                    Visible = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =6066
                    Top =2371
                    Width =456
                    Height =315
                    ColumnWidth =0
                    TabIndex =10
                    BorderColor =13553360
                    ForeColor =3484194
                    Name ="RID"
                    ControlSource ="RID"
                End
                Begin TextBox
                    OverlapFlags =247
                    IMESentenceMode =3
                    Left =4648
                    Top =2097
                    Width =1596
                    Height =315
                    TabIndex =11
                    BorderColor =13553360
                    Name ="Statuss"
                    ControlSource ="=IIf([Stat]=1,\"saglabāta\",Null)"
                End
            End
        End
    End
End
CodeBehindForm
' See "JTM_Izz_sar.cls"
