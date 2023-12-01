using BLL;
using DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Pokedex
{
    public partial class Login : Form
    {
        BLL_Treinador bt = new BLL_Treinador();
        DTO_Treinador dt = new DTO_Treinador();
        public Login()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtLogin.Text != "" || txtSenha.Text != "")
            {
                dt.SetNomeTreinador(txtLogin.Text);
                dt.SetSenhaTreinador(txtSenha.Text);

                if (bt.LoginTreinador(dt))
                {
                    dt.SetId_Treinador(int.Parse(bt.GetTrainerId(dt.treinador_nome)));

                    Pokemon pokemon = new Pokemon();
                    pokemon.trainer_id = dt.treinador_id;
                    pokemon.Show();
                    this.Hide();
                }
                else
                {
                    MessageBox.Show("Usuário ou senha incorretos");
                }
            }
            else
            {
                MessageBox.Show("Preencha todos os campos!!!");
            }
        }

        private void btnCadastro_Click(object sender, EventArgs e)
        {
            Cadastro c = new Cadastro();
            c.Show();
            this.Hide();
        }
    }
}
