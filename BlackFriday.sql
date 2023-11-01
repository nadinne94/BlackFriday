USE BlackFriday_MeD

SELECT COUNT(*) FROM VENDEDOR
GO

SELECT COUNT (*) FROM VENDAS
GO

SELECT COUNT(*) FROM CLIENTE
GO

SELECT * FROM vendas
GO

SELECT * FROM vendedor
GO

/*Quantos clientes que compraram produtos na categoria de computadores e não informaram a sua ocupação de estado civil?*/

SELECT COUNT(*) 
FROM VENDAS
WHERE CATEGORIA_PRODUTO = 'COMPUTADORES'
AND OCUPACAO = 'NAO INFORMADO'

/*A vendedora Fernandina quer a lista dos IDs de todos seus clientes da Black Friday. Qual das opções abaixo contém o campo que Malu vai usar no JOIN para relacionar as tabelas
"vendas" e "vendedor"?*/

SELECT USER_ID
FROM VENDAS V
INNER JOIN VENDEDOR VD
ON V.vendedor_ID = VD.VENDEDOR_ID
WHERE primeiro_nome = 'FERNANDINA'

/*Qual vendedor realizou o maior número de vendas?*/

SELECT PRIMEIRO_NOME, COUNT(*)
FROM vendedor V
INNER JOIN VENDAS VD
ON V.vendedor_ID = VD.vendedor_ID
GROUP BY V.primeiro_nome
ORDER BY 2 DESC

SELECT CEP, COUNT(Order_ID), SUM(preco)
FROM cliente C
INNER JOIN VENDAS VD
ON C.user_id = VD.User_ID
GROUP BY cep
ORDER BY 3 DESC