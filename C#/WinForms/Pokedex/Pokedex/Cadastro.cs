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
    public partial class Cadastro : Form
    {
        BLL_Treinador bt = new BLL_Treinador();
        DTO_Treinador dt = new DTO_Treinador();
        public Cadastro()
        {
            InitializeComponent();
        }

        private void Cadastro_Load(object sender, EventArgs e)
        {

        }

        private void btnCadastro_Click(object sender, EventArgs e)
        {
            if (txtLogin.Text != "" || txtIdade.Text != "" || cbGenero.Text != "" || txtSenha.Text != "")
            {
                dt.SetNomeTreinador(txtLogin.Text);
                dt.SetIdadeTreinador(int.Parse(txtIdade.Text));
                dt.SetSenhaTreinador(txtSenha.Text);
                dt.SetGeneroTreinador(cbGenero.Text);

                if (bt.CadastrarTreinador(dt))
                {
                    dt.SetId_Treinador(int.Parse(bt.GetTrainerId(dt.treinador_nome)));

                    Pokemon pokemon = new Pokemon();
                    pokemon.trainer_id = dt.treinador_id;
                    pokemon.Show();
                    this.Hide();
                }
                else
                {
                    MessageBox.Show("Usuário já existente");
                }
            }
            else
            {
                MessageBox.Show("Preencha todos os campos!!!");
            }
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {     
            Login l = new Login();
            l.Show();
            this.Hide();  
        }
    }
}
