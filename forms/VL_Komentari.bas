Version =19
VersionRequired =19
Begin Form
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    AllowDesignChanges = NotDefault
    ScrollBars =2
    ViewsAllowed =1
    RecordLocks =2
    TabularCharSet =186
    TabularFamily =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =11734
    DatasheetFontHeight =10
    ItemSuffix =21
    Left =4620
    Top =2640
    Right =18690
    Bottom =5535
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x9442f8509d32e640
    End
    RecordSource ="SELECT dbo_viesn_Ligumi_Komentari.Koment_ID, dbo_viesn_Ligumi_Komentari.Lig_Nr, "
        "dbo_viesn_Ligumi_Komentari.Komentars, dbo_viesn_Ligumi_Komentari.Kateg, dbo_vies"
        "n_Ligumi_Komentari.StartDate, dbo_viesn_Ligumi_Komentari.EndDate, dbo_viesn_Ligu"
        "mi_Komentari.Status, dbo_viesn_Ligumi_Komentari.Rezultats, dbo_viesn_Ligumi_Kome"
        "ntari.Audit_User, dbo_viesn_Ligumi_Komentari.Audit_Date FROM dbo_viesn_Ligumi_Ko"
        "mentari ORDER BY dbo_viesn_Ligumi_Komentari.Koment_ID DESC;"
    Caption ="Komentāri līgumam"
    OnClose ="[Event Procedure]"
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
            Height =510
            BackColor =-2147483633
            Name ="FormHeader"
            Begin
                Begin Label
                    OverlapFlags =85
                    Left =10658
                    Top =210
                    Width =570
                    Height =300
                    Name ="Label6"
                    Caption ="Autors"
                End
                Begin Label
                    OverlapFlags =85
                    Left =907
                    Top =210
                    Width =2070
                    Height =300
                    Name ="Label12"
                    Caption ="Komentāri līgumam"
                End
                Begin Label
                    OverlapFlags =85
                    Left =9014
                    Top =210
                    Width =735
                    Height =240
                    Name ="Label13"
                    Caption ="Rezultāts"
                End
                Begin Label
                    OverlapFlags =93
                    Left =7938
                    Top =210
                    Width =600
                    Height =240
                    Name ="Label14"
                    Caption ="Statuss"
                End
                Begin Label
                    OverlapFlags =215
                    Left =6689
                    Top =15
                    Width =1260
                    Height =435
                    Name ="Label15"
                    Caption ="Sākuma \015\012/ beigu datums"
                End
                Begin Label
                    OverlapFlags =85
                    Left =4988
                    Top =210
                    Width =780
                    Height =240
                    Name ="Label16"
                    Caption ="Kategorija"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =11281
                    Width =441
                    Height =486
                    Name ="Aizvert"
                    Caption ="Aizvert"
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
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Aizvērt formu"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =3727
                    Top =135
                    Width =240
                    Height =270
                    ColumnOrder =0
                    TabIndex =1
                    Name ="OpenFrom"
                End
                Begin Label
                    OverlapFlags =85
                    TextFontFamily =34
                    Top =226
                    Width =780
                    Height =240
                    Name ="Label20"
                    Caption ="Līgums"
                End
            End
        End
        Begin Section
            CanGrow = NotDefault
            CanShrink = NotDefault
            Height =633
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Width =780
                    Height =255
                    ColumnWidth =900
                    Name ="Lig_Nr"
                    ControlSource ="Lig_Nr"
                End
                Begin TextBox
                    CanGrow = NotDefault
                    CanShrink = NotDefault
                    EnterKeyBehavior = NotDefault
                    OverlapFlags =93
                    Left =907
                    Width =4035
                    Height =630
                    ColumnWidth =3000
                    TabIndex =1
                    Name ="Komentars"
                    ControlSource ="Komentars"
                    AfterUpdate ="[Event Procedure]"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =3
                    Left =10714
                    Top =283
                    Width =1020
                    Height =255
                    TabIndex =2
                    Name ="Text4"
                    ControlSource ="Audit_User"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextAlign =3
                    Left =10714
                    Width =1020
                    Height =255
                    TabIndex =3
                    Name ="Text5"
                    ControlSource ="Audit_Date"
                    Format ="Short Date"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =6689
                    Width =1191
                    TabIndex =4
                    Name ="StartDate"
                    ControlSource ="StartDate"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =6689
                    Top =340
                    Width =1191
                    TabIndex =5
                    Name ="EndDate"
                    ControlSource ="EndDate"
                End
                Begin TextBox
                    EnterKeyBehavior = NotDefault
                    ScrollBars =2
                    OverlapFlags =85
                    Left =8957
                    Width =1641
                    Height =633
                    TabIndex =7
                    Name ="Rezultats"
                    ControlSource ="Rezultats"
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =85
                    TextAlign =1
                    ColumnCount =2
                    ListWidth =567
                    Left =7938
                    Width =951
                    TabIndex =6
                    Name ="Status"
                    ControlSource ="Status"
                    RowSourceType ="Value List"
                    RowSource ="1;\"\";2;\"iesākts\";3;\"pabeigts\""
                    ColumnWidths ="0;567"
                End
                Begin ComboBox
                    RowSourceTypeInt =1
                    OverlapFlags =87
                    TextAlign =1
                    ColumnCount =2
                    ListWidth =1701
                    Left =4957
                    Width =1686
                    TabIndex =8
                    Name ="Kateg"
                    ControlSource ="Kateg"
                    RowSourceType ="Value List"
                    RowSource ="\"\";\" \";1;\"tel.zvans\";2;\"sekmes, problēmas\""
                    ColumnWidths ="0;1701"
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
' See "VL_Komentari.cls"
