VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form frmEventos 
   Caption         =   "Eventos NFCe"
   ClientHeight    =   6225
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12750
   LinkTopic       =   "Form2"
   ScaleHeight     =   6225
   ScaleWidth      =   12750
   StartUpPosition =   1  'CenterOwner
   Begin TabDlg.SSTab SSTab1 
      Height          =   5895
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   12495
      _ExtentX        =   22040
      _ExtentY        =   10398
      _Version        =   393216
      Tabs            =   4
      Tab             =   3
      TabsPerRow      =   8
      TabHeight       =   741
      TabCaption(0)   =   "Manifestação"
      TabPicture(0)   =   "frmEventos.frx":0000
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "mmManifestacao"
      Tab(0).Control(1)=   "btnEnviarManifestacao"
      Tab(0).Control(2)=   "btnDataEvento"
      Tab(0).Control(3)=   "edtDataEvento"
      Tab(0).Control(4)=   "edtJustificativaManifestacao"
      Tab(0).Control(5)=   "cbTipoEvento"
      Tab(0).Control(6)=   "cbFusoManifestacao"
      Tab(0).Control(7)=   "edtCNPJManifestacao"
      Tab(0).Control(8)=   "edtChaveManifestacao"
      Tab(0).Control(9)=   "lblXmlManisfestacao"
      Tab(0).Control(10)=   "lblDataEvento"
      Tab(0).Control(11)=   "lblJustificativaManifestacao"
      Tab(0).Control(12)=   "lblTipoEvento"
      Tab(0).Control(13)=   "lblFusoManifestacao"
      Tab(0).Control(14)=   "lblCNPJDestinatario"
      Tab(0).Control(15)=   "lblChaveManifestacao"
      Tab(0).Control(16)=   "lblManifestacao"
      Tab(0).ControlCount=   17
      TabCaption(1)   =   "Consulta"
      TabPicture(1)   =   "frmEventos.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "mmConsultaDestinadas"
      Tab(1).Control(1)=   "btnConsultaDestinadas"
      Tab(1).Control(2)=   "edtUltNSU"
      Tab(1).Control(3)=   "cbEmiNFe"
      Tab(1).Control(4)=   "cbIndNFe"
      Tab(1).Control(5)=   "lblXmlConsultaDest"
      Tab(1).Control(6)=   "lblUltNSU"
      Tab(1).Control(7)=   "lblEmiNFe"
      Tab(1).Control(8)=   "lblIndNFe"
      Tab(1).Control(9)=   "lblConsultaDest"
      Tab(1).ControlCount=   10
      TabCaption(2)   =   "Download"
      TabPicture(2)   =   "frmEventos.frx":0038
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "mmDownloadNFe"
      Tab(2).Control(1)=   "edtChaveDownload"
      Tab(2).Control(2)=   "lblXmlDownload"
      Tab(2).Control(3)=   "lblChaveDownload"
      Tab(2).Control(4)=   "lblDownloadNFe"
      Tab(2).ControlCount=   5
      TabCaption(3)   =   "Cancelamento Evento"
      TabPicture(3)   =   "frmEventos.frx":0054
      Tab(3).ControlEnabled=   -1  'True
      Tab(3).Control(0)=   "lblCancelarEvento"
      Tab(3).Control(0).Enabled=   0   'False
      Tab(3).Control(1)=   "lblChaveCancelarEvento"
      Tab(3).Control(1).Enabled=   0   'False
      Tab(3).Control(2)=   "lblProtocoloAutCancEvento"
      Tab(3).Control(2).Enabled=   0   'False
      Tab(3).Control(3)=   "lblFusoCancEvento"
      Tab(3).Control(3).Enabled=   0   'False
      Tab(3).Control(4)=   "lblJustificativaCancEvento"
      Tab(3).Control(4).Enabled=   0   'False
      Tab(3).Control(5)=   "lblDataCancEvento"
      Tab(3).Control(5).Enabled=   0   'False
      Tab(3).Control(6)=   "lblXmlCancEvento"
      Tab(3).Control(6).Enabled=   0   'False
      Tab(3).Control(7)=   "edtChaveCancelamentoNFe"
      Tab(3).Control(7).Enabled=   0   'False
      Tab(3).Control(8)=   "edtProtocoloCancNFe"
      Tab(3).Control(8).Enabled=   0   'False
      Tab(3).Control(9)=   "cbFusoCancelamento"
      Tab(3).Control(9).Enabled=   0   'False
      Tab(3).Control(10)=   "edtJustificativaCancEvento"
      Tab(3).Control(10).Enabled=   0   'False
      Tab(3).Control(11)=   "edtDataCancEvento"
      Tab(3).Control(11).Enabled=   0   'False
      Tab(3).Control(12)=   "btnDataCancEvento"
      Tab(3).Control(12).Enabled=   0   'False
      Tab(3).Control(13)=   "btnCancelarNFeEvento"
      Tab(3).Control(13).Enabled=   0   'False
      Tab(3).Control(14)=   "mmCancelamentoNFe"
      Tab(3).Control(14).Enabled=   0   'False
      Tab(3).ControlCount=   15
      Begin VB.TextBox mmCancelamentoNFe 
         Height          =   2895
         Left            =   240
         MultiLine       =   -1  'True
         TabIndex        =   24
         Top             =   2880
         Width           =   12135
      End
      Begin VB.TextBox mmDownloadNFe 
         Height          =   3495
         Left            =   -74880
         MultiLine       =   -1  'True
         TabIndex        =   23
         Top             =   2280
         Width           =   12255
      End
      Begin VB.TextBox mmConsultaDestinadas 
         Height          =   3255
         Left            =   -74880
         MultiLine       =   -1  'True
         TabIndex        =   22
         Top             =   2520
         Width           =   12255
      End
      Begin VB.TextBox mmManifestacao 
         Height          =   2775
         Left            =   -74880
         MultiLine       =   -1  'True
         TabIndex        =   21
         Top             =   3000
         Width           =   12255
      End
      Begin VB.CommandButton btnCancelarNFeEvento 
         Caption         =   "Cancelar NFCe"
         Height          =   375
         Left            =   9960
         TabIndex        =   20
         Top             =   2040
         Width           =   1695
      End
      Begin VB.CommandButton btnDataCancEvento 
         Caption         =   "Á"
         BeginProperty Font 
            Name            =   "Wingdings"
            Size            =   11.25
            Charset         =   2
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   8880
         TabIndex        =   19
         Top             =   2040
         Width           =   375
      End
      Begin VB.TextBox edtDataCancEvento 
         Height          =   315
         Left            =   6600
         TabIndex        =   18
         Top             =   2040
         Width           =   2175
      End
      Begin VB.TextBox edtJustificativaCancEvento 
         Height          =   315
         Left            =   240
         TabIndex        =   17
         Top             =   2040
         Width           =   6015
      End
      Begin VB.ComboBox cbFusoCancelamento 
         Height          =   315
         ItemData        =   "frmEventos.frx":0070
         Left            =   10080
         List            =   "frmEventos.frx":007D
         Style           =   2  'Dropdown List
         TabIndex        =   16
         Top             =   1320
         Width           =   2295
      End
      Begin VB.TextBox edtProtocoloCancNFe 
         Height          =   315
         Left            =   6600
         TabIndex        =   15
         Top             =   1320
         Width           =   3135
      End
      Begin VB.TextBox edtChaveCancelamentoNFe 
         Height          =   315
         Left            =   240
         MaxLength       =   44
         TabIndex        =   14
         Top             =   1320
         Width           =   6015
      End
      Begin VB.TextBox edtChaveDownload 
         Height          =   315
         Left            =   -74760
         TabIndex        =   13
         Top             =   1320
         Width           =   7575
      End
      Begin VB.CommandButton btnConsultaDestinadas 
         Caption         =   "Consulta NFe Destinadas"
         Height          =   450
         Left            =   -65280
         TabIndex        =   12
         Top             =   1920
         Width           =   1935
      End
      Begin VB.TextBox edtUltNSU 
         Height          =   315
         Left            =   -65760
         TabIndex        =   11
         Text            =   "0"
         Top             =   1320
         Width           =   2895
      End
      Begin VB.ComboBox cbEmiNFe 
         Height          =   315
         ItemData        =   "frmEventos.frx":0099
         Left            =   -70200
         List            =   "frmEventos.frx":00A3
         Style           =   2  'Dropdown List
         TabIndex        =   10
         Top             =   1320
         Width           =   4095
      End
      Begin VB.ComboBox cbIndNFe 
         Height          =   315
         ItemData        =   "frmEventos.frx":00FD
         Left            =   -74760
         List            =   "frmEventos.frx":010A
         Style           =   2  'Dropdown List
         TabIndex        =   9
         Top             =   1320
         Width           =   4215
      End
      Begin VB.CommandButton btnEnviarManifestacao 
         Caption         =   "Enviar Manifestação"
         Height          =   375
         Left            =   -64920
         TabIndex        =   8
         Top             =   2520
         Width           =   1695
      End
      Begin VB.CommandButton btnDataEvento 
         Caption         =   "Á"
         BeginProperty Font 
            Name            =   "Wingdings"
            Size            =   11.25
            Charset         =   2
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   -63840
         TabIndex        =   7
         Top             =   1920
         Width           =   495
      End
      Begin VB.TextBox edtDataEvento 
         Height          =   315
         Left            =   -66240
         TabIndex        =   6
         Top             =   1920
         Width           =   2175
      End
      Begin VB.TextBox edtJustificativaManifestacao 
         Height          =   315
         Left            =   -71280
         TabIndex        =   5
         Top             =   1920
         Width           =   4815
      End
      Begin VB.ComboBox cbTipoEvento 
         Height          =   315
         ItemData        =   "frmEventos.frx":017F
         Left            =   -74760
         List            =   "frmEventos.frx":018F
         Style           =   2  'Dropdown List
         TabIndex        =   4
         Top             =   1920
         Width           =   3375
      End
      Begin VB.ComboBox cbFusoManifestacao 
         Height          =   315
         ItemData        =   "frmEventos.frx":0206
         Left            =   -64680
         List            =   "frmEventos.frx":0213
         Style           =   2  'Dropdown List
         TabIndex        =   3
         Top             =   1200
         Width           =   1935
      End
      Begin VB.TextBox edtCNPJManifestacao 
         Height          =   315
         Left            =   -68520
         TabIndex        =   2
         Top             =   1200
         Width           =   3495
      End
      Begin VB.TextBox edtChaveManifestacao 
         Height          =   315
         Left            =   -74760
         MaxLength       =   44
         TabIndex        =   1
         Top             =   1200
         Width           =   5895
      End
      Begin VB.Label lblXmlCancEvento 
         Caption         =   "XML"
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
         Left            =   240
         TabIndex        =   47
         Top             =   2640
         Width           =   1575
      End
      Begin VB.Label lblDataCancEvento 
         Caption         =   "Data e Hora Evento"
         Height          =   255
         Left            =   6600
         TabIndex        =   46
         Top             =   1800
         Width           =   1695
      End
      Begin VB.Label lblJustificativaCancEvento 
         Caption         =   "Justificativa Cancelamento"
         Height          =   255
         Left            =   240
         TabIndex        =   45
         Top             =   1800
         Width           =   2415
      End
      Begin VB.Label lblFusoCancEvento 
         Caption         =   "Fuso Horário"
         Height          =   255
         Left            =   10080
         TabIndex        =   44
         Top             =   1080
         Width           =   1215
      End
      Begin VB.Label lblProtocoloAutCancEvento 
         Caption         =   "Protocolo de Autorização"
         Height          =   255
         Left            =   6600
         TabIndex        =   43
         Top             =   1080
         Width           =   2295
      End
      Begin VB.Label lblChaveCancelarEvento 
         Caption         =   "Chave da Nota"
         Height          =   255
         Left            =   240
         TabIndex        =   42
         Top             =   1080
         Width           =   1215
      End
      Begin VB.Label lblCancelarEvento 
         Caption         =   "Cancelar NFCe por Evento"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   41
         Top             =   600
         Width           =   2895
      End
      Begin VB.Label lblXmlDownload 
         Caption         =   "XML"
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
         Left            =   -74880
         TabIndex        =   40
         Top             =   2040
         Width           =   1455
      End
      Begin VB.Label lblChaveDownload 
         Caption         =   "Chave da Nota"
         Height          =   255
         Left            =   -74760
         TabIndex        =   39
         Top             =   1080
         Width           =   1455
      End
      Begin VB.Label lblDownloadNFe 
         Caption         =   "Download de NFe"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -74760
         TabIndex        =   38
         Top             =   600
         Width           =   3015
      End
      Begin VB.Label lblXmlConsultaDest 
         Caption         =   "XML"
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
         Left            =   -74880
         TabIndex        =   37
         Top             =   2280
         Width           =   1455
      End
      Begin VB.Label lblXmlManisfestacao 
         Caption         =   "XML"
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
         Left            =   -74880
         TabIndex        =   36
         Top             =   2760
         Width           =   1215
      End
      Begin VB.Label lblUltNSU 
         Caption         =   "Último NSU"
         Height          =   255
         Left            =   -65760
         TabIndex        =   35
         Top             =   1080
         Width           =   1575
      End
      Begin VB.Label lblEmiNFe 
         Caption         =   "Indicador do Emissor NFe"
         Height          =   255
         Left            =   -70200
         TabIndex        =   34
         Top             =   1080
         Width           =   1935
      End
      Begin VB.Label lblIndNFe 
         Caption         =   "Indicador de NFe"
         Height          =   255
         Left            =   -74760
         TabIndex        =   33
         Top             =   1080
         Width           =   1935
      End
      Begin VB.Label lblConsultaDest 
         Caption         =   "Consulta NFe Destinadas"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -74760
         TabIndex        =   32
         Top             =   600
         Width           =   3375
      End
      Begin VB.Label lblDataEvento 
         Caption         =   "Data e Hora Evento"
         Height          =   255
         Left            =   -66240
         TabIndex        =   31
         Top             =   1680
         Width           =   1695
      End
      Begin VB.Label lblJustificativaManifestacao 
         Caption         =   "Justificativa Manifestação"
         Height          =   255
         Left            =   -71280
         TabIndex        =   30
         Top             =   1680
         Width           =   2895
      End
      Begin VB.Label lblTipoEvento 
         Caption         =   "Tipo Evento"
         Height          =   255
         Left            =   -74760
         TabIndex        =   29
         Top             =   1680
         Width           =   1695
      End
      Begin VB.Label lblFusoManifestacao 
         Caption         =   "Fuso Horário"
         Height          =   255
         Left            =   -64680
         TabIndex        =   28
         Top             =   960
         Width           =   1455
      End
      Begin VB.Label lblCNPJDestinatario 
         Caption         =   "CNPJ Destinatário"
         Height          =   255
         Left            =   -68520
         TabIndex        =   27
         Top             =   960
         Width           =   1575
      End
      Begin VB.Label lblChaveManifestacao 
         Caption         =   "Chave da Nota"
         Height          =   255
         Left            =   -74760
         TabIndex        =   26
         Top             =   960
         Width           =   1815
      End
      Begin VB.Label lblManifestacao 
         Caption         =   "Manifestação Destinatário"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -74760
         TabIndex        =   25
         Top             =   600
         Width           =   3015
      End
   End
