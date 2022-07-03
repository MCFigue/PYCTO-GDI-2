using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaServicio;

namespace ProyectoG06App
{
    public partial class FormRegistrarPedido : Form
    {
        private static FormRegistrarPedido instancia = null;
        public static FormRegistrarPedido GetInstance()
        {
            if (((instancia == null) || (instancia.IsDisposed == true)))
            {
                instancia = new FormRegistrarPedido();
            }
            instancia.BringToFront();
            return instancia;
        }

        int idplan;
        public FormRegistrarPedido()
        {
            InitializeComponent();
            cargarCbxAsesor();
            lblMensaje.Visible = false;
        }

        private void cbxPlan_SelectedIndexChanged(object sender, EventArgs e)
        {
            int indplan = cbxPlan.SelectedIndex + 1;
            double costo = 0;
            switch (indplan)
            {
                case 1:
                    costo = 90;
                    idplan = 1;
                    break;
                case 2:
                    costo = 130;
                    idplan = 2;
                    break;
                case 3:
                    costo = 260;
                    idplan = 3;
                    break;
            }
            txtCosto.Text = Convert.ToString(costo);
        }

        private void btnRegistrar_Click(object sender, EventArgs e)
        {
            try
            {
                int clienteid = 1;
                int asesorid = Convert.ToInt32(Convert.ToString(cbxAsesor.SelectedItem).Substring(0, 1));
                int planid = idplan;
                int meses = ((int)spnMeses.Value);
                String fechaini = DateTime.Now.ToString("yyyy-MM-dd");
                RegistrarPedidoService service = new RegistrarPedidoService();
                service.registrarPedido(clienteid, asesorid, planid, meses, fechaini);
                lblMensaje.Visible = true;
                lblMensaje.Text = service.Mensaje;
                deshabilitarEspacios();
            }
            catch
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "Se ha encontrado un error. Vuelva a Intentarlo";
                deshabilitarEspacios();
            }
            
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            cbxPlan.SelectedIndex = -1;
            cbxAsesor.SelectedIndex = -1;
            spnMeses.Value = 0;
            lblMensaje.Visible = false;
            habilitarEspacios();
        }

        // Métodos Personalizados
        public void deshabilitarEspacios()
        {
            cbxPlan.Enabled = false;
            cbxAsesor.Enabled = false;
            spnMeses.Enabled = false;
            btnRegistrar.Enabled = false;
        }

        public void habilitarEspacios()
        {
            cbxPlan.Enabled = true;
            cbxAsesor.Enabled = true;
            spnMeses.Enabled = true;
            btnRegistrar.Enabled = true;
        }

        public void cargarCbxAsesor()
        {
            ConsultarAsesorService service = new ConsultarAsesorService();
            DataTable table = new DataTable();
            table = service.consultarAsesor();
            String item;
            int numfilas = table.Rows.Count;
            int p = 0;
            while (p < numfilas)
            {
                item = Convert.ToString(table.Rows[p][0]) + " - " + Convert.ToString(table.Rows[p][1]) + " " +
                        Convert.ToString(table.Rows[p][2] + " " + Convert.ToString(table.Rows[p][3]));
                cbxAsesor.Items.Add(item);
                p++;
            }
        }

    }
}
