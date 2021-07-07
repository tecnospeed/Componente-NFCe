namespace Demo_NFe
{
    partial class frmPrincipal
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.mmXml = new System.Windows.Forms.RichTextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnEnviarEmail = new System.Windows.Forms.Button();
            this.btnVisualizar = new System.Windows.Forms.Button();
            this.btnExportarPDF = new System.Windows.Forms.Button();
            this.btnImprimir = new System.Windows.Forms.Button();
            this.btnEditarDanfe = new System.Windows.Forms.Button();
            this.btnPrever = new System.Windows.Forms.Button();
            this.btnInutilizar = new System.Windows.Forms.Button();
            this.btnAssinar = new System.Windows.Forms.Button();
            this.btnConsultarNF = new System.Windows.Forms.Button();
            this.btnEnviarNF = new System.Windows.Forms.Button();
            this.btnStatus = new System.Windows.Forms.Button();
            this.btnIni = new System.Windows.Forms.Button();
            this.btnLoadConfig = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.edtNumProtocolo = new System.Windows.Forms.TextBox();
            this.edtNumRecibo = new System.Windows.Forms.TextBox();
            this.edtIdNFe = new System.Windows.Forms.TextBox();
            this.edtCnpj = new System.Windows.Forms.TextBox();
            this.edtUf = new System.Windows.Forms.TextBox();
            this.cbCertificado = new System.Windows.Forms.ComboBox();
            this.btnEventos = new System.Windows.Forms.Button();
            this.dlgTx2 = new System.Windows.Forms.OpenFileDialog();
            this.btnConsultarRecibo = new System.Windows.Forms.Button();
            this.btnEnvioSincrono = new System.Windows.Forms.Button();
            this.btnGerarXMLDestinatario = new System.Windows.Forms.Button();
            this.btnGerarDataSet400 = new System.Windows.Forms.Button();
            this.btnTX240 = new System.Windows.Forms.Button();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btnSalvarConfig = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.dlgTx2Consulta = new System.Windows.Forms.OpenFileDialog();
            this.Inutilização = new System.Windows.Forms.GroupBox();
            this.btnEnviarInutilizacao = new System.Windows.Forms.Button();
            this.label11 = new System.Windows.Forms.Label();
            this.edtInutJustificativa = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.edtInutFaixaFim = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.edtInutFaixaIni = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.edtInutSerie = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.edtInutAno = new System.Windows.Forms.TextBox();
            this.groupBox1.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.Inutilização.SuspendLayout();
            this.SuspendLayout();
            // 
            // mmXml
            // 
            this.mmXml.Location = new System.Drawing.Point(456, 12);
            this.mmXml.Name = "mmXml";
            this.mmXml.ScrollBars = System.Windows.Forms.RichTextBoxScrollBars.Vertical;
            this.mmXml.Size = new System.Drawing.Size(471, 495);
            this.mmXml.TabIndex = 0;
            this.mmXml.Text = "";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnEnviarEmail);
            this.groupBox1.Controls.Add(this.btnVisualizar);
            this.groupBox1.Controls.Add(this.btnExportarPDF);
            this.groupBox1.Controls.Add(this.btnImprimir);
            this.groupBox1.Controls.Add(this.btnEditarDanfe);
            this.groupBox1.Controls.Add(this.btnPrever);
            this.groupBox1.Location = new System.Drawing.Point(295, 162);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(155, 220);
            this.groupBox1.TabIndex = 45;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Impressão";
            // 
            // btnEnviarEmail
            // 
            this.btnEnviarEmail.Location = new System.Drawing.Point(17, 183);
            this.btnEnviarEmail.Name = "btnEnviarEmail";
            this.btnEnviarEmail.Size = new System.Drawing.Size(122, 27);
            this.btnEnviarEmail.TabIndex = 46;
            this.btnEnviarEmail.Text = "13. Enviar Email";
            this.btnEnviarEmail.UseVisualStyleBackColor = true;
            this.btnEnviarEmail.Click += new System.EventHandler(this.btnEnviarEmail_Click);
            // 
            // btnVisualizar
            // 
            this.btnVisualizar.Location = new System.Drawing.Point(17, 152);
            this.btnVisualizar.Name = "btnVisualizar";
            this.btnVisualizar.Size = new System.Drawing.Size(122, 25);
            this.btnVisualizar.TabIndex = 21;
            this.btnVisualizar.Text = "12. Visualizar";
            this.btnVisualizar.UseVisualStyleBackColor = true;
            this.btnVisualizar.Click += new System.EventHandler(this.btnVisualizar_Click);
            // 
            // btnExportarPDF
            // 
            this.btnExportarPDF.Location = new System.Drawing.Point(17, 121);
            this.btnExportarPDF.Name = "btnExportarPDF";
            this.btnExportarPDF.Size = new System.Drawing.Size(122, 25);
            this.btnExportarPDF.TabIndex = 20;
            this.btnExportarPDF.Text = "11. Exportar PDF";
            this.btnExportarPDF.UseVisualStyleBackColor = true;
            this.btnExportarPDF.Click += new System.EventHandler(this.btnExportarPDF_Click);
            // 
            // btnImprimir
            // 
            this.btnImprimir.Location = new System.Drawing.Point(17, 90);
            this.btnImprimir.Name = "btnImprimir";
            this.btnImprimir.Size = new System.Drawing.Size(122, 25);
            this.btnImprimir.TabIndex = 19;
            this.btnImprimir.Text = "10. Imprimir";
            this.btnImprimir.UseVisualStyleBackColor = true;
            this.btnImprimir.Click += new System.EventHandler(this.btnImprimir_Click);
            // 
            // btnEditarDanfe
            // 
            this.btnEditarDanfe.Location = new System.Drawing.Point(17, 59);
            this.btnEditarDanfe.Name = "btnEditarDanfe";
            this.btnEditarDanfe.Size = new System.Drawing.Size(122, 25);
            this.btnEditarDanfe.TabIndex = 18;
            this.btnEditarDanfe.Text = "9. Editar Danfe";
            this.btnEditarDanfe.UseVisualStyleBackColor = true;
            this.btnEditarDanfe.Click += new System.EventHandler(this.btnEditarDanfe_Click);
            // 
            // btnPrever
            // 
            this.btnPrever.Location = new System.Drawing.Point(17, 28);
            this.btnPrever.Name = "btnPrever";
            this.btnPrever.Size = new System.Drawing.Size(122, 25);
            this.btnPrever.TabIndex = 17;
            this.btnPrever.Text = "Prever Danfe";
            this.btnPrever.UseVisualStyleBackColor = true;
            this.btnPrever.Click += new System.EventHandler(this.btnPrever_Click);
            // 
            // btnInutilizar
            // 
            this.btnInutilizar.Location = new System.Drawing.Point(8, 202);
            this.btnInutilizar.Name = "btnInutilizar";
            this.btnInutilizar.Size = new System.Drawing.Size(120, 25);
            this.btnInutilizar.TabIndex = 44;
            this.btnInutilizar.Text = "8. Inutilizar Numeração";
            this.btnInutilizar.UseVisualStyleBackColor = true;
            this.btnInutilizar.Click += new System.EventHandler(this.btnInutilizar_Click);
            // 
            // btnAssinar
            // 
            this.btnAssinar.Location = new System.Drawing.Point(8, 49);
            this.btnAssinar.Name = "btnAssinar";
            this.btnAssinar.Size = new System.Drawing.Size(120, 25);
            this.btnAssinar.TabIndex = 42;
            this.btnAssinar.Text = "Assinar XML";
            this.btnAssinar.UseVisualStyleBackColor = true;
            this.btnAssinar.Click += new System.EventHandler(this.btnAssinar_Click);
            // 
            // btnConsultarNF
            // 
            this.btnConsultarNF.Location = new System.Drawing.Point(8, 171);
            this.btnConsultarNF.Name = "btnConsultarNF";
            this.btnConsultarNF.Size = new System.Drawing.Size(120, 25);
            this.btnConsultarNF.TabIndex = 41;
            this.btnConsultarNF.Text = "6. Consultar NFCe";
            this.btnConsultarNF.UseVisualStyleBackColor = true;
            this.btnConsultarNF.Click += new System.EventHandler(this.btnConsultarNF_Click);
            // 
            // btnEnviarNF
            // 
            this.btnEnviarNF.Location = new System.Drawing.Point(8, 109);
            this.btnEnviarNF.Name = "btnEnviarNF";
            this.btnEnviarNF.Size = new System.Drawing.Size(120, 25);
            this.btnEnviarNF.TabIndex = 39;
            this.btnEnviarNF.Text = "Enviar Assincrono";
            this.btnEnviarNF.UseVisualStyleBackColor = true;
            this.btnEnviarNF.Click += new System.EventHandler(this.btnEnviarNF_Click);
            // 
            // btnStatus
            // 
            this.btnStatus.Location = new System.Drawing.Point(8, 19);
            this.btnStatus.Name = "btnStatus";
            this.btnStatus.Size = new System.Drawing.Size(120, 25);
            this.btnStatus.TabIndex = 36;
            this.btnStatus.Text = "Verificar Status";
            this.btnStatus.UseVisualStyleBackColor = true;
            this.btnStatus.Click += new System.EventHandler(this.btnStatus_Click);
            // 
            // btnIni
            // 
            this.btnIni.Location = new System.Drawing.Point(8, 19);
            this.btnIni.Name = "btnIni";
            this.btnIni.Size = new System.Drawing.Size(119, 25);
            this.btnIni.TabIndex = 35;
            this.btnIni.Text = "Configurar Ini";
            this.btnIni.UseVisualStyleBackColor = true;
            this.btnIni.Click += new System.EventHandler(this.btnIni_Click);
            // 
            // btnLoadConfig
            // 
            this.btnLoadConfig.Location = new System.Drawing.Point(8, 47);
            this.btnLoadConfig.Name = "btnLoadConfig";
            this.btnLoadConfig.Size = new System.Drawing.Size(119, 22);
            this.btnLoadConfig.TabIndex = 34;
            this.btnLoadConfig.Text = "Load Config";
            this.btnLoadConfig.UseVisualStyleBackColor = true;
            this.btnLoadConfig.Click += new System.EventHandler(this.btnLoadConfig_Click);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(213, 91);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(107, 13);
            this.label5.TabIndex = 33;
            this.label5.Text = "Número do Protocolo";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 91);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(96, 13);
            this.label4.TabIndex = 32;
            this.label4.Text = "Número do Recibo";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(166, 52);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(68, 13);
            this.label3.TabIndex = 31;
            this.label3.Text = "Chave NFCe";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(49, 52);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(34, 13);
            this.label2.TabIndex = 30;
            this.label2.Text = "CNPJ";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 52);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(21, 13);
            this.label1.TabIndex = 29;
            this.label1.Text = "UF";
            // 
            // edtNumProtocolo
            // 
            this.edtNumProtocolo.Location = new System.Drawing.Point(216, 107);
            this.edtNumProtocolo.Name = "edtNumProtocolo";
            this.edtNumProtocolo.Size = new System.Drawing.Size(234, 20);
            this.edtNumProtocolo.TabIndex = 28;
            // 
            // edtNumRecibo
            // 
            this.edtNumRecibo.Location = new System.Drawing.Point(12, 107);
            this.edtNumRecibo.Name = "edtNumRecibo";
            this.edtNumRecibo.Size = new System.Drawing.Size(198, 20);
            this.edtNumRecibo.TabIndex = 27;
            // 
            // edtIdNFe
            // 
            this.edtIdNFe.Location = new System.Drawing.Point(166, 68);
            this.edtIdNFe.Name = "edtIdNFe";
            this.edtIdNFe.Size = new System.Drawing.Size(284, 20);
            this.edtIdNFe.TabIndex = 26;
            // 
            // edtCnpj
            // 
            this.edtCnpj.Location = new System.Drawing.Point(52, 68);
            this.edtCnpj.Name = "edtCnpj";
            this.edtCnpj.Size = new System.Drawing.Size(108, 20);
            this.edtCnpj.TabIndex = 25;
            // 
            // edtUf
            // 
            this.edtUf.Location = new System.Drawing.Point(12, 68);
            this.edtUf.Name = "edtUf";
            this.edtUf.Size = new System.Drawing.Size(34, 20);
            this.edtUf.TabIndex = 24;
            // 
            // cbCertificado
            // 
            this.cbCertificado.FormattingEnabled = true;
            this.cbCertificado.Location = new System.Drawing.Point(12, 24);
            this.cbCertificado.Name = "cbCertificado";
            this.cbCertificado.Size = new System.Drawing.Size(438, 21);
            this.cbCertificado.TabIndex = 23;
            this.cbCertificado.SelectedIndexChanged += new System.EventHandler(this.cbCertificado_SelectedIndexChanged);
            // 
            // btnEventos
            // 
            this.btnEventos.Location = new System.Drawing.Point(296, 469);
            this.btnEventos.Name = "btnEventos";
            this.btnEventos.Size = new System.Drawing.Size(155, 31);
            this.btnEventos.TabIndex = 46;
            this.btnEventos.Text = "Eventos NFCe";
            this.btnEventos.UseVisualStyleBackColor = true;
            this.btnEventos.Click += new System.EventHandler(this.btnEventos_Click);
            // 
            // dlgTx2
            // 
            this.dlgTx2.FileName = "dlgTx2";
            // 
            // btnConsultarRecibo
            // 
            this.btnConsultarRecibo.Location = new System.Drawing.Point(8, 140);
            this.btnConsultarRecibo.Name = "btnConsultarRecibo";
            this.btnConsultarRecibo.Size = new System.Drawing.Size(120, 25);
            this.btnConsultarRecibo.TabIndex = 40;
            this.btnConsultarRecibo.Text = "Consultar Recibo";
            this.btnConsultarRecibo.UseVisualStyleBackColor = true;
            this.btnConsultarRecibo.Click += new System.EventHandler(this.btnConsultarRecibo_Click);
            // 
            // btnEnvioSincrono
            // 
            this.btnEnvioSincrono.Location = new System.Drawing.Point(8, 80);
            this.btnEnvioSincrono.Name = "btnEnvioSincrono";
            this.btnEnvioSincrono.Size = new System.Drawing.Size(120, 25);
            this.btnEnvioSincrono.TabIndex = 47;
            this.btnEnvioSincrono.Text = " Enviar NFCe";
            this.btnEnvioSincrono.UseVisualStyleBackColor = true;
            this.btnEnvioSincrono.Click += new System.EventHandler(this.btnEnvioSincrono_Click);
            // 
            // btnGerarXMLDestinatario
            // 
            this.btnGerarXMLDestinatario.Location = new System.Drawing.Point(10, 469);
            this.btnGerarXMLDestinatario.Name = "btnGerarXMLDestinatario";
            this.btnGerarXMLDestinatario.Size = new System.Drawing.Size(130, 38);
            this.btnGerarXMLDestinatario.TabIndex = 48;
            this.btnGerarXMLDestinatario.Text = "Gerar XML Destinatario";
            this.btnGerarXMLDestinatario.UseVisualStyleBackColor = true;
            this.btnGerarXMLDestinatario.Click += new System.EventHandler(this.btnGerarXMLDestinatario_Click);
            // 
            // btnGerarDataSet400
            // 
            this.btnGerarDataSet400.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnGerarDataSet400.Location = new System.Drawing.Point(6, 19);
            this.btnGerarDataSet400.Name = "btnGerarDataSet400";
            this.btnGerarDataSet400.Size = new System.Drawing.Size(122, 25);
            this.btnGerarDataSet400.TabIndex = 49;
            this.btnGerarDataSet400.Text = "DataSet";
            this.btnGerarDataSet400.UseVisualStyleBackColor = true;
            this.btnGerarDataSet400.Click += new System.EventHandler(this.btnGerarDataSet400_Click);
            // 
            // btnTX240
            // 
            this.btnTX240.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTX240.Location = new System.Drawing.Point(6, 47);
            this.btnTX240.Name = "btnTX240";
            this.btnTX240.Size = new System.Drawing.Size(124, 25);
            this.btnTX240.TabIndex = 50;
            this.btnTX240.Text = "TX2";
            this.btnTX240.UseVisualStyleBackColor = true;
            this.btnTX240.Click += new System.EventHandler(this.btnTX240_Click);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.btnTX240);
            this.groupBox3.Controls.Add(this.btnGerarDataSet400);
            this.groupBox3.Location = new System.Drawing.Point(10, 271);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(137, 81);
            this.groupBox3.TabIndex = 51;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Geração NFCe";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btnSalvarConfig);
            this.groupBox2.Controls.Add(this.btnIni);
            this.groupBox2.Controls.Add(this.btnLoadConfig);
            this.groupBox2.Location = new System.Drawing.Point(11, 162);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(136, 103);
            this.groupBox2.TabIndex = 52;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Geração NFCe";
            // 
            // btnSalvarConfig
            // 
            this.btnSalvarConfig.Location = new System.Drawing.Point(7, 72);
            this.btnSalvarConfig.Name = "btnSalvarConfig";
            this.btnSalvarConfig.Size = new System.Drawing.Size(120, 23);
            this.btnSalvarConfig.TabIndex = 54;
            this.btnSalvarConfig.Text = "Salvar";
            this.btnSalvarConfig.UseVisualStyleBackColor = true;
            this.btnSalvarConfig.Click += new System.EventHandler(this.btnSalvarConfig_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(12, 9);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(62, 13);
            this.label6.TabIndex = 53;
            this.label6.Text = "Certificados";
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.btnStatus);
            this.groupBox4.Controls.Add(this.btnAssinar);
            this.groupBox4.Controls.Add(this.btnEnviarNF);
            this.groupBox4.Controls.Add(this.btnEnvioSincrono);
            this.groupBox4.Controls.Add(this.btnConsultarRecibo);
            this.groupBox4.Controls.Add(this.btnInutilizar);
            this.groupBox4.Controls.Add(this.btnConsultarNF);
            this.groupBox4.Location = new System.Drawing.Point(152, 162);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(137, 338);
            this.groupBox4.TabIndex = 54;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "groupBox4";
            // 
            // dlgTx2Consulta
            // 
            this.dlgTx2Consulta.FileName = "dlgTx2Consulta";
            // 
            // Inutilização
            // 
            this.Inutilização.Controls.Add(this.btnEnviarInutilizacao);
            this.Inutilização.Controls.Add(this.label11);
            this.Inutilização.Controls.Add(this.edtInutJustificativa);
            this.Inutilização.Controls.Add(this.label9);
            this.Inutilização.Controls.Add(this.edtInutFaixaFim);
            this.Inutilização.Controls.Add(this.label10);
            this.Inutilização.Controls.Add(this.edtInutFaixaIni);
            this.Inutilização.Controls.Add(this.label8);
            this.Inutilização.Controls.Add(this.edtInutSerie);
            this.Inutilização.Controls.Add(this.label7);
            this.Inutilização.Controls.Add(this.edtInutAno);
            this.Inutilização.Location = new System.Drawing.Point(456, 13);
            this.Inutilização.Name = "Inutilização";
            this.Inutilização.Size = new System.Drawing.Size(139, 244);
            this.Inutilização.TabIndex = 55;
            this.Inutilização.TabStop = false;
            this.Inutilização.Text = "Inutilização";
            this.Inutilização.Visible = false;
            // 
            // btnEnviarInutilizacao
            // 
            this.btnEnviarInutilizacao.Location = new System.Drawing.Point(6, 213);
            this.btnEnviarInutilizacao.Name = "btnEnviarInutilizacao";
            this.btnEnviarInutilizacao.Size = new System.Drawing.Size(125, 23);
            this.btnEnviarInutilizacao.TabIndex = 10;
            this.btnEnviarInutilizacao.Text = "Inutilizar Numeração";
            this.btnEnviarInutilizacao.UseVisualStyleBackColor = true;
            this.btnEnviarInutilizacao.Click += new System.EventHandler(this.btnEnviarInutilizacao_Click);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(6, 171);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(62, 13);
            this.label11.TabIndex = 9;
            this.label11.Text = "Justificativa";
            // 
            // edtInutJustificativa
            // 
            this.edtInutJustificativa.Location = new System.Drawing.Point(6, 187);
            this.edtInutJustificativa.Name = "edtInutJustificativa";
            this.edtInutJustificativa.Size = new System.Drawing.Size(125, 20);
            this.edtInutJustificativa.TabIndex = 8;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(6, 132);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(57, 13);
            this.label9.TabIndex = 7;
            this.label9.Text = "Faixa Final";
            // 
            // edtInutFaixaFim
            // 
            this.edtInutFaixaFim.Location = new System.Drawing.Point(6, 148);
            this.edtInutFaixaFim.Name = "edtInutFaixaFim";
            this.edtInutFaixaFim.Size = new System.Drawing.Size(125, 20);
            this.edtInutFaixaFim.TabIndex = 6;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(6, 93);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(62, 13);
            this.label10.TabIndex = 5;
            this.label10.Text = "Faixa Inicial";
            // 
            // edtInutFaixaIni
            // 
            this.edtInutFaixaIni.Location = new System.Drawing.Point(6, 109);
            this.edtInutFaixaIni.Name = "edtInutFaixaIni";
            this.edtInutFaixaIni.Size = new System.Drawing.Size(125, 20);
            this.edtInutFaixaIni.TabIndex = 4;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(6, 54);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(31, 13);
            this.label8.TabIndex = 3;
            this.label8.Text = "Serie";
            // 
            // edtInutSerie
            // 
            this.edtInutSerie.Location = new System.Drawing.Point(6, 70);
            this.edtInutSerie.Name = "edtInutSerie";
            this.edtInutSerie.Size = new System.Drawing.Size(125, 20);
            this.edtInutSerie.TabIndex = 2;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(6, 15);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(26, 13);
            this.label7.TabIndex = 1;
            this.label7.Text = "Ano";
            // 
            // edtInutAno
            // 
            this.edtInutAno.Location = new System.Drawing.Point(6, 31);
            this.edtInutAno.Name = "edtInutAno";
            this.edtInutAno.Size = new System.Drawing.Size(125, 20);
            this.edtInutAno.TabIndex = 0;
            // 
            // frmPrincipal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(929, 512);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.btnGerarXMLDestinatario);
            this.Controls.Add(this.btnEventos);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.edtNumProtocolo);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.edtNumRecibo);
            this.Controls.Add(this.edtIdNFe);
            this.Controls.Add(this.edtCnpj);
            this.Controls.Add(this.edtUf);
            this.Controls.Add(this.cbCertificado);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.Inutilização);
            this.Controls.Add(this.mmXml);
            this.Name = "frmPrincipal";
            this.Text = "Demo NFCe";
            this.Load += new System.EventHandler(this.frmPrincipal_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox3.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox4.ResumeLayout(false);
            this.Inutilização.ResumeLayout(false);
            this.Inutilização.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.RichTextBox mmXml;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnVisualizar;
        private System.Windows.Forms.Button btnExportarPDF;
        private System.Windows.Forms.Button btnImprimir;
        private System.Windows.Forms.Button btnEditarDanfe;
        private System.Windows.Forms.Button btnInutilizar;
        private System.Windows.Forms.Button btnAssinar;
        private System.Windows.Forms.Button btnConsultarNF;
        private System.Windows.Forms.Button btnEnviarNF;
        private System.Windows.Forms.Button btnStatus;
        private System.Windows.Forms.Button btnIni;
        private System.Windows.Forms.Button btnLoadConfig;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox edtNumProtocolo;
        private System.Windows.Forms.TextBox edtNumRecibo;
        private System.Windows.Forms.TextBox edtIdNFe;
        private System.Windows.Forms.TextBox edtCnpj;
        private System.Windows.Forms.TextBox edtUf;
        private System.Windows.Forms.ComboBox cbCertificado;
        private System.Windows.Forms.Button btnPrever;
        private System.Windows.Forms.Button btnEnviarEmail;
        private System.Windows.Forms.Button btnEventos;
        private System.Windows.Forms.OpenFileDialog dlgTx2;
        private System.Windows.Forms.Button btnConsultarRecibo;
        private System.Windows.Forms.Button btnEnvioSincrono;
        private System.Windows.Forms.Button btnGerarXMLDestinatario;
        private System.Windows.Forms.Button btnGerarDataSet400;
        private System.Windows.Forms.Button btnTX240;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnSalvarConfig;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.OpenFileDialog dlgTx2Consulta;
        private System.Windows.Forms.GroupBox Inutilização;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox edtInutAno;
        private System.Windows.Forms.Button btnEnviarInutilizacao;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox edtInutJustificativa;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox edtInutFaixaFim;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox edtInutFaixaIni;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox edtInutSerie;
    }
}

