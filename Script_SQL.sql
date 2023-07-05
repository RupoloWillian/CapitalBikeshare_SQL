/*Criando a tabela*/

CREATE TABLE bike_share.tb_bike(
	ride_id VARCHAR(20) NOT NULL,
    rideable_type VARCHAR(20) NOT NULL,
    started_at DATETIME NOT NULL, 
    ended_at DATETIME NOT NULL,
    start_station_name VARCHAR(50) NOT NULL,
    start_station_id VARCHAR(10) NOT NULL,
    end_station_name VARCHAR(50) NOT NULL,
    end_station_id VARCHAR(10) NOT NULL,
    start_lat VARCHAR(20) NOT NULL,
    start_lng VARCHAR(20) NOT NULL,
    end_lat VARCHAR(20) NOT NULL,
    end_lng VARCHAR(20) NOT NULL,
    member_casual VARCHAR(10) NOT NULL
);

/*Habilitando o SAFEUPDATE*/
SET SQL_SAFE_UPDATES = 0;
~~~

/* Tratando os valores em branco */
~~~SQL
UPDATE bikeshare.tb_bike
SET start_station_name = 'S/L'
WHERE start_station_name = '';

UPDATE bikeshare.tb_bike
SET start_station_id = 'S/N'
WHERE start_station_id = '';

UPDATE bikeshare.tb_bike
SET end_station_name = 'S/L'
WHERE end_station_name = '';

UPDATE bikeshare.tb_bike
SET end_station_id = 'S/N'
WHERE end_station_id = '';
~~~

/* Dasabilitando o SAFE UPDATE MODEL */
~~~SQL
SET SQL_SAFE_UPDATES = 1;

/*1) Qual tipo de bicicleta foi a mais utilizada e qual a menos utilizada?​*/

SELECT 
	rideable_type AS Tipo_Bicicleta, 
    COUNT(ride_id) as Quantidade_Emprestimos,
    ROUND((COUNT(ride_id)/(SELECT COUNT(ride_id) FROM bike_share.tb_bike)*100),2) AS Quantidade_Emprestimos_Porc,
    ROUND(AVG(TIMESTAMPDIFF(MINUTE, started_at, ended_at)),2) AS Media_Duracao_Min
FROM bike_share.tb_bike
GROUP BY rideable_type
ORDER BY Quantidade_Emprestimos DESC;


/*2)Qual foi a quantidade de aluguéis realizadas em cada mês?*/

SELECT 
	MONTH(started_at) AS Mes,
    COUNT(ride_id) AS Quantidade_Emprestimos
FROM bike_share.tb_bike
GROUP BY Mes
ORDER BY Quantidade_Emprestimos DESC;


/*3) Qual foi o número de aluguéis e a média de tempo de uso das bicicletas por dia?*/


SELECT 
	DAY(started_at) AS Dia, 
	COUNT(ride_id) AS Quantidade_Emprestimos, 
    ROUND(
		AVG(TIMESTAMPDIFF(MINUTE, started_at, ended_at)),2) AS Media_Duracao_Min
FROM bike_share.tb_bike
GROUP BY Dia
ORDER BY Quantidade_Emprestimos DESC;


/*4) Quais é o horário de pico no empréstimo de bicicletas para cada tipo de membro?*/

SELECT 
	HOUR(started_at) AS Hora, 
	COUNT(ride_id) AS Quantidade_Emprestimos
FROM bike_share.tb_bike
WHERE member_casual = "member"
GROUP BY Hora 
ORDER BY Quantidade_Emprestimos DESC;

SELECT 
	HOUR(started_at) AS Hora, 
	COUNT(ride_id) AS Quantidade_Emprestimos
FROM bike_share.tb_bike
WHERE member_casual = "casual"
GROUP BY Hora 
ORDER BY Quantidade_Emprestimos DESC;


/*5) Qual foi a quantidade de aluguéis e a média de tempo de aluguel por tipo de membro?*/

SELECT 
	member_casual AS Tipo_Membro, 
    COUNT(ride_id) AS Quantidade_Emprestimos,
    ROUND(
		(COUNT(ride_id)/(SELECT COUNT(ride_id) FROM bike_share.tb_bike))*100, 2) 
		AS Quantidade_Emprestimos_Porc,
	ROUND(
		AVG(TIMESTAMPDIFF(MINUTE, started_at, ended_at)),2) AS Media_Duracao_Min
FROM bike_share.tb_bike
GROUP BY member_casual;

/*6)Qual foi a quantidade de aluguéis realizadas em cada mês? Qual foi a variação em relação ao mês anterior?*/
SELECT
	Mes,
    Quantidade_Emprestimos,
    Quantidade_Emprestimos_LM,
    ROUND((Dif/Quantidade_Emprestimos_LM)*100, 2) AS Diferenca
FROM(
	/*Cria uma tabela virtual com o mês, a Quantidade de Empréstimos/mês, 
	Quantidade de Empréstimos Mês Anterior e a Variação da Quantidade de Empréstimos em relação ao Mês Anterior*/
	SELECT 
		Mes,
		Quantidade_Emprestimos,
		LAG(Quantidade_Emprestimos) OVER(ORDER BY Mes ASC) AS Quantidade_Emprestimos_LM,
		Quantidade_Emprestimos - LAG(Quantidade_Emprestimos) OVER(ORDER BY Mes ASC) AS Diferenca
	FROM (
		/*Cria uma tabela virtual com o mês e a Quantidade de Empréstimos/mês*/
		SELECT 
			MONTH(started_at) AS Mes,
			COUNT(ride_id) AS Quantidade_Emprestimos
		FROM bike_share.tb_bike
		GROUP BY Mes
		) AS Tabela
	) AS Resultado
WHERE Resultado.Quantidade_Emprestimos_LM IS NOT NULL
GROUP BY Mes
ORDER BY Mes ASC;