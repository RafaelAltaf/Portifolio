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
    public class BLL_Pokemon : database
    {
        public DataTable GetTypes()
        {
            Conectar();
            string sql = "select type from types";
            try
            {
                DataTable dt = new DataTable();
                MySqlDataAdapter dados = new MySqlDataAdapter(sql, conn);
                dados.Fill(dt);
                return dt;
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
        public DataTable GetAllData()
        {
            Conectar();
            string sql = "select * from pokemon";
            try
            {
                DataTable dt = new DataTable();
                MySqlDataAdapter dados = new MySqlDataAdapter(sql, conn);
                dados.Fill(dt);
                return dt;
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

        public bool CheckPokemon(string pokemon)
        {
            Conectar();

            try
            {
                MySqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select name from pokemon where name =" + "'" + pokemon + "'";
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

        public int GetTypeId(string type)
        {
            Conectar();

            try
            {
                MySqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select id from types where type ='" + type +"';";
                MySqlDataReader reader = cmd.ExecuteReader();
                
                if (reader.Read())
                {
                    int id = int.Parse(reader.GetString(0));
                    return id;
                }
                else
                {
                    return 0;
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
        public string CadastrarPokemon(DTO_Pokemon p)
        {
            if (CheckPokemon(p.pokemon_nome) == false)
            {
                Conectar();
                int type_id1 = GetTypeId(p.tipagemPrimaria);
                string sql;
                
                if (p.tipagemSecundaria !=  null)
                {
                    int type_id2 = GetTypeId(p.tipagemSecundaria);
                    sql = "insert into pokemon(id, name, typeNum,typeNum2) values(" + p.pokemon_id + ",'" + p.pokemon_nome + "'," + type_id1 + "," + type_id2 + ");";
                }
                else
                {
                    sql = "insert into pokemon(id, name, typeNum) values(" + p.pokemon_id + ",'" + p.pokemon_nome + "'," + type_id1 + ");";
                } 

                try
                {
                    Conectar();
                    MySqlCommand cmd = new MySqlCommand(sql, conn);
                    cmd.ExecuteNonQuery();
                    return "Dados inseridos";
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
                return "pokemon já cadastrado!";
            }
        }
    }
}
