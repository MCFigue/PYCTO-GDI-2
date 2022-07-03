using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace ProyectoG06App
{
    public partial class FormPrincipal : Form
    {
        private int childFormNumber = 0;

        public FormPrincipal()
        {
            InitializeComponent();
        }

        private void ShowNewForm(object sender, EventArgs e)
        {
            Form childForm = new Form();
            childForm.MdiParent = this;
            childForm.Text = "Ventana " + childFormNumber++;
            childForm.Show();
        }

        private void OpenFile(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            openFileDialog.Filter = "Archivos de texto (*.txt)|*.txt|Todos los archivos (*.*)|*.*";
            if (openFileDialog.ShowDialog(this) == DialogResult.OK)
            {
                string FileName = openFileDialog.FileName;
            }
        }

        private void SaveAsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            saveFileDialog.Filter = "Archivos de texto (*.txt)|*.txt|Todos los archivos (*.*)|*.*";
            if (saveFileDialog.ShowDialog(this) == DialogResult.OK)
            {
                string FileName = saveFileDialog.FileName;
            }
        }

        private void ExitToolsStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void consultarPedidosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormConsultarPedido view = FormConsultarPedido.GetInstance();
            view.MdiParent = this;
            view.Show();
        }

        private void registrarPedidosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormRegistrarPedido view = FormRegistrarPedido.GetInstance();
            view.MdiParent = this;
            view.Show();
        }

        private void consultarAsesoríasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormConsultarAsesoría view = FormConsultarAsesoría.GetInstance();
            view.MdiParent = this;
            view.Show();
        }

        private void reservarAsesoríaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormReservarAsesoría view = FormReservarAsesoría.GetInstance();
            view.MdiParent = this;
            view.Show();
        }

        private void registrarAsesorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormRegistrarAsesor view = FormRegistrarAsesor.GetInstance();
            view.MdiParent = this;
            view.Show();
        }

        private void consultarAsesorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormConsultarAsesor view = FormConsultarAsesor.GetInstance();
            view.MdiParent = this;
            view.Show();
        }
    }
}
