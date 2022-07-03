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
    public partial class FormConsultarAsesoría : MaterialForm
    {
        private static FormConsultarAsesoría instancia = null;
        public static FormConsultarAsesoría GetInstance()
        {
            if (((instancia == null) || (instancia.IsDisposed == true)))
            {
                instancia = new FormConsultarAsesoría();
            }
            instancia.BringToFront();
            return instancia;
        }

        public FormConsultarAsesoría()
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
            agregarAsesoriasTabla();

        }

        public void agregarAsesoriasTabla()
        {
            ConsultarAsesoriasService service = new ConsultarAsesoriasService();
            DataTable table;
            table = service.consultarAsesorias();
            //Remover columnas innecesarias
            table.Columns.Remove("cli_id");
            table.Columns.Remove("asr_id");
            table.Columns.Remove("asr_nombre");
            table.Columns.Remove("asr_apepaterno");
            table.Columns.Remove("asr_apematerno");
            //Renombrar Columnas a mostrar
            table.Columns["cli_nombre"].ColumnName = "Nombre Cliente";
            table.Columns["cli_apepaterno"].ColumnName = "Apellido Paterno";
            table.Columns["cli_apematerno"].ColumnName = "Apellido Materno";
            table.Columns["ases_fecha"].ColumnName = "Fecha";
            table.Columns["ases_observ"].ColumnName = "Observaciones";
            table.Columns["estado"].ColumnName = "Estado";
            dgvAsesorias.DataSource = table;
        }

        public void centrarElementos()
        {
            label1.Left = (Width - label1.Width) / 2;
        }

        private void FormConsultarAsesoría_SizeChanged(object sender, EventArgs e)
        {
            centrarElementos();
        }

        private void FormConsultarAsesoría_Resize(object sender, EventArgs e)
        {
            centrarElementos();
        }

        private void FormConsultarAsesoría_Load(object sender, EventArgs e)
        {

        }
    }
}
