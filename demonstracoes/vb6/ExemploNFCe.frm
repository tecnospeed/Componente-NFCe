VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form FrmExemplo 
   Caption         =   "ExemploNFCe"
   ClientHeight    =   9000
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8355
   LinkTopic       =   "Form1"
   ScaleHeight     =   9000
   ScaleWidth      =   8355
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog CommonDialog 
      Left            =   7800
      Top             =   8520
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.TextBox mmXML 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   4335
      HideSelection   =   0   'False
      Left            =   0
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   33
      Top             =   4080
      Width           =   8415
   End
   Begin VB.Frame gbOperacoes 
      Caption         =   "Operações"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4095
      Left            =   2640
      TabIndex        =   1
      Top             =   0
      Width           =   5775
      Begin VB.Frame gbImpressao 
         Caption         =   "Impressão do Dacte"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1335
         Left            =   2880
         TabIndex        =   27
         Top             =   2400
         Width           =   2655
         Begin VB.CommandButton btnExporta 
            Caption         =   "10. Exportar para PDF"
            Height          =   315
            Left            =   120
            TabIndex        =   29
            Top             =   720
            Width           =   2415
         End
         Begin VB.CommandButton btnVisualizar 
            Caption         =   "9. Visualizar"
            Height          =   315
            Left            =   120
            TabIndex        =   28
            Top             =   360
            Width           =   2415
         End
      End
      Begin VB.CommandButton btnCancelar 
         Caption         =   "8. Cancelar NFCe"
         Height          =   315
         Left            =   2880
         TabIndex        =   26
         Top             =   1560
         Width           =   2655
      End
      Begin VB.CommandButton btnConsultaNFCe 
         Caption         =   "7. Consultar NFCe"
         Height          =   315
         Left            =   2880
         TabIndex        =   25
         Top             =   1200
         Width           =   2655
      End
      Begin VB.CommandButton btnEnviarNFCe 
         Caption         =   "6. Enviar NFCe"
         Height          =   315
         Left            =   2880
         TabIndex        =   24
         Top             =   840
         Width           =   2655
      End
      Begin VB.CommandButton btnPreverDanfce 
         Caption         =   "5.2 Prever DANFCE"
         Height          =   315
         Left            =   120
         TabIndex        =   23
         Top             =   3360
         Width           =   2655
      End
      Begin VB.CommandButton btnAssinar 
         Caption         =   "5.1 Assinar NFCe"
         Height          =   315
         Left            =   120
         TabIndex        =   22
         Top             =   3000
         Width           =   2655
      End
      Begin VB.CommandButton btnDataSet 
         Caption         =   "4.2 Gerar XML via DataSet"
         Height          =   315
         Left            =   120
         TabIndex        =   21
         Top             =   2640
         Width           =   2655
      End
      Begin VB.CommandButton btnTx2 
         Caption         =   "4.1 Gerar XML via Tx2"
         Height          =   315
         Left            =   120
         TabIndex        =   20
         Top             =   2280
         Width           =   2655
      End
      Begin VB.CommandButton btnStatus 
         Caption         =   "3. Verificar Status de Serviço"
         Height          =   315
         Left            =   120
         TabIndex        =   19
         Top             =   1920
         Width           =   2655
      End
      Begin VB.CommandButton btnLoadConfig 
         Caption         =   "2. LoadConfig"
         Height          =   315
         Left            =   120
         TabIndex        =   18
         Top             =   1560
         Width           =   2655
      End
      Begin VB.CommandButton btnConfiguraIni 
         Caption         =   "1.2 Configurar via arquivo .ini"
         Height          =   315
         Left            =   120
         TabIndex        =   17
         Top             =   1200
         Width           =   2655
      End
      Begin VB.CommandButton btnConfiguraSH 
         Caption         =   "1.1 Configura Software House"
         Height          =   315
         Left            =   120
         TabIndex        =   16
         Top             =   840
         Width           =   2655
      End
      Begin VB.ComboBox cbCertificados 
         Height          =   315
         Left            =   1080
         TabIndex        =   15
         Top             =   360
         Width           =   4455
      End
      Begin VB.Label Label9 
         Caption         =   "Siga as operações na ordem assinalada"
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   120
         TabIndex        =   30
         Top             =   3720
         Width           =   2895
      End
      Begin VB.Label lblCertificado 
         Caption         =   "Certificado: "
         Height          =   255
         Left            =   240
         TabIndex        =   14
         Top             =   360
         Width           =   855
      End
   End
   Begin VB.Frame gbConfig 
      Caption         =   "Configurações"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4095
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   2535
      Begin VB.TextBox edtUF 
         Height          =   315
         Left            =   120
         TabIndex        =   32
         Top             =   480
         Width           =   375
      End
      Begin VB.TextBox edtProtocolo 
         Height          =   285
         Left            =   120
         TabIndex        =   8
         Top             =   3480
         Width           =   2295
      End
      Begin VB.TextBox edtRecibo 
         Height          =   285
         Left            =   120
         TabIndex        =   7
         Top             =   2880
         Width           =   2295
      End
      Begin VB.TextBox edtChave 
         Height          =   285
         Left            =   120
         TabIndex        =   6
         Top             =   2280
         Width           =   2295
      End
      Begin VB.TextBox edtCNPJEmit 
         Height          =   285
         Left            =   120
         TabIndex        =   5
         Top             =   1680
         Width           =   2295
      End
      Begin VB.TextBox edtCNPJSH 
         Height          =   285
         Left            =   120
         TabIndex        =   4
         Text            =   "08187168000160"
         Top             =   1080
         Width           =   2295
      End
      Begin VB.Label lblProtocolo 
         Caption         =   "Nº Protocolo"
         Height          =   255
         Left            =   120
         TabIndex        =   13
         Top             =   3240
         Width           =   1095
      End
      Begin VB.Label lblRecibo 
         Caption         =   "Nº Recibo"
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   2640
         Width           =   1575
      End
      Begin VB.Label lblChave 
         Caption         =   "Nº Chave"
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   2040
         Width           =   855
      End
      Begin VB.Label lblCNPJEmit 
         Caption         =   "CNPJ (Apenas números) *"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   1440
         Width           =   2175
      End
      Begin VB.Label lblCNPJSH 
         Caption         =   "CNPJ Software House *"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   840
         Width           =   2055
      End
      Begin VB.Label lblUF 
         Caption         =   "UF"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   240
         Width           =   495
      End
   End
   Begin VB.Label lblStatus 
      Height          =   375
      Left            =   0
      TabIndex        =   31
      Top             =   8520
      Visible         =   0   'False
      Width           =   8535
   End
   Begin VB.Label Label2 
      Caption         =   "UF"
      Height          =   255
      Left            =   1920
      TabIndex        =   3
      Top             =   1320
      Width           =   495
   End
