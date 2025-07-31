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
    Width =2817
    DatasheetFontHeight =10
    ItemSuffix =3
    Left =7980
    Top =1515
    Right =12240
    Bottom =4485
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x6304b6d7e91be340
    End
    RecordSource ="Valstis_Ligumos"
    Caption ="Valstis"
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
            Height =354
            BackColor =-2147483633
            Name ="FormHeader"
            Begin
                Begin Label
                    OverlapFlags =93
                    TextAlign =1
                    Left =57
                    Top =57
                    Width =2760
                    Height =240
                    Name ="Valsts_Label"
                    Caption ="Valsts"
                    Tag ="DetachedLabel"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =215
                    Left =2494
                    Top =56
                    Width =285
                    Height =255
                    Name ="OpenFrom"
                    ControlTipText ="Dubultklikšķis - izvēlēties valsti"
                End
            End
        End
        Begin Section
            Height =340
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    Left =57
                    Top =57
                    Width =2760
                    Height =255
                    ColumnWidth =1875
                    Name ="Valsts"
                    ControlSource ="Valsts"
                    OnDblClick ="[Event Procedure]"
                    ControlTipText ="Dubultklikšķis - izvēlēties valsti"
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
' See "Valstis_Ligumos.cls"
