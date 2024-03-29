create database turmaA1Procedure;
use turmaA1Procedure;

-- PROCEDURE COM PARÂMETRO DE ENTRADA
create table sacola(
tipo_bola varchar(10),
quantidade int
);

insert into sacola(tipo_bola, quantidade) values("Preta", 2);
insert into sacola(tipo_bola, quantidade) values("Branca", 2);
insert into sacola(tipo_bola, quantidade) values("Amarela", 2);
insert into sacola(tipo_bola, quantidade) values("Vermelha", 2);
insert into sacola(tipo_bola, quantidade) values("Verde", 2);

select * from sacola;

DELIMITER $$
CREATE PROCEDURE RETORNA_COR_BOLA()
BEGIN
	SELECT * FROM SACOLA;
END
$$ DELIMITER ;

CALL RETORNA_COR_BOLA;

DROP PROCEDURE RETORNA_COR_BOLA; 

DELIMITER $$
CREATE PROCEDURE RETORNA_COR_BOLA_COM_PARAMETRO(IN COR_BOLA VARCHAR(10))
BEGIN
	SELECT * FROM SACOLA WHERE TIPO_BOLA = COR_BOLA;
END
$$ DELIMITER ;

DROP PROCEDURE RETORNA_COR_BOLA_COM_PARAMETRO; 

CALL RETORNA_COR_BOLA_COM_PARAMETRO("Preta");
DELIMITER $$
CREATE PROCEDURE RETORNA_COR_BOLA_COM_DOIS_PARAMETROS(IN COR_BOLA1 VARCHAR(10), IN COR_BOLA2 VARCHAR(10))
BEGIN
	SELECT * FROM SACOLA WHERE TIPO_BOLA IN (COR_BOLA1, COR_BOLA2);
END
$$ DELIMITER ;

CALL RETORNA_COR_BOLA_COM_DOIS_PARAMETROS("Preta", "Amarela");

CALL RETORNA_COR_BOLA_COM_PARAMETRO("Azul");

-- CRUD
DELIMITER $$
CREATE PROCEDURE INSERIR_BOLA_NA_SACOLA(IN COLOR VARCHAR(10), IN QUANTITY INT)
BEGIN
	DECLARE CAPACIDADE_SACOLA INT DEFAULT 100; -- CAPACIDADE DE BOLA DENTRO DA SACOLA
    DECLARE QUANTIDADE_EXISTENTE INT DEFAULT 0; -- QUANTIDADE DE BOLAS EXISTENTES NA SACOLA
    DECLARE QUANTIDADE_BOLA INT DEFAULT 0; -- QUANTIDADE DE BOLAS EXISTENTES
    DECLARE BOLA_EXISTENTE INT DEFAULT 0; -- VERIFICA A EXISTENCIA DA BOLA
    
	SELECT SUM(QUANTIDADE) INTO QUANTIDADE_EXISTENTE FROM SACOLA;
    SELECT ifnull(QUANTIDADE,0) INTO BOLA_EXISTENTE FROM SACOLA WHERE TIPO_BOLA = COLOR;
    IF QUANTITY >= 1 THEN
		IF ((QUANTIDADE_EXISTENTE + QUANTIDADE_BOLA) <= CAPACIDADE_SACOLA) THEN
			insert into sacola(tipo_bola, quantidade) 
				values(COLOR,QUANTITY);
		ELSE
			SELECT '** VOCÊ ULTRAPASSOU A CAPACIDADE MÁXIMA DA SACOLA. POR FAVOR, INSIRA OUTRO VALOR. **' AS RESULT;
		END IF;
	END IF;
END
$$ DELIMITER ;

drop PROCEDURE EXCLUIR_BOLA_DA_SACOLA;
DELIMITER $$
CREATE PROCEDURE EXCLUIR_BOLA_DA_SACOLA(IN COLOR VARCHAR(10))
BEGIN
	DELETE FROM SACOLA WHERE TIPO_BOLA = COLOR;
END
$$ DELIMITER ;

CALL EXCLUIR_BOLA_DA_SACOLA("Azul");

DELIMITER $$
CREATE PROCEDURE ADICIONAR_BOLAS_DA_SACOLA(IN COLOR VARCHAR(10), IN QUANTITIY INT)
BEGIN
	DECLARE CAPACIDADE_SACOLA INT DEFAULT 100; -- CAPACIDADE DE BOLA DENTRO DA SACOLA
    DECLARE QUANTIDADE_EXISTENTE INT DEFAULT 0; -- QUANTIDADE DE BOLAS EXISTENTES NA SACOLA
    DECLARE QUANTIDADE_BOLA INT DEFAULT 0; -- QUANTIDADE DE BOLAS EXISTENTES
    DECLARE BOLA_EXISTENTE INT DEFAULT 0; -- VERIFICA A EXISTENCIA DA BOLA
    
	/* IDENTIFICA A QUANT DE BOLAS */
    SELECT IFNULL(QUANTIDADE, 0) INTO BOLA_EXISTENTE FROM SACOLA WHERE TIPO_BOLA = COLOR; 
    SET QUANTIDADE_BOLA = BOLA_EXISTENTE + QUANTITY;
    /* VALIDA SE VAI EXCEDER A CAPACIDADE MÁXIMA */
    IF QUANTITY >= 1 THEN
		IF BOLA_EXISTE <> 0 THEN 
			IF ((QUANTIDADE_EXISTENTE + QUANTIDADE_BOLA) <= CAPACIDADE_SACOLA) THEN
				UPDATE SACOLA SET QUANTIDADE = QUANTIDADE_BOLA;
			ELSE
				SELECT '** VOCÊ ULTRAPASSOU A CAPACIDADE MÁXIMA DA SACOLA. POR FAVOR, INSIRA OUTRO VALOR. **' AS RESULT;
			END IF;
		ELSE 
			CALL INSERIR_BOLA_NA_SACOLA(COLOR, QUANTIDADE);
		END IF;
	ELSE CALL EXCLUIR_BOLA_DA_SACOLA;
	END IF;
END
$$ DELIMITER ;
call ADICIONAR_BOLAS_DA_SACOLA("rosa", 12);
select sum(quantidade) from sacola;