End
Attribute VB_Name = "FrmExemplo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Declarado Objeto pertencente a Classe que faz interação com servidores da Receita'
Dim NFCe As NFCeX.spdNFCeX
Dim NFCeDataSet As NFCeDataSetX.spdNFCeDataSetX
Dim ArqIni As String
Dim CertificadoSelecionado As String

'******************************************************************************************************
'
'          Declaração de funções externas
'
'******************************************************************************************************
'Função para ler arquivos INI usando API window
Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal padrao As String, ByVal variavel As String, ByVal tam As Long, ByVal arquivo As String) As Long

'Função para gravar arquivos INI usando API windows
Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal valor As Any, ByVal arquivo As String) As Long

'Função para configurar o diretório atual
Private Declare Function SetCurrentDirectory Lib "kernel32" _
() 'Alias "SetCurrentDirectoryA" (ByVal lpPathName As String) As Long

Option Explicit

'Função auxiliar para pegar o fuso
Private Const TIME_ZONE_ID_DAYLIGHT As Long = 2

'Função auxiliar para pegar o fuso
Private Type SYSTEMTIME
   wYear         As Integer
   wMonth        As Integer
   wDayOfWeek    As Integer
   wDay          As Integer
   wHour         As Integer
   wMinute       As Integer
   wSecond       As Integer
   wMilliseconds As Integer
End Type
'Função auxiliar para pegar o fuso
Private Type TIME_ZONE_INFORMATION
   Bias As Long
   StandardName(0 To 63) As Byte  'unicode (0-based)
   StandardDate As SYSTEMTIME
   StandardBias As Long
   DaylightName(0 To 63) As Byte  'unicode (0-based)
   DaylightDate As SYSTEMTIME
   DaylightBias As Long
