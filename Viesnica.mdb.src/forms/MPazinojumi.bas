Version =19
VersionRequired =19
Begin Form
    AutoCenter = NotDefault
    AllowDesignChanges = NotDefault
    TabularCharSet =186
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =14513
    DatasheetFontHeight =10
    ItemSuffix =48
    Left =4575
    Top =30
    Right =23220
    Bottom =8205
    DatasheetGridlinesColor =12632256
    Filter ="[Ligums]=31504"
    RecSrcDt = Begin
        0xd6cf74dc4c19e440
    End
    RecordSource ="dbo_viesn_MPazinojumi"
    Caption ="JTM brīdinājumi un paziņojumi"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            BackStyle =0
            TextFontCharSet =186
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
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ListBox
            SpecialEffect =2
            TextFontCharSet =186
            Width =1701
            Height =1417
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ComboBox
            SpecialEffect =2
            TextFontCharSet =186
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
        Begin CustomControl
            SpecialEffect =2
            Width =4536
            Height =2835
        End
        Begin ToggleButton
            TextFontCharSet =186
            Width =283
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
        End
        Begin Tab
            TextFontCharSet =186
            BackStyle =0
            Width =5103
            Height =3402
        End
        Begin FormHeader
            Height =1033
            BackColor =-2147483633
            Name ="FormHeader"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Top =793
                    Width =399
                    Height =240
                    Name ="Tips_Label"
                    Caption ="Tips"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =4649
                    Top =793
                    Width =699
                    Height =240
                    Name ="Ligums_Label"
                    Caption ="Līgums"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =6336
                    Top =793
                    Width =564
                    Height =240
                    Name ="Istaba_Label"
                    Caption ="Istaba"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =7016
                    Top =793
                    Width =1917
                    Height =240
                    Name ="Par_No_Label"
                    Caption ="Neapmaksātais periods"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =9057
                    Top =793
                    Width =1026
                    Height =240
                    Name ="Par_Periods_Label"
                    Caption ="Termiņs"
                    Tag ="DetachedLabel"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =10421
                    Top =15
                    Width =501
                    Height =486
                    Name ="Aizvert"
                    Caption ="Command26"
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
                        0x0000000000000000
                    End
                    ObjectPalette = Begin
                        0x0003100000000000800000000080000080800000000080008000800000808000 ,
                        0x80808000c0c0c000ff000000c0c0c000ffff00000000ff00c0c0c00000ffff00 ,
                        0xffffff0000000000
                    End
                    ControlTipText ="Aizvērt formu"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Top =56
                    Width =5604
                    Height =330
                    FontSize =10
                    Name ="Label27"
                    Caption ="JTM brīdinājumi par samaksu un paziņojumi par līguma laušanu"
                    FontName ="Arial"
                    Tag ="DetachedLabel"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9345
                    Top =15
                    Width =501
                    Height =486
                    TabIndex =1
                    Name ="Drukat_LV"
                    Caption ="LV"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =9854
                    Top =15
                    Width =501
                    Height =486
                    TabIndex =2
                    Name ="Drukat_ENG"
                    Caption ="ENG"
                    OnClick ="[Event Procedure]"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =2
                    Top =510
                    Width =2085
                    Height =240
                    Name ="Label30"
                    Caption ="Brīdinājuma / paziņojuma"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =2211
                    Top =793
                    Width =1029
                    Height =240
                    Name ="Label33"
                    Caption ="Vārds"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =3288
                    Top =793
                    Width =1299
                    Height =240
                    Name ="Label35"
                    Caption ="Uzvārds"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =12531
                    Top =793
                    Width =1641
                    Height =240
                    Name ="Label37"
                    Caption ="Sagatavoja"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =675
                    Top =793
                    Width =399
                    Height =240
                    Name ="Label39"
                    Caption ="Nr"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =1133
                    Top =793
                    Width =969
                    Height =240
                    Name ="Label40"
                    Caption ="Datums"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =10140
                    Top =793
                    Width =2376
                    Height =240
                    Name ="Label41"
                    Caption ="Paraksta"
                    Tag ="DetachedLabel"
                End
            End
        End
        Begin Section
            Height =255
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =10814
                    Width =222
                    Height =255
                    ColumnWidth =1701
                    Name ="JTMPazID"
                    ControlSource ="JTMPazID"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =10544
                    Width =234
                    Height =255
                    ColumnWidth =1035
                    TabIndex =2
                    Name ="LIGUM_ID"
                    ControlSource ="LIGUM_ID"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =95
                    Left =11041
                    Width =234
                    Height =255
                    ColumnWidth =1035
                    TabIndex =3
                    Name ="Pers_ID"
                    ControlSource ="Pers_ID"
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =4649
                    Width =699
                    Height =255
                    ColumnWidth =1035
                    TabIndex =4
                    Name ="Ligums"
                    ControlSource ="Ligums"
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =5386
                    Width =897
                    Height =255
                    ColumnWidth =945
                    TabIndex =5
                    Name ="Lig_Dat"
                    ControlSource ="Lig_Dat"
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =6336
                    Width =564
                    Height =255
                    ColumnWidth =1035
                    TabIndex =6
                    Name ="Istaba"
                    ControlSource ="Istaba"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =7016
                    Width =867
                    Height =255
                    ColumnWidth =945
                    TabIndex =7
                    Name ="Par_No"
                    ControlSource ="Par_No"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =7923
                    Width =1017
                    Height =255
                    ColumnWidth =945
                    TabIndex =8
                    Name ="Par_Lidz"
                    ControlSource ="Par_Lidz"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =9057
                    Width =1017
                    Height =255
                    ColumnWidth =945
                    TabIndex =9
                    Name ="Termins"
                    ControlSource ="Termins"
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    TextAlign =1
                    ColumnCount =3
                    ListWidth =3402
                    Width =624
                    ColumnWidth =1035
                    TabIndex =1
                    Name ="Tips"
                    ControlSource ="Tips"
                    RowSourceType ="Value List"
                    RowSource ="1;\"br\";\"brīdinājums par nesamaksātu summu\";2;\"paz\";\"paziņojums par līguma"
                        " laušanu\""
                    ColumnWidths ="0;567;2835"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =675
                    Width =399
                    Height =255
                    TabIndex =10
                    Name ="BP_Nr"
                    ControlSource ="BP_Nr"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1133
                    Width =897
                    Height =255
                    TabIndex =11
                    Name ="BP_Datums"
                    ControlSource ="BP_Datums"
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =2211
                    Width =1029
                    Height =255
                    TabIndex =12
                    Name ="Vards"
                    ControlSource ="Vards"
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =3288
                    Width =1299
                    Height =255
                    TabIndex =13
                    Name ="Uzvards"
                    ControlSource ="Uzvards"
                End
                Begin TextBox
                    OverlapFlags =93
                    Left =12531
                    Width =1632
                    Height =255
                    TabIndex =14
                    Name ="Sagatavoja"
                    ControlSource ="Sagatavoja"
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =95
                    ColumnCount =3
                    ListWidth =3969
                    Left =12180
                    Width =327
                    TabIndex =15
                    Name ="Paraksta"
                    RowSourceType ="Value List"
                    RowSource ="\"I.Ernstsone\";\"Jaunatnes tūrisma mītnes vadītāja\";\"Youth Hostel Manager\";\""
                        "L.Zelča\";\"Jaunatnes tūrisma mītnes vadītājas vietniece\";\"Vice manager of You"
                        "th Hostel\""
                    ColumnWidths ="1134;2835;0"
                    AfterUpdate ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =247
                    Left =10140
                    Width =2052
                    Height =255
                    TabIndex =16
                    Name ="Paraksta_VU"
                    ControlSource ="Paraksta_VU"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =255
                    Left =12521
                    Width =177
                    Height =255
                    TabIndex =17
                    Name ="Paraksta_Amats"
                    ControlSource ="Paraksta_Amats"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =247
                    Left =12635
                    Width =177
                    Height =255
                    TabIndex =18
                    Name ="Paraksta_Amats_eng"
                    ControlSource ="Paraksta_Amats_eng"
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =87
                    ListWidth =2835
                    Left =14165
                    Width =327
                    TabIndex =19
                    Name ="Sagatavoja_lst"
                    RowSourceType ="Value List"
                    RowSource ="\"A.Grabovska 67617543\";\"D.Dobele 67617543\";\"D.Kļaviņa 67617543\";\"E.Ilgavī"
                        "ze 67617543\""
                    ColumnWidths ="2835"
                    AfterUpdate ="[Event Procedure]"
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
' See "MPazinojumi.cls"
