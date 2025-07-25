Version =19
VersionRequired =19
Begin Form
    AutoCenter = NotDefault
    AllowDeletions = NotDefault
    AllowAdditions = NotDefault
    FilterOn = NotDefault
    OrderByOn = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =2
    TabularCharSet =186
    TabularFamily =124
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =13047
    DatasheetFontHeight =10
    ItemSuffix =53
    Left =330
    Top =3540
    Right =14865
    Bottom =8550
    DatasheetGridlinesColor =12632256
    Filter ="((([tmp_ApmParadnieki_UzDat].[Vards]<>\"Clement\" Or [tmp_ApmParadnieki_UzDat].["
        "Vards] Is Null))) AND ([tmp_ApmParadnieki_UzDat].[V_ApmLidz]=#4/1/2025#)"
    OrderBy ="[tmp_ApmParadnieki_UzDat].[Ist_Nr]"
    RecSrcDt = Begin
        0x0767dd14305fe540
    End
    RecordSource ="tmp_ApmParadnieki_UzDat"
    Caption ="tmp_ApmParadnieki_UzDat"
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
            Height =315
            BackColor =-2147483633
            Name ="FormHeader"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =57
                    Top =57
                    Width =456
                    Height =240
                    Name ="Ligums_Label"
                    Caption ="Ligums"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =570
                    Top =57
                    Width =1140
                    Height =240
                    Name ="Vards_Label"
                    Caption ="Vards"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =1767
                    Top =57
                    Width =1140
                    Height =240
                    Name ="Uzvards_Label"
                    Caption ="Uzvards"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =2964
                    Top =57
                    Width =798
                    Height =240
                    Name ="Pers_Kods_Label"
                    Caption ="Pers_Kods"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =4875
                    Top =57
                    Width =1140
                    Height =240
                    Name ="Tel1_Label"
                    Caption ="Tel1"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =6072
                    Top =57
                    Width =399
                    Height =240
                    Name ="Ievācās_Label"
                    Caption ="Ievācās"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =6528
                    Top =57
                    Width =456
                    Height =240
                    Name ="Ist_Nr_Label"
                    Caption ="Ist_Nr"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =7041
                    Top =57
                    Width =399
                    Height =240
                    Name ="Istabā_No_Label"
                    Caption ="Istabā_No"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =7497
                    Top =57
                    Width =399
                    Height =240
                    Name ="Istabā_Līdz_Label"
                    Caption ="Istabā_Līdz"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =7953
                    Top =57
                    Width =456
                    Height =240
                    Name ="Vietas_Label"
                    Caption ="Vietas"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =8466
                    Top =57
                    Width =453
                    Height =240
                    Name ="ApmaksaLīdz_Label"
                    Caption ="ApmaksaLīdz"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =3798
                    Top =57
                    Width =1035
                    Height =240
                    Name ="Label22"
                    Caption ="Valsts"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =11281
                    Top =60
                    Width =570
                    Height =240
                    Name ="Label24"
                    Caption ="STOP"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =9014
                    Top =57
                    Width =453
                    Height =240
                    Name ="Label28"
                    Caption ="ApmaksaLīdz"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =9562
                    Top =57
                    Width =453
                    Height =240
                    Name ="Label30"
                    Caption ="ApmaksaLīdz"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =10204
                    Top =57
                    Width =453
                    Height =240
                    Name ="Label32"
                    Caption ="ApmaksaLīdz"
                    Tag ="DetachedLabel"
                End
            End
        End
        Begin Section
            Height =369
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =57
                    Top =57
                    Width =456
                    Height =255
                    ColumnWidth =915
                    ColumnOrder =0
                    Name ="Ligums*"
                    ControlSource ="Ligums"
                    OnDblClick ="[Event Procedure]"
                    EventProcPrefix ="Ligums_"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =570
                    Top =57
                    Width =1140
                    Height =255
                    ColumnWidth =1425
                    ColumnOrder =1
                    TabIndex =1
                    Name ="Vards"
                    ControlSource ="Vards"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =1767
                    Top =57
                    Width =1140
                    Height =255
                    ColumnWidth =1635
                    ColumnOrder =2
                    TabIndex =2
                    Name ="Uzvards"
                    ControlSource ="Uzvards"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =2964
                    Top =57
                    Width =798
                    Height =255
                    ColumnWidth =1860
                    ColumnOrder =3
                    TabIndex =3
                    Name ="Pers_Kods"
                    ControlSource ="Pers_Kods"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =4875
                    Top =57
                    Width =1140
                    Height =255
                    ColumnWidth =1980
                    ColumnOrder =5
                    TabIndex =4
                    Name ="Tel1"
                    ControlSource ="Tel1"
                End
                Begin TextBox
                    Locked = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =85
                    Left =6072
                    Top =57
                    Width =399
                    Height =255
                    ColumnWidth =1155
                    ColumnOrder =6
                    TabIndex =5
                    Name ="Ievācās"
                    ControlSource ="Ievācās"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =6528
                    Top =57
                    Width =456
                    Height =255
                    ColumnWidth =675
                    ColumnOrder =7
                    TabIndex =6
                    Name ="Ist_Nr"
                    ControlSource ="Ist_Nr"
                End
                Begin TextBox
                    Locked = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =85
                    Left =7041
                    Top =57
                    Width =399
                    Height =255
                    ColumnWidth =1110
                    ColumnOrder =8
                    TabIndex =7
                    Name ="Istabā_No"
                    ControlSource ="Istabā_No"
                End
                Begin TextBox
                    Locked = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =85
                    Left =7497
                    Top =57
                    Width =399
                    Height =255
                    ColumnWidth =1230
                    ColumnOrder =9
                    TabIndex =8
                    Name ="Istabā_Līdz"
                    ControlSource ="Istabā_Līdz"
                End
                Begin TextBox
                    Locked = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =85
                    Left =7953
                    Top =57
                    Width =456
                    Height =255
                    ColumnWidth =735
                    ColumnOrder =10
                    TabIndex =9
                    Name ="Vietas"
                    ControlSource ="Vietas"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =8466
                    Top =57
                    Width =453
                    Height =255
                    ColumnWidth =1425
                    ColumnOrder =11
                    TabIndex =10
                    Name ="ApmaksaLīdz"
                    ControlSource ="V_ApmLidz"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =3798
                    Top =57
                    Width =1035
                    Height =255
                    ColumnOrder =4
                    TabIndex =11
                    Name ="Valsts"
                    ControlSource ="Valsts"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =11356
                    Top =60
                    Width =453
                    Height =255
                    ColumnWidth =690
                    ColumnOrder =12
                    TabIndex =12
                    Name ="STOP"
                    ControlSource ="STOP"
                End
                Begin TextBox
                    Locked = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =85
                    Left =9014
                    Top =57
                    Width =453
                    Height =255
                    ColumnOrder =14
                    TabIndex =13
                    Name ="ParadsLig"
                    ControlSource ="ParadsLig"
                End
                Begin TextBox
                    Locked = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =85
                    Left =9562
                    Top =57
                    Width =453
                    Height =255
                    ColumnOrder =15
                    TabIndex =14
                    Name ="ParadsPers"
                    ControlSource ="ParadsPers"
                End
                Begin TextBox
                    Locked = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =85
                    Left =10204
                    Top =57
                    Width =453
                    Height =255
                    ColumnOrder =13
                    TabIndex =15
                    Name ="Termins"
                    ControlSource ="Termins"
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =11962
                    Top =113
                    Width =170
                    Height =170
                    TabIndex =16
                    Name ="Atz"
                    ControlSource ="Mark"
                    AfterUpdate ="[Event Procedure]"
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
' See "ApmaksasParadnieki_Uzdatumu.cls"
