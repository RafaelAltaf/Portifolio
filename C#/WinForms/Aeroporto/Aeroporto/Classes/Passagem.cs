using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aeroporto.Classes
{
    public class Passagem : Voo
    {
        //Não entendi muito bem o diagrama, pois, ao meu ver, não há como realizar a herança entre todas as classes sem gerar controvérsias sobre o projeto
        //Por isso, considerei que os atributos do tipo classe são o que representa as ligações do diagrama, então as classes que possuem tais atributos não
        //herdarão a classe em questão.

        //Os métodos Try:Catch foram utilizados nos métodos construtores das classes

        //Interface não foi aplicado pois eu não possuo conhecimento o suficiente. Procurei a monitoria, mas ainda assim não consegui aplicar de forma
        //satisfatória.

        //Os construtores foram utilizados para pré-definir os valores dos atributos das classes.

        private int codigo { get; set; }
        private string assento { get; set; }
        private string cpf { get; set; }
        private string nome { get; set; }
        private double preco { get; set; }
        private Voo voo { get; set; }

        public Passagem()
        {
            try
            {
                assento = "1E";
                codigo = 1;
                cpf = "135.792.134.33";
                nome = "Sandrinha TopTop";
                preco = 1250.49;
            }
            catch (Exception)
            {
                codigo = 1;
            }
        }
        public void SetCodigoPassagem(int codigo)
        {
            this.codigo = codigo;
        }
        public void SetNomePassageiro(string nome)
        {
            this.nome = nome;
        }
        public void SetAssento(string assento)
        {
            this.assento = assento;
        }

        public void SetCpf(string cpf)
        {
            this.cpf = cpf;
        }

        public void SetPreco(double preco)
        {
            this.preco = preco;
        }

        public int GetCodigoPassageiro()
        {
            return this.codigo;
        }
        public string GetNomePassageiro()
        {
            return this.nome;
        }


        public string GetAssento()
        {
            return this.assento;
        }

        public string GetCpf()
        {
            return this.cpf;
        }

        public double GetPreco()
        {
            return this.preco;

        }


    }
}
