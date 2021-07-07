using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using NFCeX;
using NFCeDataSetX;
using System.Runtime.InteropServices;
using Ini;
using System.IO;
using System.Diagnostics;
using System.Xml;

namespace Demo_NFe
{
    public partial class frmPrincipal : Form
    {
        //******************************************************************************************************
        //
        //          Importação de funções externas
        //
        //******************************************************************************************************        

        //Carga de Dlls
        [DllImport("kernel32.dll", EntryPoint = "GetPrivateProfileString")]
        private static extern int GetPrivateProfileString(string lpAppName, string lpKeyName, string lpDefault, StringBuilder lpReturnedString, int nSize, string lpFileName);
        [DllImport("kernel32.dll", EntryPoint = "WritePrivateProfileString")]
        private static extern bool WritePrivateProfileString(string lpAppName, string lpKeyName, string lpString, string lpFileName);

        XmlDocument xDoc = new XmlDocument();

        public static spdNFCeX NFCe = new spdNFCeX();
        private spdNFCeDataSetX NFCeDataSet = new spdNFCeDataSetX();

        private void CarregarConfig()
        {
            //Quando uilizado Loadconfig o caminho não pode ser relativo, assim é preferivel configurar estes via código.
            NFCe.DiretorioTemplates = Application.StartupPath + @"\Templates\";
            NFCe.DiretorioEsquemas = Application.StartupPath + @"\Esquemas\";
            NFCe.DiretorioLogErro = Application.StartupPath + @"\Log\";
            NFCe.DiretorioLog = Application.StartupPath + @"\Log\";
            NFCe.DiretorioXmlDestinatario = Application.StartupPath + @"\XMLDestinatario\";
            NFCe.ArquivoServidoresHom = Application.StartupPath + @"\NFCeServidoresHom.ini";
            NFCe.ArquivoServidoresProd = Application.StartupPath + @"\NFCeServidoresProd.ini";
            NFCe.ModeloDanfce = NFCe.DiretorioTemplates + @"danfce\retrato.rtm";
        }

        public frmPrincipal()
        {
            InitializeComponent();

            try
            {
                string[] vetor;
                vetor = NFCe.ListarCertificados("|").Split('|');//Método do componente que busca os certificados
                cbCertificado.Items.Clear();
                for (int i = 0; i < vetor.Length; i++)
                {
                    cbCertificado.Items.Add(vetor[i]);
                }
            }
            catch
            {
                MessageBox.Show("Nenhum certificado encontrado! Verifique o repositorio do windows.");
            }
        }

        public string ReadFile(string Arquivo, string extencao)
        {
            string xml = NFCe.DiretorioXmlDestinatario + Arquivo + extencao + ".xml";
            xDoc.Load(xml);
            return xDoc.InnerXml;
        }

        private void btnEventos_Click(object sender, EventArgs e)
        {
            frmEventos novaform = new frmEventos();
            novaform.Show();
        }

        private void btnLoadConfig_Click(object sender, EventArgs e)
        {
            NFCe.ConfigurarSoftwareHouse("08187168000160", "");
            NFCe.LoadConfig(Application.StartupPath + @"\NFCeConfig.ini");
            CarregarConfig();
            cbCertificado.Text = NFCe.NomeCertificado;
            edtUf.Text = NFCe.UF;
            edtCnpj.Text = NFCe.CNPJ;
            
        }

        private void cbCertificado_SelectedIndexChanged(object sender, EventArgs e)
        {
            IniFile ini = new IniFile(Application.StartupPath + @"\NFCeConfig.ini");

            //Escreve o nome do certificado no arquivo ini
            ini.IniWriteValue("NFCE", "NomeCertificado", cbCertificado.SelectedItem.ToString());
        }

        private void btnIni_Click(object sender, EventArgs e)
        {
            // Metodo que abre o arquivo ini de configuração.
            Process.Start(@System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase).Replace("\\", "//").Remove(0, 7) + "//nfceConfig.ini");
        }

