object Form2: TForm2
  Left = 783
  Top = 232
  Width = 512
  Height = 463
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 40
    Width = 3
    Height = 13
  end
  object lblChave: TLabel
    Left = 15
    Top = 5
    Width = 64
    Height = 13
    Caption = 'Chave NFC-e'
  end
  object lblProtocoloCanc: TLabel
    Left = 281
    Top = 55
    Width = 78
    Height = 13
    Caption = 'Protocolo NFC-e'
  end
  object lblJustificativa: TLabel
    Left = 15
    Top = 112
    Width = 55
    Height = 13
    Caption = 'Justificativa'
  end
  object lbDatahora: TLabel
    Left = 16
    Top = 57
    Width = 49
    Height = 13
    Caption = 'Data Hora'
  end
  object lblSequencia: TLabel
    Left = 18
    Top = 167
    Width = 51
    Height = 13
    Caption = 'Sequ'#234'ncia'
  end
  object lblFuso: TLabel
    Left = 304
    Top = 169
    Width = 60
    Height = 13
    Caption = 'Fuso Hor'#225'rio'
  end
  object edtChaveCanc: TEdit
    Left = 13
    Top = 27
    Width = 465
    Height = 21
    TabOrder = 0
  end
  object edtProtocoloCanc: TEdit
    Left = 280
    Top = 79
    Width = 201
    Height = 23
    TabOrder = 1
  end
  object edtJustificativaCanc: TEdit
    Left = 17
    Top = 135
    Width = 464
    Height = 22
    TabOrder = 2
  end
  object edtDatahora: TEdit
    Left = 15
    Top = 79
    Width = 165
    Height = 23
    TabOrder = 3
  end
  object cbbSequenciaCanc: TComboBox
    Left = 18
    Top = 189
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5')
  end
  object cbbFusoHorario: TComboBox
    Left = 304
    Top = 190
    Width = 175
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      '-02:00'
      '-03:00'
      '-04:00')
  end
  object btnDataHora: TButton
    Left = 189
    Top = 80
    Width = 61
    Height = 20
    Caption = 'Data/Hora'
    TabOrder = 6
    OnClick = btnDataHoraClick
  end
  object mmoXmlCanc: TMemo
    Left = 10
    Top = 271
    Width = 474
    Height = 143
    TabOrder = 7
  end
  object btnEnviarCancelamento: TButton
    Left = 134
    Top = 237
    Width = 247
    Height = 28
    Caption = 'Cancelar NFC-e'
    TabOrder = 8
    OnClick = btnEnviarCancelamentoClick
  end
end
