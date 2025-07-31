Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    AllowEdits = NotDefault
    AllowDesignChanges = NotDefault
    ScrollBars =2
    ViewsAllowed =1
    RecordLocks =2
    TabularCharSet =186
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =3660
    DatasheetFontHeight =10
    ItemSuffix =7
    Left =13545
    Top =2220
    Right =17400
    Bottom =3915
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0xcde3e1a39d32e640
    End
    RecordSource ="SELECT dbo_viesn_Ligumi_Komentari.Koment_ID, dbo_viesn_Ligumi_Komentari.Lig_Nr, "
        "dbo_viesn_Ligumi_Komentari.Komentars, dbo_viesn_Ligumi.Pers_ID FROM dbo_viesn_Li"
        "gumi_Komentari INNER JOIN dbo_viesn_Ligumi ON dbo_viesn_Ligumi_Komentari.Lig_Nr "
        "= dbo_viesn_Ligumi.Ligums ORDER BY dbo_viesn_Ligumi_Komentari.Koment_ID DESC;"
    Caption ="STL_Komentari_sub"
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
            TextFontFamily =0
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
            TextFontFamily =0
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ListBox
            SpecialEffect =2
            TextFontCharSet =186
            TextFontFamily =0
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
            TextFontFamily =0
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
            Height =285
            BackColor =-2147483633
            Name ="FormHeader"
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =180
                    Width =885
                    Height =285
                    ForeColor =-2147483630
                    Name ="Komentari"
                    Caption ="skatīt visu"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Rādīt komentārus"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =1417
                    Width =1590
                    Height =285
                    TabIndex =1
                    Name ="AddComment"
                    Caption ="Pievienot jaunu"
                    OnClick ="[Event Procedure]"
                End
            End
        End
        Begin Section
            CanGrow = NotDefault
            Height =453
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    Left =15
                    Top =60
                    Width =615
                    Height =225
                    ColumnWidth =900
                    Name ="Lig_Nr"
                    ControlSource ="Lig_Nr"
                End
                Begin TextBox
                    CanGrow = NotDefault
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =95
                    Left =645
                    Width =3015
                    Height =450
                    ColumnWidth =3000
                    TabIndex =1
                    Name ="Komentars"
                    ControlSource ="Komentars"
                    AfterUpdate ="[Event Procedure]"
                End
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    OverlapFlags =247
                    TextFontFamily =34
                    Left =15
                    Top =225
                    Width =615
                    Height =225
                    TabIndex =2
                    Name ="Text6"
                    ControlSource ="Pers_ID"
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
' See "VL_Komentari_sub.cls"
