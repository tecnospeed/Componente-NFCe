object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Prot'#243'tipo ActiveX sem Registro'
  ClientHeight = 483
  ClientWidth = 798
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    798
    483)
  PixelsPerInch = 96
  TextHeight = 13
  object btnRunConverter: TButton
    Left = 8
    Top = 8
    Width = 137
    Height = 25
    Caption = '&Mostrar Vers'#227'o OCX'
    TabOrder = 0
    OnClick = btnRunConverterClick
  end
  object mmoSaida: TMemo
    Left = 8
    Top = 39
    Width = 782
    Height = 386
    Anchors = [akLeft, akTop, akRight, akBottom]
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object btnEncode: TButton
    Left = 8
    Top = 442
    Width = 137
    Height = 25
    Caption = '&Encode Base64'
    TabOrder = 2
    OnClick = btnEncodeClick
  end
  object btnDecode: TButton
    Left = 151
    Top = 442
    Width = 137
    Height = 25
    Caption = '&Decode Base64'
    TabOrder = 3
    OnClick = btnDecodeClick
  end
end
