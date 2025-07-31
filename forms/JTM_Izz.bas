Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    FilterOn = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    TabularCharSet =186
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =7426
    DatasheetFontHeight =11
    ItemSuffix =27
    Left =3795
    Top =135
    Right =11220
    Bottom =3510
    DatasheetGridlinesColor =15062992
    Filter ="[RID]=3812"
    RecSrcDt = Begin
        0xf487a157515fe540
    End
    RecordSource ="dbo_Viesn_Izzinas"
    Caption ="JTM izziņas sagatavošana"
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
        Begin OptionButton
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
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
            Height =3390
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1757
                    Top =1035
                    Height =315
                    BorderColor =13553360
                    Name ="Izz_Datums"
                    ControlSource ="Izz_Datums"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =56
                            Top =1035
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
                    Top =1376
                    Height =315
                    TabIndex =1
                    BorderColor =13553360
                    Name ="Izz_Nr"
                    ControlSource ="Izz_Nr"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =56
                            Top =1376
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
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =6746
                    Top =2292
                    Width =501
                    Height =315
                    TabIndex =2
                    BorderColor =13553360
                    ForeColor =3484194
                    Name ="Pers_ID"
                    ControlSource ="Pers_ID"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =4689
                    Top =1035
                    Width =2511
                    Height =315
                    TabIndex =3
                    BorderColor =13553360
                    Name ="Vards"
                    ControlSource ="Vards"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =3798
                            Top =1035
                            Width =660
                            Height =315
                            BorderColor =16777215
                            Name ="Label3"
                            Caption ="Vārds:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =4689
                    Top =1432
                    Width =2511
                    Height =315
                    TabIndex =4
                    BorderColor =13553360
                    Name ="Uzvards"
                    ControlSource ="Uzvards"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =3798
                            Top =1432
                            Width =855
                            Height =315
                            BorderColor =16777215
                            Name ="Label4"
                            Caption ="Uzvārds:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =4689
                    Top =1829
                    Width =2511
                    Height =315
                    TabIndex =5
                    BorderColor =13553360
                    Name ="PK"
                    ControlSource ="PK"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =3798
                            Top =1829
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
                    Top =1774
                    Height =315
                    TabIndex =6
                    BorderColor =13553360
                    Name ="Dat_No"
                    ControlSource ="Dat_No"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =45
                            Top =1774
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
                    Top =2171
                    Height =315
                    TabIndex =7
                    BorderColor =13553360
                    Name ="Dat_Lidz"
                    ControlSource ="Dat_Lidz"
                    AfterUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =45
                            Top =2171
                            Width =1380
                            Height =315
                            BorderColor =16777215
                            Name ="Label7"
                            Caption ="lidz:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1077
                    Top =2736
                    Height =315
                    TabIndex =8
                    BorderColor =13553360
                    Name ="Paraksta_Amats"
                    ControlSource ="Paraksta_Amats"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =56
                            Top =2736
                            Width =960
                            Height =315
                            BorderColor =16777215
                            Name ="Label8"
                            Caption ="Paraksta:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =2891
                    Top =2736
                    Height =315
                    TabIndex =9
                    BorderColor =13553360
                    Name ="Paraksta_VU"
                    ControlSource ="Paraksta_VU"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =6066
                    Top =2349
                    Width =456
                    Height =315
                    TabIndex =10
                    BorderColor =13553360
                    ForeColor =3484194
                    Name ="RID"
                    ControlSource ="RID"
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =6633
                    Top =113
                    Width =576
                    Height =576
                    FontSize =8
                    TabIndex =11
                    Name ="Aizvert"
                    Caption ="Command40"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadad0dadadadadaadad00adadadadaddad030dadadadada ,
                        0xad0330adadadadad0033300000000adaa03330ff0dadadadd03300ff0adad4da ,
                        0xa03330ff0dad44add03330ff0ad44444a03330ff0d444444d03330ff0ad44444 ,
                        0xa0330fff0dad44add030ffff0adad4daa00fffff0dadadadd00000000adadada ,
                        0xadadadadadadadad
                    End
                    FontName ="MS Sans Serif"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Aizvērt"
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =5896
                    Top =113
                    Width =576
                    Height =576
                    FontSize =8
                    TabIndex =12
                    Name ="Drukat"
                    Caption ="Command43"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadadadadadadada000000000000ad000ffffffffff0d000 ,
                        0x0fffffff0000700d0ffffff0788707da0fffff0788e770ad0fffff08888780da ,
                        0x0fffff08e88780ad0fffff07ee8770da0ffffff078870dad0fffffff0000dada ,
                        0x0ffffffffff0adad0fffffff0000dada0fffffff080dadad0fffffff00dadada ,
                        0x000000000dadadad
                    End
                    FontName ="MS Sans Serif"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Drukāt"
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =4648
                    Top =2746
                    Width =285
                    Height =270
                    FontSize =8
                    TabIndex =13
                    Name ="Izv1"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                    FontName ="MS Sans Serif"
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =0
                    PictureType =1
                    Left =3570
                    Top =120
                    Width =1146
                    Height =576
                    FontSize =8
                    TabIndex =14
                    Name ="Saglabat"
                    Caption ="Saglabāt"
                    OnClick ="[Event Procedure]"
                    FontName ="MS Sans Serif"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Saglabāt"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =6122
                    Top =2802
                    Width =456
                    Height =315
                    TabIndex =15
                    BorderColor =13553360
                    ForeColor =3484194
                    Name ="Aud_User"
                    ControlSource ="Aud_User"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =6633
                    Top =2802
                    Width =456
                    Height =315
                    TabIndex =16
                    BorderColor =13553360
                    ForeColor =3484194
                    Name ="Aud_Date"
                    ControlSource ="Aud_Date"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =5442
                    Top =2406
                    Width =531
                    Height =330
                    TabIndex =17
                    BorderColor =13553360
                    ForeColor =3484194
                    Name ="Stat"
                    ControlSource ="Stat"
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    BackStyle =0
                    IMESentenceMode =3
                    Left =340
                    Top =113
                    Width =3081
                    Height =315
                    TabIndex =18
                    BorderColor =13553360
                    Name ="Text15"
                    ControlSource ="=IIf([Stat]=1,\"saglabāta\",\"sagatave\")"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1080
                    Top =3075
                    Height =315
                    TabIndex =19
                    BorderColor =13553360
                    Name ="Text16"
                    ControlSource ="Paraksta_Amats_eng"
                End
                Begin OptionGroup
                    OverlapFlags =85
                    Left =4875
                    Top =113
                    Width =966
                    Height =855
                    TabIndex =20
                    BorderColor =13553360
                    Name ="IzdrVal"
                    DefaultValue ="1"
                    Begin
                        Begin Label
                            BackStyle =1
                            OverlapFlags =215
                            Left =4995
                            Width =750
                            Height =315
                            BackColor =-2147483633
                            BorderColor =16777215
                            Name ="Label21"
                            Caption ="Izdruka"
                        End
                        Begin OptionButton
                            SpecialEffect =2
                            OverlapFlags =87
                            Left =5061
                            Top =351
                            OptionValue =1
                            BorderColor =13553360
                            Name ="Option23"
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =5291
                                    Top =323
                                    Width =300
                                    Height =315
                                    BorderColor =16777215
                                    Name ="Label24"
                                    Caption ="LV"
                                End
                            End
                        End
                        Begin OptionButton
                            SpecialEffect =2
                            OverlapFlags =87
                            Left =5061
                            Top =681
                            OptionValue =2
                            BorderColor =13553360
                            Name ="Option25"
                            Begin
                                Begin Label
                                    OverlapFlags =247
                                    Left =5291
                                    Top =653
                                    Width =330
                                    Height =315
                                    BorderColor =16777215
                                    Name ="Label26"
                                    Caption ="EN"
                                End
                            End
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "JTM_Izz.cls"
