
USE ucontinental;

-- insertar datos tabla [responsableXencuesta]

INSERT [grupo5].[responsableXencuesta] ([id_responsableXencuesta], [id_responsable], [id_encuesta]) 
VALUES (2100, 1001, 5001)

INSERT [grupo5].[responsableXencuesta] ([id_responsableXencuesta], [id_responsable], [id_encuesta]) 
VALUES (2101, 1002, 5002)

INSERT [grupo5].[responsableXencuesta] ([id_responsableXencuesta], [id_responsable], [id_encuesta]) 
VALUES (2102, 1003, 5003)
GO

-- insertar datos tabla [responsable]

INSERT [grupo5].[responsable] ([id_responsable], [id_responsableXencuesta], [DNI_respon], [nombre_respon], [correo_respon], [cel_respon]) 
VALUES (1001, 2100, 42454748, N'Jorge Morales',N'jmorales@gmail.com','+51996857441')

INSERT [grupo5].[responsable] ([id_responsable], [id_responsableXencuesta], [DNI_respon], [nombre_respon], [correo_respon], [cel_respon]) 
VALUES (1002, 2101, 65255663, N'Brayan Maduro',N'bmaduro@outlook.com','+54585856592')

INSERT [grupo5].[responsable] ([id_responsable], [id_responsableXencuesta], [DNI_respon], [nombre_respon], [correo_respon], [cel_respon]) 
VALUES (1003, 2102, 25658559, N'Jhon Smith',N'jsmith@microsoft.com','+50255669855')
GO

-- insertar datos tabla [linea]

INSERT [grupo5].[linea] ([id_linea], [nombre_linea]) 
VALUES (3011, 'Linea Blanca')

INSERT [grupo5].[linea] ([id_linea], [nombre_linea]) 
VALUES (3012, 'Linea Moda')

INSERT [grupo5].[linea] ([id_linea], [nombre_linea]) 
VALUES (3013, 'Linea Belleza')
GO

-- insertar datos tabla [encuesta]

INSERT [grupo5].[encuesta] ([id_encuesta], [id_responsableXencuesta], [titulo_encu], [descripcion_encu], [id_linea], [fecha_inicio_encu], [fecha_fin_encu])
VALUES (5001, 2100, N'Encuesta de satisfaccion', N'2023 - Encuesta de satisfaccion', 3011, '2023-01-01','2023-12-31')
GO
INSERT [grupo5].[encuesta] ([id_encuesta], [id_responsableXencuesta], [titulo_encu], [descripcion_encu], [id_linea], [fecha_inicio_encu], [fecha_fin_encu])
VALUES (5002, 2101, N'Encuesta de satisfaccion', N'2023 - Encuesta de satisfaccion', 3012, '2023-01-01','2023-12-31')
GO
INSERT [grupo5].[encuesta] ([id_encuesta], [id_responsableXencuesta], [titulo_encu], [descripcion_encu], [id_linea], [fecha_inicio_encu], [fecha_fin_encu])
VALUES (5003, 2102, N'Encuesta de satisfaccion', N'2023 - Encuesta de satisfaccion', 3013, '2023-01-01','2023-12-31')
GO

-- insertar datos tabla [pregunta]

INSERT [grupo5].[pregunta] ([id_pregunta], [numero_preg], [texto_preg]) 
VALUES (9001, 1,'Compras online (1) muy mala  (2) mala  (3) media (4) buena (5)excelente')

INSERT [grupo5].[pregunta] ([id_pregunta], [numero_preg], [texto_preg]) 
VALUES (9002, 2,'Despachos a domicilio (1) muy mala  (2) mala  (3) media (4) buena (5)excelente')

INSERT [grupo5].[pregunta] ([id_pregunta], [numero_preg], [texto_preg]) 
VALUES (9003, 3,'Servicio al cliente (1) muy mala  (2) mala  (3) media (4) buena (5)excelente')

INSERT [grupo5].[pregunta] ([id_pregunta], [numero_preg], [texto_preg]) 
VALUES (9004, 4,'Calidad de los productos (1) muy mala  (2) mala  (3) media (4) buena (5)excelente')

INSERT [grupo5].[pregunta] ([id_pregunta], [numero_preg], [texto_preg]) 
VALUES (9005, 5,'Tiempo de entrega de productos (1) muy mala  (2) mala  (3) media (4) buena (5)excelente')

INSERT [grupo5].[pregunta] ([id_pregunta], [numero_preg], [texto_preg]) 
VALUES (9006, 6,'Sistema de compra (tarjeta,) (1) muy mala  (2) mala  (3) media (4) buena (5)excelente')

-- insertar datos tabla [usuario]

INSERT [grupo5].[usuario] ([id_usuario], [DNI_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (1, 41414777, 'Marco Garcia', '1983-10-10', 'M', 'mgarcia@hotmail.com',+51888774450)

INSERT [grupo5].[usuario] ([id_usuario], [DNI_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (2, 40409764, 'Alfonso Toledo', '1998-11-10', 'M', 'atoledo@gmail.com',+51998773333)

INSERT [grupo5].[usuario] ([id_usuario], [DNI_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (3, 44794644, 'Julio Kuschinski', '2006-05-15', 'M','jkuschinski@outlook.com',+51987445741)

INSERT [grupo5].[usuario] ([id_usuario], [DNI_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (4, 58747474, 'javier Medina', '2005-03-01', 'M','jmedina@outlook.com',+51998774500)

INSERT [grupo5].[usuario] ([id_usuario], [DNI_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (5, 45547854, 'Maria Toledo', '1988-05-20', 'F', 'mtoledo@gmail.com',+51998773888)

INSERT [grupo5].[usuario] ([id_usuario], [DNI_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (6, 70574851, 'Sofia Mulanovic', '2004-09-06', 'F', 'jkuschinski@outlook.com',+51919855441)

INSERT [grupo5].[usuario] ([id_usuario], [DNI_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (7, 05645851, 'Luisa Reyes', '1952-05-20', 'F', 'lreyes@yahoo.com',+51994345333)

INSERT [grupo5].[usuario] ([id_usuario], [DNI_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (8, 05645652, 'Elena Manco', '1950-09-06', 'F', 'emanco@hotmail.com',+51987455777)

INSERT [grupo5].[usuario] ([id_usuario], [DNI_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (9, 05645222, 'Jorge Mendozas', '1952-04-01', 'M', 'jmendozas@yahoo.com',+51978745828)
--prueba de usuarios
INSERT [grupo5].[usuario] ([id_usuario], [DNI_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (10, 05645851, 'Luisa Reyes', '1952-05-20', 'F', 'lreyes@yahoo.com',+51994345333)

INSERT [grupo5].[usuario] ([id_usuario], [DNI_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (11, 41414777, 'Marco Garcia', '1983-10-10', 'M', 'mgarcia@hotmail.com',+51888774450)

-- insertar datos tabla [zona]

INSERT [grupo5].[zona] ([id_zona], [nombre_zona]) 
VALUES (10, 'Lima Centro')

INSERT [grupo5].[zona] ([id_zona], [nombre_zona])  
VALUES (11, 'Lima Norte')

INSERT [grupo5].[zona] ([id_zona], [nombre_zona]) 
VALUES (12, 'Lima Sur')

INSERT [grupo5].[zona] ([id_zona], [nombre_zona]) 
VALUES (13, 'Lima Este')
GO

