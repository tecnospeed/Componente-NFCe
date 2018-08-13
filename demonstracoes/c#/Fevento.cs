using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Demo_NFe
{
    public partial class frmEventos : Form
    {
        public frmEventos()
        {
            InitializeComponent();
        }

        private void btnDataHoraCancela_Click(object sender, EventArgs e)
        {
            edtDataHoraCancelamento.Text = DateTime.Now.ToString("yyyy-MM-ddTHH:mm:ss");
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            mmXmlCancelamento.Text = frmPrincipal.NFCe.CancelarNF(edtChaveCancelamento.Text, edtProtocolo.Text, edtJustificativaCancelamento.Text, edtDataHoraCancelamento.Text, 1, cbFusoCancelamento.Text, "0001");
        }
    }
}
