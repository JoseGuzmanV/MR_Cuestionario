
Tiempo de encuesta, ENERO 2023 - ENERO 2024:


--1.	En el último semestre ¿Cuál es el promedio de satisfacción de clientes mujeres mujeres en la linea BELLEZA?

SELECT 
	COUNT (DISTINCT X.id_usuarioXencuesta) AS #Clientas, CAST(ROUND(AVG(item_resp),2) AS DEC(10,2)) promedio 
FROM grupo5.respuesta R
	INNER JOIN grupo5.usuarioXencuesta X ON R.id_usuarioXencuesta = X.id_usuarioXencuesta
	INNER JOIN grupo5.encuesta E ON X.id_encuesta = E.id_encuesta 
	INNER JOIN grupo5.usuario U ON X.id_usuario = U.id_usuario           
WHERE MONTH(fecha_inte) IN (7,8,9,10,11,12) 
	AND id_linea='3013'


--	2.	¿Cuál es el promedio del nivel de satisfacción el servicio de personas mayores de 65 años en la línea BLANCA durante el último mes?

SELECT 
	COUNT (DISTINCT X.id_usuarioXencuesta) AS Personas, CAST(ROUND(AVG(item_resp),2) AS DEC(10,2)) promedio 
FROM grupo5.respuesta R
	INNER JOIN grupo5.usuarioXencuesta X ON R.id_usuarioXencuesta = X.id_usuarioXencuesta
	INNER JOIN grupo5.encuesta E ON X.id_encuesta = E.id_encuesta 
	INNER JOIN grupo5.usuario U ON X.id_usuario = U.id_usuario           
WHERE MONTH(fecha_inte) IN (12) 
	AND CONVERT(INTEGER,DATEDIFF(day,fec_nac_usua, GETDATE())/365.25) > 65
	AND id_linea=3011


--3.	¿Cuales son las zonas de ventas con mayor satisfacción (prom >=4) de usuarios en el último trimestre?

SELECT nombre_zona, ROUND(AVG(item_resp),2) AS satisfaccion 
FROM grupo5.respuesta R
	INNER JOIN grupo5.usuarioXencuesta X ON R.id_usuarioXencuesta = X.id_usuarioXencuesta
	INNER JOIN grupo5.encuesta E ON X.id_encuesta = E.id_encuesta 
	INNER JOIN grupo5.usuario U ON X.id_usuario = U.id_usuario
	INNER JOIN grupo5.usuarioXzona Z ON U.id_usuario = Z.id_usuario
	INNER JOIN grupo5.zona A ON Z.id_zona = A.id_zona
WHERE MONTH(fecha_inte) IN (10,11,12)
GROUP BY nombre_zona
HAVING AVG(item_resp) >= 4
ORDER BY satisfaccion DESC 


--4.	¿Cuales son las líneas de ventas con mayor insatisfacción (prom <2) de usuarios en este último mes?

SELECT nombre_linea, AVG(item_resp) AS insatisfaccion 
FROM grupo5.respuesta R
	INNER JOIN grupo5.usuarioXencuesta X ON R.id_usuarioXencuesta = X.id_usuarioXencuesta
	INNER JOIN grupo5.encuesta E ON X.id_encuesta = E.id_encuesta 
	INNER JOIN grupo5.linea L ON E.id_linea  = L.id_linea 
WHERE MONTH(fecha_inte) IN (12)
GROUP BY nombre_linea
HAVING AVG(item_resp) <= 2
ORDER BY insatisfaccion DESC 


--5.	¿Cuál es el promedio de mayor insatifacción (prom <= 2) de clientes varones menores de 20 años en la línea MODA en noviembre 2023?

SELECT COUNT (distinct X.id_usuarioXencuesta) AS #Clientes, AVG(item_resp) AS Promedio
FROM grupo5.usuarioXencuesta X
	INNER JOIN grupo5.usuario U ON X.id_usuario = U.id_usuario 
	INNER JOIN grupo5.encuesta E ON X.id_encuesta = E.id_encuesta
	INNER JOIN grupo5.respuesta R ON R.id_usuarioXencuesta = X.id_usuarioXencuesta
WHERE (CONVERT(INTEGER,DATEDIFF(day,fec_nac_usua, GETDATE())/365.25)<20) and month(fecha_inte) IN (5)
	AND sexo_usua = 'M'
	AND id_linea  = 3013
	AND R.item_resp <=2


