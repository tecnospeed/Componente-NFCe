VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmPrincipal 
   ClientHeight    =   9105
   ClientLeft      =   1440
   ClientTop       =   1815
   ClientWidth     =   14655
   LinkTopic       =   "Form1"
   ScaleHeight     =   9105
   ScaleWidth      =   14655
   Begin MSComDlg.CommonDialog cmdGerarTx2 
      Left            =   8520
      Top             =   6360
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.TextBox mmXml 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   8775
      Left            =   7080
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   12
      Top             =   240
      Width           =   7455
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   9015
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   15901
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   5
      TabHeight       =   476
      TabCaption(0)   =   "NFCe"
      TabPicture(0)   =   "ExemploNFCe.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "cmdConfigIni(1)"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "cmdStatus(2)"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "cmdAssinar(5)"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "cmdGerarXMLDest(6)"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "cmdEnviarNF(9)"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "cmdConsultarRecibo(10)"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "cmdConsultarNF(11)"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "cmdInutilizar(13)"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).Control(9)=   "Frame2"
      Tab(0).Control(9).Enabled=   0   'False
      Tab(0).Control(10)=   "cbbCertificado"
      Tab(0).Control(10).Enabled=   0   'False
      Tab(0).Control(11)=   "cmdLoadConfig(0)"
      Tab(0).Control(11).Enabled=   0   'False
      Tab(0).Control(12)=   "cmdEnviarSincrono(0)"
      Tab(0).Control(12).Enabled=   0   'False
      Tab(0).Control(13)=   "cmdGerarXMLDestCanc(0)"
      Tab(0).Control(13).Enabled=   0   'False
      Tab(0).Control(14)=   "Frame5"
      Tab(0).Control(14).Enabled=   0   'False
      Tab(0).Control(15)=   "cmdDataSet(3)"
      Tab(0).Control(15).Enabled=   0   'False
      Tab(0).Control(16)=   "cmdTx2(4)"
      Tab(0).Control(16).Enabled=   0   'False
      Tab(0).Control(17)=   "Frame6"
      Tab(0).Control(17).Enabled=   0   'False
      Tab(0).Control(18)=   "cmdCancelar"
      Tab(0).Control(18).Enabled=   0   'False
      Tab(0).ControlCount=   19
      Begin VB.CommandButton cmdCancelar 
         Caption         =   "9. Cancelar NFCe"
         Height          =   375
         Left            =   2280
         TabIndex        =   38
         Top             =   6240
         Width           =   1935
      End
      Begin VB.Frame Frame6 
         Caption         =   "NFCe 4.00"
         Height          =   1335
         Left            =   120
         TabIndex        =   35
         Top             =   5880
         Width           =   2055
         Begin VB.CommandButton cmdTx2400 
            Caption         =   "2.1 TX2 4.00"
            Height          =   375
            Left            =   240
            TabIndex        =   37
            Top             =   840
            Width           =   1455
         End
         Begin VB.CommandButton cmdDataset400 
            Caption         =   "2. Dataset 4.00 "
            Height          =   375
            Left            =   240
            TabIndex        =   36
            Top             =   360
            Width           =   1455
         End
      End
      Begin VB.CommandButton cmdTx2 
         Caption         =   "2.1 Gerar Via Tx2"
         Height          =   435
         Index           =   4
         Left            =   360
         TabIndex        =   16
         Top             =   5160
         Width           =   1515
      End
      Begin VB.CommandButton cmdDataSet 
         Caption         =   "2. Gerar via Dataset"
         Height          =   435
         Index           =   3
         Left            =   360
         TabIndex        =   15
         Top             =   4560
         Width           =   1515
      End
      Begin VB.Frame Frame5 
         Caption         =   "NFCe 3.10"
         Height          =   1455
         Left            =   120
         TabIndex        =   34
         Top             =   4320
         Width           =   2055
      End
      Begin VB.CommandButton cmdGerarXMLDestCanc 
         Caption         =   "Gerar XML Cancelamento Destinatário"
         Height          =   555
         Index           =   0
         Left            =   120
         TabIndex        =   33
         Top             =   8160
         Width           =   4155
      End
      Begin VB.CommandButton cmdEnviarSincrono 
         Caption         =   "4.1 Enviar NFCe Sincrono"
         Height          =   495
         Index           =   0
         Left            =   2280
         TabIndex        =   32
         Top             =   4200
         Width           =   1995
      End
      Begin VB.CommandButton cmdLoadConfig 
         Caption         =   "Carregar Configurações"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   31
         Top             =   2880
         Width           =   1995
      End
      Begin VB.ComboBox cbbCertificado 
         Height          =   315
         Left            =   120
         TabIndex        =   30
         Top             =   360
         Width           =   6735
      End
      Begin VB.Frame Frame2 
         Caption         =   "Impressão"
         Height          =   3375
         Left            =   4440
         TabIndex        =   23
         Top             =   3120
         Width           =   2415
         Begin VB.CommandButton cmdEnviarEmail 
            Caption         =   "13. Enviar Email"
            Height          =   435
            Index           =   19
            Left            =   240
            TabIndex        =   29
            Top             =   2760
            Width           =   1995
         End
         Begin VB.CommandButton cmDVisualizar 
            Caption         =   "12. Visualizar"
            Height          =   435
            Index           =   18
            Left            =   240
            TabIndex        =   28
            Top             =   2280
            Width           =   1995
         End
         Begin VB.CommandButton cmdExportarPDF 
            Caption         =   "11. Exportar PDF"
            Height          =   435
            Index           =   17
            Left            =   240
            TabIndex        =   27
            Top             =   1800
            Width           =   1995
         End
         Begin VB.CommandButton cmdImprimir 
            Caption         =   "10. Imprimir"
            Height          =   435
            Index           =   16
            Left            =   240
            TabIndex        =   26
            Top             =   1320
            Width           =   1995
         End
         Begin VB.CommandButton cmdEditarDanfe 
            Caption         =   "9. Editar DANFCE"
            Height          =   435
            Index           =   15
            Left            =   240
            TabIndex        =   25
            Top             =   840
            Width           =   1995
         End
         Begin VB.CommandButton cmdPreverDanfe 
            Caption         =   "Prever DANFCE"
            Height          =   435
            Index           =   14
            Left            =   240
            TabIndex        =   24
            Top             =   360
            Width           =   1995
         End
      End
      Begin VB.CommandButton cmdInutilizar 
         Caption         =   "8. Inutilizar NFCe"
         Height          =   435
         Index           =   13
         Left            =   2280
         TabIndex        =   22
         Top             =   5760
         Width           =   1995
      End
      Begin VB.CommandButton cmdConsultarNF 
         Caption         =   "6. Consultar NFCe"
         Height          =   435
         Index           =   11
         Left            =   2280
         TabIndex        =   21
         Top             =   5280
         Width           =   1995
      End
      Begin VB.CommandButton cmdConsultarRecibo 
         Caption         =   "5. Consultar Recibo"
         Height          =   435
         Index           =   10
         Left            =   2280
         TabIndex        =   20
         Top             =   4800
         Width           =   1995
      End
      Begin VB.CommandButton cmdEnviarNF 
         Caption         =   "4. Enviar NFCe"
         Height          =   435
         Index           =   9
         Left            =   2280
         TabIndex        =   19
         Top             =   3720
         Width           =   1995
      End
      Begin VB.CommandButton cmdGerarXMLDest 
         Caption         =   "Gerar XML Destinatário"
         Height          =   555
         Index           =   6
         Left            =   120
         TabIndex        =   18
         Top             =   7440
         Width           =   4155
      End
      Begin VB.CommandButton cmdAssinar 
         Caption         =   "3. Assinar XML"
         Height          =   435
         Index           =   5
         Left            =   2280
         TabIndex        =   17
         Top             =   3240
         Width           =   1995
      End
      Begin VB.CommandButton cmdStatus 
         Caption         =   "1. Verificar Status"
         Height          =   435
         Index           =   2
         Left            =   120
         TabIndex        =   14
         Top             =   3720
         Width           =   1995
      End
      Begin VB.CommandButton cmdConfigIni 
         Caption         =   "Abrir Ini"
         Height          =   435
         Index           =   1
         Left            =   120
         TabIndex        =   13
         Top             =   3240
         Width           =   1995
      End
      Begin VB.Frame Frame1 
         Caption         =   "Configurações"
         Height          =   2055
         Left            =   120
         TabIndex        =   1
         Top             =   720
         Width           =   6735
         Begin VB.TextBox edtProtocolo 
            Height          =   285
            Left            =   120
            TabIndex        =   6
            Top             =   1680
            Width           =   6495
         End
         Begin VB.TextBox edtRecibo 
            Height          =   285
            Left            =   120
            TabIndex        =   5
            Top             =   1080
            Width           =   6495
         End
         Begin VB.TextBox edtIdNota 
            Height          =   285
            Left            =   2520
            TabIndex        =   4
            Top             =   480
            Width           =   4095
         End
         Begin VB.TextBox edtCNPJ 
            Height          =   285
            Left            =   720
            TabIndex        =   3
            Top             =   480
            Width           =   1695
         End
         Begin VB.TextBox edtUF 
            Height          =   285
            Left            =   120
            TabIndex        =   2
            Top             =   480
            Width           =   495
         End
         Begin VB.Label Label5 
            Caption         =   "Número do Protocolo"
            Height          =   255
            Left            =   120
            TabIndex        =   11
            Top             =   1440
            Width           =   4335
         End
         Begin VB.Label Label4 
            Caption         =   "Numero do Recibo"
            Height          =   255
            Left            =   120
            TabIndex        =   10
            Top             =   840
            Width           =   3735
         End
         Begin VB.Label Label3 
            Caption         =   "ID Nota"
            Height          =   255
            Left            =   2520
            TabIndex        =   9
            Top             =   240
            Width           =   2535
         End
         Begin VB.Label Label2 
            Caption         =   "CNPJ"
            Height          =   255
            Left            =   720
            TabIndex        =   8
            Top             =   240
            Width           =   1575
         End
         Begin VB.Label Label1 
            Caption         =   "UF"
            Height          =   255
            Left            =   120
            TabIndex        =   7
            Top             =   240
            Width           =   495
         End
      End
   End