        private void btnStatus_Click(object sender, EventArgs e)
        {
            try
            {
                mmXml.Text = NFCe.StatusDoServico(); // Método do componente que verifica a conexão com o sefaz
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error");
            }
        }

        private void btnAssinar_Click(object sender, EventArgs e)
        {
            try
            {
                mmXml.Text = NFCe.AssinarNota(mmXml.Text);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error");
            }
        }

        private void btnEnviarNF_Click(object sender, EventArgs e)
        {         
            try
            {
                mmXml.Text = NFCe.EnviarNF("0001", mmXml.Text, false);
                xDoc.LoadXml(mmXml.Text);
                edtNumRecibo.Text = xDoc.GetElementsByTagName("nRec").Item(0).InnerText;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error");
            }
        }

        private void btnConsultarRecibo_Click(object sender, EventArgs e)
        {
            try
            {
                mmXml.Text = NFCe.ConsultarRecibo(edtNumRecibo.Text);
                xDoc.LoadXml(mmXml.Text);
                edtNumProtocolo.Text = xDoc.GetElementsByTagName("nProt").Item(0).InnerText;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error");
            }
        }

        private void btnConsultarNF_Click(object sender, EventArgs e)
        {
            try
            {
                mmXml.Text = NFCe.ConsultarNF(edtIdNFe.Text);
                xDoc.LoadXml(mmXml.Text);
                edtNumRecibo.Text = xDoc.GetElementsByTagName("nProt").Item(0).InnerText;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error");
            }
        }

        private void btnPrever_Click(object sender, EventArgs e)
        {
            try
            {
                NFCe.PreverDanfce(mmXml.Text, "");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error");
            }
            
        }

        private void btnEditarDanfe_Click(object sender, EventArgs e)
        {
            if (edtIdNFe.Text != "")
            {
                try
                {
                    NFCe.EditarModeloDanfce("00001", ReadFile(edtIdNFe.Text, "-nfce"), "");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Error");
                }
                
            }
            else
            {
                try
                {
                    NFCe.EditarModeloDanfce("00001", mmXml.Text, "");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Error");
                }
            }
        }

        private void btnImprimir_Click(object sender, EventArgs e)
        {
            if (edtIdNFe.Text != "")
            {
                NFCe.ImprimirDanfce("00001", ReadFile(edtIdNFe.Text, "-nfce"), "", "");
            }
            else
            {
                NFCe.ImprimirDanfce("00001", mmXml.Text, "", "");
            }
        }

        private void btnExportarPDF_Click(object sender, EventArgs e)
        {
            if (edtIdNFe.Text != "")
            {
                NFCe.ExportarDanfce("00001", ReadFile(edtIdNFe.Text, "-nfce"), "", 1, "");
            }
            else
            {
                NFCe.ExportarDanfce("00001", mmXml.Text, "", 1, "");
            }
        }

        private void btnVisualizar_Click(object sender, EventArgs e)
        {

            if (edtIdNFe.Text != "")
            {
                NFCe.VisualizarDanfce("00001", ReadFile(edtIdNFe.Text, "-nfce"), "");
            }
            else
            {
                NFCe.VisualizarDanfce("00001", mmXml.Text, "");
            }
        }

        private void btnEnviarEmail_Click(object sender, EventArgs e)
        {
            NFCe.AnexarDAMFCEPDF = true;
            NFCe.EnviarNotaDestinatario(edtIdNFe.Text, "", "");
        }

        private void btnInutilizar_Click(object sender, EventArgs e)
        {
            Inutilização.Visible = true;
        }

        private void btnEnviarInutilizacao_Click(object sender, EventArgs e)
        {
            string ano = edtInutAno.Text;
            string serie = edtInutSerie.Text;
            string faixaIni = edtInutFaixaIni.Text;
            string faixaFim = edtInutFaixaFim.Text;
            string justificativa = edtInutJustificativa.Text;

            try
            {//o modelo esta sendo passado Fixo "65"
                mmXml.Text = NFCe.InutilizarNF("", ano, NFCe.CNPJ, "65", serie, faixaIni, faixaFim, justificativa);
            }catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

            Inutilização.Visible = false;
        }

