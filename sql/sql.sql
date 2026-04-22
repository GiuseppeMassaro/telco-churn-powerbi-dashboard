#contiamo quanti clienti ci sono
SELECT
	count(customerid) AS clienti
FROM
	chast c;
# calcolare la percentuale di quanti clienti vanno via
SELECT
	sum(s.churn_value)/ COUNT(s.customer_id)* 100
FROM
	status s ;
#calcolare il churn rate per tipo di contratto
SELECT
	contract,
	sum(churn_value)/ COUNT(customerid)* 100
FROM
	chast
GROUP BY
	contract;
# Churn rate per tenure_group
SELECT c.tenure_group ,sum(c.churn_value)/count(c.customerid )*100 AS churn_rate
FROM chast c 
GROUP BY c.tenure_group 
ORDER BY churn_rate  DESC;
#Churn rate per metodo di pagamento
SELECT c.payment_method ,SUM(c.churn_value )/count(c.customerid )* 100 AS churn_rate
FROM chast c 
GROUP BY c.payment_method 
ORDER BY  churn_rate DESC;
# churn rate per tipo di servzio
SELECT c.internet_service  ,SUM(c.churn_value )/count(c.customerid )* 100 AS churn_rate
FROM chast c 
GROUP BY internet_service 
ORDER BY churn_rate DESC;
# churn rate per servizi attivi 
SELECT c.internet_service  ,SUM(c.churn_value )/count(c.customerid )* 100 AS churn_rate
FROM chast c 
WHERE  c.internet_service !='No'
GROUP BY internet_service 
ORDER BY churn_rate DESC;
# churn rate per satisfaction_score
SELECT
	s2.satisfaction_score,
	SUM(s2.churn_value)/ count(c.customerid)* 100 AS churn_rate
FROM
	chast c
JOIN status s2
ON
	c.customerid = s2.customer_id
GROUP BY
	s2.satisfaction_score
ORDER BY
	churn_rate DESC;
#Distribuzione tenure
SELECT
	customerid,
	tenure_months,
	CASE
		WHEN c.tenure_months < 10 THEN 'cliente_nuovo'
		WHEN c.tenure_months >= 10 THEN 'cliente vecchio'
	END AS tipo_cliente
FROM
	chast c 
ORDER BY tipo_cliente asc ; 
#Distribuzione spesa(monthlycharges)
SELECT count(c.customerid) AS conteggio,
	CASE
		WHEN c.monthly_charges < 50 THEN 'fascia_bassa'
		WHEN c.monthly_charges between 50 and 100 then 'fascia_media'
		else 'fascia_alta'
		END AS fascia_di_spesa	
FROM
		chast c
GROUP BY fascia_di_spesa ;
#Clienti per tipo di contratto
SELECT count(c.customerid ) AS conteggio ,c.contract
FROM chast c  
GROUP BY c.contract ;
#Spesa media per tipo di contratto
SELECT round(avg(c.total_charges)) spesa_media ,c.contract  FROM chast c 
GROUP BY c.contract  ;
#Clienti sopra la media churn

SELECT
	c.customerid ,
	c.total_charges
FROM
	chast c
WHERE
	c.churn_value =1 AND c.total_charges>(
	SELECT
		avg(c2.total_charges)
	FROM
		chast c2
	WHERE
		c2.churn_value = 1);

#Clienti sopra media NON churn

SELECT
	c.customerid ,
	c.total_charges
FROM
	chast c
WHERE
	c.churn_value = 0
	AND c.total_charges >(
	SELECT
		avg (c2.total_charges)
	FROM
		chast c2
	WHERE
		c2.churn_value = 0)
ORDER BY c.total_charges desc;

#Trova clienti con spesa uguale al massimo

SELECT
	c.customerid ,
	c.total_charges
FROM
	chast c
WHERE
	c.total_charges =(
	SELECT
		max(c2.total_charges)
	FROM
		chast c2);

#Trova clienti con spesa uguale al minimo

SELECT c.customerid ,c.total_charges 
FROM chast c 
WHERE c.total_charges =(SELECT min(c2.total_charges) FROM chast c2);


