Version =19
VersionRequired =19
Begin Form
    AutoCenter = NotDefault
    AllowDeletions = NotDefault
    AllowAdditions = NotDefault
    AllowEdits = NotDefault
    AllowDesignChanges = NotDefault
    TabularCharSet =186
    TabularFamily =124
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =11127
    DatasheetFontHeight =10
    ItemSuffix =30
    Left =3525
    Top =1155
    Right =14940
    Bottom =9420
    DatasheetGridlinesColor =12632256
    Filter ="((KA_Caurlaides_sar.AutoNr=\"f\"))"
    RecSrcDt = Begin
        0xa8af0fa27464e340
    End
    RecordSource ="KA_Caurlaides_sar"
    Caption ="Autostāvvietas caurlaides"
    OnOpen ="[Event Procedure]"
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
            Height =1143
            BackColor =-2147483633
            Name ="FormHeader"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Top =648
                    Width =660
                    Height =495
                    Name ="Nr_Label"
                    Caption ="Kartes Nr"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =694
                    Top =645
                    Width =957
                    Height =330
                    Name ="Datums_Label"
                    Caption ="Datums"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =1699
                    Top =645
                    Width =912
                    Height =330
                    Name ="Vards_Label"
                    Caption ="Vārds"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =2668
                    Top =645
                    Width =912
                    Height =330
                    Name ="Uzvards_Label"
                    Caption ="Uzvārds"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =3637
                    Top =645
                    Width =1287
                    Height =330
                    Name ="Pers_Kods_Label"
                    Caption ="Pers. kods"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =4987
                    Top =645
                    Width =1188
                    Height =330
                    Name ="AutoNr_Label"
                    Caption ="Auto Nr"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =6228
                    Top =648
                    Width =915
                    Height =495
                    Name ="Periods_No_Label"
                    Caption ="Periods No"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =93
                    TextAlign =1
                    Left =7275
                    Top =648
                    Width =975
                    Height =480
                    Name ="Periods_Lidz_Label"
                    Caption ="Periods Līdz"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =87
                    TextAlign =3
                    Left =8251
                    Top =645
                    Width =507
                    Height =330
                    Name ="Cena_Label"
                    Caption ="Cena"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =8818
                    Top =645
                    Width =1707
                    Height =330
                    Name ="Tips_Label"
                    Caption ="Tips"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =10554
                    Top =645
                    Width =453
                    Height =330
                    Name ="Stat_Label"
                    Caption ="Stat"
                    Tag ="DetachedLabel"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6570
                    Top =30
                    Width =1591
                    Height =572
                    Name ="ChCarNr"
                    Caption ="Mainīt caurlaidi (a/m nr. maiņa)"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =2
                    Left =10261
                    Top =56
                    Width =516
                    Height =471
                    FontSize =10
                    FontWeight =700
                    TabIndex =1
                    Name ="Aizvert"
                    Caption ="Command81"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadad0dadadadadaadad00adadadadaddad030dadadadada ,
                        0xad0330adadadadad0033300000000adaa03330ff0dadadadd03300ff0adad4da ,
                        0xa03330ff0dad44add03330ff0ad44444a03330ff0d444444d03330ff0ad44444 ,
                        0xa0330fff0dad44add030ffff0adad4daa00fffff0dadadadd00000000adadada ,
                        0xadadadadadadadad
                    End
                    FontName ="System"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Aizvērt"
                End
                Begin CommandButton
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =4875
                    Top =30
                    Width =1591
                    Height =572
                    TabIndex =2
                    Name ="AtjaunotCrl"
                    Caption ="Atjaunot nozaudētu caurlaidi"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =8280
                    Top =30
                    Width =1591
                    Height =572
                    TabIndex =3
                    Name ="AnuletCaurlaidi"
                    Caption ="Anulēt caurlaidi"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3150
                    Top =30
                    Width =1591
                    Height =572
                    TabIndex =4
                    Name ="LabotAutoNr"
                    Caption ="Labot auto Nr caurlaidē"
                    OnClick ="[Event Procedure]"
                End
            End
        End
        Begin Section
            Height =256
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    OverlapFlags =93
                    Left =10464
                    Width =165
                    Height =255
                    ColumnWidth =1701
                    Name ="crl_Karte_ID"
                    ControlSource ="crl_Karte_ID"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Top =1
                    Width =642
                    Height =255
                    ColumnWidth =1035
                    TabIndex =1
                    Name ="Nr"
                    ControlSource ="Nr"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    Left =675
                    Top =1
                    Width =1017
                    Height =255
                    ColumnWidth =945
                    TabIndex =2
                    Name ="Datums"
                    ControlSource ="Datums"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =247
                    Left =1680
                    Top =1
                    Width =912
                    Height =255
                    ColumnWidth =2760
                    TabIndex =3
                    Name ="Vards"
                    ControlSource ="Vards"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =2649
                    Top =1
                    Width =912
                    Height =255
                    ColumnWidth =2760
                    TabIndex =4
                    Name ="Uzvards"
                    ControlSource ="Uzvards"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =3618
                    Top =1
                    Width =1287
                    Height =255
                    ColumnWidth =1860
                    TabIndex =5
                    Name ="Pers_Kods"
                    ControlSource ="Pers_Kods"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =4968
                    Top =1
                    Width =1188
                    Height =255
                    ColumnWidth =1410
                    TabIndex =6
                    Name ="AutoNr"
                    ControlSource ="AutoNr"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    Left =6228
                    Top =1
                    Width =1047
                    Height =255
                    ColumnWidth =945
                    TabIndex =7
                    Name ="Periods_No"
                    ControlSource ="Periods_No"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =255
                    Left =7245
                    Top =1
                    Width =987
                    Height =255
                    ColumnWidth =945
                    TabIndex =8
                    Name ="Periods_Lidz"
                    ControlSource ="Periods_Lidz"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =119
                    Left =8232
                    Top =1
                    Width =507
                    Height =255
                    ColumnWidth =2760
                    TabIndex =9
                    Name ="Cena"
                    ControlSource ="Cena"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =247
                    Left =8799
                    Top =1
                    Width =1707
                    Height =255
                    ColumnWidth =2760
                    TabIndex =10
                    Name ="Tips"
                    ControlSource ="Tips"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =255
                    Left =10535
                    Top =1
                    Width =453
                    Height =255
                    ColumnWidth =1035
                    TabIndex =11
                    Name ="Stat"
                    ControlSource ="Stat"
                End
                Begin TextBox
                    Visible = NotDefault
                    Locked = NotDefault
                    OverlapFlags =247
                    Left =10974
                    Width =153
                    Height =255
                    TabIndex =12
                    Name ="Text26"
                    ControlSource ="Comment"
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
' See "KA_Caurlaides_sar.cls"
