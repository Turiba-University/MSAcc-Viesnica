Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    CloseButton = NotDefault
    AllowAdditions = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    TabularFamily =0
    GridX =5
    GridY =5
    Width =4988
    ItemSuffix =93
    Left =4125
    Top =225
    Right =9810
    Bottom =4515
    RecSrcDt = Begin
        0x5c30cb190f1ce340
    End
    RecordSource ="dbo_viesn_Caurlaides"
    Caption ="Caurlaides"
    Begin
        Begin Label
            TextAlign =3
            TextFontFamily =0
            FontWeight =700
            BackColor =12632256
        End
        Begin Rectangle
            SpecialEffect =2
            Width =850
            Height =850
        End
        Begin OptionButton
            AddColon = NotDefault
            SpecialEffect =2
            LabelAlign =3
            Width =187
            Height =187
            LabelX =-236
        End
        Begin CheckBox
            AddColon = NotDefault
            SpecialEffect =2
            LabelAlign =3
            Width =187
            Height =187
            LabelX =-236
        End
        Begin TextBox
            SpecialEffect =2
            LabelAlign =3
            TextFontFamily =0
            Width =1701
            Height =255
            LabelX =-236
        End
        Begin ListBox
            SpecialEffect =2
            LabelAlign =3
            TextFontFamily =0
            Width =1701
            Height =1417
            LabelX =-236
        End
        Begin ComboBox
            SpecialEffect =2
            LabelAlign =3
            TextFontFamily =0
            Width =1701
            Height =255
            LabelX =-236
        End
        Begin Subform
            Width =1701
            Height =1701
        End
        Begin ToggleButton
            TextFontCharSet =186
            TextFontFamily =2
            Width =283
            Height =283
        End
        Begin FormHeader
            Height =405
            BackColor =12632256
            Name ="FormHeader1"
            Begin
                Begin Label
                    BackStyle =0
                    OverlapFlags =85
                    TextAlign =1
                    Width =1575
                    Height =405
                    FontSize =14
                    ForeColor =16777215
                    Name ="Viesnīca"
                    Caption ="Caurlaides"
                End
                Begin ToggleButton
                    Enabled = NotDefault
                    OverlapFlags =85
                    TextFontCharSet =0
                    TextFontFamily =34
                    Left =1700
                    Width =909
                    Height =348
                    Name ="Ierakstīt"
                    Caption ="Ierakstīt"
                    FontName ="Arial"
                    OnClick ="[Event Procedure]"
                End
                Begin ToggleButton
                    OverlapFlags =85
                    Left =2607
                    Width =1281
                    Height =351
                    TabIndex =1
                    Name ="Atgriezties"
                    Caption ="Atgriezties"
                    OnClick ="[Event Procedure]"
                End
                Begin ToggleButton
                    OverlapFlags =85
                    Left =3885
                    Width =801
                    Height =351
                    TabIndex =2
                    Name ="Drukāt"
                    Caption ="Drukāt"
                    OnClick ="[Event Procedure]"
                End
            End
        End
        Begin Section
            CanGrow = NotDefault
            SpecialEffect =1
            Height =2494
            BackColor =12632256
            Name ="Detail0"
            Begin
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =1341
                    Top =1133
                    Width =1830
                    TabIndex =3
                    Name ="Stavoklis"
                    ControlSource ="Stavoklis"
                    StatusBarText ="Grupas nosaukums"
                    ValidationText ="KĻŪDA!!!  Grupas Nr. jāievada piem. V-11, SO-3, U-3 u.t.t."
                    OnEnter ="[Event Procedure]"
                    FontName ="Arial"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =509
                            Top =1133
                            Width =735
                            Height =255
                            Name ="Text17"
                            Caption ="Pozīcija:"
                            FontName ="arial"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =1341
                    Top =453
                    Width =1815
                    TabIndex =1
                    Name ="Vards"
                    ControlSource ="Vards"
                    OnEnter ="[Event Procedure]"
                    FontName ="Arial"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =566
                            Top =453
                            Width =678
                            Height =240
                            Name ="Text21"
                            Caption ="Vārds:"
                            FontName ="arial"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =1341
                    Top =793
                    Width =1815
                    TabIndex =2
                    Name ="Uzvards"
                    ControlSource ="Uzvards"
                    OnEnter ="[Event Procedure]"
                    FontName ="Arial"
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =1341
                    Top =1814
                    Width =1146
                    TabIndex =5
                    Name ="Derigums"
                    ControlSource ="Derigums"
                    Format ="dd\\.mm\\.yyyy"
                    FontName ="Arial"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =254
                            Top =1814
                            Width =990
                            Height =240
                            Name ="Text54"
                            Caption ="Derīga līdz:"
                            FontName ="arial"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =1341
                    Top =1478
                    Width =696
                    TabIndex =4
                    Name ="IstNr"
                    ControlSource ="IstNr"
                    FontName ="Arial"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =269
                            Top =1474
                            Width =975
                            Height =240
                            Name ="Text69"
                            Caption ="Istabas Nr:"
                            FontName ="arial"
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    OverlapFlags =85
                    TextFontFamily =34
                    Left =1341
                    Top =113
                    Width =696
                    Name ="CaurlNr"
                    ControlSource ="CaurlNr"
                    BeforeUpdate ="[Event Procedure]"
                    OnEnter ="[Event Procedure]"
                    FontName ="Arial"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            TextFontFamily =34
                            Left =14
                            Top =113
                            Width =1230
                            Height =255
                            Name ="Text76"
                            Caption ="Caurlaides Nr."
                            FontName ="arial"
                        End
                    End
                End
                Begin Label
                    OverlapFlags =85
                    TextAlign =1
                    TextFontFamily =34
                    Left =464
                    Top =793
                    Width =780
                    Height =255
                    Name ="Text77"
                    Caption ="Uzvārds:"
                    FontName ="arial"
                End
                Begin Subform
                    OverlapFlags =85
                    Left =3401
                    Top =566
                    Width =1479
                    Height =1704
                    TabIndex =6
                    Name ="Foto"
                    SourceObject ="Form.Foto"
                    LinkChildFields ="Personas ID"
                    LinkMasterFields ="Pers_ID"
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =1341
                    Top =2154
                    TabIndex =7
                    Name ="Anul"
                    ControlSource ="Anul"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =209
                            Top =2154
                            Width =1035
                            Height =240
                            Name ="Text90"
                            Caption ="Anulēšana:"
                        End
                    End
                End
                Begin TextBox
                    Visible = NotDefault
                    OverlapFlags =85
                    Left =3514
                    Top =226
                    Width =1251
                    TabIndex =8
                    Name ="Pers_ID"
                    ControlSource ="Pers_ID"
                End
            End
        End
        Begin FormFooter
            Height =0
            BackColor =12632256
            Name ="FormFooter2"
        End
    End
End
CodeBehindForm
' See "Caurlaides.cls"
