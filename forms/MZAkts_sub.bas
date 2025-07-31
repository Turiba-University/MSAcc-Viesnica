Version =19
VersionRequired =19
Begin Form
    AutoCenter = NotDefault
    AllowDeletions = NotDefault
    AllowAdditions = NotDefault
    OrderByOn = NotDefault
    AllowEdits = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =2
    TabularCharSet =186
    TabularFamily =124
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =7920
    DatasheetFontHeight =10
    ItemSuffix =19
    Left =4800
    Top =5670
    Right =14115
    Bottom =8250
    DatasheetGridlinesColor =12632256
    OrderBy ="[MZAkts_sub].[Inv_Skaits] DESC"
    RecSrcDt = Begin
        0x2debaf3599fae540
    End
    RecordSource ="SELECT dbo_Viesn_MZAkts_saturs.*, IIf([Inv_Stat]=-10,\"nav nodevis\",IIf([Inv_St"
        "at]=-11,\"bojāts\",IIf([Inv_Stat]=-12,\"pazaudēts\"))) AS I_Stat FROM dbo_Viesn_"
        "MZAkts_saturs WHERE (((dbo_Viesn_MZAkts_saturs.Stat) Is Null Or (dbo_Viesn_MZAkt"
        "s_saturs.Stat)=0));"
    Caption ="dbo_Viesn_MZAkts_saturs"
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
            Height =354
            BackColor =-2147483633
            Name ="FormHeader"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =57
                    Top =57
                    Width =741
                    Height =240
                    Name ="RID_Label"
                    Caption ="RID"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =855
                    Top =57
                    Width =456
                    Height =240
                    Name ="MZA_ID_Label"
                    Caption ="MZA_ID"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =1368
                    Top =57
                    Width =456
                    Height =240
                    Name ="Inv_ID_Label"
                    Caption ="Inv_ID"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =1881
                    Top =57
                    Width =1254
                    Height =240
                    Name ="Inv_Nos_Label"
                    Caption ="Inv_Nos"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =3192
                    Top =57
                    Width =1254
                    Height =240
                    Name ="Inv_Nos_Eng_Label"
                    Caption ="Inv_Nos_Eng"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =4503
                    Top =57
                    Width =399
                    Height =240
                    Name ="Inv_Skaits_Label"
                    Caption ="Inv_Skaits"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =4959
                    Top =57
                    Width =1254
                    Height =240
                    Name ="Inv_Cena_Label"
                    Caption ="Inv_Cena"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =6270
                    Top =57
                    Width =1254
                    Height =240
                    Name ="Inv_Summa_Label"
                    Caption ="Inv_Summa"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =7581
                    Top =57
                    Width =282
                    Height =240
                    Name ="Inv_Stat_Label"
                    Caption ="Inv_Stat"
                    Tag ="DetachedLabel"
                End
            End
        End
        Begin Section
            Height =312
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    ColumnHidden = NotDefault
                    OverlapFlags =85
                    Left =57
                    Top =57
                    Width =741
                    Height =255
                    ColumnWidth =0
                    Name ="RID"
                    ControlSource ="RID"
                End
                Begin TextBox
                    ColumnHidden = NotDefault
                    OverlapFlags =85
                    Left =855
                    Top =57
                    Width =456
                    Height =255
                    ColumnWidth =0
                    TabIndex =1
                    Name ="MZA_ID"
                    ControlSource ="MZA_ID"
                End
                Begin TextBox
                    ColumnHidden = NotDefault
                    OverlapFlags =85
                    Left =1368
                    Top =57
                    Width =456
                    Height =255
                    ColumnWidth =0
                    TabIndex =2
                    Name ="Inv_ID"
                    ControlSource ="Inv_ID"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1881
                    Top =57
                    Width =1254
                    Height =255
                    ColumnWidth =1455
                    TabIndex =3
                    Name ="Nosaukums"
                    ControlSource ="Inv_Nos"
                    OnDblClick ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =3192
                    Top =57
                    Width =1254
                    Height =255
                    ColumnWidth =1365
                    TabIndex =4
                    Name ="Nos_Eng"
                    ControlSource ="Inv_Nos_Eng"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =4503
                    Top =57
                    Width =399
                    Height =255
                    ColumnWidth =1110
                    TabIndex =5
                    Name ="Skaits"
                    ControlSource ="Inv_Skaits"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    Left =4959
                    Top =57
                    Width =1254
                    Height =255
                    ColumnWidth =1035
                    TabIndex =6
                    Name ="Cena"
                    ControlSource ="Inv_Cena"
                    Format ="Fixed"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =93
                    Left =6270
                    Top =57
                    Width =1254
                    Height =255
                    ColumnWidth =1275
                    TabIndex =7
                    Name ="Summa"
                    ControlSource ="Inv_Summa"
                    Format ="Fixed"
                End
                Begin TextBox
                    OverlapFlags =93
                    Left =7581
                    Top =57
                    Width =282
                    Height =255
                    ColumnWidth =1140
                    TabIndex =8
                    Name ="Inv_Stat"
                    ControlSource ="I_Stat"
                End
                Begin TextBox
                    OverlapFlags =247
                    TextFontFamily =0
                    Left =7426
                    Top =56
                    Width =282
                    Height =255
                    TabIndex =9
                    Name ="Stat"
                    ControlSource ="Stat"
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
' See "MZAkts_sub.cls"
