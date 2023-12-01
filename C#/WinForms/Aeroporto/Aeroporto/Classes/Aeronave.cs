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
    public class Aeronave 
    {

        //Atributos
        private int codigo { get; set; }
        private string nome { get; set; }
        private int capacidade { get; set; }
        private int pesoMaximo { get; set; }
        private Empresa empresa { get; set; }

        public Aeronave()
        {
            try
            {
                codigo = 1;
                nome = "NVXE 23500 ultra master blaster ômega thunder";
                capacidade = 953098223;
                pesoMaximo = 999999999;
            }
            catch (Exception)
            {
                codigo = 2;
                nome = "NVE 35000 não tão ultra master blaster ômega thunder, mas ainda assim dá pro gasto";
                capacidade = 50;
                pesoMaximo = 51;

            }
        }
        //Métodos Get & Set

        public void SetCodigoAeronave(int codigo)
        {
            this.codigo = codigo;
        }

        public void SetNomeAeronave(string nome)
        {
            this.nome = nome;
        }
        public void SetCapacidade(int capacidade)
        {
            this.capacidade = capacidade;
        }
        public void SetPesoMaximo(int pesoMaximo)
        {
            this.pesoMaximo = pesoMaximo;
        }
        public void SetEmpresa(Empresa empresa )
        {
            this.empresa = empresa;
        }

        public int GetCodigoAeronave()
        {
            return this.codigo;
        }

        public string GetNomeAeronave()
        {
            return this.nome;
        }

        public int GetCapacidade()
        {
            return this.capacidade;
        }

        public int GetPesoMaximo()
        {
            return this.pesoMaximo;
        }

        public Empresa GetEmpresa()
        {
            return this.empresa;
        }
    }
}
