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
    Width =6075
    DatasheetFontHeight =10
    ItemSuffix =28
    Left =5895
    Top =9375
    Right =12015
    Bottom =11400
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x8a9a5fd62e04e640
    End
    RecordSource ="SELECT dbo_viesn_Ligumi_Inv.VLI_ID, dbo_viesn_Ligumi_Inv.Ligums, dbo_viesn_Ligum"
        "i_Inv.Istaba, dbo_viesn_Ligumi_Inv.InvTips, dbo_viesn_Ligumi_Inv.Inv_ID, dbo_vie"
        "sn_Ligumi_Inv.Inv_Nos, IIf(IsNull([InvComment]),[Inv_Nos],[Inv_Nos] & \", \" & ["
        "InvComment]) AS Inv_NosComm, dbo_viesn_Ligumi_Inv.InvComment, dbo_viesn_Ligumi_I"
        "nv.InvSk, dbo_viesn_Ligumi_Inv.InvStat, IIf([InvStat]=-10,-1,0) AS NavNod, IIf(["
        "InvStat]=-11,-1,0) AS Bojats, IIf([InvStat]=-12,-1,0) AS Zudis, IIf([InvStat]=-2"
        "0,-1,0) AS Atdots, dbo_viesn_Ligumi_Inv.InvUzMZA FROM dbo_viesn_Ligumi_Inv WHERE"
        " (((dbo_viesn_Ligumi_Inv.InvTips)=2) AND ((dbo_viesn_Ligumi_Inv.InvStat) Is Null"
        " Or (dbo_viesn_Ligumi_Inv.InvStat)<>-1)) ORDER BY dbo_viesn_Ligumi_Inv.Istaba, d"
        "bo_viesn_Ligumi_Inv.Inv_Nos;"
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
            Height =255
            BackColor =-2147483633
            Name ="FormHeader"
            Begin
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    Left =330
                    Width =2085
                    Height =240
                    Name ="Label11"
                    Caption ="Nosaukums"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =2445
                    Width =525
                    Height =240
                    Name ="Label13"
                    Caption ="Skaits"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =3300
                    Width =2340
                    Height =240
                    Name ="Label21"
                    Caption =" Atdots  Nav nod. Bojāts Pazaudēts"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =3
                    Left =5730
                    Width =345
                    Height =255
                    FontWeight =700
                    Name ="Label27"
                    Caption ="MZA"
                    FontName ="Arial Narrow"
                    Tag ="DetachedLabel"
                End
            End
        End
        Begin Section
            Height =311
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =93
                    Left =57
                    Width =111
                    Height =255
                    ColumnWidth =1680
                    Name ="VLI_ID"
                    ControlSource ="VLI_ID"
                End
                Begin TextBox
                    Visible = NotDefault
                    ColumnHidden = NotDefault
                    OverlapFlags =95
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
                    OverlapFlags =255
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
                    OverlapFlags =255
                    TextAlign =1
                    Left =330
                    Width =2085
                    Height =255
                    TabIndex =3
                    Name ="Inv_Nos"
                    ControlSource ="Inv_NosComm"
                    OnDblClick ="[Event Procedure]"
                    FontName ="Arial Narrow"
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    DecimalPlaces =0
                    OverlapFlags =85
                    TextAlign =2
                    Left =2445
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
                    Left =45
                    Width =265
                    Height =269
                    TabIndex =2
                    Name ="Inv_sar"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =3045
                    Width =265
                    Height =269
                    TabIndex =6
                    Name ="Dzest"
                    Caption ="X"
                    OnClick ="[Event Procedure]"
                End
                Begin OptionButton
                    OverlapFlags =85
                    Left =4138
                    Top =56
                    Width =226
                    Height =227
                    TabIndex =7
                    Name ="InvSanem_NNod"
                    ControlSource ="NavNod"
                    OnMouseDown ="[Event Procedure]"
                End
                Begin OptionButton
                    OverlapFlags =85
                    Left =4710
                    Top =60
                    Width =226
                    Height =227
                    TabIndex =8
                    Name ="InvSanem_Bojats"
                    ControlSource ="Bojats"
                    OnMouseDown ="[Event Procedure]"
                End
                Begin OptionButton
                    OverlapFlags =85
                    Left =5250
                    Top =60
                    Width =226
                    Height =227
                    TabIndex =9
                    Name ="InvSanem_Pazaudets"
                    ControlSource ="Zudis"
                    OnMouseDown ="[Event Procedure]"
                End
                Begin OptionButton
                    OverlapFlags =85
                    Left =3570
                    Top =60
                    Width =226
                    Height =227
                    TabIndex =10
                    Name ="InvSanem_Atdots"
                    ControlSource ="Atdots"
                    OnMouseDown ="[Event Procedure]"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =3401
                    Width =111
                    Height =255
                    TabIndex =11
                    Name ="Inv_ID"
                    ControlSource ="Inv_ID"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =3855
                    Width =111
                    Height =255
                    TabIndex =12
                    Name ="InvComment"
                    ControlSource ="InvComment"
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =5782
                    Top =56
                    Width =227
                    Height =227
                    TabIndex =13
                    Name ="MZA_in"
                    ControlSource ="InvUzMZA"
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
' See "LigumsViesnIstabinas_InvSanem_sub.cls"
