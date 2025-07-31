Version =19
VersionRequired =19
Begin Report
    LayoutForPrint = NotDefault
    DateGrouping =1
    GridY =10
    Width =9751
    DatasheetFontHeight =9
    ItemSuffix =398
    Left =750
    Top =6675
    RecSrcDt = Begin
        0xd64091ea32f7e340
    End
    RecordSource ="JTM_LIg_Maksajumi"
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
            Height =261
            Name ="Detail1"
            Begin
                Begin TextBox
                    TextAlign =2
                    TextFontFamily =34
                    BackStyle =0
                    Width =779
                    Height =261
                    FontWeight =700
                    BackColor =12632256
                    Name ="IST_NR"
                    ControlSource ="IST_NR"
                End
                Begin TextBox
                    TextAlign =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =809
                    Width =645
                    Height =261
                    FontWeight =700
                    TabIndex =1
                    BackColor =12632256
                    Name ="SK_IST"
                    ControlSource ="SK_IST"
                End
                Begin TextBox
                    TextAlign =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =2250
                    Width =855
                    Height =261
                    FontSize =7
                    FontWeight =700
                    TabIndex =2
                    BackColor =12632256
                    Name ="DAT_LIDZ"
                    ControlSource ="DAT_LIDZ"
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    BackStyle =0
                    Left =3030
                    Width =689
                    Height =261
                    FontWeight =700
                    TabIndex =3
                    BackColor =12632256
                    Name ="MAKS_DAY1"
                    ControlSource ="=IIf(IsNull([MAKS_DAY]),\"--------\",[maks_day])"
                    Format ="#,##0.00 ;-#,##0.00"
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    BackStyle =0
                    Left =3705
                    Width =885
                    Height =261
                    FontWeight =700
                    TabIndex =4
                    BackColor =12632256
                    Name ="MAKS_MEN1"
                    ControlSource ="=IIf(IsNull([MAKS_men]),\"--------\",[maks_men])"
                    Format ="#,##0.00 ;-#,##0.00"
                End
                Begin TextBox
                    TextAlign =3
                    TextFontFamily =34
                    BackStyle =0
                    Left =5295
                    Width =809
                    Height =261
                    FontWeight =700
                    TabIndex =5
                    BackColor =12632256
                    Name ="TOTAL"
                    ControlSource ="TOTAL"
                    Format ="#,##0.00 ;-#,##0.00"
                End
                Begin TextBox
                    TextAlign =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =1359
                    Width =901
                    Height =261
                    FontSize =7
                    FontWeight =700
                    TabIndex =6
                    BackColor =12632256
                    Name ="Text397"
                    ControlSource ="Dat_No"
                End
                Begin TextBox
                    DecimalPlaces =0
                    TextAlign =2
                    TextFontFamily =34
                    BackStyle =0
                    Left =4620
                    Width =629
                    Height =257
                    FontWeight =700
                    TabIndex =7
                    BackColor =12632256
                    Name ="Text396"
                    ControlSource ="Atlaide"
                    Format ="Percent"
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
