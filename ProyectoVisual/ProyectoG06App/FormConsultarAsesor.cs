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
    public partial class FormConsultarAsesor : MaterialForm
    {
        private static FormConsultarAsesor instancia = null;
        public static FormConsultarAsesor GetInstance()
        {
            if (((instancia == null) || (instancia.IsDisposed == true)))
            {
                instancia = new FormConsultarAsesor();
            }
            instancia.BringToFront();
            return instancia;
        }

        public FormConsultarAsesor()
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
            agregarAsesoresTabla();
        }

        public void agregarAsesoresTabla()
        {
            ConsultarAsesorService service = new ConsultarAsesorService();
            DataTable table;
            table = service.consultarAsesor();
            //Remover columnas innecesarias
            table.Columns.Remove("asr_id");
            table.Columns.Remove("asr_nroidentificacion");
            table.Columns.Remove("asr_fechanac");
            table.Columns.Remove("asr_sexo");
            table.Columns.Remove("asr_telefono");
            table.Columns.Remove("asr_sueldo");
            table.Columns.Remove("ciu_nombre");
            //Renombrar Columnas a mostrar
            table.Columns["asr_nombre"].ColumnName = "Nombre Asesor";
            table.Columns["asr_apepaterno"].ColumnName = "Apellido Paterno";
            table.Columns["asr_apematerno"].ColumnName = "Apellido Materno";
            table.Columns["asr_email"].ColumnName = "Email";
            table.Columns["turno_nombre"].ColumnName = "Turno";
            table.Columns["turno_horario"].ColumnName = "Horario";
            dgvAsesor.DataSource = table;
        }

        public void centrarElementos()
        {
            label1.Left = (Width - label1.Width) / 2;
        }

        private void FormConsultarAsesor_Resize(object sender, EventArgs e)
        {
            centrarElementos();
        }

        private void FormConsultarAsesor_SizeChanged(object sender, EventArgs e)
        {
            centrarElementos();
        }

        private void FormConsultarAsesor_Load(object sender, EventArgs e)
        {

        }
    }
}
