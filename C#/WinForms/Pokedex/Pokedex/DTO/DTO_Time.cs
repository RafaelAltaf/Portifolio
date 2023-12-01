using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_Time
    {
        public string nome_time { get; set; }
        public string[] time_integrantes { get; set; }
        public int treinador_id { get; set; }

        public string GetNomeTime()
        {
            return this.nome_time;
        }

        public void SetNomeTime(string nome)
        {
            this.nome_time = nome;
        }

        public string[] GetIntegrantes()
        {
            return this.time_integrantes;
        }



        public void SetIntegrantes(string[] integrantes)
        {
            this.time_integrantes = integrantes;

        }

        public int GetId_Treinador()
        {
            return this.treinador_id;
        }



        public void SetId_Treinador(int id)
        {
            this.treinador_id = id;

        }
    }
}