End Type
'Função auxiliar para pegar o fuso
Private Declare Function GetTimeZoneInformation Lib "kernel32.dll" (lpTimeZoneInformation As TIME_ZONE_INFORMATION) As Long
'Função para pegar o fuso
Private Function GetCurrentTimeBias() As String

   Dim tzi As TIME_ZONE_INFORMATION
   Dim dwBias As Long
   Dim tmp As String

   Select Case GetTimeZoneInformation(tzi)
   Case TIME_ZONE_ID_DAYLIGHT
      dwBias = tzi.Bias + tzi.DaylightBias
   Case Else
      dwBias = tzi.Bias + tzi.StandardBias
   End Select

   tmp = "-0" & CStr(dwBias \ 60) & ":00"

   GetCurrentTimeBias = tmp
   
End Function

'Inicialização
Private Sub Form_Initialize()

  'Instancia o Objeto responsável pela interação com servidores da SEFAZ
  Set NFCe = New NFCeX.spdNFCeX
  'Instancia o Objeto responsável pela geração do DataSet
  Set NFCeDataSet = New NFCeDataSetX.spdNFCeDataSetX
  
  'Utiliza Método do Componente para Listar Certificados instalado no SO
  Dim i As Integer
  Dim vetor As Variant
  NFCe.ConfigurarSoftwareHouse "08187168000160", ""
  vetor = Split(NFCe.ListarCertificados, "|")
  cbCertificados.Clear
  For i = LBound(vetor) To UBound(vetor)
          cbCertificados.AddItem vetor(i)
  Next

  'Arquivo INI a ser manipulado com parametrizações
  ArqIni = App.Path + "\nfceConfig.ini"
    
End Sub
'1.1. Configurar o CNPJ da Software House
Private Sub btnConfiguraSH_Click()
On Error GoTo TrataErroSH
    NFCe.ConfigurarSoftwareHouse edtCNPJSH.Text, ""
TrataErroSH:
    If Err.Description <> "" Then
        lblStatus = Err.Description
    End If
End Sub
'1.2. Configurar NFCe via arquivo .ini
Private Sub btnConfiguraIni_Click()
On Error GoTo TrataErroConfigIni
    
  Dim Certificado As String
  
  Certificado = cbCertificados.Text
  If Certificado <> "" Then
  write_ini "NFCe", "NomeCertificado", Certificado
  Shell "C:\Windows\System32\notepad.exe " + App.Path + "\nfceConfig.ini", vbNormalFocus
  Else
  AtualizaStatusNaTela ("Favor selecionar um certificado")
  End If
TrataErroConfigIni:
    If Err.Description <> "" Then
        lblStatus = Err.Description
    End If
End Sub
'2. LoadConfig
Private Sub btnLoadConfig_Click()
On Error GoTo TrataErroLoadConfig
    NFCe.LoadConfig ArqIni
    edtUF.Text = NFCe.UF
    edtCNPJEmit.Text = NFCe.CNPJ
    cbCertificados.Text = NFCe.NomeCertificado
    AtualizaStatusNaTela "Configurações carregadas via ini."
Exit Sub
TrataErroLoadConfig:
    If Err.Description <> "" Then
        lblStatus = Err.Description
    End If
End Sub
'3.Verificar Status do Serviço
Private Sub btnStatus_Click()
 On Error GoTo TratarErroStatus
    CheckConfig (False)
    Dim Retorno As String
    Retorno = NFCe.StatusDoServico()
    mmXML.Text = Retorno
    AtualizaStatusNaTela ("Status do Serviço: OK")
Exit Sub
TratarErroStatus:
    If Err.Description <> "" Then
        lblStatus = Err.Description
    End If
End Sub
'4.1.Gerar XML via TX2
Private Sub btnTx2_Click()
    On Error GoTo TratarErroTx2
    CheckConfig (True)
    Dim arquivo As String
    Dim Retorno As String
   arquivo = FileOpen("TX2 (*.tx2) | *.tx2") 'Carrega o arquivo .tx2
   Dim fso As New FileSystemObject
   If arquivo <> "" Then
    ConfiguraNFCeDataSet
    Retorno = NFCe.ConverterLoteParaXml(arquivo, lkTXTDataSet, "pl_009")
    mmXML.Text = Retorno
    edtChave.Text = Mid$(mmXML.Text, InStrRev(mmXML.Text, "infNFe Id=") + 14, 44)
    AtualizaStatusNaTela ("Gerar XML por TX2: OK")
   End If
   Exit Sub
