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
    public class Piloto : Voo
    {
        private int codigo { get; set; }
        private string nome { get; set; }
        private DateTime dataAdmissao { get; set; }

        public Piloto()
        {
            try
            {
                codigo = 1;
                nome = "Carla Pereira Barbosa Lima dos Santos da Silva Pinto Ferreira Damasceno Miranda de Oliveira Santana Santos Gilson Júnior";
                dataAdmissao = DateTime.Now;
            }
            catch (Exception)
            {
                codigo = 1;
                nome = "João Pessoa";
                dataAdmissao = DateTime.Now;

            }
        }

        public void SetCodigoPiloto(int codigo)
        {
            this.codigo = codigo;
        }

        public void SetNomePiloto(string nome)
        {
            this.nome = nome;
        }
        public void SetDataAdmissao(DateTime dataAdmissao)
        {
            this.dataAdmissao = dataAdmissao;
        }
        public int GetCodigoPiloto()
        {
            return this.codigo;
        }

        public string GetNomePiloto()
        {
            return this.nome;
        }

        public DateTime GetDataAdmissao()
        {
            return this.dataAdmissao;
        }

    }
}
