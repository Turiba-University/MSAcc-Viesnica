Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    AllowDesignChanges = NotDefault
    ScrollBars =2
    TabularCharSet =186
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =4099
    DatasheetFontHeight =10
    ItemSuffix =17
    Left =2340
    Top =3795
    Right =6750
    Bottom =5325
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x005e161c5968e340
    End
    RecordSource ="SELECT dbo_viesn_Ligumi_PApr.VLPA_ID, dbo_viesn_Ligumi_PApr.Ligums, dbo_viesn_Li"
        "gumi_PApr.Istaba, dbo_viesn_Ligumi_PApr.PA_ID, dbo_viesn_Ligumi_PApr.PA_Nos, dbo"
        "_viesn_Ligumi_PApr.PA_Cena, dbo_viesn_Ligumi_PApr.PADat_No, dbo_viesn_Ligumi_PAp"
        "r.PADat_Lidz FROM dbo_viesn_Ligumi_PApr;"
    Caption ="viesn_Ligumi_Istabas"
    AfterUpdate ="[Event Procedure]"
    DatasheetFontName ="Arial Narrow"
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
                    Width =390
                    Height =240
                    Name ="Istaba_Label"
                    Caption ="ist."
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =2526
                    Width =780
                    Height =240
                    Name ="LIDat_No_Label"
                    Caption ="Dat. no"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =3319
                    Width =780
                    Height =240
                    Name ="LIDatLidz_Label"
                    Caption ="Dat. līdz"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =690
                    Width =1260
                    Height =240
                    Name ="Label11"
                    Caption ="Nosaukums"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =1980
                    Width =525
                    Height =240
                    Name ="Label13"
                    Caption ="Cena"
                    Tag ="DetachedLabel"
                End
            End
        End
        Begin Section
            Height =276
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    Width =270
                    Height =255
                    TabIndex =8
                    Name ="PA_ID"
                    ControlSource ="PA_ID"
                End
                Begin TextBox
                    Visible = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =255
                    Left =57
                    Width =291
                    Height =255
                    ColumnWidth =1680
                    Name ="VLI_ID"
                    ControlSource ="VLI_ID"
                End
                Begin TextBox
                    Visible = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =255
                    Left =170
                    Width =270
                    Height =255
                    ColumnWidth =1035
                    TabIndex =7
                    Name ="Ligums"
                    ControlSource ="Ligums"
                End
                Begin TextBox
                    OverlapFlags =247
                    Width =390
                    Height =255
                    ColumnWidth =420
                    TabIndex =1
                    Name ="Istaba"
                    ControlSource ="Istaba"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    OverlapFlags =93
                    Left =2526
                    Width =780
                    Height =255
                    ColumnWidth =960
                    TabIndex =5
                    Name ="PADat_No"
                    ControlSource ="PADat_No"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =3319
                    Width =780
                    Height =255
                    ColumnWidth =930
                    TabIndex =6
                    Name ="PADat_Lidz"
                    ControlSource ="PADat_Lidz"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =690
                    Width =1260
                    Height =255
                    TabIndex =3
                    Name ="PA_Nos"
                    ControlSource ="PA_Nos"
                    FontName ="Arial Narrow"
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =87
                    Left =1980
                    Width =525
                    Height =255
                    TabIndex =4
                    Name ="PA_Cena"
                    ControlSource ="PA_Cena"
                    Format ="Standard"
                    FontName ="Arial Narrow"
                End
                Begin CommandButton
                    OverlapFlags =247
                    Left =405
                    Width =265
                    Height =269
                    TabIndex =2
                    Name ="PA_sar"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
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
' See "LigumsViesnIstabinas_PASar_sub.cls"
