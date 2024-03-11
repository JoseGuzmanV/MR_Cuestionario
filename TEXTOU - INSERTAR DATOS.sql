
USE ENCUESTA;
GO

-- insertar datos tabla [DISEÑA]

INSERT [dbo].[DISEÑA] ([id_diseña], [id_responsable], [id_encuesta]) 
VALUES (2100, 1001, 5001)

INSERT [dbo].[DISEÑA] ([id_diseña], [id_responsable], [id_encuesta]) 
VALUES (2101, 1002, 5002)

INSERT [dbo].[DISEÑA] ([id_diseña], [id_responsable], [id_encuesta]) 
VALUES (2102, 1003, 5003)
GO

-- insertar datos tabla [RESPONSABLE]

INSERT [dbo].[RESPONSABLE] ([id_responsable], [id_diseña], [dni_respon], [nombre_respon], [correo_respon], [cel_respon]) 
VALUES (1001, 2100, 42454748, N'Jorge Morales',N'jmorales@gmail.com','+51996857441')

INSERT [dbo].[RESPONSABLE] ([id_responsable], [id_diseña], [dni_respon], [nombre_respon], [correo_respon], [cel_respon]) 
VALUES (1002, 2101, 65255663, N'Brayan Maduro',N'bmaduro@outlook.com','+54585856592')

INSERT [dbo].[RESPONSABLE] ([id_responsable], [id_diseña], [dni_respon], [nombre_respon], [correo_respon], [cel_respon]) 
VALUES (1003, 2102, 25658559, N'Jhon Smith',N'jsmith@microsoft.com','+50255669855')
GO

-- insertar datos tabla [LINEA]

INSERT [dbo].[LINEA] ([id_linea], [nombre_linea]) 
VALUES (3011, 'Linea Blanca')

INSERT [dbo].[LINEA] ([id_linea], [nombre_linea])
VALUES (3012, 'Linea Moda')

INSERT [dbo].[LINEA] ([id_linea], [nombre_linea])
VALUES (3013, 'Linea Belleza')
GO

-- insertar datos tabla [ENCUESTA]

INSERT [dbo].[ENCUESTA] ([id_encuesta], [id_diseña], [titulo_encu], [descripcion_encu], [id_linea], [fecha_inicio_encu], [fecha_fin_encu])
VALUES (5001, 2100, N'Encuesta de satisfaccion', N'2023 - Encuesta de satisfaccion', 3011, '2023-01-01','2023-12-31')
GO
INSERT [dbo].[ENCUESTA] ([id_encuesta], [id_diseña], [titulo_encu], [descripcion_encu], [id_linea], [fecha_inicio_encu], [fecha_fin_encu])
VALUES (5002, 2101, N'Encuesta de satisfaccion', N'2023 - Encuesta de satisfaccion', 3012, '2023-01-01','2023-12-31')
GO
INSERT [dbo].[ENCUESTA] ([id_encuesta], [id_diseña], [titulo_encu], [descripcion_encu], [id_linea], [fecha_inicio_encu], [fecha_fin_encu])
VALUES (5003, 2102, N'Encuesta de satisfaccion', N'2023 - Encuesta de satisfaccion', 3013, '2023-01-01','2023-12-31')
GO

-- insertar datos tabla [PREGUNTA]

INSERT [dbo].[PREGUNTA] ([id_pregunta], [numero_preg], [texto_preg]) 
VALUES (9001, 1,'Compras online (1) muy mala  (2) mala  (3) media (4) buena (5)excelente')

INSERT [dbo].[PREGUNTA] ([id_pregunta], [numero_preg], [texto_preg]) 
VALUES (9002, 2,'Despachos a domicilio (1) muy mala  (2) mala  (3) media (4) buena (5)excelente')

INSERT [dbo].[PREGUNTA] ([id_pregunta], [numero_preg], [texto_preg]) 
VALUES (9003, 3,'Servicio al cliente (1) muy mala  (2) mala  (3) media (4) buena (5)excelente')

INSERT [dbo].[PREGUNTA] ([id_pregunta], [numero_preg], [texto_preg]) 
VALUES (9004, 4,'Calidad de los productos (1) muy mala  (2) mala  (3) media (4) buena (5)excelente')

INSERT [dbo].[PREGUNTA] ([id_pregunta], [numero_preg], [texto_preg]) 
VALUES (9005, 5,'Tiempo de entrega de productos (1) muy mala  (2) mala  (3) media (4) buena (5)excelente')

INSERT [dbo].[PREGUNTA] ([id_pregunta], [numero_preg], [texto_preg]) 
VALUES (9006, 6,'Sistema de compra (tarjeta,) (1) muy mala  (2) mala  (3) media (4) buena (5)excelente')

