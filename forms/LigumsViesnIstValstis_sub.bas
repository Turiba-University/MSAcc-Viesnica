Version =19
VersionRequired =19
Begin Form
    AutoResize = NotDefault
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    AllowDesignChanges = NotDefault
    ScrollBars =2
    TabularCharSet =186
    TabularFamily =124
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =1980
    DatasheetFontHeight =10
    ItemSuffix =8
    Left =12375
    Top =4110
    Right =14340
    Bottom =6225
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x5ab381441a96e340
    End
    RecordSource ="dbo_viesn_Ligumi_VValstis"
    Caption ="dbo_viesn_Ligumi_VValstis"
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
            Height =240
            BackColor =-2147483633
            Name ="FormHeader"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Width =375
                    Height =240
                    Name ="Istaba_Label"
                    Caption ="Ist."
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =390
                    Width =315
                    Height =240
                    Name ="VSkaits_Label"
                    Caption ="Sk."
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =720
                    Width =900
                    Height =240
                    Name ="Valsts_Label"
                    Caption ="Valsts"
                    Tag ="DetachedLabel"
                End
            End
        End
        Begin Section
            Height =265
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =56
                    Width =390
                    Height =255
                    ColumnWidth =1035
                    Name ="Ligums"
                    ControlSource ="Ligums"
                End
                Begin TextBox
                    OverlapFlags =255
                    Width =375
                    Height =255
                    ColumnWidth =1035
                    TabIndex =1
                    Name ="Istaba"
                    ControlSource ="Istaba"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    OverlapFlags =255
                    Left =390
                    Width =315
                    Height =255
                    ColumnWidth =675
                    TabIndex =2
                    Name ="VSkaits"
                    ControlSource ="VSkaits"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    OverlapFlags =119
                    Left =720
                    Width =900
                    Height =255
                    ColumnWidth =2760
                    TabIndex =3
                    Name ="Valsts"
                    ControlSource ="Valsts"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =1670
                    Width =310
                    Height =265
                    TabIndex =4
                    ForeColor =-2147483630
                    Name ="Valstis"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                    FontName ="Tahoma"
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
' See "LigumsViesnIstValstis_sub.cls"
