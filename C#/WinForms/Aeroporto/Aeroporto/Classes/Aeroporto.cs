using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aeroporto.Classes
{

    //Não entendi muito bem o diagrama, pois, ao meu ver, não há como realizar a herança entre todas as classes sem gerar controvérsias sobre o projeto
    //Por isso, considerei que os atributos do tipo classe são o que representa as ligações do diagrama, então as classes que possuem tais atributos não
    //herdarão a classe em questão.

    //Os métodos Try:Catch foram utilizados nos métodos construtores das classes

    //Interface não foi aplicado pois eu não possuo conhecimento o suficiente. Procurei a monitoria, mas ainda assim não consegui aplicar de forma
    //satisfatória.

    //Os construtores foram utilizados para pré-definir os valores dos atributos das classes.
    public class Aeroporto
    {
        //Atributos
        private int codigo { get; set; }
        private string nome { get; set; }
        private string cidade { get; set; }
        private string estado { get; set; }
        private string pais { get; set; }

        public Aeroporto()
        {
            try
            {
                codigo = 1;
                nome = "Aeroporto Internacional Lima dos Reis";
                cidade = "Beagá";
                estado = "Minas Gerais";
                pais = "Brasilsilsil";
            }
            catch (Exception)
            {
                codigo = 2;
                nome = "Aeroporto Internacional Limão dos Duques";
                cidade = "Belory Hills";
                estado = "Minas Gerais";
                pais = "Brasilsilsilsil";

            }
        }
        //Métodos Get & Set

        public void SetCodigoAeroporto(int codigo)
        {
            this.codigo = codigo;
        }

        public void SetNomeAeroporto(string nome)
        {
            this.nome = nome;
        }
        public void SetCidade(string cidade)
        {
            this.cidade = cidade;
        }
        public void SetEstado(string estado)
        {
            this.estado = estado;
        }
        public void SetPais(string pais)
        {
            this.pais = pais;
        }

        public int GetCodigoAeroporto()
        {
            return this.codigo;
        }

        public string GetNomeAeroporto()
        {
            return this.nome;
        }

        public string GetCidade()
        {
            return this.cidade;
        }

        public string GetEstado()
        {
            return this.estado;
        }

        public string GetPais()
        {
            return this.pais;
        }
    }
}
