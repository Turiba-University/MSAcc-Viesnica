Version =19
VersionRequired =19
Begin Form
    RecordSelectors = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    TabularCharSet =186
    TabularFamily =55
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =5850
    DatasheetFontHeight =10
    ItemSuffix =11
    Left =12405
    Top =900
    Right =18255
    Bottom =3945
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0xec3eb26461b4e240
    End
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            BackStyle =0
            TextFontCharSet =186
            FontName ="Tahoma"
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
        Begin Section
            Height =3061
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =396
                    Top =113
                    Width =1474
                    Height =510
                    Name ="Net2Local"
                    Caption ="Net to Local"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =396
                    Top =850
                    Width =1474
                    Height =567
                    TabIndex =1
                    Name ="Local2Net"
                    Caption ="Local to Net"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =2721
                    Top =453
                    Width =907
                    Height =454
                    TabIndex =2
                    Name ="SetProp"
                    Caption ="SetProp"
                    OnClick ="[Event Procedure]"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =113
                    Top =2211
                    Width =4121
                    Height =283
                    TabIndex =3
                    Name ="Progress"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =113
                    Top =1814
                    Width =4121
                    Height =283
                    TabIndex =4
                    Name ="Saka"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =131
                    Top =2620
                    Width =4121
                    Height =283
                    TabIndex =5
                    Name ="Beidza"
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2721
                    Top =113
                    Width =626
                    Height =283
                    TabIndex =6
                    Name ="Versija"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4875
                    Top =1587
                    Width =975
                    Height =405
                    TabIndex =7
                    Name ="ObjNames"
                    Caption ="ObjNames"
                    OnClick ="[Event Procedure]"
                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =4875
                    Top =2154
                    Width =964
                    Height =794
                    TabIndex =8
                    Name ="ObjSources"
                    Caption ="Objects (tab, Quer, Rep)"
                    OnClick ="[Event Procedure]"
                End
            End
        End
    End
End
CodeBehindForm
' See "ZN2L.cls"
