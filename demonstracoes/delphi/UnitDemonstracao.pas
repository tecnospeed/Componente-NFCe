unit UnitDemonstracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, jpeg,spdNFCeDataSets, spdNFCeType, spdNFCe, ShellAPI;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    PageControl3: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    edtCnpjsh: TEdit;
    edtTokensh: TEdit;
    cbbCertificado: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtProtocolo: TEdit;
    edtChave: TEdit;
    edtRecibo: TEdit;
    edtUF: TEdit;
    Label4: TLabel;
    edtCNPJ: TEdit;
    Label5: TLabel;
    lbAmbiente: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    mmXml: TMemo;
    Memo2: TMemo;
    btnConfigSoftwareHouse: TButton;
    btnConfigini: TButton;
    btnLoadConfig: TButton;
    btnStatusdoServico: TButton;
    btnConverterTx2: TButton;
    btnGerarXmlDataSets: TButton;
    btnAssinarXml: TButton;
    btnEnviar: TButton;
    btnConsultaChave: TButton;
    btnCancela: TButton;
    btnImprimir: TButton;
    btnPrever: TButton;
    Image1: TImage;
    btnVisualizar: TButton;
    btnEditarModelo: TButton;
    cbbAmbiente: TComboBox;
    spdNFCe: TspdNFCe;
    spdNFCeDatasets: TspdNFCeDataSets;
    OpenDialog: TOpenDialog;
    btnGerarXmlDest: TButton;
    btnGerarDSReforma: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnConfiginiClick(Sender: TObject);
    procedure btnConfigSoftwareHouseClick(Sender: TObject);
    procedure btnLoadConfigClick(Sender: TObject);
    procedure AtualizaInformacaoNaTela;
    procedure btnStatusdoServicoClick(Sender: TObject);
    procedure btnGerarXmlDataSetsClick(Sender: TObject);
    procedure btnConverterTx2Click(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure btnAssinarXmlClick(Sender: TObject);
    procedure btnConsultaChaveClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnPreverClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnEditarModeloClick(Sender: TObject);
    procedure btnGerarXmlDestClick(Sender: TObject);
    procedure btnGerarDSReformaClick(Sender: TObject);
    

  private
    _NumeroSerie, _NumeroNF : String;
   function obterNroResultado(const aXML: string; aTag : string; aEndTag : string): string;

  public
    { Public declarations }
    NFCe : TspdNFCe;
    NFCeDatasets : TspdNFCeDataSets;
  end;

var
  Form1: TForm1;

implementation

uses UnitCancelamento;
{$R *.dfm}



procedure TForm1.FormCreate(Sender: TObject);
begin

  NFCe := TspdNFCe.Create(nil);
  NFCeDataSets := TspdNFCeDataSets.Create(nil);
  //Obrigatório configurar esse método antes de usar a demo.
  NFCe.ConfigurarSoftwareHouse('00000000000000','');
  NFCe.ListarCertificados(cbbCertificado.Items);
end;


procedure TForm1.btnConfiginiClick(Sender: TObject);
var
  _ExecuteFile: string;
begin
  try
    begin
    _ExecuteFile := ExtractFilePath(ParamStr(0)) + 'nfceconfig.ini';
    ShellExecute(Application.Handle, nil, Pchar(_ExecuteFile), nil, nil, SW_SHOWNORMAL);
    end;      
  except

  end;
end;

procedure TForm1.btnConfigSoftwareHouseClick(Sender: TObject);
begin
 NFCe.ConfigurarSoftwareHouse(edtCnpjsh.Text,edtTokensh.Text);
end;

procedure TForm1.btnLoadConfigClick(Sender: TObject);
var
  _nfceinipath : string;
begin
  _nfceinipath := ExtractFilePath(ParamStr(0))+'nfceconfig.ini';
  NFCe.LoadConfig(_nfceinipath);
  AtualizaInformacaoNaTela;
end;

procedure TForm1.AtualizaInformacaoNaTela;
begin
  edtCnpjsh.Text := NFCe.CnpjSoftwareHouse;
  //edtTokensh.Text := CTe.TokenSoftwareHouse;
  edtCNPJ.Text := NFCe.CNPJ;
  edtUf.Text := NFCe.UF;
  cbbCertificado.Text := NFCe.NomeCertificado.Text;

  Form1.Caption := 'Demo NFC-e '+NFCe.Versao;

  if NFCe.Ambiente = akProducao then
  begin
  cbbAmbiente.Text := '1';
  end
  else
  begin
  cbbAmbiente.Text := '2';
  end;
end;

function TForm1.obterNroResultado(const aXML: string; aTag,
  aEndTag: string): string;
var
  _Posini, _Posfim  : integer;
begin                           //Função para pegar o conteúdo das tags
   Result := '';
  _Posini:= Pos(aTag,aXML);
  _Posfim:= Pos(aEndTag,aXML);
  if  ( _Posini > 0 ) then
    begin
      inc(_PosIni, Length(aTag));
      Result:=Copy(aXML,_Posini+1,(_PosFim-_PosIni)-1);
    end;
end;

procedure TForm1.btnStatusdoServicoClick(Sender: TObject);
begin
 mmXml.Text := NFCe.StatusDoServico();
end;

procedure TForm1.btnGerarXmlDataSetsClick(Sender: TObject);
var
_Dir : string;

begin
  edtRecibo.clear;
  edtProtocolo.clear;
  _NumeroSerie  := InputBox('NF-e','Insira o Número da Série:','1');
  _NumeroNF     := InputBox('NF-e','Insira o Número da Nota: ','1');
NFCeDatasets.VersaoEsquema := pl_009;

_Dir:='C:\Program Files\TecnoSpeed\NFCe\Arquivos\Templates\vm60\Conversor\NFCeDataSets.xml';
NFCeDatasets.XMLDicionario := _Dir;
NFCeDatasets.LoteNFCe.Clear;
NFCeDatasets.ValidaRegrasNegocio := false;
NFCeDatasets.Incluir;

NFCeDatasets.Campo('Id_A03').Value := '';
NFCeDatasets.Campo('versao_A02').Value := '4.00';

NFCeDatasets.Campo('cUF_B02').Value := '41';
NFCeDatasets.Campo('cNF_B03').Value := IntToStr(11111111 + Random(99999999 - 11111111 + 1));
NFCeDatasets.Campo('natOp_B04').Value := 'VENDA DE MERCADORIA ADQ. DE TERCEIRO';

NFCeDatasets.Campo('mod_B06').Value := '65';
NFCeDatasets.Campo('serie_B07').Value := _NumeroSerie;
NFCeDatasets.Campo('nNF_B08').Value := _NumeroNF;
NFCeDatasets.Campo('dhEmi_B09').Value := FormatDateTime('yyyy-MM-dd"T"hh:mm:ss', Now) + '-03:00';
NFCeDatasets.Campo('tpNF_B11').Value := '1';
NFCeDatasets.Campo('idDest_B11a').Value := '1';
NFCeDatasets.Campo('cMunFG_B12').Value := '4115200';

NFCeDatasets.Campo('tpImp_B21').Value := '4';

NFCeDatasets.Campo('tpEmis_B22').Value := '1';
NFCeDatasets.Campo('cDV_B23').Value := '';
NFCeDatasets.Campo('tpAmb_B24').Value := '2';
NFCeDatasets.Campo('finNFe_B25').Value := '1';
NFCeDatasets.Campo('indFinal_B25a').Value := '1';
NFCeDatasets.Campo('indPres_B25b').Value := '1';
NFCeDatasets.Campo('procEmi_B26').Value := '0';
NFCeDatasets.Campo('verProc_B27').Value := '5';


NFCeDatasets.Campo('CNPJ_C02').Value := NFCe.CNPJ;
NFCeDatasets.Campo('xNome_C03').Value := 'Tecnospeed .LTDA';
NFCeDatasets.Campo('xFant_C04').Value := 'Tecnospeed';
NFCeDatasets.Campo('xLgr_C06').Value := 'Avenida Duque de Caxias';
NFCeDatasets.Campo('nro_C07').Value := '882';
NFCeDatasets.Campo('xBairro_C09').Value := 'CENTRO';
NFCeDatasets.Campo('cMun_C10').Value := '4115200';
NFCeDatasets.Campo('xMun_C11').Value := 'MARINGA';
NFCeDatasets.Campo('UF_C12').Value := NFCe.UF;
NFCeDatasets.Campo('cPais_C14').Value := '1058';
NFCeDatasets.Campo('xPais_C15').Value := 'BRASIL';
NFCeDatasets.Campo('fone_C16').Value := '4430283749';
NFCeDatasets.Campo('IE_C17').Value := '9098793965';
NFCeDatasets.Campo('CRT_C21').Value := '3';


NFCeDatasets.Campo('CPF_E03').Value := '81250814294';
NFCeDatasets.Campo('xNome_E04').Value := 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
NFCeDatasets.Campo('xLgr_E06').Value := 'Rua Rui Barbosa';
NFCeDatasets.Campo('nro_E07').Value := '897';
NFCeDatasets.Campo('xCpl_E08').Value := '';
NFCeDatasets.Campo('xBairro_E09').Value := 'Zona 07';
NFCeDatasets.Campo('cMun_E10').Value := '4115200';
NFCeDatasets.Campo('xMun_E11').Value := 'MARINGA';
NFCeDatasets.Campo('UF_E12').Value := 'PR';
NFCeDatasets.Campo('CEP_E13').Value := '95700000';
NFCeDatasets.Campo('cPais_E14').Value := '1058';
NFCeDatasets.Campo('xPais_E15').Value := 'BRASIL';
NFCeDatasets.Campo('fone_E16').Value := '445555555';
NFCeDatasets.Campo('indIEDest_E16a').Value := '9';
         
NFCeDatasets.IncluirItem();

NFCeDatasets.Campo('nItem_H02').Value := '1';
NFCeDatasets.Campo('cProd_I02').Value := '25';
NFCeDatasets.Campo('cEAN_I03').Value := '7898106035513';
NFCeDatasets.Campo('xProd_I04').Value := 'NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
NFCeDatasets.Campo('NCM_I05').Value := '30043929';
NFCeDatasets.Campo('CFOP_I08').Value := '5102';
NFCeDatasets.Campo('uCom_I09').Value := 'CX';
NFCeDatasets.Campo('qCom_I10').Value := '1.0000';
NFCeDatasets.Campo('vUnCom_I10a').Value := '1.0000';
NFCeDatasets.Campo('vProd_I11').Value := '1.00';

NFCeDatasets.Campo('cEANTrib_I12').Value := '7898106035513';

NFCeDatasets.Campo('uTrib_I13').Value := 'CX';
NFCeDatasets.Campo('qTrib_I14').Value := '1.0000';
NFCeDatasets.Campo('vUnTrib_I14a').Value := '1.0000';
NFCeDatasets.Campo('indTot_I17b').Value := '1';

NFCeDatasets.Campo('vTotTrib_M02').Value := '1.00';

NFCeDatasets.Campo('orig_N11').Value := '0';
NFCeDatasets.Campo('CST_N12').Value := '00';
NFCeDatasets.Campo('modBC_N13').Value := '3';
NFCeDatasets.Campo('vBC_N15').Value := '1.00';
NFCeDatasets.Campo('pICMS_N16').Value := '10.00';
NFCeDatasets.Campo('vICMS_N17').Value := '0.10';

NFCeDatasets.Campo('CST_Q06').Value := '07';

NFCeDatasets.Campo('CST_S06').Value := '07';

NFCeDatasets.Campo('infAdProd_V01').Value := 'Teste | Teste';

NFCeDatasets.SalvarItem();

NFCeDatasets.Campo('vBC_W03').Value := '1.00';
NFCeDatasets.Campo('vICMS_W04').Value := '0.10';


NFCeDatasets.Campo('vFCP_W04h').Value := '0.00';

NFCeDatasets.Campo('vICMSDeson_W04a').Value := '0.00';
NFCeDatasets.Campo('vBCST_W05').Value := '0.00';
NFCeDatasets.Campo('vST_W06').Value := '0.00';

NFCeDatasets.Campo('vFCPST_W06a').Value := '0.00';
NFCeDatasets.Campo('vFCPSTRet_W06b').Value := '0.00';

NFCeDatasets.Campo('vProd_W07').Value := '1.00';
NFCeDatasets.Campo('vFrete_W08').Value := '0.00';
NFCeDatasets.Campo('vSeg_W09').Value := '0.00';
NFCeDatasets.Campo('vDesc_W10').Value := '0.00';
NFCeDatasets.Campo('vII_W11').Value := '0.00';
NFCeDatasets.Campo('vIPI_W12').Value := '0.00';

NFCeDatasets.Campo('vIPIDevol_W12a').Value := '0.00';

NFCeDatasets.Campo('vPIS_W13').Value := '0.00';
NFCeDatasets.Campo('vCOFINS_W14').Value := '0.00';
NFCeDatasets.Campo('vOutro_W15').Value := '0.00';
NFCeDatasets.Campo('vNF_W16').Value := '1.00';
NFCeDatasets.Campo('vTotTrib_W16a').Value := '1.00';

NFCeDatasets.Campo('modFrete_X02').Value := '9';

NFCeDatasets.Campo('infAdFisco_Z02').Value := 'OBSERVACAO TESTE DA DANFE - FISCO  OBSERVACAO TESTE DA DANFE - FISCO';
NFCeDatasets.Campo('infCpl_Z03').Value := 'OBSERVACAO TESTE DA DANFE CONTRIBUINTE  OBSERVACAO TESTE DA DANFE CONTRIBUINTE';

NFCeDatasets.IncluirPart('YA');
NFCeDatasets.Campo('tPag_YA02').Value := '01';
NFCeDatasets.Campo('vPag_YA03').Value := '0.60';
NFCeDatasets.SalvarPart('YA');

NFCeDatasets.IncluirPart('YA');
NFCeDatasets.Campo('tPag_YA02').Value := '01';
NFCeDatasets.Campo('vPag_YA03').Value := '0.50';

NFCeDatasets.Campo('vTroco_YA09').Value := '0.10';
NFCeDatasets.SalvarPart('YA');

NFCeDatasets.Campo('CNPJ_ZD02').Value := '08187168000160';
NFCeDatasets.Campo('xContato_ZD04').Value := 'Nome teste';
NFCeDatasets.Campo('email_ZD05').Value := 'email.teste@teste.com';
NFCeDatasets.Campo('fone_ZD06').Value := '4466666666';

NFCeDatasets.Salvar;
                      
mmXML.Text := NFCeDatasets.LoteNFCe.Text;
edtChave.Text := Copy(NFCeDatasets.Campo('Id_A03').AsString,4,44);
end;

procedure TForm1.btnConverterTx2Click(Sender: TObject);
var
  _XML :string;
begin

     if mmXml.Text = ''  then
      begin
      OpenDialog.InitialDir := ExtractFilePath(ParamStr(0));
      OpenDialog.Execute;

          if OpenDialog.FileName <> '' then
          begin
          mmXml.Lines.LoadFromFile(OpenDialog.FileName);
          _XML :=  NFCe.ConverterLoteParaXml(mmXml.Text,lkTXTDataSet, pl_010b);
          end
      end
      else
      begin
        _XML := NFCe.ConverterLoteParaXml(mmXml.Text,lkTXTDataSet, pl_010b);
      end;

      mmXml.Text := _XML;
     edtChave.Text := obterNroResultado(_XML,'"NF','" versao');
end;



procedure TForm1.btnEnviarClick(Sender: TObject);
var
  _XML :string;
begin
   _XML   := NFCe.EnviarNFSincrono('1',mmXml.Text);
  mmXml.Text :=  _XML;
  edtRecibo.Text := obterNroResultado(_XML,'<nRec','</nRec');
  edtProtocolo.Text := obterNroResultado(_XML,'<nProt','</nProt');
end;

procedure TForm1.btnAssinarXmlClick(Sender: TObject);
begin
    mmXml.Text := NFCe.AssinarNota(mmXml.Text);
end;

procedure TForm1.btnConsultaChaveClick(Sender: TObject);
begin
    mmXml.Text := NFCe.ConsultarNF(edtChave.Text);
end;

procedure TForm1.btnCancelaClick(Sender: TObject);

var
  FormularioCanc: TForm2;
begin

  FormularioCanc :=TForm2.Create(self);

  try
    FormularioCanc.ShowModal;
  finally
  FormularioCanc.Free;
  end;


end;

procedure TForm1.btnImprimirClick(Sender: TObject);
begin
    if mmXml.Text = '' then
    begin
      OpenDialog.InitialDir := ExtractFilePath(ParamStr(0));
      OpenDialog.Execute;
      if OpenDialog.FileName <> ''then
      begin
        mmXml.Lines.LoadFromFile(OpenDialog.FileName);
        NFCe.ImprimirDanfce('1',mmXml.Text,'');
      end
    end
    else
    begin
      NFCe.ImprimirDanfce('1',mmXml.Text,'');
    end;
    
end;

procedure TForm1.btnPreverClick(Sender: TObject);
begin
   if mmXml.Text = '' then
    begin
      OpenDialog.InitialDir := ExtractFilePath(ParamStr(0));
      OpenDialog.Execute;
      if OpenDialog.FileName <> ''then
      begin
        mmXml.Lines.LoadFromFile(OpenDialog.FileName);
        NFCe.PreverDanfce(mmXml.Text,'');
      end
    end
    else
    begin
      NFCe.PreverDanfce(mmXml.Text,'');
    end;

end;



procedure TForm1.btnVisualizarClick(Sender: TObject);
begin
 if mmXml.Text = '' then
    begin
      OpenDialog.InitialDir := ExtractFilePath(ParamStr(0));
      OpenDialog.Execute;
      if OpenDialog.FileName <> ''then
      begin
        mmXml.Lines.LoadFromFile(OpenDialog.FileName);
        NFCe.VisualizarDanfce('1',mmXml.Text,'');
      end
    end
    else
    begin
      NFCe.VisualizarDanfce('1',mmXml.Text,'');
    end;
end;

procedure TForm1.btnEditarModeloClick(Sender: TObject);
begin
  if mmXml.Text = '' then
    begin
      OpenDialog.InitialDir := ExtractFilePath(ParamStr(0));
      OpenDialog.Execute;
      if OpenDialog.FileName <> ''then
      begin
        mmXml.Lines.LoadFromFile(OpenDialog.FileName);
        NFCe.EditarModeloDanfce('1',mmXml.Text,'');
      end
    end
    else
    begin
      NFCe.EditarModeloDanfce('1',mmXml.Text,'');
    end;
end;

procedure TForm1.btnGerarXmlDestClick(Sender: TObject);
begin
NFCe.GerarXMLEnvioDestinatario(edtChave.Text,mmXml.Text,Memo2.Text,'');
end;

procedure TForm1.btnGerarDSReformaClick(Sender: TObject);
var
  _Dir : string;
begin
  edtRecibo.clear;
  edtProtocolo.clear;
  _NumeroSerie  := InputBox('NF-e','Insira o Número da Série:','1');
  _NumeroNF     := InputBox('NF-e','Insira o Número da Nota: ','1');
  NFCeDatasets.VersaoEsquema := pl_010b;

  _Dir:='C:\Program Files\TecnoSpeed\NFCe\Arquivos\Templates\vm60\Conversor\NFCeDataSets.xml';

  NFCeDatasets.XMLDicionario := _Dir;
  NFCeDatasets.LoteNFCe.Clear;
  NFCeDatasets.ValidaRegrasNegocio := false;
  NFCeDatasets.Incluir;

  NFCeDatasets.Campo('Id_A03').Value := '0';
  NFCeDatasets.Campo('versao_A02').Value := '4.00';
  NFCeDatasets.Campo('verProc_B27').Value := '000';
  NFCeDatasets.Campo('cNF_B03').Value := '22';
  NFCeDatasets.Campo('natOp_B04').Value := 'VENDA';
  NFCeDatasets.Campo('mod_B06').Value := '65';
  NFCeDatasets.Campo('serie_B07').Value := _NumeroSerie;
  NFCeDatasets.Campo('nNF_B08').Value := _NumeroNF;
  NFCeDatasets.Campo('cUF_B02').Value := '41';
  NFCeDatasets.Campo('dhEmi_B09').Value := '2025-08-11T09:16:00-03:00';
  NFCeDatasets.Campo('tpNF_B11').Value := '1';
  NFCeDatasets.Campo('idDest_B11a').Value := '1';
  NFCeDatasets.Campo('cMunFG_B12').Value := '4115200';
  NFCeDatasets.Campo('tpImp_B21').Value := '5';
  NFCeDatasets.Campo('tpEmis_B22').Value := '1';
  NFCeDatasets.Campo('dhCont_B28').Value := '';
  NFCeDatasets.Campo('xjust_B29').Value := '';
  NFCeDatasets.Campo('cDV_B23').Value := '3';
  NFCeDatasets.Campo('tpAmb_B24').Value := '2';
  NFCeDatasets.Campo('finNFe_B25').Value := '1';
  NFCeDatasets.Campo('indFinal_B25a').Value := '1';
  NFCeDatasets.Campo('indPres_B25b').Value := '1';
  NFCeDatasets.Campo('indintermed_b25c').Value := '0';
  NFCeDatasets.Campo('procEmi_B26').Value := '0';

  // Informações do Emitente
  NFCeDatasets.Campo('CNPJ_C02').Value := '29062609000177';
  NFCeDatasets.Campo('xNome_C03').Value := 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
  NFCeDatasets.Campo('xFant_C04').Value := 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
  NFCeDatasets.Campo('xLgr_C06').Value := 'AVENIDA TESTAO';
  NFCeDatasets.Campo('nro_C07').Value := '175';
  NFCeDatasets.Campo('xBairro_C09').Value := 'CENTRO';
  NFCeDatasets.Campo('cMun_C10').Value := '4115200';
  NFCeDatasets.Campo('xMun_C11').Value := 'Maringa';
  NFCeDatasets.Campo('UF_C12').Value := 'PR';
  NFCeDatasets.Campo('CEP_C13').Value := '93700000';
  NFCeDatasets.Campo('cPais_C14').Value := '1058';
  NFCeDatasets.Campo('xPais_C15').Value := 'BRASIL';
  NFCeDatasets.Campo('fone_C16').Value := '5130386151';
  NFCeDatasets.Campo('IE_C17').Value := '9098793965';
  NFCeDatasets.Campo('IEST_C18').Value := '';
  NFCeDatasets.Campo('CRT_C21').Value := '1';
  
  // Informações do Destinatário
  NFCeDatasets.Campo('CPF_E03').Value := '09469674669';
  NFCeDatasets.Campo('indIEDest_E16a').Value := '9';
  NFCeDatasets.Campo('xNome_E04').Value := 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';

  // Primeiro Item
  NFCeDatasets.IncluirItem;
  NFCeDatasets.Campo('nItem_H02').Value := '1';
  NFCeDatasets.Campo('cEAN_I03').Value := 'SEM GTIN';
  NFCeDatasets.Campo('cProd_I02').Value := '927803';
  NFCeDatasets.Campo('xProd_I04').Value := 'NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
  NFCeDatasets.Campo('NCM_I05').Value := '22089000';
  NFCeDatasets.Campo('CFOP_I08').Value := '5101';
  NFCeDatasets.Campo('uCom_I09').Value := 'UN';
  NFCeDatasets.Campo('qCom_I10').Value := '1.0000';
  NFCeDatasets.Campo('vUnCom_I10a').Value := '0.9000';
  NFCeDatasets.Campo('vProd_I11').Value := '0.90';
  NFCeDatasets.Campo('cEANTrib_I12').Value := 'SEM GTIN';
  NFCeDatasets.Campo('cBarra_I03a').Value := '1111111111';
  NFCeDatasets.Campo('cBarraTrib_I12a').Value := '1111111111111';
  NFCeDatasets.Campo('uTrib_I13').Value := 'UN';
  NFCeDatasets.Campo('qTrib_I14').Value := '1.0000';
  NFCeDatasets.Campo('vUnTrib_I14a').Value := '0.9000';
  NFCeDatasets.Campo('indTot_I17b').Value := '1';
  NFCeDatasets.Campo('orig_N11').Value := '0';
  NFCeDatasets.Campo('CSOSN_N12a').Value := '300';
  NFCeDatasets.Campo('vTotTrib_M02').Value := '3';
  NFCeDatasets.Campo('CST_Q06').Value := '01';
  NFCeDatasets.Campo('vBC_Q07').Value := '0.01';
  NFCeDatasets.Campo('pPIS_Q08').Value := '1.65';
  NFCeDatasets.Campo('vPIS_Q09').Value := '0.00';
  NFCeDatasets.Campo('CST_S06').Value := '01';
  NFCeDatasets.Campo('vBC_S07').Value := '0.01';
  NFCeDatasets.Campo('pCOFINS_S08').Value := '7.60';
  NFCeDatasets.Campo('vCOFINS_S11').Value := '0.01';
  NFCeDatasets.Campo('nLote_I81').Value := '123';
  NFCeDatasets.Campo('qLote_I82').Value := '5565.000';
  NFCeDatasets.Campo('dFab_I83').Value := '2017-07-23';
  NFCeDatasets.Campo('dVal_I84').Value := '2018-07-23';
  NFCeDatasets.Campo('CSTIS_UB02').Value := '000';
  NFCeDatasets.Campo('cClassTribIS_UB03').Value := '000001';
  NFCeDatasets.Campo('vBCIS_UB05').Value := '0.01';
  NFCeDatasets.Campo('pIS_UB06').Value := '0.02';
  NFCeDatasets.Campo('pISEspec_UB07').Value := '0.03';
  NFCeDatasets.Campo('uTrib_UB09').Value := 'UN';
  NFCeDatasets.Campo('qTrib_UB10').Value := '0.0001';
  NFCeDatasets.Campo('vIS_UB11').Value := '0.01';
  NFCeDatasets.Campo('CST_UB13').Value := '001';
  NFCeDatasets.Campo('cClassTrib_UB14').Value := '000001';
  NFCeDatasets.Campo('vItem_VB01').Value := '10';
  NFCeDatasets.Campo('chaveAcesso_VC02').Value := '12345678901234567890123456789012345678901111';
  NFCeDatasets.Campo('nItem_VC03').Value := '1';
  NFCeDatasets.Campo('qBCMono_UB85').Value := '100.0000';
  NFCeDatasets.Campo('adRemIBS_UB86').Value := '1.50';
  NFCeDatasets.Campo('adRemCBS_UB87').Value := '0.50';
  NFCeDatasets.Campo('vIBSMono_UB88').Value := '150.00';
  NFCeDatasets.Campo('vCBSMono_UB89').Value := '50.00';
  NFCeDatasets.Campo('qBCMonoReten_UB91').Value := '50.0000';
  NFCeDatasets.Campo('adRemIBSReten_UB92').Value := '1.50';
  NFCeDatasets.Campo('vIBSMonoReten_UB93').Value := '75.00';
  NFCeDatasets.Campo('adRemCBSReten_UB93a').Value := '0.50';
  NFCeDatasets.Campo('vCBSMonoReten_UB93b').Value := '25.00';
  NFCeDatasets.Campo('qBCMonoRet_UB95').Value := '25.0000';
  NFCeDatasets.Campo('adRemIBSRet_UB96').Value := '1.50';
  NFCeDatasets.Campo('vIBSMonoRet_UB97').Value := '37.50';
  NFCeDatasets.Campo('adRemCBSRet_UB98').Value := '0.50';
  NFCeDatasets.Campo('vCBSMonoRet_UB98a').Value := '12.50';
  NFCeDatasets.Campo('pDifIBS_UB100').Value := '50.00';
  NFCeDatasets.Campo('vIBSMonoDif_UB101').Value := '75.00';
  NFCeDatasets.Campo('pDifCBS_UB102').Value := '50.00';
  NFCeDatasets.Campo('vCBSMonoDif_UB103').Value := '25.00';
  NFCeDatasets.Campo('vTotIBSMonoItem_UB104').Value := '150.00';
  NFCeDatasets.Campo('vTotCBSMonoItem_UB105').Value := '50.00';
  NFCeDatasets.SalvarItem;

  // Segundo Item
  NFCeDatasets.IncluirItem;
  NFCeDatasets.Campo('nItem_H02').Value := '2';
  NFCeDatasets.Campo('cEAN_I03').Value := 'SEM GTIN';
  NFCeDatasets.Campo('cProd_I02').Value := '927803';
  NFCeDatasets.Campo('xProd_I04').Value := 'NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
  NFCeDatasets.Campo('NCM_I05').Value := '22089000';
  NFCeDatasets.Campo('CFOP_I08').Value := '5101';
  NFCeDatasets.Campo('uCom_I09').Value := 'UN';
  NFCeDatasets.Campo('qCom_I10').Value := '1.0000';
  NFCeDatasets.Campo('vUnCom_I10a').Value := '0.9000';
  NFCeDatasets.Campo('vProd_I11').Value := '0.90';
  NFCeDatasets.Campo('cEANTrib_I12').Value := 'SEM GTIN';
  NFCeDatasets.Campo('uTrib_I13').Value := 'UN';
  NFCeDatasets.Campo('qTrib_I14').Value := '1.0000';
  NFCeDatasets.Campo('vUnTrib_I14a').Value := '0.9000';
  NFCeDatasets.Campo('indTot_I17b').Value := '1';
  NFCeDatasets.Campo('orig_N11').Value := '0';
  NFCeDatasets.Campo('CSOSN_N12a').Value := '300';
  NFCeDatasets.Campo('vTotTrib_M02').Value := '3';
  NFCeDatasets.SalvarItem;

  // Totais da Nota Fiscal
  NFCeDatasets.Campo('vBC_W03').Value := '0.00';
  NFCeDatasets.Campo('vICMS_W04').Value := '0.00';
  NFCeDatasets.Campo('vICMSDeson_W04a').Value := '0.00';
  NFCeDatasets.Campo('vFCPUFDest_W04c').Value := '0.00';
  NFCeDatasets.Campo('vICMSUFDest_W04e').Value := '0.00';
  NFCeDatasets.Campo('vICMSUFRemet_W04g').Value := '0.00';
  NFCeDatasets.Campo('vFCP_W04h').Value := '0.00';
  NFCeDatasets.Campo('vBCST_W05').Value := '0.00';
  NFCeDatasets.Campo('vST_W06').Value := '0.00';
  NFCeDatasets.Campo('vFCPST_W06a').Value := '0.00';
  NFCeDatasets.Campo('vFCPSTRet_W06b').Value := '0.00';
  NFCeDatasets.Campo('vProd_W07').Value := '1.80';
  NFCeDatasets.Campo('vFrete_W08').Value := '0.00';
  NFCeDatasets.Campo('vSeg_W09').Value := '0.00';
  NFCeDatasets.Campo('vDesc_W10').Value := '0.00';
  NFCeDatasets.Campo('vII_W11').Value := '0.00';
  NFCeDatasets.Campo('vIPI_W12').Value := '0.00';
  NFCeDatasets.Campo('vIPIDevol_W12a').Value := '0.00';
  NFCeDatasets.Campo('vPIS_W13').Value := '0.00';
  NFCeDatasets.Campo('vCOFINS_W14').Value := '0.00';
  NFCeDatasets.Campo('vOutro_W15').Value := '0.00';
  NFCeDatasets.Campo('vNF_W16').Value := '1.80';
  NFCeDatasets.Campo('modFrete_X02').Value := '9';
  NFCeDatasets.Campo('vTotTrib_W16a').Value := '6';
  NFCeDatasets.Campo('vIS_W33').Value := '1.00';
  NFCeDatasets.Campo('vBCIBSCBS_W35').Value := '2.00';
  NFCeDatasets.Campo('vDif_W38').Value := '3.00';
  NFCeDatasets.Campo('vDevTrib_W39').Value := '4.00';
  NFCeDatasets.Campo('vIBSUF_W41').Value := '5.00';
  NFCeDatasets.Campo('vDif_W43').Value := '6.00';
  NFCeDatasets.Campo('vDevTrib_W44').Value := '7.00';
  NFCeDatasets.Campo('vIBSMun_W46').Value := '8.00';
  NFCeDatasets.Campo('vIBS_W47').Value := '9.00';
  NFCeDatasets.Campo('vCredPres_W48').Value := '10.00';
  NFCeDatasets.Campo('vCredPresCondSus_W49').Value := '11.00';
  NFCeDatasets.Campo('vCredPres_W56a').Value := '12.00';
  NFCeDatasets.Campo('vCredPresCondSus_W56b').Value := '13.00';
  NFCeDatasets.Campo('vDif_W53').Value := '14.00';
  NFCeDatasets.Campo('vDevTrib_W54').Value := '15.00';
  NFCeDatasets.Campo('vCBS_W56').Value := '16.00';
  NFCeDatasets.Campo('vIBSMono_W58').Value := '17.00';
  NFCeDatasets.Campo('vCBSMono_W59').Value := '18.00';
  NFCeDatasets.Campo('vIBSMonoReten_W59a').Value := '19.00';
  NFCeDatasets.Campo('vCBSMonoReten_W59b').Value := '20.00';
  NFCeDatasets.Campo('vIBSMonoRet_W59c').Value := '21.00';
  NFCeDatasets.Campo('vCBSMonoRet_W59d').Value := '22.00';
  NFCeDatasets.Campo('vNFTot_W60').Value := '23.00';
  
  // Informações de Pagamento
  NFCeDatasets.IncluirPart('YA');
  NFCeDatasets.Campo('tPag_YA02').Value := '01';
  NFCeDatasets.Campo('vPag_YA03').Value := '1.80';
  NFCeDatasets.SalvarPart('YA');
  
  // Informações de Contato
  NFCeDatasets.Campo('CNPJ_ZD02').Value := '25028640000130';
  NFCeDatasets.Campo('xContato_ZD04').Value := 'gabriel';
  NFCeDatasets.Campo('email_ZD05').Value := 'gabriel.cunha@tecnospeed.com.br';
  NFCeDatasets.Campo('fone_ZD06').Value := '18998145800';
  NFCeDatasets.Campo('infCpl_Z03').Value := 'ESTE TESTE FOI HOJE';

  NFCeDatasets.Salvar;

  mmXML.Text := NFCeDatasets.LoteNFCe.Text;
  edtChave.Text := Copy(NFCeDatasets.Campo('Id_A03').AsString,4,44);
end;


end.
