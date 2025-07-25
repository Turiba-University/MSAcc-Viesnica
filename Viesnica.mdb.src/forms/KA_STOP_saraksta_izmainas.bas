Version =19
VersionRequired =19
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    DefaultView =0
    TabularCharSet =186
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =7596
    DatasheetFontHeight =10
    ItemSuffix =21
    Left =1485
    Top =3420
    Right =9075
    Bottom =8400
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x7bd6d2f297bee140
    End
    Caption ="STOP saraksta izmaiņas"
    OnOpen ="[Event Procedure]"
    OnClose ="[Event Procedure]"
    DatasheetFontName ="Arial"
    OnLoad ="[Event Procedure]"
    Begin
        Begin Label
            BackStyle =0
            TextFontCharSet =186
        End
        Begin CommandButton
            TextFontCharSet =186
            Width =1701
            Height =283
            FontSize =8
            FontWeight =400
            ForeColor =-2147483630
            FontName ="Tahoma"
        End
        Begin TextBox
            FELineBreak = NotDefault
            SpecialEffect =2
            OldBorderStyle =0
            TextFontCharSet =186
            Width =1701
            LabelX =-1701
            FontName ="Tahoma"
        End
        Begin ListBox
            SpecialEffect =2
            TextFontCharSet =186
            Width =1701
            Height =1417
            LabelX =-1701
            FontName ="Tahoma"
        End
        Begin ToggleButton
            TextFontCharSet =186
            Width =283
            Height =283
            FontSize =8
            FontWeight =400
            ForeColor =-2147483630
            FontName ="MS Sans Serif"
        End
        Begin Section
            Height =4988
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin ListBox
                    Visible = NotDefault
                    OverlapFlags =85
                    ColumnCount =3
                    Left =113
                    Top =491
                    Width =3570
                    Height =4320
                    Name ="In_STOP"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="1134;1134;1134"
                End
                Begin ListBox
                    Visible = NotDefault
                    OverlapFlags =85
                    ColumnCount =3
                    Left =3848
                    Top =491
                    Width =3570
                    Height =4320
                    TabIndex =1
                    Name ="Out_STOP"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="1134;1134;1134"
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =143
                    Top =131
                    Width =1590
                    Height =285
                    Name ="In_STOP_l"
                    Caption ="Tiks ielikti STOP"
                End
                Begin Label
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =5153
                    Top =101
                    Width =1620
                    Height =285
                    Name ="Out_STOP_l"
                    Caption ="Tiks izņemti no STOP"
                End
                Begin CommandButton
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =2588
                    Top =56
                    Width =2055
                    Height =315
                    TabIndex =2
                    Name ="Change_STOP"
                    Caption ="Veikt izmaiņas STOP sar."
                    OnClick ="[Event Procedure]"
                End
            End
        End
    End
End
CodeBehindForm
' See "KA_STOP_saraksta_izmainas.cls"