TratarErroTx2:
    If Err.Description <> "" Then
        lblStatus = Err.Description
    End If
End Sub
'4.2.Gerar XML via DataSet
Private Sub btnDataSet_Click()
    On Error GoTo TratarErroDataSet
    Dim XML As String
            CheckConfig (True)
            ConfiguraNFCeDataSet
            NFCeDataSet.Incluir
            DadosdoNFCe
            DadosEmitente
            DadosItem
            DadosPagamento
            Totalizadores
            DadosResponsavelTecnico
            NFCeDataSet.Salvar
            XML = NFCeDataSet.LoteNFCe()
            edtChave.Text = Mid((NFCeDataSet.GetCampo("Id_A03")), 4, 44)
            mmXML.Text = XML
            AtualizaStatusNaTela ("Gerar XML por DataSet: OK")
TratarErroDataSet:
    If Err.Description <> "" Then
        lblStatus = Err.Description
    End If
End Sub
'5.1 Assinar NFCe
Private Sub btnAssinar_Click()
    On Error GoTo TratarErroAssina
Dim XML As String
XML = NFCe.AssinarNota(mmXML.Text)
mmXML.Text = XML
AtualizaStatusNaTela ("Assinar NFCe: OK")
TratarErroAssina:
    If Err.Description <> "" Then
        lblStatus = Err.Description
    End If
End Sub
'5.2 Prever DANFCE
Private Sub btnPreverDanfce_Click()
On Error GoTo TratarErroPrever
CheckConfig (False)
Dim XML As String
XML = mmXML.Text
If Trim(XML) <> "" Then
NFCe.PreverDanfce XML, ""
Else
lblStatus = "Por gentileza informe o XML Assinado no memo."
End If
TratarErroPrever:
    If Err.Description <> "" Then
        lblStatus = Err.Description
    End If
End Sub
'6.Enviar NFCe
Private Sub btnEnviarNFCe_Click()
On Error GoTo TratarErroEnvia
    CheckConfig (False)
    Dim Retorno As String
    Retorno = NFCe.EnviarNFSincrono("1", mmXML.Text, False)
    mmXML.Text = Retorno
    edtProtocolo.Text = Mid$(mmXML.Text, InStrRev(mmXML.Text, "<nProt>") + 7, 15)
    AtualizaStatusNaTela ("Enviar NFCe: OK")
TratarErroEnvia:
  If Err.Description <> "" Then
    lblStatus = Err.Description
  End If
End Sub
'7.Consultar NFCe
Private Sub btnConsultaNFCe_Click()
On Error GoTo TratarErroConsultaNFCe
CheckConfig (True)
    Dim Retorno As String
    Retorno = NFCe.ConsultarNF(edtChave.Text)
    mmXML.Text = Retorno
    edtProtocolo.Text = Mid$(mmXML.Text, InStrRev(mmXML.Text, "<nProt>") + 7, 15)
    AtualizaStatusNaTela ("Consultar Recibo NFCe: OK")
TratarErroConsultaNFCe:
    If Err.Description <> "" Then
        lblStatus = Err.Description
    End If
End Sub
'8.Cancelar NFCe
Private Sub btnCancelar_Click()
 On Error GoTo TratarErroCancela
  Load FCancela
  
  FCancela.edtChave.Text = edtChave.Text
  FCancela.edtProtocolo.Text = edtProtocolo.Text
  
  FCancela.Show vbModal
    Dim Chave As String
    Dim Protocolo As String
    Dim Justificativa As String
    Dim Retorno As String
    Dim Sequencia As String
    
    Chave = FCancela.edtChave.Text
    Protocolo = FCancela.edtProtocolo.Text
    Justificativa = FCancela.mJustificativa.Text
    Sequencia = FCancela.edtSeq.Text
    
    If Chave <> "" And Protocolo <> "" And Justificativa <> "" Then
    mmXML.Text = NFCe.CancelarNF(Chave, Protocolo, Justificativa, Format(Now, "YYYY-MM-DDTHH:MM:SS"), Sequencia, GetCurrentTimeBias, 1)
    AtualizaStatusNaTela ("Cancelar NFCe: OK")
    Else
    End If
    
    Unload FCancela
    
