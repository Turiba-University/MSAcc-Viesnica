Version =19
VersionRequired =19
Begin Form
    AutoCenter = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =2
    ViewsAllowed =2
    TabularCharSet =186
    TabularFamily =124
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =7920
    DatasheetFontHeight =10
    ItemSuffix =6
    Left =5415
    Top =1470
    Right =16485
    Bottom =8700
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x74b7b0ac7215e440
    End
    RecordSource ="ParskatsPaValstim"
    Caption ="Pārskats pa valstīm"
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
                    TextAlign =1
                    Left =57
                    Top =57
                    Width =3819
                    Height =240
                    Name ="Valsts_Label"
                    Caption ="Valsts"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =3933
                    Top =57
                    Width =1938
                    Height =240
                    Name ="PersSk_Label"
                    Caption ="PersSk"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =5928
                    Top =57
                    Width =1935
                    Height =240
                    Name ="NaktisPers_Label"
                    Caption ="NaktisPers"
                    Tag ="DetachedLabel"
                End
            End
        End
        Begin Section
            Height =564
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    Left =57
                    Top =57
                    Width =3819
                    Height =450
                    ColumnWidth =3570
                    Name ="Valsts*"
                    ControlSource ="Valsts"
                    OnDblClick ="[Event Procedure]"
                    EventProcPrefix ="Valsts_"
                    ShortcutMenuBar ="Ar dubultklikšķi atver līgumu sarakstu šai valstij"
                    ControlTipText ="Ar dubultklikšķi atver līgumu sarakstu šai valstij"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =3933
                    Top =57
                    Width =1938
                    Height =255
                    ColumnWidth =1065
                    TabIndex =1
                    Name ="PersSk"
                    ControlSource ="PersSk"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =5928
                    Top =57
                    Width =1935
                    Height =255
                    ColumnWidth =1515
                    TabIndex =2
                    Name ="Naktis"
                    ControlSource ="NaktisPers"
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
' See "ParskatsPaValstim.cls"
