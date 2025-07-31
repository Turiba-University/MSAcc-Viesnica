Version =19
VersionRequired =19
Begin Form
    AutoCenter = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =2
    TabularCharSet =186
    TabularFamily =124
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =6520
    DatasheetFontHeight =10
    ItemSuffix =29
    Left =945
    Top =3435
    Right =15900
    Bottom =4965
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x4855ec4595b5e540
    End
    RecordSource ="VIA_LigIst_Uzdatumu_LigInfo"
    Caption ="VIA_LigIst_Uzdatumu_LigInfo"
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
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
            SpecialEffect =3
            Width =1701
        End
        Begin Image
            BackStyle =0
            OldBorderStyle =0
            BorderLineStyle =0
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
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =2
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
        Begin BoundObjectFrame
            SpecialEffect =2
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            FELineBreak = NotDefault
            SpecialEffect =2
            TextFontCharSet =186
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ListBox
            SpecialEffect =2
            TextFontCharSet =186
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ComboBox
            SpecialEffect =2
            TextFontCharSet =186
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin Subform
            SpecialEffect =2
            BorderLineStyle =0
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
            Height =0
            BackColor =-2147483633
            Name ="FormHeader"
        End
        Begin Section
            Height =3138
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    ColumnHidden = NotDefault
                    OverlapFlags =85
                    Left =1977
                    Top =114
                    Width =1035
                    Height =255
                    ColumnWidth =675
                    ColumnOrder =0
                    Name ="Ist_Nr"
                    ControlSource ="Ist_Nr"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =57
                            Top =114
                            Width =1860
                            Height =255
                            Name ="Ist_Nr_Label"
                            Caption ="Ist_Nr"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1977
                    Top =456
                    Width =1035
                    Height =255
                    ColumnWidth =840
                    ColumnOrder =2
                    TabIndex =1
                    Name ="Ligums"
                    ControlSource ="Ligums"
                    OnDblClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =57
                            Top =456
                            Width =1860
                            Height =255
                            Name ="Ligums_Label"
                            Caption ="Ligums*"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1977
                    Top =798
                    Width =945
                    Height =255
                    ColumnWidth =1110
                    ColumnOrder =4
                    TabIndex =2
                    Name ="Lig_Dat"
                    ControlSource ="Lig_Dat"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =57
                            Top =798
                            Width =1860
                            Height =255
                            Name ="Lig_Dat_Label"
                            Caption ="Lig_Dat"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1977
                    Top =1140
                    Width =2760
                    Height =255
                    ColumnWidth =1200
                    ColumnOrder =5
                    TabIndex =3
                    Name ="Vards"
                    ControlSource ="Vards"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =57
                            Top =1140
                            Width =1860
                            Height =255
                            Name ="Vards_Label"
                            Caption ="Vards"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1977
                    Top =1482
                    Width =2760
                    Height =255
                    ColumnWidth =1515
                    ColumnOrder =6
                    TabIndex =4
                    Name ="Uzvards"
                    ControlSource ="Uzvards"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =57
                            Top =1482
                            Width =1860
                            Height =255
                            Name ="Uzvards_Label"
                            Caption ="Uzvards"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1977
                    Top =1824
                    Width =1860
                    Height =255
                    ColumnWidth =1365
                    ColumnOrder =7
                    TabIndex =5
                    Name ="Pers_Kods"
                    ControlSource ="Pers_Kods"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =57
                            Top =1824
                            Width =1860
                            Height =255
                            Name ="Pers_Kods_Label"
                            Caption ="Pers_Kods"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1977
                    Top =2166
                    Width =945
                    Height =255
                    ColumnWidth =1140
                    ColumnOrder =9
                    TabIndex =6
                    Name ="Ievācas"
                    ControlSource ="LIDat_No"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =57
                            Top =2166
                            Width =1860
                            Height =255
                            Name ="Datums_In_Label"
                            Caption ="Ievācas"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1977
                    Top =2508
                    Width =945
                    Height =255
                    ColumnWidth =1290
                    ColumnOrder =10
                    TabIndex =7
                    Name ="Izvācas"
                    ControlSource ="LIDat_Lidz"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =57
                            Top =2508
                            Width =1860
                            Height =255
                            Name ="Datums_Out_Label"
                            Caption ="Izvācas"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1977
                    Top =2883
                    Width =945
                    Height =255
                    ColumnWidth =825
                    ColumnOrder =3
                    TabIndex =8
                    Name ="Text16"
                    ControlSource ="Stat"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =57
                            Top =2883
                            Width =1860
                            Height =255
                            Name ="Label17"
                            Caption ="Statuss"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =5038
                    Top =113
                    Width =1035
                    Height =255
                    ColumnWidth =1785
                    ColumnOrder =11
                    TabIndex =9
                    Name ="TelNr"
                    ControlSource ="Tel1"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =3118
                            Top =113
                            Width =1860
                            Height =255
                            Name ="Label19"
                            Caption ="TelNr"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =93
                    Left =5038
                    Top =488
                    Width =1035
                    Height =255
                    ColumnWidth =960
                    ColumnOrder =8
                    TabIndex =10
                    Name ="Valsts"
                    ControlSource ="Valsts"
                End
                Begin TextBox
                    OverlapFlags =247
                    TextFontFamily =0
                    IMESentenceMode =3
                    Left =4819
                    Top =488
                    Height =300
                    ColumnWidth =780
                    ColumnOrder =1
                    TabIndex =11
                    Name ="Text22"
                    ControlSource ="IstabasNr"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =0
                            Left =3118
                            Top =488
                            Width =990
                            Height =285
                            Name ="Label23"
                            Caption ="Ist.Nr"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =4584
                    Top =2437
                    Width =945
                    Height =255
                    ColumnOrder =13
                    TabIndex =12
                    Name ="Text25"
                    ControlSource ="CertDatums"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =0
                            Left =3279
                            Top =2437
                            Width =1245
                            Height =255
                            Name ="Label26"
                            Caption ="CertDatums"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =0
                    Left =4584
                    Top =2812
                    Width =945
                    Height =255
                    ColumnWidth =705
                    ColumnOrder =12
                    TabIndex =13
                    Name ="Text27"
                    ControlSource ="Cert"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =0
                            Left =3279
                            Top =2812
                            Width =1245
                            Height =255
                            Name ="Label28"
                            Caption ="Cert"
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
' See "VIA_LigIst_Uzdatumu_LigInfo.cls"
