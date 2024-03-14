
--DQL

USE ENCUESTA;


--CONSULTAS INICIALES:


--1.	Ver datos de Usuarios de la Encuesta:

SELECT *
FROM USUARIO

--SELECT: Esta cl�usula se utiliza para especificar qu� columnas deseas seleccionar en la consulta.
--*: Es un comod�n que selecciona todas las columnas disponibles en las tablas especificadas.
--FROM: Indica la tabla de la cual se seleccionar�n los datos.
--USUARIO: Es el nombre de la tabla de la cual se seleccionar�n los datos.


--2.	Ver datos de Usuarios de la Encuesta donde se muestre el id, dni, nombre, sexo y celular solo los usuarios de sexo Femenino y que sus nombres acaben con la letra 'o':

SELECT id_usuario, dni_usua, nombre_usua, sexo_usua, cel_usua
FROM USUARIO
WHERE sexo_usua = 'F' AND nombre_usua LIKE '%o'

--id_usuario, dni_usua, nombre_usua, sexo_usua, cel_usua: Estas son las columnas que se seleccionar�n de la tabla USUARIO.
--WHERE: Esta cl�usula se utiliza para filtrar las filas que cumplen con una condici�n espec�fica.
--sexo_usua = 'F': Esta condici�n filtra las filas donde el valor de la columna sexo_usua es igual a 'F', es decir, solo seleccionar� usuarios de sexo femenino.
--AND: Es un operador l�gico que indica que ambas condiciones deben cumplirse para que se seleccione una fila.
--nombre_usua LIKE '%o': Esta condici�n filtra las filas donde el valor de la columna nombre_usua contiene la letra 'o' en cualquier parte del nombre, ya que % es un comod�n que representa cualquier secuencia de caracteres.


--3. Ver las respuestas de la Usuaria Maria Toledo:

SELECT R.id_intento, I.fecha_inte, R.id_respuesta, R.id_pregunta, R.item_resp
FROM USUARIO U
	INNER JOIN INTENTO I ON I.id_usuario = U.id_usuario
	INNER JOIN RESPUESTA R ON I.id_intento = R.id_intento
WHERE nombre_usua = 'Maria Toledo'

--R.id_intento, I.fecha_inte, R.id_respuesta, R.id_pregunta, R.item_resp: Estas son las columnas que se seleccionar�n de las tablas RESPUESTA e INTENTO.
--USUARIO U: Especifica la tabla USUARIO, y le asigna un alias U. Este alias se utiliza para hacer referencia a la tabla USUARIO en el resto de la consulta.
--INNER JOIN INTENTO I ON I.id_usuario = U.id_usuario: Une la tabla USUARIO con la tabla INTENTO bas�ndose en la igualdad de la columna id_usuario. Esto relaciona los intentos con los usuarios.
--INNER JOIN RESPUESTA R ON I.id_intento = R.id_intento: Une la tabla INTENTO con la tabla RESPUESTA bas�ndose en la igualdad de la columna id_intento. Esto relaciona las respuestas con los intentos.
--La consulta seleccionar� todas las columnas de las tablas USUARIO, INTENTO, y RESPUESTA donde el nombre del usuario es 'Maria Toledo'.


--4. Ver cuantas veces respondio la encuesta Maria Toledo:

SELECT id_intento, id_encuesta,  COUNT(id_intento) AS num_intentos
FROM USUARIO U
	INNER JOIN INTENTO I ON I.id_usuario = U.id_usuario
WHERE nombre_usua = 'Maria Toledo'
GROUP BY  id_intento, id_encuesta

--SELECT id_intento, id_encuesta, COUNT(id_intento) AS num_intentos: Selecciona las columnas id_intento y id_encuesta de la tabla INTENTO, junto con el recuento de los intentos realizados (COUNT(id_intento)). El alias num_intentos se usa para dar nombre a la columna de conteo.
--GROUP BY id_intento, id_encuesta: Agrupa los resultados por las columnas id_intento e id_encuesta. Esto significa que el conteo se realizar� para cada combinaci�n �nica de id_intento e id_encuesta, agrupando los intentos por encuesta.


--5. Calcular edades de los usuarios:

SELECT nombre_usua,
    YEAR(GETDATE()) - YEAR(CONVERT(date, fec_nac_usua)) - 
    CASE WHEN DATEADD(year, DATEDIFF(year, CONVERT(date, fec_nac_usua), GETDATE()), CONVERT(date, fec_nac_usua)) > GETDATE()
         THEN 1 ELSE 0 END AS Edad
FROM USUARIO

--GETDATE() se usa para obtener la fecha y hora actuales.
--CONVERT(date, fec_nac_usua) se usa para convertir la columna fec_nac_usua en un tipo de dato de fecha.
--YEAR() se usa para extraer el a�o de una fecha.
--DATEDIFF() se usa para calcular la diferencia en a�os entre dos fechas.
--DATEADD() se usa para sumar a�os a la fecha de nacimiento.
--CASE se usa para restar 1 a�o si a�n no se ha cumplido el cumplea�os de este a�o.

-- OTRA FORMA DE CALCULAR:

SELECT nombre_usua,
    CAST(DATEDIFF(day, CONVERT(date, fec_nac_usua), GETDATE()) / 365.25 AS int) AS Edad 
FROM USUARIO;

--GETDATE() se utiliza para obtener la fecha y hora actuales.
--CONVERT(date, fec_nac_usua) se utiliza para convertir la columna fec_nac_usua en un tipo de datos de fecha.
--DATEDIFF() se utiliza para calcular la diferencia en d�as entre la fecha de nacimiento y la fecha actual.
--Dividimos la diferencia en d�as por 365.25 para obtener la edad aproximada en a�os.
--CAST() se utiliza para convertir el resultado en un entero, redonde�ndolo hacia abajo.

--FIN