End
Attribute VB_Name = "frmPrincipal"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public spdNFCe As spdNFCeX
Dim spdNFCeDataSet As spdNFCeDataSetX
Public ArqIni As String

Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal padrao As String, ByVal variavel As String, ByVal tam As Long, ByVal arquivo As String) As Long

Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal valor As Any, ByVal arquivo As String) As Long

Private Function ReadUTF8File(sFile) As String
    Const ForReading = 1
    Dim sPrefix

    With CreateObject("Scripting.FileSystemObject")
        sPrefix = .OpenTextFile(sFile, ForReading, False, False).Read(3)
    End With
    If Left(sPrefix, 3) <> Chr(&HEF) & Chr(&HBB) & Chr(&HBF) Then
        With CreateObject("Scripting.FileSystemObject")
            pvReadFile = .OpenTextFile(sFile, ForReading, False, Left(sPrefix, 2) = Chr(&HFF) & Chr(&HFE)).ReadAll()
            ReadUTF8File = pvReadFile
        End With
    Else
        With CreateObject("ADODB.Stream")
            .Open
            If Left(sPrefix, 2) = Chr(&HFF) & Chr(&HFE) Then
                .Charset = "Unicode"
            ElseIf Left(sPrefix, 3) = Chr(&HEF) & Chr(&HBB) & Chr(&HBF) Then
                .Charset = "UTF-8"
            Else
                .Charset = "_autodetect"
            End If
            .LoadFromFile sFile
            pvReadFile = .ReadText
            ReadUTF8File = pvReadFile
        End With
    End If