End
Attribute VB_Name = "frmEventos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub btnCancelarNFeEvento_Click()
  If ((edtChaveCancelamentoNFe.Text = "") Or (edtProtocoloCancNFe.Text = "") Or (cbFusoCancelamento.Text = "") Or (edtJustificativaCancEvento.Text = "") Or (edtDataCancEvento.Text = "")) Then
    MsgBox ("Os Campos Chave da nota, Protocolo Autorização, Fuso horário, Justificativa Cancelamento e Data Cancelamento.")
  Else
    mmCancelamentoNFe.Text = frmPrincipal.spdNFCe.CancelarNF(edtChaveCancelamentoNFe.Text, edtProtocoloCancNFe.Text, edtJustificativaCancEvento.Text, edtDataCancEvento.Text, 1, cbFusoCancelamento.Text, "0001")
  End If
End Sub

Private Sub btnConsultaDestinadas_Click()
  'Subistituido pelo DFe
  
  'If ((cbIndNFe.Text = "") Or (cbEmiNFe.Text = "")) Then
    'MsgBox ("Os Campos Indicador de NFe e Indicador do Emissor são Obrigatórios")
  'Else
    'frmPrincipal.spdNFe.LoadConfig (frmPrincipal.ArqIni)
    'mmConsultaDestinadas.Text = frmPrincipal.spdNFe.ConsultarNFDestinadas(Mid(cbIndNFe.Text, 1, 1), Mid(cbEmiNFe.Text, 1, 1), edtUltNSU.Text)
  'End If
