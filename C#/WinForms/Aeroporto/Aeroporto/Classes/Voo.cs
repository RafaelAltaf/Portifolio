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
    public class Voo : Aeroporto
    {
        //Atributos
        private int codigo { get; set; }
        private DateTime dataHora { get; set; }
        private Aeroporto origem { get; set; }
        private Aeroporto destino { get; set; }
        private Piloto piloto { get; set; }
        private Aeronave aeronave { get; set; }


        public Voo()
        {
            try
            {
                codigo = 1;
                dataHora = DateTime.Now;
            }
            catch (Exception)
            {
                codigo = 2;
                dataHora = DateTime.Now;

            }
        }
        //Métodos Get & Set

        public void SetCodigoVoo(int codigo)
        {
            this.codigo = codigo;
        }

        public void SetDataHora(DateTime dth)
        {
            this.dataHora = dth;
        }
        public void SetOrigem(Aeroporto origem)
        {
            this.origem = origem;
        }
        public void SetDestino(Aeroporto destino)
        {
            this.destino = destino;
        }

        public void SetPiloto(Piloto piloto)
        {
            this.piloto = piloto;
        }

        public void SetAeronave(Aeronave aeronave)
        {
            this.aeronave = aeronave;
        }
       
        public int GetCodigoVoo()
        {
            return this.codigo;
        }
    }
}