Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    AllowDesignChanges = NotDefault
    ScrollBars =2
    TabularCharSet =186
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =5070
    DatasheetFontHeight =10
    ItemSuffix =18
    Left =540
    Top =9585
    Right =5610
    Bottom =10920
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x8292c7099afae540
    End
    RecordSource ="SELECT dbo_viesn_Ligumi_Inv.VLI_ID, dbo_viesn_Ligumi_Inv.Ligums, dbo_viesn_Ligum"
        "i_Inv.Istaba, dbo_viesn_Ligumi_Inv.Inv_ID, dbo_viesn_Ligumi_Inv.InvTips, dbo_vie"
        "sn_Ligumi_Inv.Inv_Nos, dbo_viesn_Ligumi_Inv.InvSk, dbo_viesn_Ligumi_Inv.InvStat,"
        " IIf([InvStat]=0,-1,0) AS ok, IIf([InvStat]=-11,-1,0) AS Bojats, IIf([InvStat]=-"
        "12,-1,0) AS Zudis FROM dbo_viesn_Ligumi_Inv WHERE (((dbo_viesn_Ligumi_Inv.InvTip"
        "s)=1) AND ((dbo_viesn_Ligumi_Inv.InvStat) Is Null Or Not (dbo_viesn_Ligumi_Inv.I"
        "nvStat)=-1)) ORDER BY dbo_viesn_Ligumi_Inv.Istaba, dbo_viesn_Ligumi_Inv.Inv_Nos;"
    Caption ="viesn_Ligumi_Istabas"
    AfterUpdate ="[Event Procedure]"
    DatasheetFontName ="Arial Narrow"
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
            Height =240
            BackColor =-2147483633
            Name ="FormHeader"
            Begin
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =85
                    TextAlign =3
                    Width =390
                    Height =240
                    Name ="Istaba_Label"
                    Caption ="ist."
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =690
                    Width =2100
                    Height =240
                    Name ="Label11"
                    Caption ="Nosaukums"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =2805
                    Width =525
                    Height =240
                    Name ="Label13"
                    Caption ="Skaits"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =3660
                    Width =1410
                    Height =240
                    Name ="Label21"
                    Caption =" OK. Bojāts Pazaudēts"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
            End
        End
        Begin Section
            Height =269
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =93
                    Left =57
                    Width =291
                    Height =255
                    ColumnWidth =1680
                    Name ="VLI_ID"
                    ControlSource ="VLI_ID"
                End
                Begin TextBox
                    Visible = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =255
                    Left =170
                    Width =270
                    Height =255
                    ColumnWidth =1035
                    TabIndex =5
                    Name ="Ligums"
                    ControlSource ="Ligums"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =247
                    Width =390
                    Height =255
                    ColumnWidth =420
                    TabIndex =1
                    Name ="Istaba"
                    ControlSource ="Istaba"
                    FontName ="Arial Narrow"
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =93
                    TextAlign =1
                    Left =690
                    Width =2100
                    Height =255
                    TabIndex =3
                    Name ="Inv_Nos"
                    ControlSource ="Inv_Nos"
                    FontName ="Arial Narrow"
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =87
                    TextAlign =2
                    Left =2805
                    Width =525
                    Height =255
                    TabIndex =4
                    Name ="InvSk"
                    ControlSource ="InvSk"
                    Format ="Standard"
                    FontName ="Arial Narrow"
                End
                Begin CommandButton
                    OverlapFlags =247
                    Left =405
                    Width =265
                    Height =269
                    TabIndex =2
                    Name ="Inv_sar"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3344
                    Width =265
                    Height =269
                    TabIndex =6
                    Name ="Dzest"
                    Caption ="X"
                    OnClick ="[Event Procedure]"
                End
                Begin OptionButton
                    OverlapFlags =85
                    Left =4125
                    Width =226
                    Height =227
                    TabIndex =7
                    Name ="InvSanem_Bojats"
                    ControlSource ="Bojats"
                    OnMouseDown ="[Event Procedure]"
                End
                Begin OptionButton
                    OverlapFlags =85
                    Left =4665
                    Width =226
                    Height =227
                    TabIndex =8
                    Name ="InvSanem_Pazaudets"
                    ControlSource ="Zudis"
                    OnMouseDown ="[Event Procedure]"
                End
                Begin OptionButton
                    OverlapFlags =85
                    Left =3735
                    Width =226
                    Height =227
                    TabIndex =9
                    Name ="InvSanem_Atdots"
                    ControlSource ="ok"
                    OnMouseDown ="[Event Procedure]"
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
' See "LigumsViesnIstabinas_InvIst_sub.cls"
