using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient; //Classes de conexão do DB
using System.Data; //Classes de retorno de tabela
using DTO;
using DAL;

namespace BLL
{
    public class BLL_Time : database
    {
        public string CriarTime(DTO_Time t)
        {
            Conectar();
            string sql = "";

            try
            {
                MySqlCommand cmd = new MySqlCommand(sql, conn);
                cmd.ExecuteNonQuery();
                return "Time criado!";
            }
            catch (MySqlException ex)
            {
                throw new Exception("Deu ruim\n" + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }
        
    }
}
