using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using CapaModelo;
using CapaServicio;

namespace ProyectoG06App
{
    public partial class FormRegistrarAsesor : Form
    {
        private static FormRegistrarAsesor instancia = null;
        public static FormRegistrarAsesor GetInstance()
        {
            if (((instancia == null) || (instancia.IsDisposed == true)))
            {
                instancia = new FormRegistrarAsesor();
            }
            instancia.BringToFront();
            return instancia;
        }

        public FormRegistrarAsesor()
        {
            InitializeComponent();
            lblMensaje.Visible = false;
        }

        private void FormRegistrarAsesor_Load(object sender, EventArgs e)
        {

        }

        private void cbxTurno_SelectedIndexChanged(object sender, EventArgs e)
        {
            int indturno = cbxTurno.SelectedIndex + 1;
            String horario = "";
            switch (indturno)
            {
                case 1:
                    horario = "8:00 - 12:00";
                    break;
                case 2:
                    horario = "13:00 - 19:00";
                    break;
            }
            txtHorario.Text = horario;
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                RegistrarAsesorService servicio = new RegistrarAsesorService();
                AsesorModel asesor = new AsesorModel();
                asesor.Nombre = txtNombres.Text;
                asesor.ApePaterno = txtApePaterno.Text;
                asesor.ApeMaterno = txtApeMaterno.Text;
                asesor.NroIdentificacion = txtDNI.Text;
                dtpFechaNac.CustomFormat = "yyyy-MM-dd";
                asesor.FechaNac = dtpFechaNac.Text;
                asesor.Sexo = Convert.ToString(cbxSexo.SelectedItem);
                asesor.Email = txtCorreo.Text;
                asesor.Telefono = txtTelefono.Text;
                asesor.Sueldo = txtSueldo.Text;
                asesor.CiudadID = servicio.obtenerIDCiudad(Convert.ToString(cbxCiudad.SelectedItem));
                asesor.TurnoID = Convert.ToString(cbxTurno.SelectedIndex + 1);
                servicio.registrarAsesor(asesor);
                lblMensaje.Text = servicio.Mensaje;
                lblMensaje.Visible = true;
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
            txtNombres.Text = "";
            txtApePaterno.Text = "";
            txtApeMaterno.Text = "";
            txtDNI.Text = "";
            dtpFechaNac.Text = "";
            cbxSexo.SelectedIndex = -1;
            txtCorreo.Text = "";
            txtTelefono.Text = "";
            txtSueldo.Text = "";
            cbxCiudad.SelectedIndex = -1;
            cbxTurno.SelectedIndex = -1;
            txtHorario.Text = "";
            lblMensaje.Visible = false;
            habilitarEspacios();
        }

        public void deshabilitarEspacios()
        {
            txtNombres.Enabled = false;
            txtApePaterno.Enabled = false;
            txtApeMaterno.Enabled = false;
            txtDNI.Enabled = false;
            cbxSexo.Enabled = false;
            txtTelefono.Enabled = false;
            txtCorreo.Enabled = false;
            txtSueldo.Enabled = false;
            dtpFechaNac.Enabled = false;
            cbxTurno.Enabled = false;
            txtCorreo.Enabled = false;
            cbxCiudad.Enabled = false;
            btnAgregar.Enabled = false;
        }

        public void habilitarEspacios()
        {
            txtNombres.Enabled = true;
            txtApePaterno.Enabled = true;
            txtApeMaterno.Enabled = true;
            txtDNI.Enabled = true;
            cbxSexo.Enabled = true;
            txtTelefono.Enabled = true;
            txtCorreo.Enabled = true;
            txtSueldo.Enabled = true;
            dtpFechaNac.Enabled = true;
            cbxTurno.Enabled = true;
            txtCorreo.Enabled = true;
            cbxCiudad.Enabled = true;
            btnAgregar.Enabled = true;
        }
    }
}
