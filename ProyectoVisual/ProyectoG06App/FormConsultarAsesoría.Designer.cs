
namespace ProyectoG06App
{
    partial class FormConsultarAsesoría
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
            this.label1 = new System.Windows.Forms.Label();
            this.dgvAsesorias = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dgvAsesorias)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label1.Location = new System.Drawing.Point(323, 80);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(76, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "Asesorías";
            // 
            // dgvAsesorias
            // 
            this.dgvAsesorias.AllowUserToAddRows = false;
            this.dgvAsesorias.AllowUserToDeleteRows = false;
            this.dgvAsesorias.AllowUserToResizeRows = false;
            this.dgvAsesorias.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgvAsesorias.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvAsesorias.BackgroundColor = System.Drawing.Color.White;
            this.dgvAsesorias.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvAsesorias.Location = new System.Drawing.Point(55, 103);
            this.dgvAsesorias.Name = "dgvAsesorias";
            this.dgvAsesorias.ReadOnly = true;
            this.dgvAsesorias.RowHeadersVisible = false;
            this.dgvAsesorias.RowTemplate.Height = 25;
            this.dgvAsesorias.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvAsesorias.Size = new System.Drawing.Size(593, 290);
            this.dgvAsesorias.TabIndex = 1;
            // 
            // FormConsultarAsesoría
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(722, 431);
            this.Controls.Add(this.dgvAsesorias);
            this.Controls.Add(this.label1);
            this.Name = "FormConsultarAsesoría";
            this.Text = "Consultar Asesorías";
            this.Load += new System.EventHandler(this.FormConsultarAsesoría_Load);
            this.SizeChanged += new System.EventHandler(this.FormConsultarAsesoría_SizeChanged);
            this.Resize += new System.EventHandler(this.FormConsultarAsesoría_Resize);
            ((System.ComponentModel.ISupportInitialize)(this.dgvAsesorias)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgvAsesorias;
    }
}