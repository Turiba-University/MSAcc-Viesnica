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
    Width =3711
    DatasheetFontHeight =10
    ItemSuffix =6
    Left =8700
    Top =990
    Right =14070
    Bottom =9570
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x06dc56e44e51e340
    End
    RecordSource ="SELECT dbo_STL_kl_Valsts.RID, dbo_STL_kl_Valsts.Valsts, dbo_STL_kl_Valsts.ES_val"
        "sts, dbo_STL_kl_Valsts.Show FROM dbo_STL_kl_Valsts ORDER BY dbo_STL_kl_Valsts.Va"
        "lsts;"
    Caption ="Valsts"
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
                    Width =570
                    Height =240
                    Name ="Valsts_Label"
                    Caption ="Valsts"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =2874
                    Top =57
                    Width =780
                    Height =240
                    Name ="ES_valsts_Label"
                    Caption ="ES_valsts"
                    Tag ="DetachedLabel"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =680
                    Top =56
                    Width =300
                    Height =255
                    ColumnOrder =0
                    Name ="OpenFrom"
                End
            End
        End
        Begin Section
            Height =312
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    OverlapFlags =93
                    Left =57
                    Top =57
                    Width =2760
                    Height =255
                    ColumnWidth =2760
                    Name ="Valsts"
                    ControlSource ="Valsts"
                    OnDblClick ="[Event Procedure]"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    Left =2874
                    Top =57
                    Width =780
                    Height =255
                    ColumnWidth =675
                    TabIndex =1
                    Name ="ir_ES"
                    ControlSource ="ES_valsts"
                    OnDblClick ="[Event Procedure]"
                End
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =247
                    Left =2437
                    Top =56
                    Width =780
                    Height =255
                    ColumnWidth =0
                    TabIndex =2
                    Name ="Show"
                    ControlSource ="Show"
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
' See "STL_kl_Valsts.cls"
