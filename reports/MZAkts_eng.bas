Version =19
VersionRequired =19
Begin Report
    LayoutForPrint = NotDefault
    FilterOn = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    TabularCharSet =186
    TabularFamily =0
    DateGrouping =1
    GrpKeepTogether =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    GridY =10
    Width =9878
    DatasheetFontHeight =10
    ItemSuffix =29
    Left =1650
    Top =195
    DatasheetGridlinesColor =12632256
    Filter ="RID=770"
    RecSrcDt = Begin
        0xc52c0420100de640
    End
    RecordSource ="MZAkts"
    DatasheetFontName ="Arial"
    Begin
        Begin Label
            BackStyle =0
            TextFontCharSet =186
            TextFontFamily =2
            FontName ="Arial"
        End
        Begin TextBox
            FELineBreak = NotDefault
            OldBorderStyle =0
            TextFontCharSet =186
            TextFontFamily =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            FontName ="Arial"
        End
        Begin Subform
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            OldBorderStyle =1
            Width =4536
            Height =2835
        End
        Begin PageHeader
            Height =0
            Name ="PageHeaderSection"
        End
        Begin Section
            KeepTogether = NotDefault
            CanGrow = NotDefault
            Height =12245
            Name ="Detail"
            Begin
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Left =6805
                    Top =2716
                    Width =1197
                    Height =225
                    Name ="RID"
                    ControlSource ="RID"
                End
                Begin TextBox
                    CanGrow = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Top =4871
                    Width =9876
                    Height =675
                    FontSize =11
                    TabIndex =1
                    Name ="Txt1"
                    ControlSource ="=\"       hereby state that the following damages have been identified in the JT"
                        "M room No \" & [LigIstaba] & \", and lessee \" & [LigVards] & \" \" & [LigUzvard"
                        "s] & IIf(IsNull([Pers_Kods]),IIf(IsNull([DzDatums]),\" \",\", date of birth: \" "
                        "& [DzDatums]),\", personal ID: \" & [Pers_Kods]) & \", lease agreement No.\" & ["
                        "LigNr] & \", \" & [LigDatums] & \".:\""
                End
                Begin Label
                    BackStyle =1
                    TextFontCharSet =0
                    TextAlign =2
                    TextFontFamily =34
                    Left =4312
                    Top =1815
                    Width =1230
                    Height =375
                    FontSize =14
                    FontWeight =700
                    Name ="Text78"
                    Caption ="REPORT"
                End
                Begin TextBox
                    FELineBreak = NotDefault
                    TextFontCharSet =0
                    TextAlign =1
                    TextFontFamily =34
                    Left =2
                    Top =2603
                    Width =3006
                    Height =285
                    FontSize =10
                    TabIndex =2
                    Name ="Field81"
                    ControlSource ="=[Datums]"
                    Format ="Short Date"
                End
                Begin TextBox
                    FELineBreak = NotDefault
                    TextFontCharSet =0
                    TextFontFamily =34
                    Left =8676
                    Top =2603
                    Width =1200
                    Height =285
                    FontSize =10
                    TabIndex =3
                    Name ="Text114"
                    ControlSource ="=\"No. \" & [Nr]"
                End
                Begin TextBox
                    FELineBreak = NotDefault
                    TextFontCharSet =0
                    TextAlign =2
                    TextFontFamily =34
                    Left =4277
                    Top =2202
                    Width =1200
                    Height =285
                    FontSize =10
                    TabIndex =4
                    Name ="Text33"
                    ControlSource ="=\"Riga\""
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2
                    Top =3453
                    Width =4761
                    Height =285
                    FontSize =11
                    TabIndex =5
                    Name ="Text34"
                    ControlSource ="=\"Committee members:\""
                End
                Begin Label
                    Visible = NotDefault
                    BackStyle =1
                    TextFontCharSet =0
                    TextAlign =3
                    TextFontFamily =34
                    Left =6180
                    Top =1590
                    Width =3630
                    Height =450
                    FontSize =10
                    FontWeight =500
                    Name ="Label0"
                    Caption ="APPROVED by\015\012\"Turiba University\" LTD\015\012    Chairperson of the Board"
                        " I.Bergs\015\012\015\012Riga___.___.202_.\015\012"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =3000
                    Width =8790
                    Height =375
                    FontSize =12
                    FontWeight =700
                    Name ="Label2"
                    Caption ="Report on damages identified and compensation"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2
                    Top =3858
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =6
                    Name ="Text3"
                    ControlSource ="KomAmatsEng1"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Top =4163
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =7
                    Name ="Text5"
                    ControlSource ="KomAmatsEng2"
                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Top =4463
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =8
                    Name ="Text6"
                    ControlSource ="KomAmatsEng3"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2664
                    Top =3850
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =9
                    Name ="Text7"
                    ControlSource ="KomVU1"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2662
                    Top =4155
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =10
                    Name ="Text8"
                    ControlSource ="KomVU2"
                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Left =2662
                    Top =4455
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =11
                    Name ="Text9"
                    ControlSource ="KomVU3"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Top =7705
                    Width =9876
                    Height =795
                    FontSize =11
                    TabIndex =12
                    Name ="Text12"
                    ControlSource ="=IIf([LigIrDepozits]=-1,\"In accordance with clause 7.1.7. of the education cont"
                        "ract the total amount of damages to the sum of \" & Format([Summa],\"0.00\") & \""
                        " EUR (\" & SummaVardiemVal_eng([Summa],2) & \") will be withheld from the deposi"
                        "t fee.\",\"The compensation shall be paid within 7 (seven) days by making the pa"
                        "yment at the BAT or JTM cash counter or transferring the amount to the BAT bank "
                        "account marking 'Compensation for JTM damages' as the purpose of payment.\")"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2
                    Top =8612
                    Width =4761
                    Height =285
                    FontSize =11
                    TabIndex =13
                    Name ="Text13"
                    ControlSource ="=\"Committee members:\""
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2
                    Top =9017
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =14
                    Name ="Text14"
                    ControlSource ="KomAmatsEng1"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Top =9322
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =15
                    Name ="Text15"
                    ControlSource ="KomAmatsEng2"
                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Top =9622
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =16
                    Name ="Text16"
                    ControlSource ="KomAmatsEng3"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2664
                    Top =9009
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =17
                    Name ="Text17"
                    ControlSource ="KomVU1"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Left =2662
                    Top =9314
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =18
                    Name ="Text18"
                    ControlSource ="KomVU2"
                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Left =2662
                    Top =9614
                    Width =2601
                    Height =285
                    FontSize =11
                    TabIndex =19
                    Name ="Text19"
                    ControlSource ="KomVU3"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =5329
                    Top =9009
                    Width =4200
                    Height =285
                    FontSize =11
                    FontWeight =500
                    Name ="Label114"
                    Caption ="___________________________________"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =5325
                    Top =9313
                    Width =4200
                    Height =285
                    FontSize =11
                    FontWeight =500
                    Name ="Label20"
                    Caption ="___________________________________"
                End
                Begin Label
                    Visible = NotDefault
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Left =5321
                    Top =9617
                    Width =4200
                    Height =285
                    FontSize =11
                    FontWeight =500
                    Name ="Label21"
                    Caption ="___________________________________"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =10313
                    Width =8505
                    Height =285
                    FontSize =11
                    FontWeight =500
                    Name ="Label22"
                    Caption ="I am acquainted with the information: ___________________________________"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =1
                    TextFontFamily =34
                    Top =10718
                    Width =7320
                    Height =1395
                    FontSize =11
                    FontWeight =500
                    Name ="Label23"
                    Caption ="Accounts information regarding payment:\015\012\015\012o damages recovered from "
                        "deposit fee\015\012o damages paid for at the cash counter or by bank transfer.\015"
                        "\012"
                End
                Begin Subform
                    OldBorderStyle =0
                    Left =60
                    Top =5850
                    Width =7484
                    Height =1001
                    TabIndex =20
                    Name ="MZAkts_eng_sub"
                    SourceObject ="Report.MZAkts_eng_sub"
                    LinkChildFields ="MZA_ID"
                    LinkMasterFields ="RID"
                End
                Begin Label
                    TextFontFamily =34
                    Top =5551
                    Width =2490
                    Height =285
                    FontSize =11
                    Name ="Label401"
                    Caption ="Name"
                End
                Begin Label
                    TextFontFamily =34
                    Left =2535
                    Top =5550
                    Width =735
                    Height =300
                    FontSize =11
                    Name ="Label402"
                    Caption ="Quant."
                End
                Begin Label
                    TextFontFamily =34
                    Left =3255
                    Top =5551
                    Width =675
                    Height =285
                    FontSize =11
                    Name ="Label404"
                    Caption ="Price"
                End
                Begin Label
                    TextFontFamily =34
                    Left =3975
                    Top =5551
                    Width =900
                    Height =285
                    FontSize =11
                    Name ="Label405"
                    Caption ="Total"
                End
                Begin Label
                    TextFontFamily =34
                    Left =4965
                    Top =5551
                    Width =2445
                    Height =285
                    FontSize =11
                    Name ="Label406"
                    Caption ="Comment"
                End
                Begin TextBox
                    TextFontFamily =34
                    BackStyle =0
                    Top =6968
                    Width =9816
                    Height =675
                    FontSize =11
                    TabIndex =21
                    Name ="Text28"
                    ControlSource ="=\"Total amount of damages: \" & Format([Summa],\"0.00\") & \" EUR (\" & SummaVa"
                        "rdiemVal_eng([Summa],2) & \").\""
                End
                Begin Label
                    BackStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =1319
                    Top =56
                    Width =7200
                    Height =330
                    FontSize =12
                    FontWeight =700
                    Name ="Label29"
                    Caption ="SIA “Biznesa augstskola Turība”"
                End
                Begin Label
                    BackStyle =1
                    TextAlign =2
                    TextFontFamily =34
                    Left =1303
                    Top =408
                    Width =7215
                    Height =630
                    FontSize =12
                    Name ="Label30"
                    Caption ="Vienotais reģistrācijas Nr.40003135880\015\012Graudu iela 68, Rīga, LV-1058\015\012"
                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Left =6406
                    Top =2267
                    Width =402
                    Height =225
                    TabIndex =22
                    Name ="Pers_Kods"
                    ControlSource ="Pers_Kods"
                End
                Begin TextBox
                    Visible = NotDefault
                    TextFontFamily =34
                    BackStyle =0
                    Left =7030
                    Top =2267
                    Width =402
                    Height =225
                    TabIndex =23
                    Name ="DzDatums"
                    ControlSource ="DzDatums"
                End
            End
        End
        Begin PageFooter
            Height =0
            Name ="PageFooterSection"
        End
    End
End
