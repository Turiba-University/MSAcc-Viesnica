Version =19
VersionRequired =19
Begin Form
    AllowDesignChanges = NotDefault
    DefaultView =2
    ViewsAllowed =2
    TabularCharSet =186
    TabularFamily =124
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =5669
    DatasheetFontHeight =10
    ItemSuffix =8
    Left =315
    Top =1320
    Right =14490
    Bottom =7980
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0xd3fd3a339340e340
    End
    RecordSource ="dbo_viesn_Ligumi"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            BackStyle =0
            TextFontCharSet =186
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
            Height =3754
            BackColor =-2147483633
            Name ="Detail"
            Begin
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =215
                    Left =453
                    Top =170
                    ColumnWidth =900
                    ColumnOrder =1
                    Name ="Ligums"
                    ControlSource ="Ligums"
                    Begin
                        Begin Label
                            OverlapFlags =93
                            Top =170
                            Width =615
                            Height =240
                            Name ="Label0"
                            Caption ="Ligums:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =1644
                    Top =793
                    ColumnWidth =1110
                    ColumnOrder =2
                    TabIndex =1
                    Name ="Lig_Dat"
                    ControlSource ="Lig_Dat"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =793
                            Width =675
                            Height =240
                            Name ="Label1"
                            Caption ="Lig_Dat:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =1133
                    Top =1474
                    ColumnWidth =1290
                    ColumnOrder =3
                    TabIndex =2
                    Name ="Vards"
                    ControlSource ="Vards"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =1474
                            Width =540
                            Height =240
                            Name ="Label2"
                            Caption ="Vards:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =1133
                    Top =1814
                    ColumnWidth =1605
                    ColumnOrder =4
                    TabIndex =3
                    Name ="Uzvards"
                    ControlSource ="Uzvards"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Top =1814
                            Width =720
                            Height =240
                            Name ="Label3"
                            Caption ="Uzvards:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =2040
                    Top =2494
                    ColumnWidth =1605
                    ColumnOrder =5
                    TabIndex =4
                    Name ="Pilseta"
                    ControlSource ="Pilseta"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =339
                            Top =2494
                            Width =600
                            Height =240
                            Name ="Label4"
                            Caption ="Pilseta:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =2040
                    Top =2834
                    ColumnWidth =1515
                    ColumnOrder =6
                    TabIndex =5
                    Name ="Rajons"
                    ControlSource ="Rajons"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =339
                            Top =2834
                            Width =630
                            Height =240
                            Name ="Label5"
                            Caption ="Rajons:"
                        End
                    End
                End
                Begin TextBox
                    Locked = NotDefault
                    OverlapFlags =85
                    Left =2040
                    Top =3174
                    ColumnWidth =2625
                    ColumnOrder =7
                    TabIndex =6
                    Name ="Iela"
                    ControlSource ="Iela"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =339
                            Top =3174
                            Width =405
                            Height =240
                            Name ="Label6"
                            Caption ="Iela:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =2040
                    Top =3514
                    ColumnWidth =2130
                    ColumnOrder =0
                    TabIndex =7
                    Name ="Valsts"
                    ControlSource ="Valsts"
                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =339
                            Top =3514
                            Width =555
                            Height =240
                            Name ="Label7"
                            Caption ="Valsts:"
                        End
                    End
                End
            End
        End
    End
End
