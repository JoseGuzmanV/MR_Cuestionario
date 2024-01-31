Tiempo de encuesta, ENERO 2023 - ENERO 2024:


--1.	En el �ltimo semestre �Cu�l es el promedio de satisfacci�n de clientes mujeres mujeres en la linea BELLEZA?

SELECT 
	CAST(ROUND(AVG(item_resp),2) AS DEC(10,2)) promedio 
FROM grupo5.respuesta R
	INNER JOIN grupo5.usuarioXencuesta X ON R.id_usuarioXencuesta = X.id_usuarioXencuesta
	INNER JOIN grupo5.encuesta         E ON X.id_encuesta         = E.id_encuesta 
	INNER JOIN grupo5.usuario          U ON X.id_usuario          = U.id_usuario           
WHERE MONTH(fecha_inte) IN (7,8,9,10,11,12) 
	      AND id_linea='3013'


--	2.	�Cu�l es el promedio del nivel de satisfacci�n el servicio de personas mayores de 65 a�os en la l�nea BLANCA durante el �ltimo mes?

SELECT 
	CAST(ROUND(AVG(item_resp),2) AS DEC(10,2)) promedio 
FROM grupo5.respuesta R
	INNER JOIN grupo5.usuarioXencuesta X ON R.id_usuarioXencuesta = X.id_usuarioXencuesta
	INNER JOIN grupo5.encuesta         E ON X.id_encuesta         = E.id_encuesta 
	INNER JOIN grupo5.usuario          U ON X.id_usuario          = U.id_usuario           
WHERE MONTH(fecha_inte) IN (12) 
	      AND CONVERT(INTEGER,DATEDIFF(day,fec_nac_usua, GETDATE())/365.25) > 65
	      AND id_linea='3011'


--3.	�Cuales son las zonas de ventas con mayor satisfacci�n (prom >=4) de usuarios en el �ltimo trimestre?

SELECT nombre_zona, AVG(item_resp) AS satisfaccion 
FROM grupo5.respuesta R
inner join grupo5.usuarioXencuesta X on R.id_usuarioXencuesta = X.id_usuarioXencuesta
inner join grupo5.encuesta E ON X.id_encuesta = E.id_encuesta 
inner join grupo5.usuario U ON X.id_usuario = U.id_usuario
inner join grupo5.usuarioXzona Z on U.id_usuario = Z.id_usuario
inner join grupo5.zona A ON Z.id_zona = A.id_zona
WHERE month(fecha_inte) IN (10,11,12)
GROUP BY nombre_zona
HAVING avg(item_resp) >= 4
ORDER BY satisfaccion DESC 


--4.	�Cuales son las l�neas de ventas con mayor insatisfacci�n (prom <2) de usuarios en este �ltimo mes?

SELECT nombre_linea, AVG(item_resp) AS insatisfaccion 
FROM grupo5.respuesta R
inner join grupo5.usuarioXencuesta X ON R.id_usuarioXencuesta = X.id_usuarioXencuesta
inner join grupo5.encuesta E ON X.id_encuesta = E.id_encuesta 
inner join grupo5.linea L ON E.id_linea  = L.id_linea 
WHERE month(fecha_inte) IN (12)
GROUP BY nombre_linea
HAVING avg(item_resp) <= 2
ORDER BY insatisfaccion DESC 


--5.	Porcentaje de clientes varones menores de 20 a�os con mayor insatisfacci�n (prom <= 2) en la l�nea MODA en noviembre 2023?

SELECT
	count(U.id_usuario) AS Insatisfechos
	,(SELECT COUNT(*) FROM grupo5.usuario ) AS TotalPoblacion
	--,count(U.id_usuario) AS Insatisfechos
	, ((SELECT COUNT(*) FROM grupo5.usuario )*100/count(U.id_usuario)) AS PorcentajeInsatisfechos
FROM grupo5.respuesta R
	inner join grupo5.usuarioXencuesta X ON R.id_usuarioXencuesta = X.id_usuarioXencuesta
	inner join grupo5.encuesta         E ON X.id_encuesta         = E.id_encuesta 
	inner join grupo5.usuario          U ON X.id_usuario          = U.id_usuario 
