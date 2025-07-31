Version =19
VersionRequired =19
Begin Form
    AutoCenter = NotDefault
    AllowDesignChanges = NotDefault
    TabularCharSet =186
    TabularFamily =124
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =5730
    DatasheetFontHeight =10
    ItemSuffix =17
    Left =6735
    Top =4170
    Right =12870
    Bottom =8145
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x604663885823e340
    End
    RecordSource ="SELECT tmp_KA_cdata.* FROM tmp_KA_cdata WHERE (((tmp_KA_cdata.Logins)=CurrentUse"
        "r()));"
    Caption ="tmp_KA_cdata"
    OnOpen ="[Event Procedure]"
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
            Height =630
            BackColor =-2147483633
            Name ="FormHeader"
            Begin
                Begin Label
                    OverlapFlags =93
                    TextAlign =2
                    Top =390
                    Width =1140
                    Height =240
                    Name ="Nodala_Label"
                    Caption ="Nodaļa"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =93
                    TextAlign =1
                    Left =3189
                    Top =390
                    Width =318
                    Height =240
                    Name ="Artikuls_Label"
                    Caption ="Artikuls"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =215
                    TextAlign =3
                    Left =3345
                    Top =390
                    Width =648
                    Height =240
                    Name ="Daudzums_Label"
                    Caption ="Skaits"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =4947
                    Top =390
                    Width =783
                    Height =240
                    Name ="Summa_Label"
                    Caption ="Summa"
                    Tag ="DetachedLabel"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =87
                    Left =4360
                    Width =1369
                    Height =374
                    ColumnOrder =0
                    FontSize =14
                    Name ="SummaApmaksai"
                    ControlSource ="=Int((Sum([summa])+0.005005)*100)/100"
                    Format ="Standard"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =2895
                            Width =1470
                            Height =375
                            FontSize =14
                            Name ="Label13"
                            Caption ="Kopā EUR:"
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =4096
                    Top =390
                    Width =783
                    Height =240
                    Name ="Label14"
                    Caption ="Cena"
                    Tag ="DetachedLabel"
                End
                Begin TextBox
                    Visible = NotDefault
                    Enabled = NotDefault
                    Locked = NotDefault
                    DecimalPlaces =2
                    OverlapFlags =215
                    BackStyle =0
                    Left =1696
                    Top =105
                    Width =739
                    Height =227
                    ColumnOrder =1
                    TabIndex =1
                    Name ="SummaApmaksai_LVL"
                    ControlSource ="=Int(([SummaApmaksai]*0.702804+0.005005)*100)/100"
                    Format ="Standard"
                    Begin
                        Begin Label
                            Visible = NotDefault
                            OverlapFlags =93
                            Left =75
                            Top =105
                            Width =1635
                            Height =240
                            Name ="Label17"
                            Caption ="Kopā LVL (0.702804):"
                        End
                    End
                End
                Begin Label
                    OverlapFlags =215
                    TextAlign =1
                    TextFontFamily =0
                    Left =1133
                    Top =340
                    Width =2085
                    Height =255
                    Name ="Label16"
                    Caption ="PLU"
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
                    OverlapFlags =93
                    Left =60
                    Width =513
                    Height =255
                    ColumnWidth =825
                    Name ="Nodala"
                    ControlSource ="Nodala"
                    AfterUpdate ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =93
                    Left =630
                    Width =513
                    Height =255
                    ColumnWidth =1950
                    TabIndex =1
                    Name ="Nodala_txt"
                    ControlSource ="Nodala_txt"
                    AfterUpdate ="[Event Procedure]"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =3174
                    Width =318
                    Height =255
                    ColumnWidth =1920
                    TabIndex =2
                    Name ="Artikuls"
                    ControlSource ="Artikuls"
                    AfterUpdate ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =247
                    Left =3450
                    Width =528
                    Height =255
                    ColumnWidth =1140
                    TabIndex =3
                    Name ="Daudzums"
                    ControlSource ="Daudzums"
                    AfterUpdate ="[Event Procedure]"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =4932
                    Width =783
                    Height =255
                    ColumnWidth =1350
                    TabIndex =5
                    Name ="Summa"
                    ControlSource ="Summa"
                    Format ="Standard"
                    AfterUpdate ="[Event Procedure]"
                End
                Begin TextBox
                    Visible = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =247
                    Left =453
                    Width =306
                    Height =255
                    ColumnWidth =0
                    TabIndex =6
                    Name ="Logins"
                    ControlSource ="Logins"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =4081
                    Width =783
                    Height =255
                    TabIndex =4
                    Name ="Cena"
                    ControlSource ="Cena"
                    Format ="Standard"
                    AfterUpdate ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =247
                    Left =1133
                    Width =2178
                    Height =255
                    FontSize =9
                    TabIndex =7
                    Name ="Text18"
                    ControlSource ="PLU_txt"
                    FontName ="Arial"
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
' See "KA_sub_cdata.cls"
