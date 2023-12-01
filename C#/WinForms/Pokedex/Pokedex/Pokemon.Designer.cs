namespace Pokedex
{
    partial class Pokemon
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
            this.txtNome = new System.Windows.Forms.TextBox();
            this.dtgPokemon = new System.Windows.Forms.DataGridView();
            this.lblNome = new System.Windows.Forms.Label();
            this.btnCadastrar = new System.Windows.Forms.Button();
            this.lblTipo1 = new System.Windows.Forms.Label();
            this.cbTipo1 = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.pbImagem = new System.Windows.Forms.PictureBox();
            this.btnEscolherImagem = new System.Windows.Forms.Button();
            this.cbTipo2 = new System.Windows.Forms.ComboBox();
            this.lblTipo2 = new System.Windows.Forms.Label();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.cadastroPokemonToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.formarTimesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.sairToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            ((System.ComponentModel.ISupportInitialize)(this.dtgPokemon)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbImagem)).BeginInit();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // txtNome
            // 
            this.txtNome.Location = new System.Drawing.Point(190, 41);
            this.txtNome.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtNome.Name = "txtNome";
            this.txtNome.Size = new System.Drawing.Size(148, 26);
            this.txtNome.TabIndex = 0;
            // 
            // dtgPokemon
            // 
            this.dtgPokemon.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgPokemon.Location = new System.Drawing.Point(402, 52);
            this.dtgPokemon.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.dtgPokemon.Name = "dtgPokemon";
            this.dtgPokemon.Size = new System.Drawing.Size(338, 312);
            this.dtgPokemon.TabIndex = 1;
            // 
            // lblNome
            // 
            this.lblNome.AutoSize = true;
            this.lblNome.Location = new System.Drawing.Point(55, 42);
            this.lblNome.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblNome.Name = "lblNome";
            this.lblNome.Size = new System.Drawing.Size(55, 20);
            this.lblNome.TabIndex = 2;
            this.lblNome.Text = "Nome:";
            // 
            // btnCadastrar
            // 
            this.btnCadastrar.Location = new System.Drawing.Point(48, 317);
            this.btnCadastrar.Name = "btnCadastrar";
            this.btnCadastrar.Size = new System.Drawing.Size(316, 47);
            this.btnCadastrar.TabIndex = 3;
            this.btnCadastrar.Text = "Cadastrar";
            this.btnCadastrar.UseVisualStyleBackColor = true;
            this.btnCadastrar.Click += new System.EventHandler(this.btnCadastrar_Click);
            // 
            // lblTipo1
            // 
            this.lblTipo1.AutoSize = true;
            this.lblTipo1.Location = new System.Drawing.Point(55, 89);
            this.lblTipo1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblTipo1.Name = "lblTipo1";
            this.lblTipo1.Size = new System.Drawing.Size(104, 20);
            this.lblTipo1.TabIndex = 6;
            this.lblTipo1.Text = "Tipo Primário:";
            // 
            // cbTipo1
            // 
            this.cbTipo1.FormattingEnabled = true;
            this.cbTipo1.Location = new System.Drawing.Point(190, 86);
            this.cbTipo1.Name = "cbTipo1";
            this.cbTipo1.Size = new System.Drawing.Size(148, 28);
            this.cbTipo1.TabIndex = 7;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(57, 205);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(71, 20);
            this.label1.TabIndex = 8;
            this.label1.Text = "Imagem:";
            // 
            // pbImagem
            // 
            this.pbImagem.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.pbImagem.Location = new System.Drawing.Point(173, 181);
            this.pbImagem.Name = "pbImagem";
            this.pbImagem.Size = new System.Drawing.Size(109, 92);
            this.pbImagem.TabIndex = 9;
            this.pbImagem.TabStop = false;
            // 
            // btnEscolherImagem
            // 
            this.btnEscolherImagem.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnEscolherImagem.Location = new System.Drawing.Point(297, 205);
            this.btnEscolherImagem.Name = "btnEscolherImagem";
            this.btnEscolherImagem.Size = new System.Drawing.Size(67, 58);
            this.btnEscolherImagem.TabIndex = 10;
            this.btnEscolherImagem.Text = "Escolher Imagem";
            this.btnEscolherImagem.UseVisualStyleBackColor = true;
            // 
            // cbTipo2
            // 
            this.cbTipo2.FormattingEnabled = true;
            this.cbTipo2.Location = new System.Drawing.Point(190, 134);
            this.cbTipo2.Name = "cbTipo2";
            this.cbTipo2.Size = new System.Drawing.Size(148, 28);
            this.cbTipo2.TabIndex = 12;
            // 
            // lblTipo2
            // 
            this.lblTipo2.AutoSize = true;
            this.lblTipo2.Location = new System.Drawing.Point(55, 137);
            this.lblTipo2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblTipo2.Name = "lblTipo2";
            this.lblTipo2.Size = new System.Drawing.Size(128, 20);
            this.lblTipo2.TabIndex = 11;
            this.lblTipo2.Text = "Tipo Secundário:";
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cadastroPokemonToolStripMenuItem,
            this.formarTimesToolStripMenuItem,
            this.sairToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(794, 24);
            this.menuStrip1.TabIndex = 13;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // cadastroPokemonToolStripMenuItem
            // 
            this.cadastroPokemonToolStripMenuItem.Name = "cadastroPokemonToolStripMenuItem";
            this.cadastroPokemonToolStripMenuItem.Size = new System.Drawing.Size(120, 20);
            this.cadastroPokemonToolStripMenuItem.Text = "Cadastro Pokemon";
            this.cadastroPokemonToolStripMenuItem.Click += new System.EventHandler(this.cadastroPokemonToolStripMenuItem_Click);
            // 
            // formarTimesToolStripMenuItem
            // 
            this.formarTimesToolStripMenuItem.Name = "formarTimesToolStripMenuItem";
            this.formarTimesToolStripMenuItem.Size = new System.Drawing.Size(91, 20);
            this.formarTimesToolStripMenuItem.Text = "Formar Times";
            this.formarTimesToolStripMenuItem.Click += new System.EventHandler(this.formarTimesToolStripMenuItem_Click);
            // 
            // sairToolStripMenuItem
            // 
            this.sairToolStripMenuItem.Name = "sairToolStripMenuItem";
            this.sairToolStripMenuItem.Size = new System.Drawing.Size(38, 20);
            this.sairToolStripMenuItem.Text = "Sair";
            this.sairToolStripMenuItem.Click += new System.EventHandler(this.sairToolStripMenuItem_Click);
            // 
            // Pokemon
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(794, 393);
            this.Controls.Add(this.cbTipo2);
            this.Controls.Add(this.lblTipo2);
            this.Controls.Add(this.btnEscolherImagem);
            this.Controls.Add(this.pbImagem);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cbTipo1);
            this.Controls.Add(this.lblTipo1);
            this.Controls.Add(this.btnCadastrar);
            this.Controls.Add(this.lblNome);
            this.Controls.Add(this.dtgPokemon);
            this.Controls.Add(this.txtNome);
            this.Controls.Add(this.menuStrip1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.MainMenuStrip = this.menuStrip1;
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "Pokemon";
            this.Text = "Pokemon";
            this.Load += new System.EventHandler(this.Pokemon_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dtgPokemon)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbImagem)).EndInit();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtNome;
        private System.Windows.Forms.DataGridView dtgPokemon;
        private System.Windows.Forms.Label lblNome;
        private System.Windows.Forms.Button btnCadastrar;
        private System.Windows.Forms.Label lblTipo1;
        private System.Windows.Forms.ComboBox cbTipo1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.PictureBox pbImagem;
        private System.Windows.Forms.Button btnEscolherImagem;
        private System.Windows.Forms.ComboBox cbTipo2;
        private System.Windows.Forms.Label lblTipo2;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem cadastroPokemonToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem formarTimesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem sairToolStripMenuItem;
    }
}