        private void frmPrincipal_Load(object sender, EventArgs e)
        {
            NFCe.ConfigurarSoftwareHouse("08187168000160", "");
            NFCe.LoadConfig(Application.StartupPath + @"\NFCeConfig.ini");
            

            CarregarConfig();
            cbCertificado.Text = NFCe.NomeCertificado;
            edtUf.Text = NFCe.UF;
            edtCnpj.Text = NFCe.CNPJ;
        }

        private void btnGerarTx2_Click(object sender, EventArgs e)
        {
            dlgTx2.InitialDirectory = Application.StartupPath;
            if (dlgTx2.ShowDialog() == DialogResult.OK)
            {
                mmXml.Text = NFCe.ConverterLoteParaXml(dlgTx2.FileName, LayoutConv.lkTXTDataSet, "pl_008i1");
                xDoc.LoadXml(mmXml.Text);
                edtIdNFe.Text = mmXml.Text.Substring(15, 44);
            }
        }

        private void btnGerarXMLDestinatario_Click(object sender, EventArgs e)
        {
            string aLogEnvio = "";
            string aLogRec = "";
            dlgTx2.InitialDirectory = Application.StartupPath;
            dlgTx2Consulta.InitialDirectory = Application.StartupPath;

            dlgTx2.ShowDialog();
            aLogEnvio = dlgTx2.FileName;
            dlgTx2Consulta.ShowDialog();
            aLogRec = dlgTx2Consulta.FileName;

            if ((dlgTx2.ShowDialog() == DialogResult.OK) && (dlgTx2Consulta.ShowDialog() == DialogResult.OK))
            {
                
                try
                {
                    NFCe.GerarXMLEnvioDestinatario(edtIdNFe.Text, aLogEnvio, aLogRec, "");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Error");
                }

            }else
            {
                MessageBox.Show("Deve ser Selecionado o XML de envio e XMl de consulta","Error");
            }

        }

        private void btnGerarXMLCancDest_Click(object sender, EventArgs e)
        {
            string aLogEnvio = "";
            string aLogRec = "";
            /* dlgTx2.InitialDirectory = Application.StartupPath;
            dlgTx2.ShowDialog();
            aLogEnvio = dlgTx2.FileName;
            dlgTx2.ShowDialog();*/
            aLogEnvio = dlgTx2.FileName;
            aLogRec = dlgTx2.FileName;
            NFCe.GerarXMLEnvioDestinatario(edtIdNFe.Text, aLogEnvio, aLogRec, "");
        }

