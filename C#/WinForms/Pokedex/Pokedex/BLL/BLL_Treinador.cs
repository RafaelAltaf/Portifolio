using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient; //Classes de conexão do DB
using System.Data; //Classes de retorno de tabela
using DTO;
using DAL;
using Pokedex;

namespace BLL
{
    public class BLL_Treinador : database
    {
        public string GetTrainerId(string treinador)
        {
            Conectar();
            try
            {
                MySqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select id from trainer where name = '" + treinador + "';";
                MySqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    string id = reader.GetString(0);
                    return id;
                }
                else
                {
                    return "";
                }
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

        public bool CheckPassword(int id, string password)
        {
            Conectar();

            try
            {
                MySqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select password from trainer where id =" + "'" + id + "'" + "and password = " + "'" + password + "'";
                MySqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    return true;
                }
                else
                {
                    return false;
                }
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

        public bool CadastrarTreinador(DTO_Treinador t)
        {
            if (GetTrainerId(t.treinador_nome) == "")
            {
                Conectar();
                string sql = "INSERT INTO trainer(name, password, age, gender) values('" + t.treinador_nome + "','" + t.treinador_senha + "'," + t.treinador_idade + ",'" + t.treinador_genero + "')";

                try
                {
                    Conectar();
                    MySqlCommand cmd = new MySqlCommand(sql, conn);
                    cmd.ExecuteNonQuery();
                    return true;
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
            else
            {
                return false;
            }
        }

        public bool LoginTreinador(DTO_Treinador t)
        {
            string id_treinador = GetTrainerId(t.treinador_nome);
            if (id_treinador != "")
            {
                if(CheckPassword(int.Parse(id_treinador), t.treinador_senha))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

       
    } 
}