WHERE CONVERT(INTEGER,DATEDIFF(day,fec_nac_usua, GETDATE())/365.25)<20 
	AND id_linea  = 3013
	AND sexo_usua = 'M'
HAVING AVG(item_resp) <=2.0


--6.	En el �ltimo mes-calendario �cu�l fue la l�nea de ventas con clientes mujeres menores de 30 a�os mas satisfechas (prom >=4)? 

SELECT 
	id_linea 
    ,AVG(item_resp) AS satisfaccion 
	,count(*) AS N
	FROM grupo5.respuesta R
	INNER JOIN grupo5.usuarioXencuesta X ON R.id_usuarioXencuesta = X.id_usuarioXencuesta
	INNER JOIN grupo5.encuesta         E ON X.id_encuesta         = E.id_encuesta 
	INNER JOIN grupo5.usuario          U ON X.id_usuario          = U.id_usuario 
	WHERE month(fecha_inte) IN (12) AND CONVERT(INTEGER,DATEDIFF(day,fec_nac_usua, GETDATE())/365.25) > 30
	GROUP BY id_linea
	HAVING avg(item_resp) >=4.0
	ORDER BY satisfaccion DESC 


--7.	En el �ltimo mes-calendario �Cu�l es el promedio del nivel de satisfechos de la calidad del producto de la l�nea BLANCA?

SELECT 
	 id_linea 
    ,AVG(item_resp) as satisfaccion 
FROM grupo5.respuesta R
	INNER JOIN grupo5.usuarioXencuesta X ON R.id_usuarioXencuesta = X.id_usuarioXencuesta
	INNER JOIN grupo5.encuesta         E ON X.id_encuesta  = E.id_encuesta 
WHERE MONTH(fecha_inte) IN (12)
	AND id_linea  = 3013	
GROUP BY id_linea


--8.	�C�mo ha evolucionado la satisfacci�n promedio de los usuarios por trimestres? 

SELECT
	 Trimestre
	,AVG(item_resp) AS Promedio
FROM
	(SELECT 
		 R.id_usuarioXencuesta
		,R.id_pregunta
		,R.item_resp
		,E.id_linea
		,U.id_usuario
		,CASE WHEN MONTH(X.fecha_inte)IN(1,2,3) THEN 'T1' WHEN MONTH(X.fecha_inte)IN(4,5,6) THEN 'T2' WHEN MONTH(X.fecha_inte)IN(7,8,9) THEN 'T3' ELSE 'T4' END AS Trimestre 
	FROM grupo5.respuesta R
	inner join grupo5.usuarioXencuesta X ON R.id_usuarioXencuesta = X.id_usuarioXencuesta
	inner join grupo5.encuesta         E ON X.id_encuesta         = E.id_encuesta 
	inner join grupo5.usuario          U ON X.id_usuario          = U.id_usuario           ) T
GROUP BY Trimestre


--9. �Cuales son las l�neas de ventas con mayor satisfacci�n (prom >=4) de usuarios en el �ltimo trimestre? 
 
SELECT id_linea 
       , AVG(item_resp) AS satisfaccion 
FROM grupo5.respuesta R
	inner join grupo5.usuarioXencuesta X	ON R.id_usuarioXencuesta = X.id_usuarioXencuesta
	inner join grupo5.encuesta E 	    	ON X.id_encuesta  = E.id_encuesta 
WHERE month(fecha_inte) IN (10,11,12)
GROUP BY id_linea
HAVING avg(item_resp) >=4.0
ORDER BY satisfaccion DESC 


--	10.	�Cu�les son las zonas que presentan algun grado de insatisfechos (promedio<=4) de cada zona?

SELECT  id_zona 
		,AVG(item_resp) as satisfaccion 
	FROM grupo5.respuesta R
	inner join grupo5.usuarioXencuesta X on R.id_usuarioXencuesta = X.id_usuarioXencuesta
	inner join grupo5.encuesta E	      on X.id_encuesta         = E.id_encuesta 
	inner join grupo5.usuario U		  on X.id_usuario          = U.id_usuario
	inner join grupo5.usuarioXzona Z     on U.id_usuario          = Z.id_usuario
	GROUP BY id_zona
	HAVING avg(item_resp) <=4.0
	ORDER BY satisfaccion DESC
  
--FIN