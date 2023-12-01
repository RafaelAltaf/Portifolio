using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DTO;
using DAL;
using BLL;

namespace Pokedex
{
    public partial class Pokemon : Form
    {
        public int trainer_id { get; set; }    
        BLL_Pokemon bp = new BLL_Pokemon();
        DTO_Pokemon dp = new DTO_Pokemon();


        public Pokemon()
        {
            InitializeComponent();
        }

        private void Pokemon_Load(object sender, EventArgs e)
        {
            DataTable dtP = bp.GetAllData();
            dtgPokemon.DataSource = dtP;    

            DataTable dtT = (bp.GetTypes());
            string[] arrayP = dtT.Rows.OfType<DataRow>().Select(k => k[0].ToString()).ToArray();
            foreach (string s in arrayP)
            {
                cbTipo1.Items.Add(s);
                cbTipo2.Items.Add(s);
            }
        }

        private void btnCadastrar_Click(object sender, EventArgs e)
        {
            dp.SetNomePokemon(txtNome.Text);
            dp.SetTipagemPrimaria(cbTipo1.Text);
            dp.SetTipagemSecundaria(cbTipo2.Text);

            MessageBox.Show(bp.CadastrarPokemon(dp));
            DataTable dtP = bp.GetAllData();
            dtgPokemon.DataSource = dtP;
        }

        private void formarTimesToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void cadastroPokemonToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Pokemon pokemon = new Pokemon();
            pokemon.trainer_id = this.trainer_id;
            pokemon.Show();
            this.Hide();
        }

        private void sairToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