End Function

Function get_ini(seção$, Chave$) As String
    arquiv$ = ArqIni
    Returns$ = Space$(128)
    x% = GetPrivateProfileString(ByVal seção$, ByVal Chave$, _
    "", Returns$, Len(Returns$), ByVal arquiv$)
    get_ini = Left$(Returns$, x%)
End Function

Function write_ini(ByVal section$, ByVal chv$, ByVal variavel$) As String
    arquiv$ = ArqIni
    iRet = WritePrivateProfileString(ByVal section$, ByVal chv$, ByVal variavel$, ByVal arquiv$)
End Function

Private Sub SaveConfigNfeINI()
  Dim Rs As String
  
  Rs = cbbCertificado.Text
  Rs = write_ini("NFCE", "NomeCertificado", Rs)
  Rs = write_ini("NFCE", "UF", edtUF.Text)
  Rs = write_ini("NFCE", "CNPJ", edtCNPJ.Text)
  
End Sub

Private Sub CarregaIni()

  spdNFCe.LoadConfig (ArqIni)
  
  edtUF.Text = spdNFCe.UF
  cbbCertificado.Text = spdNFCe.NomeCertificado
  edtCNPJ.Text = spdNFCe.CNPJ
    
  spdNFCe.ArquivoServidoresHom = App.Path + "\NFCeServidoresHom.ini"
  spdNFCe.ArquivoServidoresProd = App.Path + "\NFCeServidoresProd.ini"
  spdNFCe.DiretorioTemplates = App.Path + "\Templates\"
  spdNFCe.DiretorioLog = App.Path + "\Log\"
  spdNFCe.DiretorioXmlDestinatario = App.Path + "\XMLDestinatario\"
  spdNFCe.DiretorioEsquemas = App.Path + "\Esquemas\"
  spdNFCe.ModeloDanfce = spdNFCe.DiretorioTemplates + "Danfce\retrato.rtm"
End Sub

Private Sub cmdAssinar_Click(Index As Integer)
    mmXml.Text = spdNFCe.AssinarNota(mmXml.Text)
End Sub


Private Sub cmdCancelar_Click()
    mmXml.Text = spdNFCe.CancelarNF(edtIdNota.Text, edtProtocolo.Text, "teste de cancelamento de NFCe", Format(Now, "YYYY-MM-DDTHH:MM:SS"), 1, "-03:00", 1)
End Sub

Private Sub cmdConfigIni_Click(Index As Integer)
    SaveConfigNfeINI
    Shell "C:\Windows\System32\notepad.exe " + App.Path + "\nfceConfig.ini", vbNormalFocus
End Sub

