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
    Width =1995
    DatasheetFontHeight =10
    ItemSuffix =10
    Left =2835
    Top =5565
    Right =4830
    Bottom =7620
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0xa629c7e21217e640
    End
    RecordSource ="SELECT dbo_viesn_Ligumi_Istabas.VLI_ID, dbo_viesn_Ligumi_Istabas.Ligums, dbo_vie"
        "sn_Ligumi_Istabas.LIDat_No, dbo_viesn_Ligumi_Istabas.Istaba, dbo_viesn_Ligumi_Is"
        "tabas.LIDat_Lidz FROM dbo_viesn_Ligumi_Istabas WHERE ((Not (dbo_viesn_Ligumi_Ist"
        "abas.LIDat_No) Is Null)) OR ((Not (dbo_viesn_Ligumi_Istabas.Istaba) Is Null)) OR"
        " ((Not (dbo_viesn_Ligumi_Istabas.LIDat_Lidz) Is Null)) ORDER BY dbo_viesn_Ligumi"
        "_Istabas.LIDat_No DESC , dbo_viesn_Ligumi_Istabas.Istaba;"
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
                    Left =420
                    Width =780
                    Height =240
                    Name ="LIDat_No_Label"
                    Caption ="ievācas"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =1215
                    Width =780
                    Height =240
                    Name ="LIDatLidz_Label"
                    Caption ="izvācas"
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
                    ColumnHidden = NotDefault
                    OverlapFlags =93
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
                    OverlapFlags =93
                    Left =396
                    Width =270
                    Height =255
                    ColumnWidth =1035
                    TabIndex =1
                    Name ="Ligums"
                    ControlSource ="Ligums"
                End
                Begin TextBox
                    OverlapFlags =247
                    Width =390
                    Height =255
                    ColumnWidth =420
                    TabIndex =2
                    Name ="Istaba"
                    ControlSource ="Istaba"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    OverlapFlags =255
                    Left =420
                    Width =780
                    Height =255
                    ColumnWidth =960
                    TabIndex =3
                    Name ="LIDat_No"
                    ControlSource ="LIDat_No"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    OverlapFlags =119
                    Left =1215
                    Width =780
                    Height =255
                    ColumnWidth =930
                    TabIndex =4
                    Name ="LIDat_Lidz"
                    ControlSource ="LIDat_Lidz"
                    AfterUpdate ="[Event Procedure]"
                    FontName ="Arial Narrow"
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
' See "LigumsViesnIstabinas_sub.cls"
