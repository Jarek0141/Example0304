object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1042#1086#1079#1088#1072#1089#1090
  ClientHeight = 165
  ClientWidth = 219
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object OKButton: TButton
    Left = 126
    Top = 128
    Width = 75
    Height = 25
    Caption = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100
    Default = True
    TabOrder = 1
    OnClick = OKButtonClick
  end
  object MainGroupBox: TGroupBox
    Left = 0
    Top = 0
    Width = 219
    Height = 122
    Align = alTop
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1076#1072#1090#1091' '#1088#1086#1078#1076#1077#1085#1080#1103
    TabOrder = 0
    ExplicitLeft = -4
    ExplicitWidth = 295
    object ResultLabel: TLabel
      Left = 16
      Top = 80
      Width = 129
      Height = 13
      Caption = #1042#1086#1079#1088#1072#1089#1090' '#1101#1090#1086#1075#1086' '#1095#1077#1083#1086#1074#1077#1082#1072': '
    end
    object BirthDateTimePicker: TDateTimePicker
      Left = 15
      Top = 28
      Width = 186
      Height = 21
      Date = 32874.498939421300000000
      Time = 32874.498939421300000000
      TabOrder = 0
    end
  end
end