Private Sub DadosDoNFe()
    '////////////Dados da NFC-e///////////////
    spdNFCeDataSet.SetCampo ("versao_A02=3.10")
    spdNFCeDataSet.SetCampo ("Id_A03=")
    
    '////////////Identificação da NFC-e///////////////
    spdNFCeDataSet.SetCampo ("cUF_B02=41")
    spdNFCeDataSet.SetCampo ("cNF_B03=" & Int((11111111 * Rnd()) + 2))
    spdNFCeDataSet.SetCampo ("natOp_B04=VENDA DE MERCADORIA ADQ. DE TERCEIRO")
    spdNFCeDataSet.SetCampo ("indPag_B05=0")
    spdNFCeDataSet.SetCampo ("mod_B06=65")
    spdNFCeDataSet.SetCampo ("serie_B07=" & Int((889 * Rnd()) + 1))
    spdNFCeDataSet.SetCampo ("nNF_B08=" & Int((111111111 * Rnd()) + 2))
    spdNFCeDataSet.SetCampo ("dhEmi_B09=" & Format(Now(), "yyyy-mm-ddThh:mm:ss") & "-03:00")
    spdNFCeDataSet.SetCampo ("tpNF_B11=1")
    spdNFCeDataSet.SetCampo ("idDest_B11a=1")
    spdNFCeDataSet.SetCampo ("cMunFG_B12=4115200")
    spdNFCeDataSet.SetCampo ("tpImp_B21=4")
    spdNFCeDataSet.SetCampo ("tpEmis_B22=1")
    spdNFCeDataSet.SetCampo ("cDV_B23=")
    spdNFCeDataSet.SetCampo ("tpAmb_B24=2")
    spdNFCeDataSet.SetCampo ("finNFe_B25=1")
    spdNFCeDataSet.SetCampo ("indFinal_B25a=1")
    spdNFCeDataSet.SetCampo ("indPres_B25b=1")
    spdNFCeDataSet.SetCampo ("procEmi_B26=0")
    spdNFCeDataSet.SetCampo ("verProc_B27=5")
End Sub


Private Sub DadosDoNFe400()
    '////////////Dados da NFC-e///////////////
    spdNFCeDataSet.SetCampo ("versao_A02=4.00")
    spdNFCeDataSet.SetCampo ("Id_A03=")
    
    '////////////Identificação da NFC-e///////////////
    spdNFCeDataSet.SetCampo ("cUF_B02=41")
    spdNFCeDataSet.SetCampo ("cNF_B03=" & Int((11111111 * Rnd()) + 2))
    spdNFCeDataSet.SetCampo ("natOp_B04=VENDA DE MERCADORIA ADQ. DE TERCEIRO")
    '//indPag_B05 campo removido//
    spdNFCeDataSet.SetCampo ("mod_B06=65")
    spdNFCeDataSet.SetCampo ("serie_B07=" & Int((889 * Rnd()) + 1))
    spdNFCeDataSet.SetCampo ("nNF_B08=" & Int((111111111 * Rnd()) + 2))
    spdNFCeDataSet.SetCampo ("dhEmi_B09=" & Format(Now(), "yyyy-mm-ddThh:mm:ss") & "-03:00")
    spdNFCeDataSet.SetCampo ("tpNF_B11=1")
    spdNFCeDataSet.SetCampo ("idDest_B11a=1")
    spdNFCeDataSet.SetCampo ("cMunFG_B12=4115200")
    spdNFCeDataSet.SetCampo ("tpImp_B21=4")
    spdNFCeDataSet.SetCampo ("tpEmis_B22=1")
    spdNFCeDataSet.SetCampo ("cDV_B23=")
    spdNFCeDataSet.SetCampo ("tpAmb_B24=2")
    spdNFCeDataSet.SetCampo ("finNFe_B25=1")
    spdNFCeDataSet.SetCampo ("indFinal_B25a=1")
    spdNFCeDataSet.SetCampo ("indPres_B25b=1")
    spdNFCeDataSet.SetCampo ("procEmi_B26=0")
    spdNFCeDataSet.SetCampo ("verProc_B27=5")
End Sub

Private Sub DadosDoEmitente()
    '////////////Identificação do Emitente da NFC-e///////////////
    spdNFCeDataSet.SetCampo ("CNPJ_C02=" + edtCNPJ.Text)
    spdNFCeDataSet.SetCampo ("xNome_C03=Tecnospeed .LTDA")
    spdNFCeDataSet.SetCampo ("xFant_C04=Tecnospeed")
    spdNFCeDataSet.SetCampo ("xLgr_C06=Avenida Duque de Caxias")
    spdNFCeDataSet.SetCampo ("nro_C07=882")
    spdNFCeDataSet.SetCampo ("xBairro_C09=CENTRO")
    spdNFCeDataSet.SetCampo ("cMun_C10=4115200")
    spdNFCeDataSet.SetCampo ("xMun_C11=MARINGA")
    spdNFCeDataSet.SetCampo ("UF_C12=" + edtUF.Text)
    spdNFCeDataSet.SetCampo ("CEP_C13=87020025")
    spdNFCeDataSet.SetCampo ("cPais_C14=1058")
    spdNFCeDataSet.SetCampo ("xPais_C15=BRASIL")
    spdNFCeDataSet.SetCampo ("fone_C16=4430283749")
    spdNFCeDataSet.SetCampo ("IE_C17=9044016688")
    spdNFCeDataSet.SetCampo ("CRT_C21=3")
End Sub