TratarErroCancela:
    If Err.Description <> "" Then
        lblStatus = Err.Description
    End If
End Sub
'9.Visualizar
Private Sub btnVisualizar_Click()
Dim arquivo As String
Dim XML As String
Dim arqtxt As TextStream
On Error GoTo TratarErroVisualizar
CheckConfig (False)
  If edtChave.Text <> "" Then
  arquivo = ObterCaminhoXmlTomador(edtChave.Text)
  If arquivo <> "" Then
  Dim fso As New FileSystemObject
    Set arqtxt = fso.OpenTextFile(arquivo)
    XML = arqtxt.ReadAll
    
    NFCe.VisualizarDanfce "0001", XML, ""
  End If
  Else
        XML = mmXML.Text
        If Trim(XML) <> "" Then
            NFCe.VisualizarDanfce "0001", XML, ""
        Else
            lblStatus = "Por gentileza informe o XML no memo."
        End If
  End If
TratarErroVisualizar:
    If Err.Description <> "" Then
        lblStatus = Err.Description
    End If
End Sub
'10.Exportar para PDF
Private Sub btnExporta_Click()
Dim arquivo As String
Dim XML As String
On Error GoTo TratarErroExportar
CheckConfig (False)
If edtChave.Text <> "" Then
  Dim fso As New FileSystemObject
  Dim arqtxt As TextStream
  arquivo = ObterCaminhoXmlTomador(edtChave.Text)
  If arquivo <> "" Then
    Set arqtxt = fso.OpenTextFile(arquivo)
    XML = arqtxt.ReadAll
    CaminhoPDF (XML)
  Else
    lblStatus = "Por gentileza informe uma chave válida."
  End If
Else
  XML = mmXML.Text
  If Trim(XML) <> "" Then
    CaminhoPDF (XML)
  Else
    lblStatus = "Por gentileza informe o XML no memo."
  End If
End If
TratarErroExportar:
    If Err.Description <> "" Then
        lblStatus = Err.Description
    End If
End Sub
'Função que verifica se o componente foi configurado
Private Sub CheckConfig(ClearOutput As Boolean)
Dim bConfig As Boolean
If ClearOutput Then
    mmXML.Text = ""
End If

bConfig = True

If NFCe.UF = "" Then
    bConfig = False
End If

If NFCe.CNPJ = "" Then
    bConfig = False
End If

If NFCe.NomeCertificado = "" Then
    bConfig = False
End If
If bConfig = False Then
    Err.Raise vbObjectError + 1, "Form1", "Favor configurar o componente antes de prosseguir (via ini ou via propriedades)."
End If

End Sub
'Função que define o caminho do PDF
Private Sub CaminhoPDF(XML As String)
Dim CaminhoArquivoPDF As String
    CaminhoArquivoPDF = InputBox("Caminho do arquivo PDF", "Informe o caminho do arquivo PDF", "C:\Danfce.PDF")
    If CaminhoArquivoPDF <> "" Then
        NFCe.ExportarDanfce "0001", XML, "", 1, CaminhoArquivoPDF
        mmXML.Text = "PDF gerado com sucesso: " + CaminhoArquivoPDF
    Else
      lblStatus = "Por gentileza informe um caminho válido."
    End If
End Sub
'Função que configura o componente DataSet
Private Sub ConfiguraNFCeDataSet()
    NFCeDataSet.VersaoEsquema = "pl_009"
    NFCeDataSet.DicionarioXML = NFCe.DiretorioTemplates + "\Conversor\NFCeDataSets.xml"
End Sub

'Função para escrever no arquivo .ini
Function write_ini(ByVal section$, ByVal chv$, ByVal variavel$) As String
    Dim arquivo As String
    Dim Retorno As String
    arquivo = ArqIni
    Retorno = WritePrivateProfileString(ByVal section$, ByVal chv$, ByVal variavel$, ByVal arquivo)
End Function
'Função que atualiza o Status
Private Sub AtualizaStatusNaTela(valor As String)
    lblStatus.Caption = valor
    lblStatus.Visible = True
End Sub