-- insertar datos tabla [USUARIO]

INSERT [dbo].[USUARIO] ([id_usuario], [dni_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (1, 41414777, 'Marco Garcia', '1983-10-10', 'M', 'mgarcia@hotmail.com',+51888774450)

INSERT [dbo].[USUARIO] ([id_usuario], [dni_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (2, 40409764, 'Alfonso Toledo', '1998-11-10', 'M', 'atoledo@gmail.com',+51998773333)

INSERT [dbo].[USUARIO] ([id_usuario], [dni_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (3, 44794644, 'Julio Kuschinski', '2006-05-15', 'M','jkuschinski@outlook.com',+51987445741)

INSERT [dbo].[USUARIO] ([id_usuario], [dni_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (4, 58747474, 'javier Medina', '2005-03-01', 'M','jmedina@outlook.com',+51998774500)

INSERT [dbo].[USUARIO] ([id_usuario], [dni_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (5, 45547854, 'Maria Toledo', '1988-05-20', 'F', 'mtoledo@gmail.com',+51998773888)

INSERT [dbo].[USUARIO] ([id_usuario], [dni_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (6, 70574851, 'Sofia Mulanovic', '2004-09-06', 'F', 'jkuschinski@outlook.com',+51919855441)

INSERT [dbo].[USUARIO] ([id_usuario], [dni_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (7, 05645851, 'Luisa Reyes', '1952-05-20', 'F', 'lreyes@yahoo.com',+51994345333)

INSERT [dbo].[USUARIO] ([id_usuario], [dni_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (8, 05645652, 'Elena Manco', '1950-09-06', 'F', 'emanco@hotmail.com',+51987455777)

INSERT [dbo].[USUARIO] ([id_usuario], [dni_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (9, 05645222, 'Jorge Mendozas', '1952-04-01', 'M', 'jmendozas@yahoo.com',+51978745828)
--prueba de usuarios repetidos
INSERT [dbo].[USUARIO] ([id_usuario], [dni_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (10, 05645851, 'Luisa Reyes', '1952-05-20', 'F', 'lreyes@yahoo.com',+51994345333)

INSERT [dbo].[USUARIO] ([id_usuario], [dni_usua], [nombre_usua], [fec_nac_usua], [sexo_usua], [correo_usua], [cel_usua]) 
VALUES (11, 41414777, 'Marco Garcia', '1983-10-10', 'M', 'mgarcia@hotmail.com',+51888774450)

-- insertar datos tabla [ZONA]

INSERT [dbo].[ZONA] ([id_zona], [nombre_zona]) 
VALUES (10, 'Lima Centro')

INSERT [dbo].[ZONA] ([id_zona], [nombre_zona]) 
VALUES (11, 'Lima Norte')

INSERT [dbo].[ZONA] ([id_zona], [nombre_zona]) 
VALUES (12, 'Lima Sur')

INSERT [dbo].[ZONA] ([id_zona], [nombre_zona]) 
VALUES (13, 'Lima Este')
GO

-- insertar [RADICA]

INSERT [dbo].[RADICA] ([id_radica], [id_zona], [id_usuario]) 
VALUES (4001, 10, 1)

INSERT [dbo].[RADICA] ([id_radica], [id_zona], [id_usuario]) 
VALUES (4002, 10, 2)

INSERT [dbo].[RADICA] ([id_radica], [id_zona], [id_usuario]) 
VALUES (4003, 11, 3)

INSERT [dbo].[RADICA] ([id_radica], [id_zona], [id_usuario]) 
VALUES (4004, 11, 4)

INSERT [dbo].[RADICA] ([id_radica], [id_zona], [id_usuario]) 
VALUES (4005, 12, 5)

INSERT [dbo].[RADICA] ([id_radica], [id_zona], [id_usuario]) 
VALUES (4006, 12, 6)

INSERT [dbo].[RADICA] ([id_radica], [id_zona], [id_usuario]) 
VALUES (4007, 13, 7)

INSERT [dbo].[RADICA] ([id_radica], [id_zona], [id_usuario]) 
VALUES (4008, 13, 8)

INSERT [dbo].[RADICA] ([id_radica], [id_zona], [id_usuario]) 
VALUES (4009, 10, 9)
--prueba de usuarios cambio de zona
INSERT [dbo].[RADICA] ([id_radica], [id_zona], [id_usuario]) 
VALUES (4010, 11, 7)

INSERT [dbo].[RADICA] ([id_radica], [id_zona], [id_usuario]) 
VALUES (4011, 12, 1)
GO

-- insertar datos tabla [INTENTO]

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (21, 5001, 1, '2023-01-15','12:10:15')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (22, 5002, 2, '2023-01-30','11:23:40')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (23, 5003, 3, '2023-05-10','10:15:14')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (24, 5001, 4, '2023-06-12','12:00:01')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (25, 5002, 5, '2023-10-12','12:00:01')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (26, 5003, 6, '2023-10-12','12:00:10')
--
INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (27, 5001, 7, '2023-11-12','12:00:10')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (28, 5002, 8, '2023-11-12','12:00:10')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (29, 5003, 9, '2023-12-12','12:00:10')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (30, 5001, 10, '2023-12-12','12:00:10')
--
INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (31, 5002, 11, '2024-01-01','06:00:00')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (32, 5003, 11, '2023-01-01','06:00:00')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (33, 5001, 10, '2023-06-01','07:00:00')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (34, 5002, 5, '2023-12-12','07:00:00')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (35, 5003, 6, '2023-06-01','08:00:00')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (36, 5001, 7, '2023-11-01','07:00:00')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (37, 5002, 1, '2023-11-01','07:00:00')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (38, 5003, 2, '2023-11-01','08:00:00')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (39, 5001, 1, '2023-11-01','07:00:00')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (40, 5002, 2, '2023-11-01','08:00:00')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (41, 5001, 1, '2023-01-15','12:10:15')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (42, 5002, 2, '2023-01-30','11:23:40')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (43, 5003, 3, '2023-05-10','10:15:14')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (44, 5001, 4, '2023-06-12','12:00:01')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (45, 5002, 5, '2023-10-12','12:00:01')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (46, 5003, 6, '2023-10-12','12:00:10')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (47, 5001, 7, '2023-11-12','12:00:10')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (48, 5002, 8, '2023-11-12','12:00:10')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (49, 5003, 9, '2023-12-12','12:00:10')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (50, 5001, 10, '2023-12-12','12:00:10')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (51, 5002, 11, '2024-01-01','06:00:00')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (52, 5003, 11, '2023-01-01','06:00:00')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (53, 5001, 10, '2023-06-01','07:00:00')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (54, 5002, 5, '2023-12-12','07:00:00')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (55, 5003, 6, '2023-06-01','08:00:00')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (56, 5001, 7, '2023-11-01','07:00:00')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (57, 5002, 1, '2023-11-01','07:00:00')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (58, 5003, 2, '2023-11-01','08:00:00')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (59, 5001, 1, '2023-11-01','07:00:00')

INSERT [dbo].[INTENTO] ([id_intento], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (60, 5002, 2, '2023-11-01','08:00:00')
GO

-- insertar datos tabla [respuesta]

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7101, 9001, 21, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7102, 9002, 21, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7103, 9003, 21, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7104, 9004, 21, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7105, 9005, 21, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7106, 9006, 21, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7107, 9001, 22, 3)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7108, 9002, 22, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7109, 9003, 22, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7110, 9004, 22, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7111, 9005, 22, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7112, 9006, 22, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7113, 9001, 23, 3)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7114, 9002, 23, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7115, 9003, 23, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7116, 9004, 23, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7117, 9005, 23, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7118, 9006, 23, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7119, 9001, 24, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7120, 9002, 24, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7121, 9003, 24, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7122, 9004, 24, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7123, 9005, 24, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7124, 9006, 24, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7125, 9001, 25, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7126, 9002, 25, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7127, 9003, 25, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7128, 9004, 25, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7129, 9005, 25, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7130, 9006, 25, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7131, 9001, 26, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7132, 9002, 26, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7133, 9003, 26, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7134, 9004, 26, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7135, 9005, 26, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7136, 9006, 26, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7137, 9001, 27, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7138, 9002, 27, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7139, 9003, 27, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7140, 9004, 27, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7141, 9005, 27, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7142, 9006, 27, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7143, 9001, 28, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7144, 9002, 28, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7145, 9003, 28, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7146, 9004, 28, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7147, 9005, 28, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7148, 9006, 28, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7149, 9001, 29, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7150, 9002, 29, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7151, 9003, 29, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7152, 9004, 29, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7153, 9005, 29, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7154, 9006, 29, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7155, 9001, 30, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7156, 9002, 30, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7157, 9003, 30, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7158, 9004, 30, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7159, 9005, 30, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7160, 9006, 30, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7161, 9001, 31, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7162, 9002, 31, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7163, 9003, 31, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7164, 9004, 31,5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7165, 9005, 31, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7166, 9006, 31, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7167, 9001, 32, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7168, 9002, 32, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7169, 9003, 32, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7170, 9004, 32, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7171, 9005, 32, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7172, 9006, 32, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7173, 9001, 33, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7174, 9002, 33, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7175, 9003, 33, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7176, 9004, 33, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7177, 9005, 33, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7178, 9006, 33, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7179, 9001, 34, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7180, 9002, 34, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7181, 9003, 34, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7182, 9004, 34, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7183, 9005, 34, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7184, 9006, 34, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7185, 9001, 35, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7186, 9002, 35, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7187, 9003, 35, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7188, 9004, 35, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7189, 9005, 35, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7190, 9006, 35, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7191, 9001, 36, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7192, 9002, 36, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7193, 9003, 36, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7194, 9004, 36, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7195, 9005, 36, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7196, 9006, 36, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7197, 9001, 37, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7198, 9002, 37, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7199, 9003, 37, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7200, 9004, 37, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7201, 9005, 37, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7202, 9006, 37, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7203, 9001, 38, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7204, 9002, 38, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7205, 9003, 38, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7206, 9004, 38, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7207, 9005, 38, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7208, 9006, 38, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7209, 9001, 39, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7210, 9002, 39, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7211, 9003, 39, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7212, 9004, 39, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7213, 9005, 39, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7214, 9006, 39, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7215, 9001, 40, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7216, 9002, 40, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7217, 9003, 40, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7218, 9004, 40, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7219, 9005, 40, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7220, 9006, 40, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7221, 9001, 41, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7222, 9002, 41, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7223, 9003, 41, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7224, 9004, 41, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7225, 9005, 41, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7226, 9006, 41, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7227, 9001, 42, 3)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7228, 9002, 42, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7229, 9003, 42, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7230, 9004, 42, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7231, 9005, 42, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7232, 9006, 42, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7233, 9001, 43, 3)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7234, 9002, 43, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7235, 9003, 43, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7236, 9004, 43, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7237, 9005, 43, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7238, 9006, 43, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7239, 9001, 44, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7240, 9002, 44, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7241, 9003, 44, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7242, 9004, 44, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7243, 9005, 44, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7244, 9006, 44, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7245, 9001, 45, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7246, 9002, 45, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7247, 9003, 45, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7248, 9004, 45, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7249, 9005, 45, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7250, 9006, 45, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7251, 9001, 46, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7252, 9002, 46, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7253, 9003, 46, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7254, 9004, 46, 4)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7255, 9005, 46, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7256, 9006, 46, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7257, 9001, 47, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7258, 9002, 47, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7259, 9003, 47, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7260, 9004, 47, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7261, 9005, 47, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7262, 9006, 47, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7263, 9001, 48, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7264, 9002, 48, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7265, 9003, 48, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7266, 9004, 48, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7267, 9005, 48, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7268, 9006, 48, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7269, 9001, 49, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7270, 9002, 49, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7271, 9003, 49, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7272, 9004, 49, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7273, 9005, 49, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7274, 9006, 49, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7275, 9001, 50, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7276, 9002, 50, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7277, 9003, 50, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7278, 9004, 50, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7279, 9005, 50, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7280, 9006, 50, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7281, 9001, 51, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7282, 9002, 51, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7283, 9003, 51, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7284, 9004, 51, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7285, 9005, 51, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7286, 9006, 51, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7287, 9001, 52, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7288, 9002, 52, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7289, 9003, 52, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7290, 9004, 52, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7291, 9005, 52, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7292, 9006, 52, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7293, 9001, 53, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7294, 9002, 53, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7295, 9003, 53, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7296, 9004, 53, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7297, 9005, 53, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7298, 9006, 53, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7299, 9001, 54, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7300, 9002, 54, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7301, 9003, 54, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7302, 9004, 54, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7303, 9005, 54, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7304, 9006, 54, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7305, 9001, 55, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7306, 9002, 55, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7307, 9003, 55, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7308, 9004, 55, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7309, 9005, 55, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7310, 9006, 55, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7311, 9001, 56, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7312, 9002, 56, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7313, 9003, 56, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7314, 9004, 56, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7315, 9005, 56, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7316, 9006, 56, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7317, 9001, 57, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7318, 9002, 57, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7319, 9003, 57, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7320, 9004, 57, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7321, 9005, 57, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7322, 9006, 57, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7323, 9001, 58, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7324, 9002, 58, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7325, 9003, 58, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7326, 9004, 58, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7327, 9005, 58, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7328, 9006, 58, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7329, 9001, 59, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7330, 9002, 59, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7331, 9003, 59, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7332, 9004, 59, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7333, 9005, 59, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7334, 9006, 59, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7335, 9001, 60, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7336, 9002, 60, 5)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7337, 9003, 60, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7338, 9004, 60, 1)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7339, 9005, 60, 2)

INSERT [dbo].[RESPUESTA] ([id_respuesta], [id_pregunta], [id_intento], [item_resp]) 
VALUES (7340, 9006, 60, 1)

GO