Private Sub DadosDoDestinatario()
    '////////////Identificação do Destinatário///////////////
    spdNFCeDataSet.SetCampo ("CPF_E03=81250814294")
    spdNFCeDataSet.SetCampo ("xNome_E04=NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL")
    spdNFCeDataSet.SetCampo ("xLgr_E06=Rua Rui Barbosa")
    spdNFCeDataSet.SetCampo ("nro_E07=897")
    spdNFCeDataSet.SetCampo ("xCpl_E08=")
    spdNFCeDataSet.SetCampo ("xBairro_E09=Zona 07")
    spdNFCeDataSet.SetCampo ("cMun_E10=4115200")
    spdNFCeDataSet.SetCampo ("xMun_E11=Maringa")
    spdNFCeDataSet.SetCampo ("UF_E12=PR")
    spdNFCeDataSet.SetCampo ("CEP_E13=95700000")
    spdNFCeDataSet.SetCampo ("cPais_E14=1058")
    spdNFCeDataSet.SetCampo ("xPais_E15=BRASIL")
    spdNFCeDataSet.SetCampo ("fone_E16=445555555")
    spdNFCeDataSet.SetCampo ("indIEDest_E16a=9")
End Sub
Private Sub DadosDoItem()
    spdNFCeDataSet.IncluirItem
    '////////////Detalhamento de Produtos e Serviços da NFC-e///////////////
    spdNFCeDataSet.SetCampo ("nItem_H02=1")
    
    '////////////Produtos e Serviços da NFC-e///////////////
    spdNFCeDataSet.SetCampo ("cProd_I02=25")
    spdNFCeDataSet.SetCampo ("cEAN_I03=7898106035513")
    spdNFCeDataSet.SetCampo ("xProd_I04=NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL")
    spdNFCeDataSet.SetCampo ("NCM_I05=30043929")
    spdNFCeDataSet.SetCampo ("CFOP_I08=5102")
    spdNFCeDataSet.SetCampo ("uCom_I09=CX")
    spdNFCeDataSet.SetCampo ("qCom_I10=1.0000")
    spdNFCeDataSet.SetCampo ("vUnCom_I10a=1.0000")
    spdNFCeDataSet.SetCampo ("vProd_I11=1.00")
    spdNFCeDataSet.SetCampo ("cEANTrib_I12=7898106035513")
    spdNFCeDataSet.SetCampo ("uTrib_I13=CX")
    spdNFCeDataSet.SetCampo ("qTrib_I14=1.0000")
    spdNFCeDataSet.SetCampo ("vUnTrib_I14a=1.0000")
    spdNFCeDataSet.SetCampo ("indTot_I17b=1")
    
    '////////////Tributos incidentes no Produto ou Serviço///////////////
    spdNFCeDataSet.SetCampo ("vTotTrib_M02=1.00")

    '////////////ICMS///////////////
    spdNFCeDataSet.SetCampo ("orig_N11=0")
    spdNFCeDataSet.SetCampo ("CST_N12=00")
    spdNFCeDataSet.SetCampo ("modBC_N13=3")
    spdNFCeDataSet.SetCampo ("vBC_N15=1.00")
    spdNFCeDataSet.SetCampo ("pICMS_N16=2.00")
    spdNFCeDataSet.SetCampo ("vICMS_N17=0.02")

    '////////////PIS///////////////
    spdNFCeDataSet.SetCampo ("CST_Q06=07")

    '////////////CONFINS///////////////
    spdNFCeDataSet.SetCampo ("CST_S06=07")

    spdNFCeDataSet.SalvarItem
    
End Sub

Private Sub DadosDoItem400()
    spdNFCeDataSet.IncluirItem
    '////////////Detalhamento de Produtos e Serviços da NFC-e///////////////
    spdNFCeDataSet.SetCampo ("nItem_H02=1")
    
    '////////////Produtos e Serviços da NFC-e///////////////
    spdNFCeDataSet.SetCampo ("cProd_I02=25")
    spdNFCeDataSet.SetCampo ("cEAN_I03=SEM GTIN") '//informa SEM GTIN se não houver o cEAN//
    spdNFCeDataSet.SetCampo ("xProd_I04=NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL")
    spdNFCeDataSet.SetCampo ("NCM_I05=30043929")
    spdNFCeDataSet.SetCampo ("CFOP_I08=5102")
    spdNFCeDataSet.SetCampo ("uCom_I09=CX")
    spdNFCeDataSet.SetCampo ("qCom_I10=1.0000")
    spdNFCeDataSet.SetCampo ("vUnCom_I10a=1.0000")
    spdNFCeDataSet.SetCampo ("vProd_I11=1.00")
    spdNFCeDataSet.SetCampo ("cEANTrib_I12=SEM GTIN") '//informa SEM GTIN se não houver o cEAN//
    spdNFCeDataSet.SetCampo ("uTrib_I13=CX")
    spdNFCeDataSet.SetCampo ("qTrib_I14=1.0000")
    spdNFCeDataSet.SetCampo ("vUnTrib_I14a=1.0000")
    spdNFCeDataSet.SetCampo ("indTot_I17b=1")
    
    '////////////Tributos incidentes no Produto ou Serviço///////////////
    spdNFCeDataSet.SetCampo ("vTotTrib_M02=1.00")

    '////////////ICMS///////////////
    spdNFCeDataSet.SetCampo ("orig_N11=0")
    spdNFCeDataSet.SetCampo ("CST_N12=00")
    spdNFCeDataSet.SetCampo ("modBC_N13=3")
    spdNFCeDataSet.SetCampo ("vBC_N15=1.00")
    spdNFCeDataSet.SetCampo ("pICMS_N16=2.00")
    spdNFCeDataSet.SetCampo ("vICMS_N17=0.02")

    '////////////PIS///////////////
    spdNFCeDataSet.SetCampo ("CST_Q06=07")

    '////////////CONFINS///////////////
    spdNFCeDataSet.SetCampo ("CST_S06=07")

    spdNFCeDataSet.SalvarItem
    
