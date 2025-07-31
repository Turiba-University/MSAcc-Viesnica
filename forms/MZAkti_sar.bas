Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    FilterOn = NotDefault
    AllowDesignChanges = NotDefault
    ScrollBars =2
    TabularCharSet =186
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =8091
    DatasheetFontHeight =10
    ItemSuffix =35
    Left =4245
    Top =1980
    Right =12330
    Bottom =7650
    DatasheetGridlinesColor =12632256
    Filter ="([MZAkti_sar].[Nr] Is Not Null)"
    RecSrcDt = Begin
        0xf48e2c6e2e04e640
    End
    RecordSource ="SELECT dbo_Viesn_MZAkts.RID, dbo_Viesn_MZAkts.Nr, dbo_Viesn_MZAkts.Datums, dbo_V"
        "iesn_MZAkts.LigNr, dbo_Viesn_MZAkts.LigVards, dbo_Viesn_MZAkts.LigUzvards, dbo_V"
        "iesn_MZAkts.LigIstaba, dbo_Viesn_MZAkts.LigNr, dbo_Viesn_MZAkts.Summa, IIf([Sama"
        "ksats]=1,\"kase\",IIf([Samaksats]=2,\"dep.\")) AS Sam, dbo_Viesn_MZAkts.Samaksat"
        "sDat, dbo_Viesn_MZAkts.Stat FROM dbo_Viesn_MZAkts ORDER BY dbo_Viesn_MZAkts.Datu"
        "ms DESC;"
    Caption ="MZ aktu saraksts"
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
            Height =287
            BackColor =-2147483633
            Name ="FormHeader"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Width =390
                    Height =240
                    FontSize =10
                    Name ="Istaba_Label"
                    Caption ="Nr."
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =450
                    Width =810
                    Height =240
                    FontSize =10
                    Name ="Label11"
                    Caption ="Datums"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =3
                    Left =5215
                    Width =600
                    Height =240
                    FontSize =10
                    Name ="Label13"
                    Caption ="Summa"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =6895
                    Width =780
                    Height =240
                    FontSize =10
                    Name ="Label19"
                    Caption ="Datums"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =6115
                    Width =690
                    Height =240
                    FontSize =10
                    Name ="Label21"
                    Caption ="Samaks."
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin ToggleButton
                    OverlapFlags =85
                    Left =7750
                    Width =341
                    Height =287
                    ColumnOrder =0
                    Name ="Anulete"
                    AfterUpdate ="[Event Procedure]"
                    DefaultValue ="-1"
                    Caption ="An"
                    FontName ="Arial Narrow"
                    ControlTipText ="Rādīt anulētos MZA"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =1305
                    Width =660
                    Height =255
                    FontSize =10
                    Name ="Label27"
                    Caption ="Līgums."
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =2010
                    Width =390
                    Height =255
                    FontSize =10
                    Name ="Label29"
                    Caption ="ist."
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =2415
                    Width =1215
                    Height =255
                    FontSize =10
                    Name ="Label31"
                    Caption ="Vārds"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =87
                    TextAlign =1
                    Left =3705
                    Width =1515
                    Height =255
                    FontSize =10
                    Name ="Label33"
                    Caption ="Uzvārds"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
            End
        End
        Begin Section
            Height =269
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =93
                    Left =375
                    Width =141
                    Height =255
                    ColumnWidth =1680
                    Name ="AID"
                    ControlSource ="RID"
                End
                Begin TextBox
                    Visible = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =255
                    Left =170
                    Width =270
                    Height =255
                    ColumnWidth =1035
                    TabIndex =5
                    Name ="Ligums"
                    ControlSource ="LigNr"
                End
                Begin TextBox
                    OverlapFlags =247
                    Width =390
                    Height =255
                    ColumnWidth =420
                    TabIndex =1
                    Name ="ANR"
                    ControlSource ="Nr"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =247
                    TextAlign =1
                    Left =450
                    Width =810
                    Height =255
                    TabIndex =3
                    Name ="MADat"
                    ControlSource ="Datums"
                    FontName ="Arial Narrow"
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =85
                    TextAlign =2
                    Left =5292
                    Width =525
                    Height =255
                    TabIndex =4
                    Name ="MASum"
                    ControlSource ="Summa"
                    Format ="Fixed"
                    FontName ="Arial Narrow"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5888
                    Width =265
                    Height =269
                    TabIndex =2
                    Name ="MASkatit"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =1
                    Left =6858
                    Width =780
                    Height =255
                    TabIndex =6
                    Name ="Text20"
                    ControlSource ="SamaksatsDat"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =6177
                    Width =630
                    Height =255
                    TabIndex =7
                    Name ="Text22"
                    ControlSource ="Sam"
                    FontName ="Arial Narrow"
                End
                Begin CheckBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =7795
                    Top =60
                    Width =170
                    Height =113
                    TabIndex =8
                    Name ="Stat"
                    ControlSource ="Stat"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1303
                    Width =675
                    Height =255
                    TabIndex =9
                    Name ="Text28"
                    ControlSource ="LigNr"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    OverlapFlags =93
                    Left =2012
                    Width =390
                    Height =255
                    TabIndex =10
                    Name ="Text30"
                    ControlSource ="LigIstaba"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =2415
                    Width =1215
                    Height =255
                    TabIndex =11
                    Name ="Text32"
                    ControlSource ="LigVards"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =3705
                    Width =1515
                    Height =255
                    TabIndex =12
                    Name ="Text34"
                    ControlSource ="LigUzvards"
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
' See "MZAkti_sar.cls"