'Verifica se o arquivo existe no caminho passado
Private Function FileExists(Fname As String) As Boolean
    
    If Fname = "" Or Right(Fname, 1) = "\" Then
      FileExists = False: Exit Function
    End If
    
    FileExists = (Dir(Fname) <> "")
    
End Function

'Retorna caminho do XML do tomador
Private Function ObterCaminhoXmlTomador(Chave As String)

    Dim XmlTomador As String
    
    XmlTomador = NFCe.DiretorioXmlDestinatario + Trim(Chave) + "-nfce.xml"
    If FileExists(XmlTomador) Then
        ObterCaminhoXmlTomador = XmlTomador
    Else
        ObterCaminhoXmlTomador = ""
    End If

End Function
'Função auxiliar para abrir arquivo
Function FileOpen(filtro) As String
    CommonDialog.Filter = filtro
    CommonDialog.InitDir = App.Path
    CommonDialog.ShowOpen
    If CommonDialog.FileName = "" Then
         'Teste
    Else
        FileOpen = CommonDialog.FileName ' The FileName property contains the selected file name.
    End If
End Function
        'Preenche os Dados do NFCe do DataSet
        Private Sub DadosdoNFCe()
            NFCeDataSet.SetCampo "Id_A03=0"
            NFCeDataSet.SetCampo "versao_A02=4.00"
            NFCeDataSet.SetCampo "cUF_B02=41"
            NFCeDataSet.SetCampo "cNF_B03=5"
            NFCeDataSet.SetCampo "natOp_B04=VENDA MERC.ADQ.REC.TERC"
            NFCeDataSet.SetCampo "mod_B06=65"
            NFCeDataSet.SetCampo "serie_B07=579"
            NFCeDataSet.SetCampo "nNF_B08=5792"
            NFCeDataSet.SetCampo "dhEmi_B09=" + Format(Now, "YYYY-MM-DDTHH:MM:SS") + GetCurrentTimeBias
            NFCeDataSet.SetCampo "tpNF_B11=1"
            NFCeDataSet.SetCampo "idDest_B11a=1"
            NFCeDataSet.SetCampo "cMunFG_B12=4115200"
            NFCeDataSet.SetCampo "tpImp_B21=4"
            NFCeDataSet.SetCampo "tpEmis_B22=1"
            NFCeDataSet.SetCampo "cDV_B23=0"
            NFCeDataSet.SetCampo "tpAmb_B24=2"
            NFCeDataSet.SetCampo "finNFe_B25=1"
            NFCeDataSet.SetCampo "indFinal_B25a=1"
            NFCeDataSet.SetCampo "indPres_B25b=1"
            NFCeDataSet.SetCampo "procEmi_B26=0"
            NFCeDataSet.SetCampo "verProc_B27=000"
        End Sub

        'Preenche os Dados do Emitente do DataSet
        Private Sub DadosEmitente()
            NFCeDataSet.SetCampo "CNPJ_C02=08187168000160"
            NFCeDataSet.SetCampo "xNome_C03=NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL"
            NFCeDataSet.SetCampo "xFant_C04=Felici Pizzaria"
            NFCeDataSet.SetCampo "xLgr_C06=Avenida professor joao thomes"
            NFCeDataSet.SetCampo "nro_C07=131"
            NFCeDataSet.SetCampo "xCpl_C08=Felici Pizzaria"
            NFCeDataSet.SetCampo "xBairro_C09=ardim dos Ipes"
            NFCeDataSet.SetCampo "cMun_C10=4115200"
            NFCeDataSet.SetCampo "xMun_C11=Tres Lagoas"
            NFCeDataSet.SetCampo "UF_C12=PR"
            NFCeDataSet.SetCampo "CEP_C13=70611170"
            NFCeDataSet.SetCampo "cPais_C14=1058"
            NFCeDataSet.SetCampo "xPais_C15=BRASIL"
            NFCeDataSet.SetCampo "indIEDest_E16a=9"
            NFCeDataSet.SetCampo "IE_C17=9044016688"
            NFCeDataSet.SetCampo "IEST_C18="
            NFCeDataSet.SetCampo "CRT_C21=1"
        End Sub

        'Preenche os Dados do Remetente do DataSet
        Private Sub DadosItem()
            NFCeDataSet.IncluirItem
            NFCeDataSet.SetCampo "nItem_H02=1"
            NFCeDataSet.SetCampo "cEAN_I03=SEM GTIN"
            NFCeDataSet.SetCampo "cProd_I02=19"
            NFCeDataSet.SetCampo "xProd_I04=NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL"
            NFCeDataSet.SetCampo "NCM_I05=22011000"
            NFCeDataSet.SetCampo "CEST_I05c=0300100"
            NFCeDataSet.SetCampo "CFOP_I08=5405"
            NFCeDataSet.SetCampo "uCom_I09=UN"
            NFCeDataSet.SetCampo "qCom_I10=1.0000"
            NFCeDataSet.SetCampo "vUnCom_I10a=2.5000000000"
            NFCeDataSet.SetCampo "vProd_I11=2.50"
            NFCeDataSet.SetCampo "cEANTrib_I12=SEM GTIN"
            NFCeDataSet.SetCampo "uTrib_I13=UN"
            NFCeDataSet.SetCampo "qTrib_I14=1.0000"
            NFCeDataSet.SetCampo "vUnTrib_I14a=2.5000"
            NFCeDataSet.SetCampo "indTot_I17b=1"
            NFCeDataSet.SetCampo "vTotTrib_M02=0.75"
            NFCeDataSet.SetCampo "orig_N11=0"
            NFCeDataSet.SetCampo "CSOSN_N12a=500"
            NFCeDataSet.SetCampo "CST_Q06=07"
            NFCeDataSet.SetCampo "CST_S06=07"
            NFCeDataSet.SetCampo "infAdProd_V01=Teste | Teste"
            NFCeDataSet.SalvarItem
        End Sub

        'Preenche os Dados do Destinatario do DataSet
        Private Sub DadosPagamento()
            NFCeDataSet.IncluirParte "YA"
            NFCeDataSet.SetCampo "tPag_YA02=01"
            NFCeDataSet.SetCampo "vPag_YA03=2.50"
            NFCeDataSet.SalvarParte "YA"
        End Sub

        'Preenche os Dados da Pretacao de Servico do DataSet
        Private Sub Totalizadores()
            NFCeDataSet.SetCampo "vBC_W03=0.00"
            NFCeDataSet.SetCampo "vICMS_W04=0.00"
            NFCeDataSet.SetCampo "vICMSDeson_W04a=0.00"
            NFCeDataSet.SetCampo "vFCPUFDest_W04c=0.00"
            NFCeDataSet.SetCampo "vICMSUFDest_W04e=0.00"
            NFCeDataSet.SetCampo "vICMSUFRemet_W04g=0.00"
            NFCeDataSet.SetCampo "vFCP_W04h=0.00"
            NFCeDataSet.SetCampo "vBCST_W05=0.00"
            NFCeDataSet.SetCampo "vST_W06=0.00"
            NFCeDataSet.SetCampo "vFCPST_W06a=0.00"
            NFCeDataSet.SetCampo "vFCPSTRet_W06b=0.00"
            NFCeDataSet.SetCampo "vProd_W07=2.50"
            NFCeDataSet.SetCampo "vFrete_W08=0.00"
            NFCeDataSet.SetCampo "vSeg_W09=0.00"
            NFCeDataSet.SetCampo "vDesc_W10=0.00"
            NFCeDataSet.SetCampo "vII_W11=0.00"
            NFCeDataSet.SetCampo "vIPI_W12=0.00"
            NFCeDataSet.SetCampo "vIPIDevol_W12a=0.00"
            NFCeDataSet.SetCampo "vPIS_W13=0.00"
            NFCeDataSet.SetCampo "vCOFINS_W14=0.00"
            NFCeDataSet.SetCampo "vOutro_W15=0.00"
            NFCeDataSet.SetCampo "vNF_W16=2.50"
            NFCeDataSet.SetCampo "vTotTrib_W16a=0.75"
            NFCeDataSet.SetCampo "modFrete_X02=9"
        End Sub

        'Preenche os Dados dos impostos do DataSet
        Private Sub DadosResponsavelTecnico()
            NFCeDataSet.SetCampo "CNPJ_ZD02=12403490000156"
            NFCeDataSet.SetCampo "xContato_ZD04=Ana Claudia"
            NFCeDataSet.SetCampo "email_ZD05=claudia@programaconsumer.com.b"
            NFCeDataSet.SetCampo "fone_ZD06=1126265184"
        End Sub
