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
    public partial class FormReservarAsesoría : MaterialForm
    {
        private static FormReservarAsesoría instancia = null;
        public static FormReservarAsesoría GetInstance()
        {
            if (((instancia == null) || (instancia.IsDisposed == true)))
            {
                instancia = new FormReservarAsesoría();
            }
            instancia.BringToFront();
            return instancia;
        }

        public FormReservarAsesoría()
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
            cargarCbxAsesor();
            dtpFecha.MinDate = DateTime.Now.Date.AddDays(2);
            lblMensaje.Visible = false;

        }

        private void btnReservar_Click(object sender, EventArgs e)
        {
            try
            {
                int clienteid = 1;
                int asesorid = Convert.ToInt32(Convert.ToString(cbxAsesor.SelectedItem).Substring(0, 1));
                dtpFecha.CustomFormat = "yyyy-MM-dd";
                String fecha = dtpFecha.Text;
                String observaciones = txtObservaciones.Text;
                ReservarAsesoriaService service = new ReservarAsesoriaService();

                service.reservarAsesoria(clienteid, asesorid, fecha, observaciones);

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

        private void cbxAsesor_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                ConsultarAsesorService service = new ConsultarAsesorService();
                int asesorid = Convert.ToInt32(Convert.ToString(cbxAsesor.SelectedItem).Substring(0, 1));
                txtHorario.Text = service.obtenerTurno(asesorid);
            }
            catch
            {
                lblMensaje.Visible = true;
                lblMensaje.Text = "Se ha encontrado un error. Vuelva a Intentarlo";
            }
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            cbxAsesor.SelectedIndex = -1;
            txtHorario.Text = "";
            dtpFecha.Value = DateTime.Now.AddDays(2);
            txtObservaciones.Text = "";
            lblMensaje.Visible = false;
            habilitarEspacios();
        }

        public void deshabilitarEspacios()
        {
            cbxAsesor.Enabled = false;
            dtpFecha.Enabled = false;
            txtObservaciones.Enabled = false;
            btnReservar.Enabled = false;
        }

        public void habilitarEspacios()
        {
            cbxAsesor.Enabled = true;
            dtpFecha.Enabled = true;
            txtObservaciones.Enabled = true;
            btnReservar.Enabled = true;
        }

        private void materialButton1_Click(object sender, EventArgs e)
        {
            try
            {
                int clienteid = 1;
                int asesorid = Convert.ToInt32(Convert.ToString(cbxAsesor.SelectedItem).Substring(0, 1));
                dtpFecha.CustomFormat = "yyyy-MM-dd";
                String fecha = dtpFecha.Text;
                String observaciones = txtObservaciones.Text;
                ReservarAsesoriaService service = new ReservarAsesoriaService();

                service.reservarAsesoria(clienteid, asesorid, fecha, observaciones);

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

        private void materialButton2_Click(object sender, EventArgs e)
        {
            cbxAsesor.SelectedIndex = -1;
            txtHorario.Text = "";
            dtpFecha.Value = DateTime.Now.AddDays(2);
            txtObservaciones.Text = "";
            lblMensaje.Visible = false;
            habilitarEspacios();
        }
    }
}
