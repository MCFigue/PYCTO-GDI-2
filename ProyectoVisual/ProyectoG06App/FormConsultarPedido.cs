using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using CapaServicio;
using MaterialSkin;
using MaterialSkin.Controls;

namespace ProyectoG06App
{
    public partial class FormConsultarPedido : MaterialForm
    {
        private static FormConsultarPedido instancia = null;
        public static FormConsultarPedido GetInstance()
        {
            if (((instancia == null) || (instancia.IsDisposed == true)))
            {
                instancia = new FormConsultarPedido();
            }
            instancia.BringToFront();
            return instancia;
        }

        public FormConsultarPedido()
        {
            InitializeComponent();
            MaterialSkinManager materialSkinManager = MaterialSkinManager.Instance;
            materialSkinManager.Theme = MaterialSkinManager.Themes.LIGHT;
            materialSkinManager.ColorScheme = new ColorScheme(
                Primary.Blue800,
                Primary.Blue900,
                Primary.Blue500,
                Accent.LightBlue200,
                TextShade.WHITE);
            agregarPedidoTabla();
        }

        public void agregarPedidoTabla()
        {
            ConsultarPedidoService service = new ConsultarPedidoService();
            DataTable table;
            table = service.consultarAsesor();
            //Remover columnas innecesarias
            table.Columns.Remove("pdd_id");
            table.Columns.Remove("cli_nombre");
            table.Columns.Remove("cli_apepaterno");
            table.Columns.Remove("cli_apematerno");
            table.Columns.Remove("pdd_meses");
            //Renombrar Columnas a mostrar
            table.Columns["asr_nombre"].ColumnName = "Nombre Asesor";
            table.Columns["asr_apepaterno"].ColumnName = "ApePaterno Asesor";
            table.Columns["asr_apematerno"].ColumnName = "ApeMaterno Asesor";
            table.Columns["pln_nombre"].ColumnName = "Plan";
            table.Columns["pln_trabajadores"].ColumnName = "Nro Trabajadores";
            table.Columns["pdd_fechaini"].ColumnName = "Fecha Inicial";
            table.Columns["pdd_fechafin"].ColumnName = "Fecha Final";
            table.Columns["pdd_estado"].ColumnName = "Estado";
            dgvPedido.DataSource = table;
        }

        public void centrarElementos()
        {
            label1.Left = (Width - label1.Width) / 2;
        }

        private void FormConsultarPedido_Resize(object sender, EventArgs e)
        {
            centrarElementos();
        }

        private void FormConsultarPedido_SizeChanged(object sender, EventArgs e)
        {
            centrarElementos();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void FormConsultarPedido_Load(object sender, EventArgs e)
        {

        }
    }
}
