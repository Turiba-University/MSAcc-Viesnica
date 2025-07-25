Version =19
VersionRequired =19
Begin Report
    LayoutForPrint = NotDefault
    DateGrouping =1
    GridY =10
    Width =2849
    DatasheetFontHeight =9
    ItemSuffix =398
    Left =13500
    Top =2520
    RecSrcDt = Begin
        0xd27509ee75a1e440
    End
    RecordSource ="JTM_Lig_InvSanem"
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
                    Width =2489
                    Height =272
                    BackColor =12632256
                    Name ="IST_NR"
                    ControlSource ="InvNosComm"
                End
                Begin TextBox
                    TextFontCharSet =186
                    TextAlign =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =2460
                    Width =389
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
                    Width =239
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
' See "Studenti_InvSanem_sub.cls"
