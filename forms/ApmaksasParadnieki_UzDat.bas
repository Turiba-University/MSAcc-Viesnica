Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    TabularCharSet =186
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =14865
    DatasheetFontHeight =11
    ItemSuffix =4
    Left =210
    Top =2235
    Right =15330
    Bottom =8310
    DatasheetGridlinesColor =15062992
    RecSrcDt = Begin
        0x0bc8ac3b305fe540
    End
    Caption ="JTM apmaksas parādnieki"
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
        Begin Subform
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin Section
            CanGrow = NotDefault
            Height =6090
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin Subform
                    OverlapFlags =85
                    Left =60
                    Top =810
                    Width =14805
                    Height =5280
                    BorderColor =13553360
                    Name ="ApmaksasParadnieki_Uzdatumu"
                    SourceObject ="Form.ApmaksasParadnieki_Uzdatumu"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =13230
                    Top =60
                    Width =666
                    Height =681
                    TabIndex =1
                    ForeColor =3484194
                    Name ="Aizvert"
                    Caption ="Command2"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00ddddd0dddddddddddddd00ddddddddddddd030dddddddddd ,
                        0xdd0330dddddddddd0033300000000dddd03330ff0dddddddd03300ff0dddd4dd ,
                        0xd03330ff0ddd44ddd03330ff0dd44444d03330ff0d444444d03330ff0dd44444 ,
                        0xd0330fff0ddd44ddd030ffff0dddd4ddd00fffff0dddddddd00000000ddddddd ,
                        0xdddddddddddddddd000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Aizvērt"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =11670
                    Top =75
                    Width =1305
                    Height =675
                    TabIndex =2
                    ForeColor =3484194
                    Name ="IeliktSTOP"
                    Caption ="Ielikt STOP atzīmētos"
                    OnClick ="[Event Procedure]"
                End
            End
        End
    End
End
CodeBehindForm
' See "ApmaksasParadnieki_UzDat.cls"
