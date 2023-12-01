use world;
-- a
drop table info_pais;
create table info_pais(
id int not null primary key auto_increment,
Name varchar(45) not null,
Continent varchar(45) not null,
Language varchar(45) not null,
total_falantes int not null
);

-- b
create table log(
id int primary key not null auto_increment,
descricao varchar(500) not null,
data datetime not null
);

-- c 
/*
c) Criar uma view que irá retornar dados unificados baixo:
i) O país, idioma, total pessoas e percentual do continente Asiatico (Asia)
que falem Chines (Chinese) e a expectativa de vida (lifeExpectancy)
maior que 50.
ii) O país, idioma, total pessoas e percentual do continente Africano
(Africa) que falem Portugues (Chinese) e a expectativa de vida
(lifeExpectancy) menor que 50. */

create or replace view country_data as
	select 
		country.Name, 
		country.Continent,
		country.Population,
		country.LifeExpectancy,
		countrylanguage.Language,
        countrylanguage.Percentage
	from
		country
		inner join countrylanguage
	where
		(countrylanguage.language = "Chinese" AND country.LifeExpectancy > 50 AND country.Continent = "Asia") 
		OR (countrylanguage.language = "Portuguese" AND country.LifeExpectancy < 50 AND country.Continent = "Africa");
        
select * from country_data;
select language, percentage from countrylanguage;

/*
d) Criar a função que irá calcular o total de falantes da idoma. Esta função
receberá os parâmetros: percentual e população. A função vai realizar o
cálculo:
(Percentual * População)/100.
● CountryLanguage (Tabela) | Percentage
● Country (tabela) | Population */

DELIMITER //
create function total_falantes(PERCENTUAL INT, POPULACAO INT) returns int
begin
	DECLARE total int DEFAULT 0;
    set total = (POPULACAO * PERCENTUAL)/100;
    return total;
end
// DELIMITER ;

select total_falantes(50, 1000);

/*e) Criar uma trigger para o evento de Insert que irá informar a data e hora (usar
current_timestamp()) e descrição da nova inclusão que aconteceu.*/

DELIMITER $$
create trigger infoPais_insert after insert on info_pais
for each row
BEGIN
	insert into log (descricao, data) VALUES (concat('Registro inserido na tabela usuario: ', ' id: ', NEW.id, ' Continent: ', NEW.Continent, ' Language: ', NEW.Language, ' total_falantes: ', NEW.total_falantes), CURRENT_TIMESTAMP);
END
$$ DELIMITER ;

/*f) Criar uma procedure SEM PARÂMETROS. Nesta procedure, será necessário:
i) Usar CURSOR.
ii) Fazer o select na view criada na letra C, que será usada dentro do
cursor.
iii) Utilizar Loop
iv) Realizar a chamada da função para cada país retornado na view.
v) Com o retorno da função e demais informações do país, realizar a
inclusão na tabela da letra a.*/

Delimiter //
Create Procedure Cursor_Insert_Info_Pais()
Begin
  
	Declare finished int; -- Controle do Cursor.
	Declare var_Name varchar(45);
	Declare var_Continent varchar(45);
    Declare var_Population int;
	Declare var_Language varchar(45);
    Declare var_LifeExpectancy int;
    Declare var_Percentage float;
    Declare var_Total int;
	
  /* 1º Passo Declaração do cursor. 
  Sintaxe e a ordem deve ser mantido conforme abaixo */
  Declare Dados_Pais
    Cursor For
        Select Name, Continent, Population, LifeExpectancy, Language, Percentage
	from country_data;

  /*2º Passo declaração do controle do Cursor */
    DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1; -- VARIAVEL INTERNA DE CONTROLE DO CURSOR

  /* 3º Abertura do cursor */
  OPEN Dados_Pais; 
  
  /* 4º Definição e declaração do loop para o cursor. */
  Loop_Pais: LOOP
    /* 5º Capturar os valores de cada linha do cursor. */
    Fetch Dados_Pais into var_Name,var_Continent, var_Population, var_LifeExpectancy, var_Language, var_Percentage;
    
	SET var_total = total_falantes(var_Percentage, var_Population); -- Definindo o valor da comissao
    insert into info_pais(Name, Continent, Language, total_falantes) values(var_Name, var_Continent, var_Language, var_total); -- Inserindo os dados na tabela 
    
	IF finished = 1 THEN -- VERIFICAÇÃO SE O CURSOR JÁ FINALIZOU OU NÃO
       LEAVE Loop_Pais; -- SAIR DO CURSOR
    END IF; 
  END LOOP Loop_Pais;

  /* 6º Fechar o cursor. */
  Close Dados_Pais;
end //
Delimiter ;

call Cursor_Insert_Info_Pais();
select * from info_pais;
select * from log;