End Sub


Private Sub DadosTotalizadores()
    spdNFCeDataSet.SetCampo ("vBC_W03=1.00")
    spdNFCeDataSet.SetCampo ("vICMS_W04=0.02")
    spdNFCeDataSet.SetCampo ("vICMSDeson_W04a=0.00")
    spdNFCeDataSet.SetCampo ("vBCST_W05=0.00")
    spdNFCeDataSet.SetCampo ("vST_W06=0.00")
    spdNFCeDataSet.SetCampo ("vProd_W07=1.00")
    spdNFCeDataSet.SetCampo ("vFrete_W08=0.00")
    spdNFCeDataSet.SetCampo ("vSeg_W09=0.00")
    spdNFCeDataSet.SetCampo ("vDesc_W10=0.00")
    spdNFCeDataSet.SetCampo ("vII_W11=0.00")
    spdNFCeDataSet.SetCampo ("vIPI_W12=0.00")
    spdNFCeDataSet.SetCampo ("vPIS_W13=0.00")
    spdNFCeDataSet.SetCampo ("vCOFINS_W14=0.00")
    spdNFCeDataSet.SetCampo ("vOutro_W15=0.00")
    spdNFCeDataSet.SetCampo ("vNF_W16=1.00")
    spdNFCeDataSet.SetCampo ("vTotTrib_W16a=1.00")
End Sub

Private Sub DadosTotalizadores400()
    spdNFCeDataSet.SetCampo ("vBC_W03=1.00")
    spdNFCeDataSet.SetCampo ("vICMS_W04=0.02")
    spdNFCeDataSet.SetCampo ("vICMSDeson_W04a=0.00")
    '//vFCP Novo campo//
    spdNFCeDataSet.SetCampo ("vFCP_W04h=0.00")
    spdNFCeDataSet.SetCampo ("vBCST_W05=0.00")
    spdNFCeDataSet.SetCampo ("vST_W06=0.00")
    '//vFCPST e vFCPSTRet Novos campos//
    spdNFCeDataSet.SetCampo ("vFCPST_W06a=0.00")
    spdNFCeDataSet.SetCampo ("vFCPSTRet_W06b=0.00")
    spdNFCeDataSet.SetCampo ("vProd_W07=1.00")
    spdNFCeDataSet.SetCampo ("vFrete_W08=0.00")
    spdNFCeDataSet.SetCampo ("vSeg_W09=0.00")
    spdNFCeDataSet.SetCampo ("vDesc_W10=0.00")
    spdNFCeDataSet.SetCampo ("vII_W11=0.00")
    spdNFCeDataSet.SetCampo ("vIPI_W12=0.00")
    '//vIPIDevol Novo campo//
    spdNFCeDataSet.SetCampo ("vIPIDevol_W12a=0.00")
    spdNFCeDataSet.SetCampo ("vPIS_W13=0.00")
    spdNFCeDataSet.SetCampo ("vCOFINS_W14=0.00")
    spdNFCeDataSet.SetCampo ("vOutro_W15=0.00")
    spdNFCeDataSet.SetCampo ("vNF_W16=1.00")
    spdNFCeDataSet.SetCampo ("vTotTrib_W16a=1.00")
End Sub

Private Sub DadosTransporte()
    '////////////Informações do Transporte da NFC-e///////////////
    spdNFCeDataSet.SetCampo ("modFrete_X02=9")
End Sub

Private Sub DadosPagamento()
    spdNFCeDataSet.IncluirParte ("YA")
    spdNFCeDataSet.SetCampo ("tPag_YA02=05")
    spdNFCeDataSet.SetCampo ("vPag_YA03=0.50")
    spdNFCeDataSet.SalvarParte ("YA")
    
    spdNFCeDataSet.IncluirParte ("YA")
    spdNFCeDataSet.SetCampo ("tPag_YA02=01")
    spdNFCeDataSet.SetCampo ("vPag_YA03=0.50")
    spdNFCeDataSet.SalvarParte ("YA")
End Sub

