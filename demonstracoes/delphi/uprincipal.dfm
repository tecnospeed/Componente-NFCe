object frmPrincipal: TfrmPrincipal
  Left = 540
  Top = 184
  Width = 971
  Height = 545
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabelAmbiente: TLabel
    Left = 19
    Top = 436
    Width = 164
    Height = 29
    Caption = 'Homologa'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 21
    Width = 433
    Height = 148
    TabOrder = 2
    object edtUF: TLabeledEdit
      Left = 11
      Top = 24
      Width = 38
      Height = 21
      EditLabel.Width = 13
      EditLabel.Height = 13
      EditLabel.Caption = 'UF'
      TabOrder = 0
    end
    object edtCNPJ: TLabeledEdit
      Left = 80
      Top = 24
      Width = 185
      Height = 21
      EditLabel.Width = 25
      EditLabel.Height = 13
      EditLabel.Caption = 'CNPJ'
      TabOrder = 1
    end
    object edtId: TLabeledEdit
      Left = 11
      Top = 64
      Width = 382
      Height = 21
      EditLabel.Width = 60
      EditLabel.Height = 13
      EditLabel.Caption = 'Chave NFCe'
      TabOrder = 2
    end
    object edtRecibo: TLabeledEdit
      Left = 11
      Top = 107
      Width = 185
      Height = 21
      EditLabel.Width = 47
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#186' Recibo'
      TabOrder = 3
    end
    object edtProtocolo: TLabeledEdit
      Left = 208
      Top = 107
      Width = 185
      Height = 21
      EditLabel.Width = 60
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#186' Protocolo'
      TabOrder = 4
    end
  end
  object GroupBoxOutros: TGroupBox
    Left = 294
    Top = 175
    Width = 147
    Height = 274
    Caption = 'Outras Opera'#231#245'es'
    TabOrder = 21
  end
  object GroupBoxOperacoes: TGroupBox
    Left = 151
    Top = 175
    Width = 137
    Height = 242
    Caption = 'Opera'#231#245'es Basicas'
    TabOrder = 19
  end
  object GroupBoxConfig: TGroupBox
    Left = 8
    Top = 175
    Width = 137
    Height = 123
    Caption = 'Configura'#231#245'es'
    TabOrder = 18
    object btnSalvarConfig: TButton
      Left = 11
      Top = 83
      Width = 110
      Height = 25
      Caption = 'Salvar Config'
      TabOrder = 0
      OnClick = btnSalvarConfigClick
    end
  end
  object cbCertificado: TComboBox
    Left = 8
    Top = 0
    Width = 431
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    OnChange = cbCertificadoChange
  end
  object mmXml: TMemo
    Left = 445
    Top = 8
    Width = 500
    Height = 241
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object btnLoadConfig: TButton
    Left = 19
    Top = 227
    Width = 110
    Height = 25
    Caption = 'Load Config'
    TabOrder = 3
    OnClick = btnLoadConfigClick
  end
  object btnIni: TButton
    Left = 19
    Top = 196
    Width = 110
    Height = 25
    Caption = 'Abrir Ini'
    TabOrder = 4
    OnClick = btnIniClick
  end
  object btnStatus: TButton
    Left = 163
    Top = 196
    Width = 110
    Height = 25
    Caption = 'Status Servi'#231'o'
    TabOrder = 5
    OnClick = btnStatusClick
  end
  object btnAssinar: TButton
    Left = 163
    Top = 227
    Width = 110
    Height = 25
    Caption = 'Assinar'
    TabOrder = 6
    OnClick = btnAssinarClick
  end
  object btnEnviarSincrono: TButton
    Left = 163
    Top = 258
    Width = 110
    Height = 25
    Caption = 'Enviar Sincrono'
    TabOrder = 7
    OnClick = btnEnviarSincronoClick
  end
  object btnConsultarRec: TButton
    Left = 305
    Top = 290
    Width = 126
    Height = 25
    Caption = 'Consultar Recibo'
    TabOrder = 8
    OnClick = btnConsultarRecClick
  end
  object btnConsultarNFCe: TButton
    Left = 163
    Top = 289
    Width = 110
    Height = 25
    Caption = 'Consultar NFCe'
    TabOrder = 9
    OnClick = btnConsultarNFCeClick
  end
  object btnCancelar: TButton
    Left = 163
    Top = 351
    Width = 110
    Height = 25
    Caption = 'Cancelar NFCe'
    TabOrder = 10
    OnClick = btnCancelarClick
  end
  object btnEditar: TButton
    Left = 305
    Top = 351
    Width = 126
    Height = 25
    Caption = 'Editar NFCe'
    TabOrder = 11
    OnClick = btnEditarClick
  end
  object btnVisualizar: TButton
    Left = 305
    Top = 259
    Width = 126
    Height = 25
    Caption = 'Visualizar NFCe'
    TabOrder = 12
    OnClick = btnVisualizarClick
  end
  object btnImprimir: TButton
    Left = 163
    Top = 320
    Width = 110
    Height = 25
    Caption = 'Imprimir NFCe'
    TabOrder = 13
    OnClick = btnImprimirClick
  end
  object btnExportar: TButton
    Left = 305
    Top = 228
    Width = 126
    Height = 25
    Caption = 'Exportar PDF NFCe'
    TabOrder = 14
    OnClick = btnExportarClick
  end
  object ButtonInutilizar: TButton
    Left = 305
    Top = 320
    Width = 126
    Height = 25
    Caption = 'Inutilizar'
    TabOrder = 15
    OnClick = ButtonInutilizarClick
  end
  object ButtonEmail: TButton
    Left = 305
    Top = 197
    Width = 126
    Height = 25
    Caption = 'Enviar Email'
    TabOrder = 16
    OnClick = ButtonEmailClick
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 304
    Width = 137
    Height = 97
    Caption = 'Gera'#231#227'o NFCe'
    TabOrder = 17
    object btnTx2400: TButton
      Left = 11
      Top = 59
      Width = 110
      Height = 25
      Caption = 'TX2'
      TabOrder = 0
      OnClick = btnTx2400Click
    end
  end
  object btnDS4: TButton
    Left = 19
    Top = 332
    Width = 110
    Height = 25
    Caption = 'Dataset'
    TabOrder = 20
    OnClick = btnDS4Click
  end
  object btnEmitCancelada: TButton
    Left = 163
    Top = 382
    Width = 110
    Height = 25
    Caption = 'Emite Cancelada'
    TabOrder = 22
    OnClick = btnEmitCanceladaClick
  end
  object btnXmlDestinatario: TButton
    Left = 305
    Top = 382
    Width = 126
    Height = 25
    Caption = 'Gerar XML Destinat'#225'rio'
    TabOrder = 23
    OnClick = btnXmlDestinatarioClick
  end
  object btnxmlDestInuti: TButton
    Left = 305
    Top = 413
    Width = 126
    Height = 25
    Caption = 'Gerar XML Desti Inut'
    TabOrder = 24
    OnClick = btnxmlDestInutiClick
  end
  object mmXmlDenegado: TMemo
    Left = 445
    Top = 264
    Width = 500
    Height = 241
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 25
  end
  object spdNFCe: TspdNFCe
    VersaoManual = vm50
    DanfceSettings.FraseContingencia = 
      'Danfce em conting'#234'ncia - Impresso em decorr'#234'ncia de problemas t'#233 +
      'cnicos'
    DanfceSettings.FraseHomologacao = 'SEM VALOR FISCAL'
    DanfceSettings.QtdeCopias = 1
    DanfceSettings.LineDelimiter = '|'
    DanfceSettings.InfCplMaxCol = 68
    DanfceSettings.InfCplMaxRow = 7
    DanfceSettings.ModeloDanfce = 
      'C:\Arquivos de programas\Embarcadero\RAD Studio\9.0\bin\Template' +
      's\Vm50\Danfce\retrato.rtm'
    DanfceSettings.ModeloDanfceMensagemEletronica = 
      'C:\Arquivos de programas\Embarcadero\RAD Studio\9.0\bin\Template' +
      's\Vm50\Danfce\retrato.rtm'
    DanfceSettings.FormatoDanfce = fdNormal
    DanfceSettings.ExibirDetalhamento = True
    DanfceSettings.ExibirAcrescimoEDesconto = False
    DanfceSettings.InfCplQuebrarLinhaAut = False
    Versao = '9.1.63.8789'
    CaracteresRemoverAcentos = #225#233#237#243#250#224#232#236#242#249#226#234#238#244#251#228#235#239#246#252#227#245#241#231#193#201#205#211#218#192#200#204#210#217#194#202#206#212#219#196#203#207#214#220#195#213#209#199#186#170
    TipoCertificado = ckFile
    DiretorioTemplates = 'C:\Arquivos de programas\Embarcadero\RAD Studio\9.0\Bin\vm50\'
    IgnoreInvalidCertificates = True
    DiretorioLog = 'Log\'
    Ambiente = akHomologacao
    EmailSettings.Autenticacao = False
    EmailSettings.TimeOut = 15000
    EmailSettings.AnexarDanfcePDF = True
    EmailSettings.ConteudoHtml = False
    EmailSettings.UseSecureBlackBox = False
    DiretorioEsquemas = 'C:\Arquivos de programas\Embarcadero\RAD Studio\9.0\Bin\vm50\'
    ConexaoSegura = True
    TimeOut = 0
    SectionINI = 'NFCE'
    DiretorioXmlDestinatario = 'C:\Arquivos de programas\Borland\Delphi7\Bin\XmlDestinatario\'
    MaxSizeLoteEnvio = 500
    DiretorioTemporario = 'C:\Documents and Settings\All Users\Dados de aplicativos\'
    EntregaXML = exEmail
    HashCertificado = '00000000000000000000000000000000'
    DiagnosticMode = True
    AtualizarArquivoServidores = True
    HttpLibs = 'wininet,sbb'
    UtilizarEscPOS = False
    EscPosSettings.ModeloEscPos = 1
    EscPosSettings.ColunasFonteNormalEscPos = 48
    EscPosSettings.EspacoEntreLinhasEscPos = 10
    EscPosSettings.LinhasEntreCuponsEscPos = 3
    EscPosSettings.CortaPapelEscPos = True
    EscPosSettings.PaginaDeCodigoEscPos = 2
    EscPosSettings.QtdeCopiasEscPos = 1
    EscPosSettings.ResumidoEscPos = False
    EscPosSettings.ImprimeDescAcrescItemEscPos = False
    EscPosSettings.ImprimeNomeFantasiaEscPos = False
    Left = 272
    Top = 440
  end
  object spdNFCeDataSets: TspdNFCeDataSets
    VersaoEsquema = pl_006n
    ValidaRegrasNegocio = False
    ValidaRegrasNegocioTecno = False
    Left = 208
    Top = 440
  end
  object dlgTx2: TOpenDialog
    Left = 240
    Top = 440
  end
  object dlgXml: TOpenDialog
    Left = 304
    Top = 440
  end
end
