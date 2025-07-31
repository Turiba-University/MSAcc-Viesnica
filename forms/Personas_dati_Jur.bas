Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    RecordLocks =2
    TabularCharSet =186
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =6633
    DatasheetFontHeight =10
    ItemSuffix =126
    Left =13125
    Top =690
    Right =20790
    Bottom =3855
    DatasheetGridlinesColor =12632256
    Filter ="[Personas_ID]=75066"
    RecSrcDt = Begin
        0x27e78afd5bafe240
    End
    RecordSource ="dbo_Personas"
    Caption ="Juridiskas personas datu ievadīšana"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            BackStyle =0
            TextFontCharSet =186
            TextFontFamily =0
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
            TextFontFamily =0
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
            TextFontFamily =0
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ListBox
            SpecialEffect =2
            TextFontCharSet =186
            TextFontFamily =0
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
            TextFontFamily =0
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
            TextFontFamily =0
            Width =283
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
        End
        Begin Tab
            TextFontCharSet =186
            TextFontFamily =0
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
            Height =2324
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    Left =1333
                    Top =120
                    Width =3120
                    Height =255
                    ColumnWidth =2310
                    Name ="Vard"
                    ControlSource ="Vards"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =30
                            Top =120
                            Width =1230
                            Height =255
                            Name ="Vārds_Label"
                            Caption ="Nosaukums*"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1333
                    Top =460
                    Width =3120
                    Height =255
                    ColumnWidth =2310
                    TabIndex =1
                    Name ="Uzva"
                    ControlSource ="Uzvards"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =30
                            Top =460
                            Width =1218
                            Height =255
                            Name ="Uzvārds_Label"
                            Caption ="Reģ.Nr.*"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1334
                    Top =800
                    Width =2640
                    Height =255
                    ColumnWidth =2310
                    TabIndex =2
                    Name ="Tel1"
                    ControlSource ="Tel1"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =30
                            Top =800
                            Width =783
                            Height =255
                            Name ="Tel1_Label"
                            Caption ="Tālrunis"
                        End
                    End
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5717
                    Top =113
                    Width =741
                    Height =576
                    TabIndex =4
                    Name ="Command64"
                    Caption ="Command64"
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
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Saglabāt izmaiņas un aizvērt"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =5612
                    Top =1178
                    Width =906
                    Height =576
                    TabIndex =5
                    Name ="Slegt_Ligumu"
                    Caption ="Turpināt"
                    OnClick ="[Event Procedure]"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Saglabāt izmaiņas un turpināt"
                End
                Begin Label
                    OverlapFlags =85
                    Left =113
                    Top =1874
                    Width =1860
                    Height =225
                    Name ="Label68"
                    Caption ="* obligāti aizpildāmie lauki"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =93
                    Left =4418
                    Top =1776
                    Width =840
                    Height =255
                    TabIndex =6
                    Name ="aud_date"
                    ControlSource ="Aud_Date"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =3511
                    Top =1474
                    Width =840
                    Height =255
                    TabIndex =7
                    Name ="aud_user"
                    ControlSource ="Aud_User"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =1334
                    Top =1140
                    Width =3150
                    Height =255
                    TabIndex =3
                    Name ="Epasts"
                    ControlSource ="Epasts"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =30
                            Top =1128
                            Width =783
                            Height =255
                            Name ="Label102"
                            Caption ="E-pasts"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =87
                    Left =4418
                    Top =1493
                    Width =840
                    Height =255
                    TabIndex =8
                    Name ="Aud_Comment"
                    ControlSource ="Aud_Comment"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =3628
                    Top =1814
                    Width =615
                    Height =255
                    TabIndex =9
                    Name ="Personas ID"
                    ControlSource ="Personas_ID"
                    EventProcPrefix ="Personas_ID"
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
' See "Personas_dati_Jur.cls"