        private void btnEnvioSincrono_Click(object sender, EventArgs e)
        {
            try
            {
                mmXml.Text = NFCe.EnviarNFSincrono("00001", mmXml.Text, false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error");
            }
            
        }

        private void btnTX240_Click(object sender, EventArgs e)
        {
            //Carrega o caminhos do Schemas e Tamplates
            dlgTx2.InitialDirectory = Application.StartupPath;
            NFCe.LoadConfig(Application.StartupPath + @"\NFCeConfig.ini");

            if (mmXml.Text != "")
            {
                mmXml.Text = NFCe.ConverterLoteParaXml(mmXml.Text, LayoutConv.lkTXTDataSet, "pl_009");
            }

            if (dlgTx2.ShowDialog() == DialogResult.OK)
            {
                mmXml.Text = NFCe.ConverterLoteParaXml(dlgTx2.FileName, LayoutConv.lkTXTDataSet, "pl_009");
                xDoc.LoadXml(mmXml.Text);
                edtIdNFe.Text = mmXml.Text.Substring(15, 44);
            }

        }

        private void btnSalvarConfig_Click(object sender, EventArgs e)
        {
            IniFile ini = new IniFile(Application.StartupPath + @"\NFCeConfig.ini");

            //Escreve os dados no ini
            if (cbCertificado.SelectedItem == null)
            {
                ini.IniWriteValue("NFCE", "CNPJ", edtCnpj.Text);
                ini.IniWriteValue("NFCE", "UF", edtUf.Text);
            }
            else
            {
                ini.IniWriteValue("NFCE", "NomeCertificado", cbCertificado.SelectedItem.ToString());
                ini.IniWriteValue("NFCE", "CNPJ", edtCnpj.Text);
                ini.IniWriteValue("NFCE", "UF", edtUf.Text);
            }

        }

        //DataSet
        private void DadosDoNFe400()
        {
            Random Rand = new Random();
            ////////////Dados da Nota Fiscal eletrônica///////////////
            NFCeDataSet.SetCampo("Id_A03=");
            NFCeDataSet.SetCampo("versao_A02=4.00");
            
            ////////////Identificação da Nota Fiscal eletrônica///////////////
            NFCeDataSet.SetCampo("cUF_B02=41");
            NFCeDataSet.SetCampo("cNF_B03=" + Convert.ToString(Rand.Next(11111111, 99999999)));
            NFCeDataSet.SetCampo("natOp_B04=VENDA DE MERCADORIA ADQ. DE TERCEIRO");
            //indPag_B05 removido do esquema//
            NFCeDataSet.SetCampo("mod_B06=65");
            NFCeDataSet.SetCampo("serie_B07=" + Convert.ToString(Rand.Next(1, 999)));

            NFCeDataSet.SetCampo("nNF_B08=" + Convert.ToString(Rand.Next(1, 999999999)));
            NFCeDataSet.SetCampo("dhEmi_B09=" + String.Format("{0:yyyy-MM-ddTHH:mm:ss}", DateTime.Now) + "-03:00");
            NFCeDataSet.SetCampo("tpNF_B11=1");
            NFCeDataSet.SetCampo("idDest_B11a=1");
            NFCeDataSet.SetCampo("cMunFG_B12=4115200");

            NFCeDataSet.SetCampo("tpImp_B21=4");

            NFCeDataSet.SetCampo("tpEmis_B22=1");
            NFCeDataSet.SetCampo("cDV_B23=");
            NFCeDataSet.SetCampo("tpAmb_B24=2");
            NFCeDataSet.SetCampo("finNFe_B25=1");
            NFCeDataSet.SetCampo("indFinal_B25a=1");
            NFCeDataSet.SetCampo("indPres_B25b=1");
            NFCeDataSet.SetCampo("procEmi_B26=0");
            NFCeDataSet.SetCampo("verProc_B27=5");
        }

        private void DadosDoEmitente()
        {
            ////////////Identificação do Emitente da Nota Fiscal eletrônica///////////////
            NFCeDataSet.SetCampo("CNPJ_C02=" + NFCe.CNPJ);
            NFCeDataSet.SetCampo("xNome_C03=Tecnospeed .LTDA");
            NFCeDataSet.SetCampo("xFant_C04=Tecnospeed");
            NFCeDataSet.SetCampo("xLgr_C06=Avenida Duque de Caxias");
            NFCeDataSet.SetCampo("nro_C07=882");
            NFCeDataSet.SetCampo("xBairro_C09=CENTRO");
            NFCeDataSet.SetCampo("cMun_C10=4115200");
            NFCeDataSet.SetCampo("xMun_C11=MARINGA");
            NFCeDataSet.SetCampo("UF_C12=" + NFCe.UF);
            NFCeDataSet.SetCampo("CEP_C13=87020025");
            NFCeDataSet.SetCampo("cPais_C14=1058");
            NFCeDataSet.SetCampo("xPais_C15=BRASIL");
            NFCeDataSet.SetCampo("fone_C16=4430283749");
            NFCeDataSet.SetCampo("IE_C17=9044016688");
            NFCeDataSet.SetCampo("CRT_C21=3");

        }

        private void DadosDoDestinatario()
        {
            ////////////Identificação do Destinatário///////////////
            NFCeDataSet.SetCampo("CPF_E03=81250814294");
            NFCeDataSet.SetCampo("xNome_E04=NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL");
            NFCeDataSet.SetCampo("xLgr_E06=Rua Rui Barbosa");
            NFCeDataSet.SetCampo("nro_E07=897");
            NFCeDataSet.SetCampo("xCpl_E08=");
            NFCeDataSet.SetCampo("xBairro_E09=Zona 07");
            NFCeDataSet.SetCampo("cMun_E10=4115200");
            NFCeDataSet.SetCampo("xMun_E11=MARINGA");
            NFCeDataSet.SetCampo("UF_E12=PR");
            NFCeDataSet.SetCampo("CEP_E13=95700000");
            NFCeDataSet.SetCampo("cPais_E14=1058");
            NFCeDataSet.SetCampo("xPais_E15=BRASIL");
            NFCeDataSet.SetCampo("fone_E16=445555555");
            NFCeDataSet.SetCampo("indIEDest_E16a=9");
        }

        private void DadosTotalizadores400()
        {
            NFCeDataSet.SetCampo("vBC_W03=1.00");
            NFCeDataSet.SetCampo("vICMS_W04=0.10");

            //campo novo
            NFCeDataSet.SetCampo("vFCP_W04h=0.00");

            NFCeDataSet.SetCampo("vICMSDeson_W04a=0.00");
            NFCeDataSet.SetCampo("vBCST_W05=0.00");
            NFCeDataSet.SetCampo("vST_W06=0.00");

            //campos novos
            NFCeDataSet.SetCampo("vFCPST_W06a=0.00");
            NFCeDataSet.SetCampo("vFCPSTRet_W06b=0.00");

            NFCeDataSet.SetCampo("vProd_W07=1.00");
            NFCeDataSet.SetCampo("vFrete_W08=0.00");
            NFCeDataSet.SetCampo("vSeg_W09=0.00");
            NFCeDataSet.SetCampo("vDesc_W10=0.00");
            NFCeDataSet.SetCampo("vII_W11=0.00");
            NFCeDataSet.SetCampo("vIPI_W12=0.00");

            //campo novo
            NFCeDataSet.SetCampo("vIPIDevol_W12a=0.00");

            NFCeDataSet.SetCampo("vPIS_W13=0.00");
            NFCeDataSet.SetCampo("vCOFINS_W14=0.00");
            NFCeDataSet.SetCampo("vOutro_W15=0.00");
            NFCeDataSet.SetCampo("vNF_W16=1.00");
            NFCeDataSet.SetCampo("vTotTrib_W16a=1.00");
        }

        private void DadosDoItem()
        {
            NFCeDataSet.IncluirItem();
            ////////////Detalhamento de Produtos e Serviços da NF-e///////////////
            NFCeDataSet.SetCampo("nItem_H02=1");

            ////////////Produtos e Serviços da NF-e///////////////
            NFCeDataSet.SetCampo("cProd_I02=25");

            //O campo permanece, mas agora, quando não houver valor nele, deve-se informar o loteral SEM GTIN
            NFCeDataSet.SetCampo("cEAN_I03=7898106035513");

            NFCeDataSet.SetCampo("xProd_I04=NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL");
            NFCeDataSet.SetCampo("NCM_I05=30043929");    //30043929
            NFCeDataSet.SetCampo("CFOP_I08=5102");
            NFCeDataSet.SetCampo("uCom_I09=CX");
            NFCeDataSet.SetCampo("qCom_I10=1.0000");
            NFCeDataSet.SetCampo("vUnCom_I10a=1.0000");
            NFCeDataSet.SetCampo("vProd_I11=1.00");

            //O campo permanece, mas agora, quando não houver valor nele, deve-se informar o loteral SEM GTIN
            NFCeDataSet.SetCampo("cEANTrib_I12=7898106035513");

            NFCeDataSet.SetCampo("uTrib_I13=CX");
            NFCeDataSet.SetCampo("qTrib_I14=1.0000");
            NFCeDataSet.SetCampo("vUnTrib_I14a=1.0000");
            NFCeDataSet.SetCampo("indTot_I17b=1");

            ////////////Tributos incidentes no Produto ou Serviço///////////////
            NFCeDataSet.SetCampo("vTotTrib_M02=1.00");


            ////////////ICMS///////////////
            NFCeDataSet.SetCampo("orig_N11=0");
            NFCeDataSet.SetCampo("CST_N12=00");
            NFCeDataSet.SetCampo("modBC_N13=3");
            NFCeDataSet.SetCampo("vBC_N15=1.00");
            NFCeDataSet.SetCampo("pICMS_N16=10.00");
            NFCeDataSet.SetCampo("vICMS_N17=0.10");

            ////////////PIS///////////////
            NFCeDataSet.SetCampo("CST_Q06=07");

            ////////////CONFINS///////////////
            NFCeDataSet.SetCampo("CST_S06=07");

            NFCeDataSet.SetCampo("infAdProd_V01=Teste | Teste");

            NFCeDataSet.SalvarItem();
        }

        private void DadosTransporte()
        {
            NFCeDataSet.SetCampo("modFrete_X02=9");
        }

        private void DadosAdicionais()
        {
            NFCeDataSet.SetCampo("infAdFisco_Z02=OBSERVACAO TESTE DA DANFE - FISCO  OBSERVACAO TESTE DA DANFE - FISCO");
            NFCeDataSet.SetCampo("infCpl_Z03=OBSERVACAO TESTE DA DANFE CONTRIBUINTE  OBSERVACAO TESTE DA DANFE CONTRIBUINTE");
        }

        private void DadosPagamento400()
        {

            NFCeDataSet.IncluirParte("YA");
            NFCeDataSet.SetCampo("tPag_YA02=01");
            NFCeDataSet.SetCampo("vPag_YA03=0.60");
            NFCeDataSet.SetCampo("vTroco_YA09=0.10"); //Campo novo. Só deve ser informado no dataset, quando o valor dele for maior do que 0.00.
            NFCeDataSet.SalvarParte("YA");

            NFCeDataSet.IncluirParte("YA");
            NFCeDataSet.SetCampo("tPag_YA02=05");
            NFCeDataSet.SetCampo("vPag_YA03=0.50");
            NFCeDataSet.SalvarParte("YA");
        }

        private void btnGerarDataSet400_Click(object sender, EventArgs e)
        {
            NFCe.VersaoManual = VersaoManualNFCe.vm60;
            edtNumRecibo.Text = "";
            edtNumProtocolo.Text = "";

            //Carrega o caminhos do Schemas e Tamplates
            dlgTx2.InitialDirectory = Application.StartupPath;
            NFCe.LoadConfig(Application.StartupPath + @"\NFCeConfig.ini");

            NFCeDataSet.VersaoEsquema = "pl_009";
            NFCeDataSet.DicionarioXML = NFCe.DiretorioTemplates + "Conversor\\NFCeDataSets.xml";

            NFCeDataSet.Incluir();

            DadosDoNFe400();
            DadosDoEmitente();
            //DadosDoDestinatario();
            DadosTotalizadores400();
            DadosDoItem(); //não houveram mudanças quanto ao esquema dos itens, apenas uma nova validação nas tags cEAN e cEANTrib
            DadosTransporte();
            DadosAdicionais();
            DadosPagamento400();

            NFCeDataSet.Salvar();

            mmXml.Text = NFCeDataSet.LoteNFCe;
            edtIdNFe.Text = NFCeDataSet.GetCampo("Id_A03").ToString().Remove(0, 3);
        }

    

       
    }
}
