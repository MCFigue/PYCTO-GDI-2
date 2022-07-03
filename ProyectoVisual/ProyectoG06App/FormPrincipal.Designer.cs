
namespace ProyectoG06App
{
    partial class EsahMark
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(EsahMark));
            this.statusStrip = new System.Windows.Forms.StatusStrip();
            this.toolStripStatusLabel = new System.Windows.Forms.ToolStripStatusLabel();
            this.toolTip = new System.Windows.Forms.ToolTip(this.components);
            this.fileMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.newToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.openToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.saveToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.saveAsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator4 = new System.Windows.Forms.ToolStripSeparator();
            this.printToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.printPreviewToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.printSetupToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator5 = new System.Windows.Forms.ToolStripSeparator();
            this.exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.editMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.consultarPedidosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.registrarPedidosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.viewMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.consultarAsesoríasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reservarAsesoríaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.extrasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.registrarAsesorToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.consultarAsesorToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip = new System.Windows.Forms.MenuStrip();
            this.statusStrip.SuspendLayout();
            this.menuStrip.SuspendLayout();
            this.SuspendLayout();
            // 
            // statusStrip
            // 
            this.statusStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusLabel});
            this.statusStrip.Location = new System.Drawing.Point(3, 498);
            this.statusStrip.Name = "statusStrip";
            this.statusStrip.Padding = new System.Windows.Forms.Padding(1, 0, 16, 0);
            this.statusStrip.Size = new System.Drawing.Size(731, 22);
            this.statusStrip.TabIndex = 2;
            this.statusStrip.Text = "StatusStrip";
            // 
            // toolStripStatusLabel
            // 
            this.toolStripStatusLabel.Name = "toolStripStatusLabel";
            this.toolStripStatusLabel.Size = new System.Drawing.Size(42, 17);
            this.toolStripStatusLabel.Text = "Estado";
            // 
            // fileMenu
            // 
            this.fileMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.newToolStripMenuItem,
            this.openToolStripMenuItem,
            this.toolStripSeparator3,
            this.saveToolStripMenuItem,
            this.saveAsToolStripMenuItem,
            this.toolStripSeparator4,
            this.printToolStripMenuItem,
            this.printPreviewToolStripMenuItem,
            this.printSetupToolStripMenuItem,
            this.toolStripSeparator5,
            this.exitToolStripMenuItem});
            this.fileMenu.ImageTransparentColor = System.Drawing.SystemColors.ActiveBorder;
            this.fileMenu.Name = "fileMenu";
            this.fileMenu.Size = new System.Drawing.Size(69, 27);
            this.fileMenu.Text = "&Archivo";
            // 
            // newToolStripMenuItem
            // 
            this.newToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("newToolStripMenuItem.Image")));
            this.newToolStripMenuItem.ImageTransparentColor = System.Drawing.Color.Black;
            this.newToolStripMenuItem.Name = "newToolStripMenuItem";
            this.newToolStripMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.N)));
            this.newToolStripMenuItem.Size = new System.Drawing.Size(236, 28);
            this.newToolStripMenuItem.Text = "&Nuevo";
            this.newToolStripMenuItem.Click += new System.EventHandler(this.ShowNewForm);
            // 
            // openToolStripMenuItem
            // 
            this.openToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("openToolStripMenuItem.Image")));
            this.openToolStripMenuItem.ImageTransparentColor = System.Drawing.Color.Black;
            this.openToolStripMenuItem.Name = "openToolStripMenuItem";
            this.openToolStripMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.O)));
            this.openToolStripMenuItem.Size = new System.Drawing.Size(236, 28);
            this.openToolStripMenuItem.Text = "&Abrir";
            this.openToolStripMenuItem.Click += new System.EventHandler(this.OpenFile);
            // 
            // toolStripSeparator3
            // 
            this.toolStripSeparator3.Name = "toolStripSeparator3";
            this.toolStripSeparator3.Size = new System.Drawing.Size(233, 6);
            // 
            // saveToolStripMenuItem
            // 
            this.saveToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("saveToolStripMenuItem.Image")));
            this.saveToolStripMenuItem.ImageTransparentColor = System.Drawing.Color.Black;
            this.saveToolStripMenuItem.Name = "saveToolStripMenuItem";
            this.saveToolStripMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.S)));
            this.saveToolStripMenuItem.Size = new System.Drawing.Size(236, 28);
            this.saveToolStripMenuItem.Text = "&Guardar";
            // 
            // saveAsToolStripMenuItem
            // 
            this.saveAsToolStripMenuItem.Name = "saveAsToolStripMenuItem";
            this.saveAsToolStripMenuItem.Size = new System.Drawing.Size(236, 28);
            this.saveAsToolStripMenuItem.Text = "Guardar &como";
            this.saveAsToolStripMenuItem.Click += new System.EventHandler(this.SaveAsToolStripMenuItem_Click);
            // 
            // toolStripSeparator4
            // 
            this.toolStripSeparator4.Name = "toolStripSeparator4";
            this.toolStripSeparator4.Size = new System.Drawing.Size(233, 6);
            // 
            // printToolStripMenuItem
            // 
            this.printToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("printToolStripMenuItem.Image")));
            this.printToolStripMenuItem.ImageTransparentColor = System.Drawing.Color.Black;
            this.printToolStripMenuItem.Name = "printToolStripMenuItem";
            this.printToolStripMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.P)));
            this.printToolStripMenuItem.Size = new System.Drawing.Size(236, 28);
            this.printToolStripMenuItem.Text = "&Imprimir";
            // 
            // printPreviewToolStripMenuItem
            // 
            this.printPreviewToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("printPreviewToolStripMenuItem.Image")));
            this.printPreviewToolStripMenuItem.ImageTransparentColor = System.Drawing.Color.Black;
            this.printPreviewToolStripMenuItem.Name = "printPreviewToolStripMenuItem";
            this.printPreviewToolStripMenuItem.Size = new System.Drawing.Size(236, 28);
            this.printPreviewToolStripMenuItem.Text = "&Vista previa de impresión";
            // 
            // printSetupToolStripMenuItem
            // 
            this.printSetupToolStripMenuItem.Name = "printSetupToolStripMenuItem";
            this.printSetupToolStripMenuItem.Size = new System.Drawing.Size(236, 28);
            this.printSetupToolStripMenuItem.Text = "Configurar impresión";
            // 
            // toolStripSeparator5
            // 
            this.toolStripSeparator5.Name = "toolStripSeparator5";
            this.toolStripSeparator5.Size = new System.Drawing.Size(233, 6);
            // 
            // exitToolStripMenuItem
            // 
            this.exitToolStripMenuItem.Name = "exitToolStripMenuItem";
            this.exitToolStripMenuItem.Size = new System.Drawing.Size(236, 28);
            this.exitToolStripMenuItem.Text = "&Salir";
            this.exitToolStripMenuItem.Click += new System.EventHandler(this.ExitToolsStripMenuItem_Click);
            // 
            // editMenu
            // 
            this.editMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.consultarPedidosToolStripMenuItem,
            this.registrarPedidosToolStripMenuItem});
            this.editMenu.Image = ((System.Drawing.Image)(resources.GetObject("editMenu.Image")));
            this.editMenu.Name = "editMenu";
            this.editMenu.Size = new System.Drawing.Size(89, 27);
            this.editMenu.Text = "&Pedidos";
            // 
            // consultarPedidosToolStripMenuItem
            // 
            this.consultarPedidosToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("consultarPedidosToolStripMenuItem.Image")));
            this.consultarPedidosToolStripMenuItem.Name = "consultarPedidosToolStripMenuItem";
            this.consultarPedidosToolStripMenuItem.Size = new System.Drawing.Size(194, 28);
            this.consultarPedidosToolStripMenuItem.Text = "Consultar Pedidos";
            this.consultarPedidosToolStripMenuItem.Click += new System.EventHandler(this.consultarPedidosToolStripMenuItem_Click);
            // 
            // registrarPedidosToolStripMenuItem
            // 
            this.registrarPedidosToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("registrarPedidosToolStripMenuItem.Image")));
            this.registrarPedidosToolStripMenuItem.Name = "registrarPedidosToolStripMenuItem";
            this.registrarPedidosToolStripMenuItem.Size = new System.Drawing.Size(194, 28);
            this.registrarPedidosToolStripMenuItem.Text = "Registrar Pedidos";
            this.registrarPedidosToolStripMenuItem.Click += new System.EventHandler(this.registrarPedidosToolStripMenuItem_Click);
            // 
            // viewMenu
            // 
            this.viewMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.consultarAsesoríasToolStripMenuItem,
            this.reservarAsesoríaToolStripMenuItem});
            this.viewMenu.Image = ((System.Drawing.Image)(resources.GetObject("viewMenu.Image")));
            this.viewMenu.Name = "viewMenu";
            this.viewMenu.Size = new System.Drawing.Size(100, 27);
            this.viewMenu.Text = "&Asesorías";
            // 
            // consultarAsesoríasToolStripMenuItem
            // 
            this.consultarAsesoríasToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("consultarAsesoríasToolStripMenuItem.Image")));
            this.consultarAsesoríasToolStripMenuItem.Name = "consultarAsesoríasToolStripMenuItem";
            this.consultarAsesoríasToolStripMenuItem.Size = new System.Drawing.Size(205, 28);
            this.consultarAsesoríasToolStripMenuItem.Text = "Consultar Asesorías";
            this.consultarAsesoríasToolStripMenuItem.Click += new System.EventHandler(this.consultarAsesoríasToolStripMenuItem_Click);
            // 
            // reservarAsesoríaToolStripMenuItem
            // 
            this.reservarAsesoríaToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("reservarAsesoríaToolStripMenuItem.Image")));
            this.reservarAsesoríaToolStripMenuItem.Name = "reservarAsesoríaToolStripMenuItem";
            this.reservarAsesoríaToolStripMenuItem.Size = new System.Drawing.Size(205, 28);
            this.reservarAsesoríaToolStripMenuItem.Text = "Reservar Asesoría";
            this.reservarAsesoríaToolStripMenuItem.Click += new System.EventHandler(this.reservarAsesoríaToolStripMenuItem_Click);
            // 
            // extrasToolStripMenuItem
            // 
            this.extrasToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.registrarAsesorToolStripMenuItem,
            this.consultarAsesorToolStripMenuItem});
            this.extrasToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("extrasToolStripMenuItem.Image")));
            this.extrasToolStripMenuItem.Name = "extrasToolStripMenuItem";
            this.extrasToolStripMenuItem.Size = new System.Drawing.Size(77, 27);
            this.extrasToolStripMenuItem.Text = "Extras";
            // 
            // registrarAsesorToolStripMenuItem
            // 
            this.registrarAsesorToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("registrarAsesorToolStripMenuItem.Image")));
            this.registrarAsesorToolStripMenuItem.Name = "registrarAsesorToolStripMenuItem";
            this.registrarAsesorToolStripMenuItem.Size = new System.Drawing.Size(187, 28);
            this.registrarAsesorToolStripMenuItem.Text = "Registrar Asesor";
            this.registrarAsesorToolStripMenuItem.Click += new System.EventHandler(this.registrarAsesorToolStripMenuItem_Click);
            // 
            // consultarAsesorToolStripMenuItem
            // 
            this.consultarAsesorToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("consultarAsesorToolStripMenuItem.Image")));
            this.consultarAsesorToolStripMenuItem.Name = "consultarAsesorToolStripMenuItem";
            this.consultarAsesorToolStripMenuItem.Size = new System.Drawing.Size(187, 28);
            this.consultarAsesorToolStripMenuItem.Text = "Consultar Asesor";
            this.consultarAsesorToolStripMenuItem.Click += new System.EventHandler(this.consultarAsesorToolStripMenuItem_Click);
            // 
            // menuStrip
            // 
            this.menuStrip.BackColor = System.Drawing.Color.White;
            this.menuStrip.Font = new System.Drawing.Font("Akhbar MT", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.menuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fileMenu,
            this.editMenu,
            this.viewMenu,
            this.extrasToolStripMenuItem});
            this.menuStrip.Location = new System.Drawing.Point(3, 64);
            this.menuStrip.Name = "menuStrip";
            this.menuStrip.Padding = new System.Windows.Forms.Padding(7, 2, 0, 2);
            this.menuStrip.Size = new System.Drawing.Size(731, 31);
            this.menuStrip.TabIndex = 0;
            this.menuStrip.Text = "MenuStrip";
            // 
            // EsahMark
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(737, 523);
            this.Controls.Add(this.statusStrip);
            this.Controls.Add(this.menuStrip);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip;
            this.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.Name = "EsahMark";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FormPrincipal";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.EsahMark_Load);
            this.statusStrip.ResumeLayout(false);
            this.statusStrip.PerformLayout();
            this.menuStrip.ResumeLayout(false);
            this.menuStrip.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }
        #endregion

        private System.Windows.Forms.StatusStrip statusStrip;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel;
        private System.Windows.Forms.ToolTip toolTip;
        private System.Windows.Forms.ToolStripMenuItem fileMenu;
        private System.Windows.Forms.ToolStripMenuItem newToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem openToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
        private System.Windows.Forms.ToolStripMenuItem saveToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem saveAsToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator4;
        private System.Windows.Forms.ToolStripMenuItem printToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem printPreviewToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem printSetupToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator5;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem editMenu;
        private System.Windows.Forms.ToolStripMenuItem consultarPedidosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem registrarPedidosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem viewMenu;
        private System.Windows.Forms.ToolStripMenuItem consultarAsesoríasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reservarAsesoríaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem extrasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem registrarAsesorToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem consultarAsesorToolStripMenuItem;
        private System.Windows.Forms.MenuStrip menuStrip;
    }
}



