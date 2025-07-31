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
    Width =6576
    DatasheetFontHeight =10
    ItemSuffix =11
    Left =5610
    Top =465
    Right =12465
    Bottom =10005
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0xef4c05db6c81e340
    End
    RecordSource ="SELECT dbo_kl_Adresem_RPP.Rajons, dbo_kl_Adresem_RPP.Pagasts , dbo_kl_Adresem_RP"
        "P.Pilseta , dbo_kl_Adresem_RPP.PilsTips FROM dbo_kl_Adresem_RPP WHERE ( (pILSETA"
        "  LIKE \"Jūrmala*\")) GROUP BY dbo_kl_Adresem_RPP.Rajons, dbo_kl_Adresem_RPP.Pag"
        "asts, dbo_kl_Adresem_RPP.Pilseta, dbo_kl_Adresem_RPP.PilsTips ORDER BY dbo_kl_Ad"
        "resem_RPP.Rajons, dbo_kl_Adresem_RPP.Pagasts, dbo_kl_Adresem_RPP.Pilseta;"
    Caption ="Adrese"
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
                    OverlapFlags =85
                    TextAlign =1
                    Top =57
                    Width =1938
                    Height =240
                    Name ="Rajons_Label"
                    Caption ="Novads"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =1995
                    Top =57
                    Width =1938
                    Height =240
                    Name ="Pagasts_Label"
                    Caption ="Pagasts"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =3990
                    Top =57
                    Width =1938
                    Height =240
                    Name ="Pilseta_Label"
                    Caption ="Pilseta"
                    Tag ="DetachedLabel"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =6009
                    Top =56
                    Width =567
                    Height =255
                    Name ="OF"
                End
            End
        End
        Begin Section
            Height =255
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    Width =1938
                    Height =255
                    ColumnWidth =2760
                    Name ="Novads"
                    ControlSource ="Novads"
                    OnDblClick ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1995
                    Width =1938
                    Height =255
                    ColumnWidth =2760
                    TabIndex =1
                    Name ="Pagasts"
                    ControlSource ="Pagasts"
                    OnDblClick ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =3990
                    Width =1938
                    Height =255
                    ColumnWidth =2760
                    TabIndex =2
                    Name ="Pilseta"
                    ControlSource ="Pilseta"
                    OnDblClick ="[Event Procedure]"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =5985
                    Width =567
                    Height =255
                    ColumnWidth =675
                    TabIndex =3
                    Name ="PilsTips"
                    ControlSource ="PilsTips"
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
' See "STL_kl_Adrese.cls"
