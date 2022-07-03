
namespace ProyectoG06App
{
    partial class FormReservarAsesoría
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
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.cbxAsesor = new System.Windows.Forms.ComboBox();
            this.txtHorario = new System.Windows.Forms.TextBox();
            this.dtpFecha = new System.Windows.Forms.DateTimePicker();
            this.label5 = new System.Windows.Forms.Label();
            this.txtObservaciones = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.lblMensaje = new System.Windows.Forms.Label();
            this.btnReservar = new MaterialSkin.Controls.MaterialButton();
            this.btnLimpiar = new MaterialSkin.Controls.MaterialButton();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(62, 82);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(45, 15);
            this.label2.TabIndex = 1;
            this.label2.Text = "Asesor:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(300, 82);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(50, 15);
            this.label3.TabIndex = 2;
            this.label3.Text = "Horario:";
            // 
            // cbxAsesor
            // 
            this.cbxAsesor.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxAsesor.FormattingEnabled = true;
            this.cbxAsesor.Location = new System.Drawing.Point(62, 100);
            this.cbxAsesor.Name = "cbxAsesor";
            this.cbxAsesor.Size = new System.Drawing.Size(204, 23);
            this.cbxAsesor.TabIndex = 3;
            this.cbxAsesor.SelectedIndexChanged += new System.EventHandler(this.cbxAsesor_SelectedIndexChanged);
            // 
            // txtHorario
            // 
            this.txtHorario.Enabled = false;
            this.txtHorario.Location = new System.Drawing.Point(300, 100);
            this.txtHorario.Name = "txtHorario";
            this.txtHorario.Size = new System.Drawing.Size(116, 23);
            this.txtHorario.TabIndex = 4;
            // 
            // dtpFecha
            // 
            this.dtpFecha.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpFecha.Location = new System.Drawing.Point(62, 160);
            this.dtpFecha.MinDate = new System.DateTime(2022, 7, 2, 0, 0, 0, 0);
            this.dtpFecha.Name = "dtpFecha";
            this.dtpFecha.Size = new System.Drawing.Size(200, 23);
            this.dtpFecha.TabIndex = 5;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(62, 142);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(41, 15);
            this.label5.TabIndex = 7;
            this.label5.Text = "Fecha:";
            // 
            // txtObservaciones
            // 
            this.txtObservaciones.Location = new System.Drawing.Point(62, 224);
            this.txtObservaciones.Multiline = true;
            this.txtObservaciones.Name = "txtObservaciones";
            this.txtObservaciones.Size = new System.Drawing.Size(353, 121);
            this.txtObservaciones.TabIndex = 8;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(62, 206);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(87, 15);
            this.label4.TabIndex = 10;
            this.label4.Text = "Observaciones:";
            // 
            // lblMensaje
            // 
            this.lblMensaje.AutoSize = true;
            this.lblMensaje.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.lblMensaje.ForeColor = System.Drawing.Color.Red;
            this.lblMensaje.Location = new System.Drawing.Point(62, 363);
            this.lblMensaje.Name = "lblMensaje";
            this.lblMensaje.Size = new System.Drawing.Size(53, 15);
            this.lblMensaje.TabIndex = 11;
            this.lblMensaje.Text = "Mensaje";
            // 
            // btnReservar
            // 
            this.btnReservar.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btnReservar.Density = MaterialSkin.Controls.MaterialButton.MaterialButtonDensity.Default;
            this.btnReservar.Depth = 0;
            this.btnReservar.HighEmphasis = true;
            this.btnReservar.Icon = null;
            this.btnReservar.Location = new System.Drawing.Point(133, 398);
            this.btnReservar.Margin = new System.Windows.Forms.Padding(4, 6, 4, 6);
            this.btnReservar.MouseState = MaterialSkin.MouseState.HOVER;
            this.btnReservar.Name = "btnReservar";
            this.btnReservar.NoAccentTextColor = System.Drawing.Color.Empty;
            this.btnReservar.Size = new System.Drawing.Size(94, 36);
            this.btnReservar.TabIndex = 13;
            this.btnReservar.Text = "RESERVAR";
            this.btnReservar.Type = MaterialSkin.Controls.MaterialButton.MaterialButtonType.Contained;
            this.btnReservar.UseAccentColor = false;
            this.btnReservar.UseVisualStyleBackColor = true;
            this.btnReservar.Click += new System.EventHandler(this.materialButton1_Click);
            // 
            // btnLimpiar
            // 
            this.btnLimpiar.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btnLimpiar.Density = MaterialSkin.Controls.MaterialButton.MaterialButtonDensity.Default;
            this.btnLimpiar.Depth = 0;
            this.btnLimpiar.HighEmphasis = true;
            this.btnLimpiar.Icon = null;
            this.btnLimpiar.Location = new System.Drawing.Point(247, 398);
            this.btnLimpiar.Margin = new System.Windows.Forms.Padding(4, 6, 4, 6);
            this.btnLimpiar.MouseState = MaterialSkin.MouseState.HOVER;
            this.btnLimpiar.Name = "btnLimpiar";
            this.btnLimpiar.NoAccentTextColor = System.Drawing.Color.Empty;
            this.btnLimpiar.Size = new System.Drawing.Size(79, 36);
            this.btnLimpiar.TabIndex = 14;
            this.btnLimpiar.Text = "LIMPIAR";
            this.btnLimpiar.Type = MaterialSkin.Controls.MaterialButton.MaterialButtonType.Contained;
            this.btnLimpiar.UseAccentColor = false;
            this.btnLimpiar.UseVisualStyleBackColor = true;
            this.btnLimpiar.Click += new System.EventHandler(this.materialButton2_Click);
            // 
            // FormReservarAsesoría
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(497, 469);
            this.Controls.Add(this.btnLimpiar);
            this.Controls.Add(this.btnReservar);
            this.Controls.Add(this.lblMensaje);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtObservaciones);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.dtpFecha);
            this.Controls.Add(this.txtHorario);
            this.Controls.Add(this.cbxAsesor);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FormReservarAsesoría";
            this.Text = "Reservar Asesoría";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cbxAsesor;
        private System.Windows.Forms.TextBox txtHorario;
        private System.Windows.Forms.DateTimePicker dtpFecha;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtObservaciones;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label lblMensaje;
        private MaterialSkin.Controls.MaterialButton materialButton1;
        private MaterialSkin.Controls.MaterialButton materialButton2;
        private MaterialSkin.Controls.MaterialButton btnReservar;
        private MaterialSkin.Controls.MaterialButton btnLimpiar;
    }
}