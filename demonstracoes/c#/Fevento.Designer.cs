namespace Demo_NFe
{
    partial class frmEventos
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmEventos));
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage4 = new System.Windows.Forms.TabPage();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.label18 = new System.Windows.Forms.Label();
            this.label19 = new System.Windows.Forms.Label();
            this.label20 = new System.Windows.Forms.Label();
            this.label21 = new System.Windows.Forms.Label();
            this.label22 = new System.Windows.Forms.Label();
            this.mmXmlCancelamento = new System.Windows.Forms.TextBox();
            this.btnDataHoraCancela = new System.Windows.Forms.Button();
            this.edtDataHoraCancelamento = new System.Windows.Forms.TextBox();
            this.edtJustificativaCancelamento = new System.Windows.Forms.TextBox();
            this.cbFusoCancelamento = new System.Windows.Forms.ComboBox();
            this.edtProtocolo = new System.Windows.Forms.TextBox();
            this.edtChaveCancelamento = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.tabControl1.SuspendLayout();
            this.tabPage4.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage4);
            this.tabControl1.Location = new System.Drawing.Point(0, 3);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(814, 387);
            this.tabControl1.TabIndex = 0;
            // 
            // tabPage4
            // 
            this.tabPage4.Controls.Add(this.btnCancelar);
            this.tabPage4.Controls.Add(this.label18);
            this.tabPage4.Controls.Add(this.label19);
            this.tabPage4.Controls.Add(this.label20);
            this.tabPage4.Controls.Add(this.label21);
            this.tabPage4.Controls.Add(this.label22);
            this.tabPage4.Controls.Add(this.mmXmlCancelamento);
            this.tabPage4.Controls.Add(this.btnDataHoraCancela);
            this.tabPage4.Controls.Add(this.edtDataHoraCancelamento);
            this.tabPage4.Controls.Add(this.edtJustificativaCancelamento);
            this.tabPage4.Controls.Add(this.cbFusoCancelamento);
            this.tabPage4.Controls.Add(this.edtProtocolo);
            this.tabPage4.Controls.Add(this.edtChaveCancelamento);
            this.tabPage4.Controls.Add(this.label4);
            this.tabPage4.Location = new System.Drawing.Point(4, 22);
            this.tabPage4.Name = "tabPage4";
            this.tabPage4.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage4.Size = new System.Drawing.Size(806, 361);
            this.tabPage4.TabIndex = 3;
            this.tabPage4.Text = "Cancelar NFC-e";
            this.tabPage4.UseVisualStyleBackColor = true;
            // 
            // btnCancelar
            // 
            this.btnCancelar.Location = new System.Drawing.Point(654, 119);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(145, 26);
            this.btnCancelar.TabIndex = 29;
            this.btnCancelar.Text = "Cancelar NFCe";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Location = new System.Drawing.Point(425, 77);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(117, 13);
            this.label18.TabIndex = 28;
            this.label18.Text = "Data e Hora do Evento";
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Location = new System.Drawing.Point(7, 77);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(148, 13);
            this.label19.TabIndex = 27;
            this.label19.Text = "Justificativa de Cancelamento";
            // 
            // label20
            // 
            this.label20.AutoSize = true;
            this.label20.Location = new System.Drawing.Point(598, 23);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(67, 13);
            this.label20.TabIndex = 26;
            this.label20.Text = "Fuso Horário";
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.Location = new System.Drawing.Point(425, 23);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(126, 13);
            this.label21.TabIndex = 25;
            this.label21.Text = "Protocolo de Autorização";
            // 
            // label22
            // 
            this.label22.AutoSize = true;
            this.label22.Location = new System.Drawing.Point(7, 23);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(61, 13);
            this.label22.TabIndex = 24;
            this.label22.Text = "Chave NFe";
            // 
            // mmXmlCancelamento
            // 
            this.mmXmlCancelamento.Location = new System.Drawing.Point(8, 145);
            this.mmXmlCancelamento.Multiline = true;
            this.mmXmlCancelamento.Name = "mmXmlCancelamento";
            this.mmXmlCancelamento.Size = new System.Drawing.Size(791, 203);
            this.mmXmlCancelamento.TabIndex = 23;
            // 
            // btnDataHoraCancela
            // 
            this.btnDataHoraCancela.Image = ((System.Drawing.Image)(resources.GetObject("btnDataHoraCancela.Image")));
            this.btnDataHoraCancela.Location = new System.Drawing.Point(576, 93);
            this.btnDataHoraCancela.Name = "btnDataHoraCancela";
            this.btnDataHoraCancela.Size = new System.Drawing.Size(28, 21);
            this.btnDataHoraCancela.TabIndex = 22;
            this.btnDataHoraCancela.UseVisualStyleBackColor = true;
            this.btnDataHoraCancela.Click += new System.EventHandler(this.btnDataHoraCancela_Click);
            // 
            // edtDataHoraCancelamento
            // 
            this.edtDataHoraCancelamento.Location = new System.Drawing.Point(428, 93);
            this.edtDataHoraCancelamento.Name = "edtDataHoraCancelamento";
            this.edtDataHoraCancelamento.Size = new System.Drawing.Size(142, 20);
            this.edtDataHoraCancelamento.TabIndex = 21;
            // 
            // edtJustificativaCancelamento
            // 
            this.edtJustificativaCancelamento.Location = new System.Drawing.Point(10, 93);
            this.edtJustificativaCancelamento.Name = "edtJustificativaCancelamento";
            this.edtJustificativaCancelamento.Size = new System.Drawing.Size(399, 20);
            this.edtJustificativaCancelamento.TabIndex = 20;
            // 
            // cbFusoCancelamento
            // 
            this.cbFusoCancelamento.FormattingEnabled = true;
            this.cbFusoCancelamento.Items.AddRange(new object[] {
            "-02:00",
            "-03:00",
            "-04:00"});
            this.cbFusoCancelamento.Location = new System.Drawing.Point(601, 39);
            this.cbFusoCancelamento.Name = "cbFusoCancelamento";
            this.cbFusoCancelamento.Size = new System.Drawing.Size(124, 21);
            this.cbFusoCancelamento.TabIndex = 19;
            // 
            // edtProtocolo
            // 
            this.edtProtocolo.Location = new System.Drawing.Point(428, 39);
            this.edtProtocolo.Name = "edtProtocolo";
            this.edtProtocolo.Size = new System.Drawing.Size(153, 20);
            this.edtProtocolo.TabIndex = 18;
            // 
            // edtChaveCancelamento
            // 
            this.edtChaveCancelamento.Location = new System.Drawing.Point(8, 39);
            this.edtChaveCancelamento.Name = "edtChaveCancelamento";
            this.edtChaveCancelamento.Size = new System.Drawing.Size(401, 20);
            this.edtChaveCancelamento.TabIndex = 17;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(3, 3);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(193, 16);
            this.label4.TabIndex = 0;
            this.label4.Text = "Cancelar NFCe Por Evento";
            // 
            // frmEventos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(815, 389);
            this.Controls.Add(this.tabControl1);
            this.Name = "frmEventos";
            this.Text = "Eventos NFCe";
            this.tabControl1.ResumeLayout(false);
            this.tabPage4.ResumeLayout(false);
            this.tabPage4.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage4;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.Label label20;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.Label label22;
        private System.Windows.Forms.TextBox mmXmlCancelamento;
        private System.Windows.Forms.Button btnDataHoraCancela;
        private System.Windows.Forms.TextBox edtDataHoraCancelamento;
        private System.Windows.Forms.TextBox edtJustificativaCancelamento;
        private System.Windows.Forms.ComboBox cbFusoCancelamento;
        private System.Windows.Forms.TextBox edtProtocolo;
        private System.Windows.Forms.TextBox edtChaveCancelamento;
    }
}