--6.	En el último mes-calendario ¿cuál fue la línea de ventas con clientes mujeres menores de 30 años mas satisfechas (prom >=4)? 

SELECT 
	nombre_linea, AVG(item_resp) AS satisfaccion, COUNT(*) AS N
FROM grupo5.respuesta R
	INNER JOIN grupo5.usuarioXencuesta X ON R.id_usuarioXencuesta = X.id_usuarioXencuesta
	INNER JOIN grupo5.encuesta E ON X.id_encuesta = E.id_encuesta 
	INNER JOIN grupo5.usuario U ON X.id_usuario = U.id_usuario 
	INNER JOIN grupo5.zona Z ON X.id_usuario = U.id_usuario 
	inner join grupo5.linea L ON E.id_linea = L.id_linea 
WHERE MONTH(fecha_inte) IN (12) AND CONVERT(INTEGER,DATEDIFF(DAY,fec_nac_usua, GETDATE())/365.25) > 30
GROUP BY nombre_linea
HAVING AVG(item_resp) >=4.0
ORDER BY satisfaccion DESC 


--7.	En el último mes-calendario ¿Cuál es el promedio del nivel de satisfechos de la calidad del producto de la línea BLANCA?

SELECT 
	 nombre_linea, AVG(item_resp) AS satisfaccion 
FROM grupo5.respuesta R
	INNER JOIN grupo5.usuarioXencuesta X ON R.id_usuarioXencuesta = X.id_usuarioXencuesta
	INNER JOIN grupo5.encuesta E ON X.id_encuesta  = E.id_encuesta 
	INNER JOIN grupo5.linea L ON E.id_linea  = L.id_linea 
WHERE MONTH(fecha_inte) IN (12)
	AND L.id_linea  = 3011	
GROUP BY nombre_linea


--8.	¿Cómo ha evolucionado la satisfacción promedio de los usuarios por trimestres? 

SELECT
	 Trimestre, ROUND(AVG(item_resp),2) AS Promedio
FROM
	(SELECT 
		 R.id_usuarioXencuesta, R.id_pregunta, R.item_resp, E.id_linea, U.id_usuario, 
		 CASE WHEN MONTH(X.fecha_inte)IN(1,2,3) 
		 THEN 'T1' WHEN MONTH(X.fecha_inte)IN(4,5,6) 
		 THEN 'T2' WHEN MONTH(X.fecha_inte)IN(7,8,9) 
		 THEN 'T3' ELSE 'T4' END AS Trimestre 
	FROM grupo5.respuesta R
	INNER JOIN grupo5.usuarioXencuesta X ON R.id_usuarioXencuesta = X.id_usuarioXencuesta
	INNER JOIN grupo5.encuesta E ON X.id_encuesta = E.id_encuesta 
	INNER JOIN grupo5.usuario U ON X.id_usuario = U.id_usuario) T
GROUP BY Trimestre


--9. ¿Cuales son las líneas de ventas con mayor satisfacción (prom >=4) de usuarios en el último trimestre? 
 
SELECT nombre_linea, ROUND(AVG(item_resp),2) AS satisfaccion 
FROM grupo5.respuesta R
	INNER JOIN grupo5.usuarioXencuesta X ON R.id_usuarioXencuesta = X.id_usuarioXencuesta
	INNER JOIN grupo5.encuesta E ON X.id_encuesta = E.id_encuesta 
	INNER JOIN grupo5.linea L ON E.id_linea = L.id_linea 
WHERE MONTH(fecha_inte) IN (10,11,12)
GROUP BY nombre_linea
HAVING AVG(item_resp) >=4.0
ORDER BY satisfaccion DESC 


--	10.	¿Cuáles son las zonas que presentan algun grado de insatisfechos (promedio<=4) de cada zona?

SELECT  nombre_zona, ROUND(AVG(item_resp),2) AS satisfaccion 
FROM grupo5.respuesta R
	INNER JOIN grupo5.usuarioXencuesta X ON R.id_usuarioXencuesta = X.id_usuarioXencuesta
	INNER JOIN grupo5.encuesta E ON X.id_encuesta = E.id_encuesta 
	INNER JOIN grupo5.usuario U ON X.id_usuario = U.id_usuario
	INNER JOIN grupo5.usuarioXzona Z ON U.id_usuario = Z.id_usuario
	INNER JOIN grupo5.zona A ON Z.id_zona = A.id_zona
GROUP BY nombre_zona
HAVING AVG(item_resp) <=4.0
ORDER BY satisfaccion DESC
  
--FIN