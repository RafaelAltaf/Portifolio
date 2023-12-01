USE classicmodels;

-- 1º - Criar uma tabela venda_comissao com os campos vendedor (varchar(200) e comissao float)
create table if not exists venda_comissao(
id_vendaComissao int primary key not null auto_increment,
vendedor varchar(200),
comissao float,
mes int,
ano int
);

alter table venda_comissao
	add column mes int,
	add column ano int;

-- 2º - Criar uma View que retorne as vendas por vendedor, mês e ano.
create view VENDAS_POR_VENDEDOR as
	SELECT
		concat(firstName, ' ', lastName) as vendedor,
		payments.amount as vendas,
		month(paymentDate) as mes,
		year(paymentDate) as ano
	FROM
		employees
		INNER JOIN customers on (employees.employeeNumber = customers.salesRepEmployeeNumber)
		INNER JOIN payments using(customerNumber)
	GROUP BY
		vendedor, mes, ano;
		
select * from VENDAS_POR_VENDEDOR;
-- 3º - Criar um função para determinar a comissão considerando:
--       a. Vendas acima de 20.000 aplicar 10%;
--       b. Vendas entre 20.000 e 10.000 aplicar 5;
--       c. Vendas abaixo de 10.000 aplicar 2%.
DELIMITER //
create function COMISSAO_VENDEDORES(VENDA float) returns float
begin
	DECLARE COMISSAO float;
	IF (VENDA > 20000) THEN
		SET COMISSAO = VENDA * 1.1;
	ELSEIF (venda >= 10000 AND venda <= 20000) THEN
		SET COMISSAO = VENDA * 1.05;
	ELSE 
		SET COMISSAO = VENDA * 1.02;
	END IF;
    RETURN COMISSAO;
end// 
DELIMITER ;

-- 4º - Criar um procedure com Cursor para usar o View do Item 2 para inserir os dados na tabela.
Delimiter //
Create Procedure Cursor_Insert_Comissoes()
Begin
  
	Declare finished int; -- Controle do Cursor.
	Declare var_vendedor varchar(80);
	Declare var_venda float;
    Declare var_mes int;
    Declare var_ano int;
    Declare var_comissao float;
	
  /* 1º Passo Declaração do cursor. 
  Sintaxe e a ordem deve ser mantido conforme abaixo */
  Declare Dados_Vendas
    Cursor For
       Select vendedor, vendas, mes, ano
	   from VENDAS_POR_VENDEDOR;

  /*2º Passo declaração do controle do Cursor */
    DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1; -- VARIAVEL INTERNA DE CONTROLE DO CURSOR


  /* 3º Abertura do cursor */
  OPEN Dados_Vendas; 
  
  /* 4º Definição e declaração do loop para o cursor. */
  Loop_Vendedor: LOOP
    /* 5º Capturar os valores de cada linha do cursor. */
    Fetch Dados_Vendas into var_vendedor,var_venda, var_mes, var_ano;
    
	SET var_comissao = COMISSAO_VENDEDORES(var_venda); -- Definindo o valor da comissao
    insert into venda_comissao(vendedor, comissao, mes, ano) values(var_vendedor, var_comissao, var_mes, var_ano); -- Inserindo os dados na tabela 
    
	IF finished = 1 THEN -- VERIFICAÇÃO SE O CURSOR JÁ FINALIZOU OU NÃO
       LEAVE Loop_Vendedor; -- SAIR DO CURSOR
    END IF; 
  END LOOP Loop_Vendedor;

  /* 6º Fechar o cursor. */
  Close Dados_Vendas;
end //
Delimiter ;


call Cursor_Insert_Comissoes();
select * from VENDAS_POR_VENDEDOR;
select * from venda_comissao;