End Sub

Private Sub btnDataCancEvento_Click()
  edtDataCancEvento.Text = Format(Now(), "yyyy-mm-ddThh:mm:ss")
End Sub

Private Sub btnDataEvento_Click()
  edtDataEvento.Text = Format(Now(), "yyyy-mm-ddThh:mm:ss")
End Sub

Private Sub btnDownloadNFe_Click()
  If (edtChaveDownload.Text = "") Then
    MsgBox ("O campo Chave da Nota é Obrigatório.")
  Else
    frmPrincipal.spdNFe.LoadConfig (frmPrincipal.ArqIni)
    mmDownloadNFe.Text = frmPrincipal.spdNFe.DownloadNFe(edtChaveDownload.Text, "91")
  End If
End Sub

Private Sub btnEnviarManifestacao_Click()
  If ((cbTipoEvento.Text = "") Or (edtChaveManifestacao.Text = "") Or (edtCNPJManifestacao.Text = "") Or (edtJustificativaManifestacao.Text = "") Or (edtDataEvento.Text = "") Or (cbFusoManifestacao.Text = "")) Then
    MsgBox ("Os Campos Tipo Evento, Chave da Nota, CNPJ Destinatário, Justificativa, Data Manifestação e Fuso horário são obrigatórios.")
  Else
    frmPrincipal.spdNFe.LoadConfig (frmPrincipal.ArqIni)
    mmManifestacao.Text = frmPrincipal.spdNFe.EnviarManifestacaoDestinatario(Mid(cbTipoEvento.Text, 1, 1), edtChaveManifestacao.Text, edtCNPJManifestacao.Text, edtJustificativaManifestacao.Text, edtDataEvento.Text, 1, cbFusoManifestacao.Text)
  End If
End Sub

Private Sub Form_Load()
    SSTab1.TabVisible(0) = False
    SSTab1.TabVisible(1) = False
    SSTab1.TabVisible(2) = False
End Sub

