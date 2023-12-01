/* a)	Crie uma consulta que retorne os escritórios (offices.city) e os nomes dos vendedores que não atenderam clientes. 
Você deverá utilizar RIGHT JOIN. Além disso, deverá filtrar a função do empregado (jobtitle) para ser ‘Sales Rep’. */

use classicmodels;

SELECT 
	offices.city as Escritorios,
	CONCAT(employees.firstName, ' ', employees.lastName) as Funcionarios,
    customers.CustomerName as Clientes,
    employees.jobtitle
FROM
	offices
	RIGHT JOIN employees using (officeCode)
    RIGHT JOIN customers on (employees.employeeNumber = customers.salesRepEmployeeNumber)
WHERE
	employees.jobtitle = "Sales Rep" and customers.CustomerName is null;
    
    
/*b) Faça uma consulta que retorne o Nome do Produto, a quantidade vendida (quantityOrdered) a soma total do produto (quantityOrdered * PriceEach) 
e o ano, unificando as duas consultas abaixo:
i)	O ano data de requerida (RequiredDate) deve ser 2004, os meses desta mesma devem ser de Janeiro a Março. Por fim, a quantidade deve ser maior 
que 100 e o total_vendido maior que 20000.
ii)	O ano data de requerida (RequiredDate) deve ser 2003, os meses desta mesma devem ser de Janeiro a Março. Por fim, a quantidade deve ser menor 
que 50 e o total_vendido maior que 6000.
*/

SELECT
	productName as Produto,
    orderDetails.quantityOrdered as Qtde,
    orderDetails.quantityOrdered * orderDetails.PriceEach as TotalVendido,
    year(orders.requiredDate),
    month(RequiredDate)
FROM
	Products
    LEFT JOIN orderDetails using (productCode)
    LEFT JOIN orders using (orderNumber)
WHERE
	year(orders.requiredDate) = 2004 and month(RequiredDate) between 1 and 3 and orderDetails.quantityOrdered > 100 and orderDetails.quantityOrdered * orderDetails.PriceEach  > 20000
    -- Retorna tudo vazio
UNION
	SELECT
		productName as Produto,
		orderDetails.quantityOrdered as Qtde,
		orderDetails.quantityOrdered * orderDetails.PriceEach as TotalVendido,
		year(orders.requiredDate),
		month(RequiredDate)
	FROM
		Products
		LEFT JOIN orderDetails using (productCode)
		LEFT JOIN orders using (orderNumber)
	WHERE
		year(orders.requiredDate) = 2003 and month(RequiredDate) between 1 and 3 and orderDetails.quantityOrdered < 50 and orderDetails.quantityOrdered * orderDetails.PriceEach  < 6000
	GROUP BY
		productName;
        
/*c)	Utilizando a base de dados World, crie uma consulta que unifique as informações das pessoas falantes dos idiomas, conforme solicitado:
1.	O total de pessoas falantes da língua Japonesa no continente Asiatico.
2.	O total de pessoas falantes da língua Kongo no continente Africano.
3.	O total de pessoas falantes da língua Inglesa no continente Europeu.
*/

use world;

SELECT
	language from countrylanguage where language = "Japanese";
SELECT
	country.continent as Continente,
	(countrylanguage.percentage * Population)/100 as Qtde,
    language as Lingua
FROM
	country
    LEFT JOIN countrylanguage on (country.code = countrylanguage.countryCode)
WHERE
	country.continent = "Asia" and language = "Japanese"  or country.continent = "Africa" and language = "Kongo" or country.continent = "Europe" and language = "English"
GROUP BY
	country.continent;



        
/*d)	Utilizando LEFT JOIN cria um consulta que retorne a quantidade de filmes (Film) por categoria (Category) que não estão presentes no Estoque (Inventory) 
ordenados do maior para o menor.. */
    
use sakila;
SELECT
	count(film.film_id) as QtdeFilmes,
    category.name as Categoria, 
    inventory_id as Inventario
FROM
	Category
    LEFT JOIN film_category using (category_id)
    LEFT JOIN film using (film_id)
    LEFT JOIN inventory using (film_id)
WHERE inventory_id is null;
	













