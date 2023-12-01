using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient; //Classes de conexão do DB
using System.Data; //Classes de retorno de tabela

namespace DAL
{
    public class database
    {
        protected MySqlConnection conn;

        public string Conectar()
        {
            string sql = "server = localhost;uid = root;database = pokedex; pwd =";
            try
            {
                conn = new MySqlConnection(sql);
                conn.Open();
                return "Deu bao";
            }
            catch (MySqlException)
            {
                throw new Exception("Deu ruim");
            }
        }
    }
}
