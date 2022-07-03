
namespace ProyectoG06App
{
    partial class FormConsultarAsesor
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
            this.dgvAsesor = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dgvAsesor)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label1.Location = new System.Drawing.Point(300, 74);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(88, 21);
            this.label1.TabIndex = 0;
            this.label1.Text = "ASESORES";
            // 
            // dgvAsesor
            // 
            this.dgvAsesor.AllowUserToAddRows = false;
            this.dgvAsesor.AllowUserToDeleteRows = false;
            this.dgvAsesor.AllowUserToResizeRows = false;
            this.dgvAsesor.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgvAsesor.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvAsesor.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvAsesor.Location = new System.Drawing.Point(59, 98);
            this.dgvAsesor.Name = "dgvAsesor";
            this.dgvAsesor.ReadOnly = true;
            this.dgvAsesor.RowHeadersVisible = false;
            this.dgvAsesor.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.dgvAsesor.RowTemplate.Height = 25;
            this.dgvAsesor.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvAsesor.Size = new System.Drawing.Size(581, 186);
            this.dgvAsesor.TabIndex = 1;
            // 
            // FormConsultarAsesor
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(700, 327);
            this.Controls.Add(this.dgvAsesor);
            this.Controls.Add(this.label1);
            this.Name = "FormConsultarAsesor";
            this.Text = "Consultar Asesores";
            this.Load += new System.EventHandler(this.FormConsultarAsesor_Load);
            this.SizeChanged += new System.EventHandler(this.FormConsultarAsesor_SizeChanged);
            this.Resize += new System.EventHandler(this.FormConsultarAsesor_Resize);
            ((System.ComponentModel.ISupportInitialize)(this.dgvAsesor)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgvAsesor;
    }
}