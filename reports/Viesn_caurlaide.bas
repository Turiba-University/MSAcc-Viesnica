Version =19
VersionRequired =19
Begin Report
    LayoutForPrint = NotDefault
    TabularFamily =0
    DateGrouping =1
    GridY =10
    Width =4847
    ItemSuffix =65
    Left =735
    Top =1995
    RecSrcDt = Begin
        0xeac0ae350f1ce340
    End
    RecordSource ="SELECT DISTINCTROW dbo_viesn_Caurlaides.Vards, dbo_viesn_Caurlaides.Uzvards, dbo"
        "_viesn_Caurlaides.Stavoklis, dbo_viesn_Caurlaides.IstNr, dbo_viesn_Caurlaides.De"
        "rigums, dbo_viesn_Caurlaides.IzdDat, dbo_viesn_Caurlaides.CaurlNr, dbo_viesn_Cau"
        "rlaides.Administ FROM dbo_viesn_Caurlaides WHERE (((dbo_viesn_Caurlaides.CaurlNr"
        ") Between [Sākot no:] And [Līdz:]));"
    Begin
        Begin Label
            TextAlign =3
            TextFontFamily =18
            FontSize =10
            FontWeight =700
            FontName ="Times New Roman"
        End
        Begin Rectangle
            Width =850
            Height =850
        End
        Begin Line
            Width =1701
        End
        Begin BoundObjectFrame
            OldBorderStyle =0
            LabelAlign =3
            Width =4536
            Height =2835
            LabelX =-92
        End
        Begin TextBox
            OldBorderStyle =0
            LabelAlign =3
            TextFontFamily =18
            Width =1701
            Height =336
            LabelX =-92
            FontSize =10
            FontName ="Times New Roman"
        End
        Begin ComboBox
            TextFontFamily =2
            Width =1701
            LabelX =-1701
            FontName ="Arial"
        End
        Begin BreakLevel
            ControlSource ="CaurlNr"
        End
        Begin FormHeader
            KeepTogether = NotDefault
            Height =0
            Name ="ReportHeader3"
        End
        Begin PageHeader
            Visible = NotDefault
            Height =0
            Name ="PageHeader0"
        End
        Begin Section
            KeepTogether = NotDefault
            Height =2948
            Name ="Detail1"
            Begin
                Begin Label
                    OverlapFlags =81
                    TextAlign =2
                    TextFontFamily =34
                    Left =3060
                    Top =285
                    Width =435
                    Height =225
                    FontSize =8
                    FontWeight =400
                    Name ="Text19"
                    Caption =" JTM"
                    FontName ="Arial"
                End
                Begin Label
                    OverlapFlags =83
                    TextAlign =2
                    TextFontFamily =34
                    Left =2040
                    Top =60
                    Width =2535
                    Height =225
                    FontSize =8
                    FontWeight =400
                    Name ="Text12"
                    Caption ="BIZNESA AUGSTSKOLA TURĪBA"
                    FontName ="Arial"
                End
                Begin TextBox
                    OverlapFlags =83
                    TextAlign =1
                    TextFontFamily =34
                    Left =2958
                    Top =510
                    Width =1011
                    Height =291
                    FontSize =12
                    Name ="Field30"
                    ControlSource ="CaurlNr"
                    FontName ="Arial"
                    Begin
                        Begin Label
                            OverlapFlags =81
                            TextFontFamily =34
                            Left =1927
                            Top =566
                            Width =975
                            Height =285
                            FontSize =8
                            FontWeight =500
                            Name ="Text31"
                            Caption ="Caurlaide Nr."
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =83
                    TextAlign =1
                    TextFontFamily =34
                    Left =2948
                    Top =791
                    Width =1761
                    Height =291
                    FontSize =12
                    FontWeight =800
                    TabIndex =1
                    Name ="Field32"
                    ControlSource ="Vards"
                    FontName ="Arial"
                    Begin
                        Begin Label
                            OverlapFlags =83
                            TextAlign =1
                            TextFontFamily =34
                            Left =1927
                            Top =850
                            Width =510
                            Height =285
                            FontSize =8
                            FontWeight =500
                            Name ="Text33"
                            Caption ="Vārds"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =83
                    TextFontFamily =34
                    Left =2948
                    Top =1074
                    Width =1761
                    Height =291
                    FontSize =12
                    FontWeight =800
                    TabIndex =2
                    Name ="Field34"
                    ControlSource ="Uzvards"
                    FontName ="Arial"
                    Begin
                        Begin Label
                            OverlapFlags =83
                            TextAlign =1
                            TextFontFamily =34
                            Left =1927
                            Top =1133
                            Width =690
                            Height =285
                            FontSize =8
                            FontWeight =500
                            Name ="Text35"
                            Caption ="Uzvārds"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =81
                    TextAlign =1
                    TextFontFamily =34
                    Left =2948
                    Top =1373
                    Width =1581
                    Height =261
                    TabIndex =3
                    Name ="Field36"
                    ControlSource ="Stavoklis"
                    FontName ="Arial"
                    Begin
                        Begin Label
                            OverlapFlags =211
                            TextAlign =1
                            TextFontFamily =34
                            Left =1927
                            Top =1417
                            Width =675
                            Height =285
                            FontSize =8
                            FontWeight =500
                            Name ="Text37"
                            Caption ="Grupa"
                            FontName ="Arial"
                        End
                    End
                End
                Begin Rectangle
                    OverlapFlags =81
                    Left =566
                    Top =850
                    Width =567
                    Height =680
                    Name ="Box38"
                End
                Begin Label
                    OverlapFlags =81
                    TextAlign =1
                    TextFontFamily =34
                    Left =1927
                    Top =1703
                    Width =840
                    Height =225
                    FontSize =8
                    FontWeight =500
                    Name ="Text43"
                    Caption ="Derīga līdz"
                    FontName ="Arial"
                End
                Begin TextBox
                    OverlapFlags =81
                    TextAlign =1
                    TextFontFamily =34
                    Left =2948
                    Top =1644
                    Width =1581
                    Height =285
                    FontSize =12
                    FontWeight =700
                    TabIndex =4
                    Name ="Field44"
                    ControlSource ="Derigums"
                    Format ="dd\\.mm\\.yyyy"
                    FontName ="Arial"
                End
                Begin Line
                    OverlapFlags =81
                    BorderLineStyle =3
                    Left =1190
                    Top =2806
                    Width =2254
                    Name ="Line50"
                End
                Begin TextBox
                    OverlapFlags =81
                    TextAlign =2
                    TextFontFamily =34
                    Left =283
                    Top =2381
                    Width =1251
                    Height =291
                    FontSize =12
                    FontWeight =700
                    TabIndex =5
                    Name ="Field53"
                    ControlSource ="IstNr"
                    Format ="#\" ist.\""
                    FontName ="Arial"
                End
                Begin TextBox
                    OverlapFlags =81
                    TextFontFamily =34
                    Left =3458
                    Top =2551
                    Width =1191
                    Height =216
                    FontSize =9
                    FontWeight =500
                    TabIndex =6
                    Name ="Field55"
                    ControlSource ="Administ"
                    FontName ="Arial"
                    Begin
                        Begin Label
                            OverlapFlags =81
                            TextFontFamily =34
                            Left =1785
                            Top =2550
                            Width =615
                            Height =225
                            FontSize =8
                            FontWeight =500
                            Name ="Text56"
                            Caption ="Admin.:"
                            FontName ="Arial"
                        End
                    End
                End
                Begin Line
                    OverlapFlags =81
                    Left =28
                    Width =0
                    Height =2806
                    Name ="Line58"
                End
                Begin Line
                    OverlapFlags =83
                    Left =4705
                    Width =0
                    Height =2806
                    Name ="Line59"
                End
                Begin Line
                    OverlapFlags =83
                    Left =28
                    Top =2806
                    Width =4669
                    Name ="Line60"
                End
                Begin Line
                    OverlapFlags =83
                    Left =28
                    Width =4669
                    Name ="Line61"
                End
                Begin Line
                    LineSlant = NotDefault
                    OverlapFlags =83
                    BorderLineStyle =4
                    Left =2328
                    Top =2719
                    Width =1130
                    Name ="Line62"
                End
                Begin TextBox
                    OverlapFlags =243
                    TextAlign =1
                    TextFontFamily =34
                    Left =2948
                    Top =1927
                    Height =261
                    TabIndex =7
                    Name ="Field63"
                    ControlSource ="IzdDat"
                    Format ="dd\\.mm\\.yyyy"
                    FontName ="Arial"
                    Begin
                        Begin Label
                            OverlapFlags =211
                            TextAlign =1
                            TextFontFamily =34
                            Left =1927
                            Top =1927
                            Width =915
                            Height =225
                            FontSize =8
                            FontWeight =500
                            Name ="Text64"
                            Caption ="Izd. datums"
                            FontName ="Arial"
                        End
                    End
                End
            End
        End
        Begin PageFooter
            Visible = NotDefault
            Height =0
            Name ="PageFooter2"
        End
        Begin FormFooter
            KeepTogether = NotDefault
            Height =0
            Name ="ReportFooter4"
        End
    End
End
