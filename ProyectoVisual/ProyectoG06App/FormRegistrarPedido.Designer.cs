
namespace ProyectoG06App
{
    partial class FormRegistrarPedido
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.cbxPlan = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtCosto = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.cbxAsesor = new System.Windows.Forms.ComboBox();
            this.spnMeses = new System.Windows.Forms.NumericUpDown();
            this.label5 = new System.Windows.Forms.Label();
            this.lblMensaje = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.btnRegistrar = new MaterialSkin.Controls.MaterialButton();
            this.btnLimpiar = new MaterialSkin.Controls.MaterialButton();
            ((System.ComponentModel.ISupportInitialize)(this.spnMeses)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(74, 99);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(33, 15);
            this.label1.TabIndex = 0;
            this.label1.Text = "Plan:";
            // 
            // cbxPlan
            // 
            this.cbxPlan.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxPlan.FormattingEnabled = true;
            this.cbxPlan.Items.AddRange(new object[] {
            "Básico",
            "Pro",
            "Premium"});
            this.cbxPlan.Location = new System.Drawing.Point(113, 91);
            this.cbxPlan.Name = "cbxPlan";
            this.cbxPlan.Size = new System.Drawing.Size(151, 23);
            this.cbxPlan.TabIndex = 2;
            this.cbxPlan.SelectedIndexChanged += new System.EventHandler(this.cbxPlan_SelectedIndexChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(66, 139);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(41, 15);
            this.label3.TabIndex = 3;
            this.label3.Text = "Costo:";
            // 
            // txtCosto
            // 
            this.txtCosto.Enabled = false;
            this.txtCosto.Location = new System.Drawing.Point(113, 136);
            this.txtCosto.Name = "txtCosto";
            this.txtCosto.Size = new System.Drawing.Size(100, 23);
            this.txtCosto.TabIndex = 4;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(62, 182);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(45, 15);
            this.label4.TabIndex = 5;
            this.label4.Text = "Asesor:";
            // 
            // cbxAsesor
            // 
            this.cbxAsesor.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbxAsesor.FormattingEnabled = true;
            this.cbxAsesor.Location = new System.Drawing.Point(113, 179);
            this.cbxAsesor.Name = "cbxAsesor";
            this.cbxAsesor.Size = new System.Drawing.Size(232, 23);
            this.cbxAsesor.TabIndex = 6;
            // 
            // spnMeses
            // 
            this.spnMeses.Location = new System.Drawing.Point(113, 223);
            this.spnMeses.Name = "spnMeses";
            this.spnMeses.Size = new System.Drawing.Size(56, 23);
            this.spnMeses.TabIndex = 7;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(64, 225);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(43, 15);
            this.label5.TabIndex = 8;
            this.label5.Text = "Meses:";
            // 
            // lblMensaje
            // 
            this.lblMensaje.AutoSize = true;
            this.lblMensaje.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.lblMensaje.ForeColor = System.Drawing.Color.Red;
            this.lblMensaje.Location = new System.Drawing.Point(113, 271);
            this.lblMensaje.Name = "lblMensaje";
            this.lblMensaje.Size = new System.Drawing.Size(53, 15);
            this.lblMensaje.TabIndex = 11;
            this.lblMensaje.Text = "Mensaje";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(53, 271);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(54, 15);
            this.label6.TabIndex = 12;
            this.label6.Text = "Mensaje:";
            // 
            // btnRegistrar
            // 
            this.btnRegistrar.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btnRegistrar.Density = MaterialSkin.Controls.MaterialButton.MaterialButtonDensity.Default;
            this.btnRegistrar.Depth = 0;
            this.btnRegistrar.HighEmphasis = true;
            this.btnRegistrar.Icon = null;
            this.btnRegistrar.Location = new System.Drawing.Point(95, 335);
            this.btnRegistrar.Margin = new System.Windows.Forms.Padding(4, 6, 4, 6);
            this.btnRegistrar.MouseState = MaterialSkin.MouseState.HOVER;
            this.btnRegistrar.Name = "btnRegistrar";
            this.btnRegistrar.NoAccentTextColor = System.Drawing.Color.Empty;
            this.btnRegistrar.Size = new System.Drawing.Size(99, 36);
            this.btnRegistrar.TabIndex = 13;
            this.btnRegistrar.Text = "REGISTRAR";
            this.btnRegistrar.Type = MaterialSkin.Controls.MaterialButton.MaterialButtonType.Contained;
            this.btnRegistrar.UseAccentColor = false;
            this.btnRegistrar.UseVisualStyleBackColor = true;
            this.btnRegistrar.Click += new System.EventHandler(this.materialButton1_Click);
            // 
            // btnLimpiar
            // 
            this.btnLimpiar.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.btnLimpiar.Density = MaterialSkin.Controls.MaterialButton.MaterialButtonDensity.Default;
            this.btnLimpiar.Depth = 0;
            this.btnLimpiar.HighEmphasis = true;
            this.btnLimpiar.Icon = null;
            this.btnLimpiar.Location = new System.Drawing.Point(228, 335);
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
            // FormRegistrarPedido
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(435, 423);
            this.Controls.Add(this.btnLimpiar);
            this.Controls.Add(this.btnRegistrar);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.lblMensaje);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.spnMeses);
            this.Controls.Add(this.cbxAsesor);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtCosto);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.cbxPlan);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "FormRegistrarPedido";
            this.Text = "Registrar Pedido";
            ((System.ComponentModel.ISupportInitialize)(this.spnMeses)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbxPlan;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtCosto;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox cbxAsesor;
        private System.Windows.Forms.NumericUpDown spnMeses;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label lblMensaje;
        private System.Windows.Forms.Label label6;
        private MaterialSkin.Controls.MaterialButton btnRegistrar;
        private MaterialSkin.Controls.MaterialButton btnLimpiar;
    }
}

