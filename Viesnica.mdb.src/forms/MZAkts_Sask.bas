Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    FilterOn = NotDefault
    AllowDesignChanges = NotDefault
    TabularCharSet =186
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =6916
    DatasheetFontHeight =10
    ItemSuffix =13
    Left =8745
    Top =1230
    Right =16410
    Bottom =6405
    DatasheetGridlinesColor =12632256
    Filter ="[par_Izzinas]=-1"
    RecSrcDt = Begin
        0xefe76318af5fe540
    End
    RecordSource ="SELECT dbo_Viesn_kl_Saskanotaji.RID, dbo_Viesn_kl_Saskanotaji.NR, dbo_Viesn_kl_S"
        "askanotaji.Sask_Amats, dbo_Viesn_kl_Saskanotaji.Sask_Amats_eng, dbo_Viesn_kl_Sas"
        "kanotaji.Sask_VU, dbo_Viesn_kl_Saskanotaji.par_Izzinas FROM dbo_Viesn_kl_Saskano"
        "taji WHERE (((dbo_Viesn_kl_Saskanotaji.Hide) Is Null Or (dbo_Viesn_kl_Saskanotaj"
        "i.Hide)=0)) ORDER BY dbo_Viesn_kl_Saskanotaji.NR;"
    Caption ="dbo_Viesn_kl_Saskanotaji"
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
            Height =920
            BackColor =-2147483633
            Name ="FormHeader"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =56
                    Top =680
                    Width =2085
                    Height =240
                    Name ="Sask_Amats_Label"
                    Caption ="Amats"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =4365
                    Top =680
                    Width =2175
                    Height =240
                    Name ="Sask_VU_Label"
                    Caption ="Vārds Uzvārds"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =56
                    Top =56
                    Width =2760
                    Height =240
                    Name ="Label4"
                    Caption ="Saskaņotāji:"
                    Tag ="DetachedLabel"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6292
                    Top =56
                    Width =576
                    Height =576
                    Name ="Aizvert"
                    Caption ="Command5"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadad0dadadadadaadad00adadadadaddad030dadadadada ,
                        0xad0330adadadadad0033300000000adaa03330ff0dadadadd03300ff0adad4da ,
                        0xa03330ff0dad44add03330ff0ad44444a03330ff0d444444d03330ff0ad44444 ,
                        0xa0330fff0dad44add030ffff0adad4daa00fffff0dadadadd00000000adadada ,
                        0xadadadadadadadad000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Aizvērt"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =3628
                    Top =56
                    Width =283
                    Height =284
                    ColumnOrder =0
                    TabIndex =1
                    Name ="OpenFrom"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =2211
                    Top =680
                    Width =2085
                    Height =240
                    Name ="Label10"
                    Caption ="Amats angliski"
                    Tag ="DetachedLabel"
                End
            End
        End
        Begin Section
            Height =285
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    OverlapFlags =93
                    Left =60
                    Width =2085
                    Height =255
                    ColumnWidth =2760
                    Name ="Sask_Amats"
                    ControlSource ="Sask_Amats"
                    OnDblClick ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =4369
                    Width =2175
                    Height =255
                    ColumnWidth =2760
                    TabIndex =1
                    Name ="Sask_VU"
                    ControlSource ="Sask_VU"
                    OnDblClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =6576
                    Width =315
                    Height =285
                    TabIndex =2
                    Name ="Ielikt"
                    Caption ="ok"
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =93
                    Left =2215
                    Width =2085
                    Height =255
                    TabIndex =3
                    Name ="Sask_Amats_eng"
                    ControlSource ="Sask_Amats_eng"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =247
                    TextFontFamily =0
                    Left =2040
                    Width =375
                    Height =255
                    TabIndex =4
                    Name ="par_Izzinas"
                    ControlSource ="par_Izzinas"
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
' See "MZAkts_Sask.cls"
