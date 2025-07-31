Version =19
VersionRequired =19
Begin Form
    Modal = NotDefault
    AutoCenter = NotDefault
    AllowAdditions = NotDefault
    AllowDesignChanges = NotDefault
    TabularCharSet =186
    TabularFamily =124
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =5675
    DatasheetFontHeight =10
    ItemSuffix =19
    Left =8475
    Top =870
    Right =14430
    Bottom =9240
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x66b4f2a1ae9be440
    End
    RecordSource ="SELECT dbo_Viesn_Inventars.Inv_ID, dbo_Viesn_Inventars.Inv_Nos FROM dbo_Viesn_In"
        "ventars WHERE (((dbo_Viesn_Inventars.InvTips)=1));"
    Caption ="JTM līgums"
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
            Height =977
            BackColor =-2147483633
            Name ="FormHeader"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Top =226
                    Width =2265
                    Height =240
                    Name ="InvNos"
                    Caption ="Inventārs"
                    Tag ="DetachedLabel"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4478
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
                Begin CommandButton
                    OverlapFlags =85
                    Left =3118
                    Top =56
                    Width =1146
                    Height =576
                    TabIndex =1
                    Name ="Izveleties"
                    Caption ="Izvēlēties visus"
                    OnClick ="[Event Procedure]"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Izvēlēties"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =75
                    Top =680
                    Width =1920
                    Height =240
                    Name ="Label13"
                    Caption ="Nosaukums"
                    Tag ="DetachedLabel"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =2834
                    Top =510
                    Width =170
                    Height =283
                    TabIndex =2
                    Name ="OpenFrom"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =5046
                    Top =737
                    Width =615
                    Height =240
                    Name ="Label18"
                    Caption ="Cena"
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
                    Left =30
                    Width =4980
                    Height =285
                    ColumnWidth =3000
                    Name ="PA_Nos"
                    ControlSource ="Inv_Nos"
                    OnDblClick ="[Event Procedure]"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =255
                    Left =4932
                    Width =255
                    Height =255
                    ColumnWidth =1035
                    TabIndex =1
                    Name ="PA_ID"
                    ControlSource ="Inv_ID"
                End
                Begin TextBox
                    DecimalPlaces =2
                    OverlapFlags =247
                    Left =5045
                    Width =630
                    Height =255
                    TabIndex =2
                    Name ="Text17"
                    ControlSource ="Inv_Cena"
                    Format ="Fixed"
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
' See "LigumsViesn_Inv_sar.cls"
