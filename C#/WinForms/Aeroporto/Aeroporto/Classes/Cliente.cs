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
    public class Cliente : Compra
    {
        private int codigo { get; set; }
        private string nome { get; set; }
        private string cpf { get; set; }
        private string endereco { get; set; }

        public Cliente()
        {
            try
            {
                codigo = 1;
                nome = "Sandrinha TopTop";
                cpf = "135.792.134.33";
                endereco = "Avenida Barbacena 253";
            }
            catch (Exception)
            {
                codigo = 1;
                nome = "Nelson";
                cpf = "235.722.184.13";
                endereco = "Avenida Barbacena 223";

            }
        }
        public void SetCodigoCliente(int codigo)
        {
            this.codigo = codigo;
        }

        public void SetNomeCliente(string nome)
        {
            this.nome = nome;
        }

        public void SetCpfCliente(string cpf)
        {
            this.cpf = cpf;
        }

        public void SetEndereco(string endereco)
        {
            this.endereco = endereco;
        }

        public int GetCodigoCliente()
        {
            return this.codigo;
        }

        public string GetNomeCliente()
        {
            return this.nome;
        }

        public string GetCpfCliente()
        {
            return this.cpf;
        }

        public string GetEndereco()
        {
            return this.endereco;   
        }
    }
}
