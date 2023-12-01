using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_Treinador
    {
        public int treinador_id { get; set; }
        public string treinador_senha { get; set; }
        public string treinador_nome { get; set; }
        public string treinador_genero { get; set; }
        public int treinador_idade { get; set; }

        public string GetNomeTreinador()
        {
            return this.treinador_nome;
        }

        public void SetNomeTreinador(string nome)
        {
            this.treinador_nome = nome;
        }

        public string GetSenhaTreinador()
        {
            return this.treinador_senha;
        }

        public void SetSenhaTreinador(string senha)
        {
            this.treinador_senha = senha;
        }


        public int GetId_Treinador()
        {
            return this.treinador_id;
        }


        public void SetId_Treinador(int id)
        {
            this.treinador_id = id;

        }

        public string GetGeneroTreinador()
        {
            return this.treinador_genero;
        }

        public void SetGeneroTreinador(string genero)
        {
            this.treinador_genero = genero;
        }

        public int GetIdadeTreinador()
        {
            return this.treinador_idade;
        }

        public void SetIdadeTreinador(int idade)
        {
            this.treinador_idade = idade;
        }
    }
}
