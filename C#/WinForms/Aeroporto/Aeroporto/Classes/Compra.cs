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
    public class Compra : Passagem
    {
 
        private int codigo { get; set; }
        private Passagem passagem { get; set; }
        private Cliente cliente { get; set; }   
        private string pagamento { get; set; }
        private double valorTotal { get; set; }

        public Compra()
        {
            try
            {
                codigo = 1;
                pagamento = "Débito";
                valorTotal = 1250.49;

                passagem.SetAssento("1E");
                passagem.SetCidade("Belo Horizonte");
                passagem.SetCodigoAeroporto(12);
                passagem.SetCodigoPassagem(1);
                passagem.SetCpf("135.792.134.33");
                passagem.SetDataHora(DateTime.Now);
                passagem.SetNomeAeroporto("Aeroporto Internacional Rúbio Neves");
                passagem.SetNomePassageiro("Sandrinha TopTop");
                passagem.SetPreco(1250.49);

                cliente.SetNomePassageiro("Sandrinha TopTop");
                cliente.SetCpf("135.792.134.33");
            }
            catch (Exception)
            {
                codigo = 0;
                pagamento = "Crédito";
                valorTotal = 520.90;
            }
        }

        public void SetCodigoCompra(int codigo)
        {
            this.codigo = codigo;
        }

        public void SetPassagem(Passagem passagem)
        {
            this.passagem = passagem;
        }

        public void SetCliente(Cliente cliente)
        {
            this.cliente = cliente;
        }

        public void SetPagamento()
        {
            this.pagamento = pagamento;
        }

        public void SetValorTotal()
        {            
            this.valorTotal = valorTotal;
        }

        public int GetCodigo()
        {
            return this.codigo;
        }


        public Cliente GetCliente()
        {
            return this.cliente;
        }

        public Passagem GetPassagem()
        {
            return this.passagem;
        }

        public string GetPagamento()
        {
            return this.pagamento;
        }

        public double GetValorTotal()
        {
            return this.valorTotal;
        }
    }
}
