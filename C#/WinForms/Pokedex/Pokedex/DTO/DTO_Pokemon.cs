using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_Pokemon
    {
        public int pokemon_id { get; set; }
        public string pokemon_nome { get; set; }
        public string tipagemPrimaria { get; set; }
        public string tipagemSecundaria { get; set; }

        public string GetNomePokemon()
        {
            return this.pokemon_nome;
        }

        public void SetNomePokemon(string nome)
        {
            this.pokemon_nome = nome;
        }

        public int GetIdPokemon()
        {
            return this.pokemon_id;
        }

        public void SetId_Pokemon(int id)
        {
            this.pokemon_id = id;

        }

        public string GetTipagemPrimaria()
        {
            return this.tipagemPrimaria;
        }

        public void SetTipagemPrimaria(string tipagem)
        {
            this.tipagemPrimaria = tipagem;
        }

        public string GetTipagemSecundaria()
        {
            return this.tipagemSecundaria;
        }

        public void SetTipagemSecundaria(string tipagem)
        {
            this.tipagemSecundaria = tipagem;
        }
    }
}
