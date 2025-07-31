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
    Width =6463
    DatasheetFontHeight =10
    ItemSuffix =38
    Left =3480
    Top =8085
    Right =18030
    Bottom =9555
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0xa63b1333b55ae540
    End
    RecordSource ="VIA_LigIst_Uzdatumu_RezInfo_19"
    Caption ="VIA_LigIst_Uzdatumu_RezInfo_19"
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
            Height =0
            BackColor =-2147483633
            Name ="FormHeader"
        End
        Begin Section
            Height =5799
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    ColumnHidden = NotDefault
                    OverlapFlags =93
                    IMESentenceMode =3
                    Left =1927
                    Top =4762
                    Height =300
                    ColumnWidth =900
                    Name ="Istaba"
                    ControlSource ="Istaba"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =226
                            Top =4762
                            Width =675
                            Height =285
                            Name ="Label22"
                            Caption ="Istaba:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1984
                    Top =510
                    Height =300
                    ColumnWidth =885
                    TabIndex =1
                    Name ="Ist.Nr"
                    ControlSource ="IstabasNr"
                    EventProcPrefix ="Ist_Nr"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =510
                            Width =990
                            Height =285
                            Name ="Label23"
                            Caption ="Ist.Nr"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1984
                    Top =907
                    Height =300
                    TabIndex =2
                    Name ="Vards"
                    ControlSource ="Vards"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =907
                            Width =660
                            Height =285
                            Name ="Label24"
                            Caption ="Vards:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1984
                    Top =1304
                    Height =300
                    TabIndex =3
                    Name ="Uzvards"
                    ControlSource ="Uzvards"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =1304
                            Width =870
                            Height =285
                            Name ="Label25"
                            Caption ="Uzvards:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1984
                    Top =1701
                    Height =300
                    TabIndex =4
                    Name ="DzDatums"
                    ControlSource ="DzDatums"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =1701
                            Width =1050
                            Height =285
                            Name ="Label26"
                            Caption ="DzDatums:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1984
                    Top =2098
                    Height =300
                    ColumnWidth =645
                    TabIndex =5
                    Name ="Dz"
                    ControlSource ="Dz"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =2098
                            Width =360
                            Height =285
                            Name ="Label27"
                            Caption ="Dz:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1984
                    Top =2494
                    Height =300
                    TabIndex =6
                    Name ="Valsts"
                    ControlSource ="Valsts"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =2494
                            Width =675
                            Height =285
                            Name ="Label28"
                            Caption ="Valsts:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1984
                    Top =2891
                    Height =300
                    TabIndex =7
                    Name ="Tel1"
                    ControlSource ="Tel1"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =2891
                            Width =525
                            Height =285
                            Name ="Label29"
                            Caption ="Tel1:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1984
                    Top =3288
                    Height =300
                    TabIndex =8
                    Name ="Epasts"
                    ControlSource ="Epasts"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =3288
                            Width =750
                            Height =285
                            Name ="Label30"
                            Caption ="Epasts:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1984
                    Top =3685
                    Height =300
                    TabIndex =9
                    Name ="Piezimes"
                    ControlSource ="Piezimes"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =3685
                            Width =945
                            Height =285
                            Name ="Label31"
                            Caption ="Piezimes:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    IMESentenceMode =3
                    Left =1984
                    Top =4082
                    Height =300
                    ColumnWidth =1845
                    TabIndex =10
                    Name ="Ievadits"
                    ControlSource ="Ievadits"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =283
                            Top =4082
                            Width =825
                            Height =285
                            Name ="Label32"
                            Caption ="Ievadits:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =247
                    IMESentenceMode =3
                    Left =1984
                    Top =4479
                    Height =300
                    ColumnWidth =735
                    TabIndex =11
                    Name ="Rez_MG"
                    ControlSource ="Rez_MG"
                    Begin
                        Begin Label
                            OverlapFlags =215
                            Left =283
                            Top =4479
                            Width =900
                            Height =285
                            Name ="Label33"
                            Caption ="MG:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =0
                    IMESentenceMode =3
                    Left =2041
                    Top =5159
                    Height =300
                    ColumnWidth =810
                    TabIndex =12
                    Name ="IrLigums"
                    ControlSource ="IrLig"
                    OnDblClick ="[Event Procedure]"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =0
                            Left =340
                            Top =5159
                            Width =900
                            Height =285
                            Name ="Label35"
                            Caption ="IrLīg*"
                        End
                    End
                End
                Begin TextBox
                    ColumnHidden = NotDefault
                    OverlapFlags =85
                    TextFontFamily =0
                    IMESentenceMode =3
                    Left =4762
                    Top =4592
                    Height =300
                    TabIndex =13
                    Name ="V_Rez_RID"
                    ControlSource ="V_Rez_RID"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =0
                            Left =3911
                            Top =4592
                            Width =675
                            Height =285
                            Name ="Label37"
                            Caption ="V_Rez_RID"
                        End
                    End
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
' See "VIA_LigIst_Uzdatumu_RezInfo_19.cls"
