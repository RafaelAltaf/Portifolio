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
    public class Empresa
    {
        private int codigo { get; set; }
        private string nome { get; set; }

        public Empresa()
        {
            try
            {
                codigo = 1;
                nome = "Bah";
            }
            catch (Exception)
            {
                codigo = 1;
                nome = "Tchê";
            }
        }
        public void SetCodigoEmpresa(int codigo)
        {
            this.codigo = codigo;
        }

        public void SetNomeEmpresa(string nome)
        {
            this.nome = nome;
        }

        public int GetCodigoEmpresa()
        {
            return this.codigo;
        }

        public string GetNomeEmpresa()
        {
            return this.nome;
        }
    }
}
