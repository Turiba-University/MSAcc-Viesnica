Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    RecordLocks =2
    TabularCharSet =186
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =8505
    DatasheetFontHeight =10
    ItemSuffix =130
    Left =8535
    Top =270
    Right =17580
    Bottom =3120
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0xebd01158d4e4e340
    End
    Caption ="Personas datu ievadīšana"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            BackStyle =0
            TextFontCharSet =186
            TextFontFamily =0
            BackColor =-2147483633
            ForeColor =-2147483630
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            Width =850
            Height =850
        End
        Begin Line
            SpecialEffect =3
            Width =1701
        End
        Begin Image
            BackStyle =0
            OldBorderStyle =0
            PictureAlignment =2
            Width =1701
            Height =1701
        End
        Begin CommandButton
            TextFontCharSet =186
            TextFontFamily =0
            Width =1701
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
        End
        Begin OptionButton
            SpecialEffect =2
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =2
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            SpecialEffect =3
            Width =1701
            Height =1701
        End
        Begin BoundObjectFrame
            SpecialEffect =2
            OldBorderStyle =0
            BackStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            FELineBreak = NotDefault
            SpecialEffect =2
            TextFontCharSet =186
            TextFontFamily =0
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ListBox
            SpecialEffect =2
            TextFontCharSet =186
            TextFontFamily =0
            Width =1701
            Height =1417
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ComboBox
            SpecialEffect =2
            TextFontCharSet =186
            TextFontFamily =0
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin Subform
            SpecialEffect =2
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            SpecialEffect =2
            OldBorderStyle =1
            Width =4536
            Height =2835
        End
        Begin ToggleButton
            TextFontCharSet =186
            TextFontFamily =0
            Width =283
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
        End
        Begin Tab
            TextFontCharSet =186
            TextFontFamily =0
            BackStyle =0
            Width =5103
            Height =3402
        End
        Begin FormHeader
            Height =0
            BackColor =-2147483633
            Name ="FormHeader"
        End
        Begin Section
            Height =1585
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    OverlapFlags =87
                    Left =2910
                    Top =960
                    Width =1365
                    Height =255
                    ColumnWidth =1560
                    TabIndex =2
                    Name ="Pers"
                    AfterUpdate ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =2925
                            Top =690
                            Width =1218
                            Height =255
                            Name ="Personas Kods_Label"
                            Caption ="Personas kods*"
                            EventProcPrefix ="Personas_Kods_Label"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =45
                    Top =960
                    Width =1365
                    Height =255
                    ColumnWidth =2310
                    Name ="Vard"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =75
                            Top =690
                            Width =1218
                            Height =255
                            Name ="Vārds_Label"
                            Caption ="Vārds*"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =1485
                    Top =960
                    Width =1365
                    Height =255
                    ColumnWidth =2310
                    TabIndex =1
                    Name ="Uzva"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =1485
                            Top =690
                            Width =1218
                            Height =255
                            Name ="Uzvārds_Label"
                            Caption ="Uzvārds*"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =4335
                    Top =960
                    Width =1215
                    Height =255
                    ColumnWidth =2310
                    TabIndex =3
                    Name ="ProtNr"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =4335
                            Top =690
                            Width =1203
                            Height =255
                            Name ="Dažādi_Label"
                            Caption ="Protokola Nr.*"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =7012
                    Top =60
                    Width =862
                    Height =576
                    TabIndex =5
                    Name ="Aizvert"
                    Caption ="Command64"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadad0dadadadadaadad00adadadadaddad030dadadadada ,
                        0xad0330adadadadad0033300000000adaa03330ff0dadadadd03300ff0adad4da ,
                        0xa03330ff0dad44add03330ff0ad44444a03330ff0d444444d03330ff0ad44444 ,
                        0xa0330fff0dad44add030ffff0adad4daa00fffff0dadadadd00000000adadada ,
                        0xadadadadadadadad000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000
                    End
                    ObjectPalette = Begin
                        0x0003100000000000800000000080000080800000000080008000800000808000 ,
                        0x80808000c0c0c000ff000000c0c0c000ffff00000000ff00c0c0c00000ffff00 ,
                        0xffffff0000000000
                    End
                    ControlTipText ="Aizvērt formu"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5985
                    Top =60
                    Width =862
                    Height =576
                    TabIndex =6
                    Name ="Apmaksat"
                    Caption ="Apmaksāt"
                    OnClick ="[Event Procedure]"
                    ObjectPalette = Begin
                        0x0003100000000000800000000080000080800000000080008000800000808000 ,
                        0x80808000c0c0c000ff000000c0c0c000ffff00000000ff00c0c0c00000ffff00 ,
                        0xffffff0000000000
                    End
                    ControlTipText ="Iekļaut protokolu čekā"
                End
                Begin Label
                    OverlapFlags =85
                    Top =1360
                    Width =1860
                    Height =225
                    Name ="Label68"
                    Caption ="* obligāti aizpildāmie lauki"
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =5610
                    Top =945
                    Width =1215
                    Height =255
                    TabIndex =4
                    Name ="ProtSum"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =5610
                            Top =675
                            Width =1203
                            Height =255
                            Name ="Label125"
                            Caption ="Summa*"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =1530
                    Top =56
                    Width =567
                    Height =227
                    TabIndex =7
                    Name ="Personas_ID"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =2211
                    Top =56
                    Width =567
                    Height =227
                    TabIndex =8
                    Name ="c_Nod_ID"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =2892
                    Top =56
                    Width =567
                    Height =227
                    TabIndex =9
                    Name ="c_NodNos"
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
' See "Prot_JaunaPers.cls"