Private Sub DadosPagamento400()
    spdNFCeDataSet.IncluirParte ("YA")
    spdNFCeDataSet.SetCampo ("tPag_YA02=05")
    spdNFCeDataSet.SetCampo ("vPag_YA03=0.50")
    spdNFCeDataSet.SalvarParte ("YA")
    
    spdNFCeDataSet.IncluirParte ("YA")
    spdNFCeDataSet.SetCampo ("tPag_YA02=01")
    spdNFCeDataSet.SetCampo ("vPag_YA03=0.50")
    '///Novo campo da NFCe///
    spdNFCeDataSet.SetCampo ("vTroco_YA09=0.00")
    spdNFCeDataSet.SalvarParte ("YA")
End Sub

Private Sub cmdConsultarNF_Click(Index As Integer)
    mmXml.Text = spdNFCe.ConsultarNF(edtIdNota.Text)
    edtProtocolo.Text = Mid$(mmXml.Text, InStrRev(mmXml.Text, "<nProt>") + 7, 15)
End Sub

Private Sub cmdConsultarRecibo_Click(Index As Integer)
    mmXml.Text = spdNFCe.ConsultarRecibo(edtRecibo.Text)
    edtProtocolo.Text = Mid$(mmXml.Text, InStrRev(mmXml.Text, "<nProt>") + 7, 15)
End Sub

Private Sub cmdDataSet_Click(Index As Integer)
 
   edtRecibo.Text = ""
   edtProtocolo.Text = ""
    
   spdNFCeDataSet.VersaoEsquema = "pl_008i1"
   spdNFCeDataSet.DicionarioXML = App.Path + "\Templates\vm50b\Conversor\NFCeDataSets.xml"
    
   spdNFCeDataSet.Incluir
                
   DadosDoNFe
   DadosDoEmitente
   'DadosDoDestinatario
   DadosDoItem
   DadosTotalizadores
   DadosTransporte
   DadosPagamento
    
   spdNFCeDataSet.Salvar
     
   mmXml.Text = spdNFCeDataSet.LoteNFCe
    
   edtIdNota.Text = Mid(spdNFCeDataSet.GetCampo("Id_A03"), 4, 45)
End Sub

Private Sub cmdDataset400_Click()
    edtRecibo.Text = ""
   edtProtocolo.Text = ""
    
   spdNFCeDataSet.VersaoEsquema = "pl_009"
   spdNFCeDataSet.DicionarioXML = App.Path + "\Templates\vm60\Conversor\NFCeDataSets.xml"
    
   spdNFCeDataSet.Incluir
                
   DadosDoNFe400
   DadosDoEmitente
   'DadosDoDestinatario
   DadosDoItem400
   DadosTotalizadores400
   DadosTransporte
   DadosPagamento400
    
   spdNFCeDataSet.Salvar
     
   mmXml.Text = spdNFCeDataSet.LoteNFCe
    
   edtIdNota.Text = Mid(spdNFCeDataSet.GetCampo("Id_A03"), 4, 45)
End Sub

Private Sub cmdEditarDanfe_Click(Index As Integer)
    If edtIdNota <> "" Then
        Dim arquivo As String
        Dim texto As String
  
        arquivo = spdNFCe.DiretorioXmlDestinatario + edtIdNota.Text + "-nfce.xml"
        texto = ReadUTF8File(arquivo)
  
        spdNFCe.EditarModeloDanfce "0001", texto, ""
    Else
        spdNFCe.EditarModeloDanfce "0001", mmXml.Text, ""
    End If
End Sub

Private Sub cmdEnviarEmail_Click(Index As Integer)
    spdNFCe.AnexarDAMFCEPDF = True
    spdNFCe.EnviarNotaDestinatario edtIdNota.Text, "", ""
End Sub


Private Sub cmdEnviarNF_Click(Index As Integer)
    mmXml.Text = spdNFCe.EnviarNF("0001", mmXml.Text, False)
    edtRecibo.Text = Mid(mmXml.Text, InStrRev(mmXml.Text, "<nRec>") + 6, 15)
End Sub

Private Sub cmdEnviarSincrono_Click(Index As Integer)
    mmXml.Text = spdNFCe.EnviarNFSincrono("0001", mmXml.Text, False)
End Sub

Private Sub cmdEventosNF_Click(Index As Integer)
    frmEventos.Show
End Sub

Private Sub cmdExportarPDF_Click(Index As Integer)
    If edtIdNota <> "" Then
        Dim arquivo As String
        Dim texto As String
  
        arquivo = spdNFCe.DiretorioXmlDestinatario + edtIdNota.Text + "-nfce.xml"
        texto = ReadUTF8File(arquivo)
  
        spdNFCe.ExportarDanfe "0001", texto, "", 1, ""
    Else
        spdNFCe.ExportarDanfe "0001", mmXml.Text, "", 1, ""
    End If
End Sub

Private Sub cmdGerarXMLDest_Click(Index As Integer)
    Dim logenv As String
    Dim logret As String
    
    cmdGerarTx2.ShowOpen
    logenv = cmdGerarTx2.FileName
    
    cmdGerarTx2.ShowOpen
    logret = cmdGerarTx2.FileName
    
    spdNFCe.GeraXMLEnvioDestinatario edtIdNota.Text, logenv, logret, spdNFCe.DiretorioXmlDestinatario + edtIdNota.Text + "-nfce.xml"
End Sub

