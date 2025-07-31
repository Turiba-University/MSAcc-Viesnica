Version =19
VersionRequired =19
Begin Report
    LayoutForPrint = NotDefault
    DateGrouping =1
    GridY =10
    Width =2909
    DatasheetFontHeight =9
    ItemSuffix =398
    Left =8250
    Top =2730
    RecSrcDt = Begin
        0x736f1c2cb09be440
    End
    RecordSource ="JTM_Lig_InvIst"
    DatasheetFontName ="Arial"
    Begin
        Begin Rectangle
            Width =850
            Height =850
        End
        Begin TextBox
            OldBorderStyle =0
            TextFontFamily =2
            Width =1701
            LabelX =-1701
            FontName ="Arial"
        End
        Begin BreakLevel
            GroupFooter = NotDefault
            ControlSource ="LIGUMS"
        End
        Begin PageHeader
            Height =0
            Name ="PageHeader0"
        End
        Begin Section
            KeepTogether = NotDefault
            Height =272
            Name ="Detail1"
            Begin
                Begin TextBox
                    TextFontCharSet =186
                    TextAlign =1
                    TextFontFamily =34
                    BackStyle =0
                    Left =30
                    Width =2489
                    Height =272
                    BackColor =12632256
                    Name ="IST_NR"
                    ControlSource ="Inv_Nos_Eng"
                End
                Begin TextBox
                    TextFontCharSet =186
                    TextAlign =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =2610
                    Width =299
                    Height =272
                    TabIndex =1
                    BackColor =12632256
                    Name ="SK_IST"
                    ControlSource ="InvSk"
                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontCharSet =186
                    TextAlign =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =2494
                    Width =119
                    Height =272
                    TabIndex =2
                    BackColor =12632256
                    Name ="Ligums"
                    ControlSource ="Ligums"
                End
            End
        End
        Begin BreakFooter
            Height =0
            Name ="GroupFooter3"
        End
        Begin PageFooter
            Visible = NotDefault
            Height =0
            Name ="PageFooter2"
        End
    End
End
CodeBehindForm
' See "Studenti_Eng_InvIst_sub.cls"
