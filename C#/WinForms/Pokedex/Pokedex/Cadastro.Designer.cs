namespace Pokedex
{
    partial class Cadastro
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
            this.txtSenha = new System.Windows.Forms.TextBox();
            this.lblSenha = new System.Windows.Forms.Label();
            this.txtLogin = new System.Windows.Forms.TextBox();
            this.lblLogin = new System.Windows.Forms.Label();
            this.btnCadastro = new System.Windows.Forms.Button();
            this.btnLogin = new System.Windows.Forms.Button();
            this.lblIdade = new System.Windows.Forms.Label();
            this.txtIdade = new System.Windows.Forms.TextBox();
            this.lblGenero = new System.Windows.Forms.Label();
            this.cbGenero = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // txtSenha
            // 
            this.txtSenha.Location = new System.Drawing.Point(118, 102);
            this.txtSenha.Name = "txtSenha";
            this.txtSenha.Size = new System.Drawing.Size(188, 26);
            this.txtSenha.TabIndex = 11;
            // 
            // lblSenha
            // 
            this.lblSenha.AutoSize = true;
            this.lblSenha.Location = new System.Drawing.Point(44, 105);
            this.lblSenha.Name = "lblSenha";
            this.lblSenha.Size = new System.Drawing.Size(60, 20);
            this.lblSenha.TabIndex = 10;
            this.lblSenha.Text = "Senha:";
            // 
            // txtLogin
            // 
            this.txtLogin.Location = new System.Drawing.Point(118, 44);
            this.txtLogin.Name = "txtLogin";
            this.txtLogin.Size = new System.Drawing.Size(188, 26);
            this.txtLogin.TabIndex = 9;
            // 
            // lblLogin
            // 
            this.lblLogin.AutoSize = true;
            this.lblLogin.Location = new System.Drawing.Point(44, 47);
            this.lblLogin.Name = "lblLogin";
            this.lblLogin.Size = new System.Drawing.Size(52, 20);
            this.lblLogin.TabIndex = 8;
            this.lblLogin.Text = "Login:";
            // 
            // btnCadastro
            // 
            this.btnCadastro.Location = new System.Drawing.Point(34, 288);
            this.btnCadastro.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnCadastro.Name = "btnCadastro";
            this.btnCadastro.Size = new System.Drawing.Size(124, 36);
            this.btnCadastro.TabIndex = 7;
            this.btnCadastro.Text = "Cadastrar";
            this.btnCadastro.UseVisualStyleBackColor = true;
            this.btnCadastro.Click += new System.EventHandler(this.btnCadastro_Click);
            // 
            // btnLogin
            // 
            this.btnLogin.Location = new System.Drawing.Point(202, 288);
            this.btnLogin.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnLogin.Name = "btnLogin";
            this.btnLogin.Size = new System.Drawing.Size(124, 36);
            this.btnLogin.TabIndex = 6;
            this.btnLogin.Text = "Logar";
            this.btnLogin.UseVisualStyleBackColor = true;
            this.btnLogin.Click += new System.EventHandler(this.btnLogin_Click);
            // 
            // lblIdade
            // 
            this.lblIdade.AutoSize = true;
            this.lblIdade.Location = new System.Drawing.Point(44, 165);
            this.lblIdade.Name = "lblIdade";
            this.lblIdade.Size = new System.Drawing.Size(54, 20);
            this.lblIdade.TabIndex = 12;
            this.lblIdade.Text = "Idade:";
            // 
            // txtIdade
            // 
            this.txtIdade.Location = new System.Drawing.Point(118, 162);
            this.txtIdade.Name = "txtIdade";
            this.txtIdade.Size = new System.Drawing.Size(40, 26);
            this.txtIdade.TabIndex = 13;
            // 
            // lblGenero
            // 
            this.lblGenero.AutoSize = true;
            this.lblGenero.Location = new System.Drawing.Point(44, 224);
            this.lblGenero.Name = "lblGenero";
            this.lblGenero.Size = new System.Drawing.Size(67, 20);
            this.lblGenero.TabIndex = 14;
            this.lblGenero.Text = "Gênero:";
            // 
            // cbGenero
            // 
            this.cbGenero.FormattingEnabled = true;
            this.cbGenero.Items.AddRange(new object[] {
            "Masculino",
            "Feminino",
            "Outro"});
            this.cbGenero.Location = new System.Drawing.Point(118, 216);
            this.cbGenero.Name = "cbGenero";
            this.cbGenero.Size = new System.Drawing.Size(188, 28);
            this.cbGenero.TabIndex = 15;
            // 
            // Cadastro
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(363, 359);
            this.Controls.Add(this.cbGenero);
            this.Controls.Add(this.lblGenero);
            this.Controls.Add(this.txtIdade);
            this.Controls.Add(this.lblIdade);
            this.Controls.Add(this.txtSenha);
            this.Controls.Add(this.lblSenha);
            this.Controls.Add(this.txtLogin);
            this.Controls.Add(this.lblLogin);
            this.Controls.Add(this.btnCadastro);
            this.Controls.Add(this.btnLogin);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "Cadastro";
            this.Text = "Cadastro";
            this.Load += new System.EventHandler(this.Cadastro_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtSenha;
        private System.Windows.Forms.Label lblSenha;
        private System.Windows.Forms.TextBox txtLogin;
        private System.Windows.Forms.Label lblLogin;
        private System.Windows.Forms.Button btnCadastro;
        private System.Windows.Forms.Button btnLogin;
        private System.Windows.Forms.Label lblIdade;
        private System.Windows.Forms.TextBox txtIdade;
        private System.Windows.Forms.Label lblGenero;
        private System.Windows.Forms.ComboBox cbGenero;
    }
}