Private Sub cmdGerarXMLDestCanc_Click(Index As Integer)
    Dim logenv As String
    Dim logret As String
    
    cmdGerarTx2.ShowOpen
    logenv = cmdGerarTx2.FileName
    
    cmdGerarTx2.ShowOpen
    logret = cmdGerarTx2.FileName
    
    spdNFCe.GerarXMLCancelamentoDestinatario edtIdNota.Text, logenv, logret, spdNFCe.DiretorioXmlDestinatario + edtIdNota.Text + "-caneve.xml"
End Sub

Private Sub cmdImprimir_Click(Index As Integer)
    If edtIdNota <> "" Then
        Dim arquivo As String
        Dim texto As String
  
        arquivo = spdNFCe.DiretorioXmlDestinatario + edtIdNota.Text + "-nfce.xml"
        texto = ReadUTF8File(arquivo)
  
        spdNFCe.ImprimirDanfce "0001", texto, "", ""
    Else
        spdNFCe.ImprimirDanfce "0001", mmXml.Text, "", ""
    End If
End Sub

Private Sub cmdImprimirEpec_Click(Index As Integer)
    'aLoteNotas deve ser alimentado com o XMLAssinado utilizado para montar o EPEC
    'aProtEPEC protocolo de autorização retornado no envio do EPEC
    'spdNFCe.ImprimirDanfce mmXml.Text, InputBox("Digite o número do protocolo", "Protocolo EPEC", ""), Format(Now(), "yyyy-mm-ddThh:mm:ss"), "", ""
End Sub

Private Sub cmdInutilizar_Click(Index As Integer)
    Dim NumeroNFeIni As String
    Dim NumeroNFeFim As String
    Dim InuSerie As String
    InuSerie = InputBox("Digite a serie", "Inutilização", "")
    NumeroNFeIni = InputBox("Digite o número inicial a ser inutilizado", "Inutilização", "")
    NumeroNFeFim = InputBox("Digite o número final a ser inutilizado", "Inutilização", "")
    mmXml.Text = spdNFCe.InutilizarNF("", "15", spdNFCe.CNPJ, "65", InuSerie, NumeroNFeIni, NumeroNFeFim, "Numero nao utilizado")
End Sub

Private Sub cmdLoadConfig_Click(Index As Integer)
    CarregaIni
End Sub


Private Sub cmdPreverDanfe_Click(Index As Integer)
    spdNFCe.PreverDanfce mmXml.Text, ""
End Sub

Private Sub cmdStatus_Click(Index As Integer)
    mmXml.Text = spdNFCe.StatusDoServico
End Sub

Private Sub cmdTx2_Click(Index As Integer)
    Dim ArquivoTx2 As String

    NumeroLote = InputBox("Numero do Lote:", "", "1")
     
    cmdGerarTx2.ShowOpen
    If cmdGerarTx2.FileName <> "" Then
        ArquivoTx2 = cmdGerarTx2.FileName
        mmXml.Text = spdNFCe.ConverterLoteParaXml(ArquivoTx2, lkTXTDataSet, "pl_008i1")
        edtIdNota.Text = Mid$(mmXml.Text, InStrRev(mmXml.Text, "infNFe Id=") + 14, 44)
    End If
End Sub

Private Sub cmdTx2400_Click()
    Dim ArquivoTx2 As String

    NumeroLote = InputBox("Numero do Lote:", "", "1")
     
    cmdGerarTx2.ShowOpen
    If cmdGerarTx2.FileName <> "" Then
        ArquivoTx2 = cmdGerarTx2.FileName
        mmXml.Text = spdNFCe.ConverterLoteParaXml(ArquivoTx2, lkTXTDataSet, "pl_009")
        edtIdNota.Text = Mid$(mmXml.Text, InStrRev(mmXml.Text, "infNFe Id=") + 14, 44)
    End If
End Sub

Private Sub cmDVisualizar_Click(Index As Integer)
    If edtIdNota <> "" Then
        Dim arquivo As String
        Dim texto As String
  
        arquivo = spdNFCe.DiretorioXmlDestinatario + edtIdNota.Text + "-nfce.xml"
        texto = ReadUTF8File(arquivo)
  
        spdNFCe.VisualizarDanfce "0001", texto, ""
    Else
        spdNFCe.VisualizarDanfce "0001", mmXml.Text, ""
    End If
End Sub



Private Sub Form_Initialize()
    Set spdNFCe = New NFCeX.spdNFCeX
    Set spdNFCeDataSet = New NFCeDataSetX.spdNFCeDataSetX
     
    Dim i As Integer
    Dim vetor As Variant
  
    frmPrincipal.Caption = "Demo NFCe - " + spdNFCe.Versao
  
    vetor = Split(spdNFCe.ListarCertificados("|"), "|")
    cbbCertificado.Clear
    For i = LBound(vetor) To UBound(vetor)
        cbbCertificado.AddItem vetor(i)
    Next
  
    ArqIni = App.Path + "\nfceConfig.ini"
    spdNFCe.LoadConfig (ArqIni)
    CarregaIni
End Sub

