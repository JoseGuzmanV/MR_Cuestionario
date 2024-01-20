
-- insertar datos tabla [creador]

INSERT [dbo].[creador] ([id_creador], [DNI_encu], [nombre_encu], [correo_encu], [cel_encu]) 
VALUES (1001, 42454748, N'Jorge Morales',N'jmorales@gmail.com','+51996857441')
GO
INSERT [dbo].[creador] ([id_creador], [DNI_encu], [nombre_encu], [correo_encu], [cel_encu]) 
VALUES (1002, 65255663, N'Brayan Maduro',N'bmaduro@outlook.com','+54585856592')
GO
INSERT [dbo].[creador] ([id_creador], [DNI_encu], [nombre_encu], [correo_encu], [cel_encu]) 
VALUES (1003, 25658559, N'Jhon Smith',N'jsmith@microsoft.com','+50255669855')
GO


-- insertar datos tabla [encuesta]

INSERT [dbo].[encuesta] ([id_encuesta], [titulo], [descripcion], [fecha_inicio], [fecha_fin])
VALUES (5001, N'Encuesta Productos para MONITOREO', N'Permitirá ver productos con aceptación', '2023-01-01','2024-12-31')
GO
INSERT [dbo].[encuesta] ([id_encuesta],[titulo],[descripcion],[fecha_inicio],[fecha_fin])
VALUES (5002, 'Encuesta Productos para BAJA', 'Permitirá ver productos con mala reputación','2023-01-01','2024-12-31')
GO


-- insertar datos tabla [creadorXencuesta]

INSERT [dbo].[creadorXencuesta] ([id_creadorXencuesta], [id_creador], [id_encuesta]) 
VALUES (2100, 1003, 5001)
GO
INSERT [dbo].[creadorXencuesta] ([id_creadorXencuesta], [id_creador], [id_encuesta]) 
VALUES (2101, 1002, 5001)
GO
INSERT [dbo].[creadorXencuesta] ([id_creadorXencuesta], [id_creador], [id_encuesta]) 
VALUES (2102, 1002, 5002)
GO


-- insertar datos tabla [linea]

INSERT [dbo].[linea] ([id_linea], [id_encuesta], [nombre_linea]) 
VALUES (3010, 5001, 'Linea Blanca')
GO
INSERT [dbo].[linea] ([id_linea], [id_encuesta], [nombre_linea]) 
VALUES (3011, 5002, 'Linea Blanca')
GO
INSERT [dbo].[linea] ([id_linea], [id_encuesta], [nombre_linea]) 
VALUES (3012, 5001, 'Moda Varon')
GO
INSERT [dbo].[linea] ([id_linea], [id_encuesta], [nombre_linea]) 
VALUES (3013, 5002, 'Moda Varon')
GO


-- insertar datos tabla [pregunta]

INSERT [dbo].[pregunta] ([id_pregunta], [id_linea], [numero], [texto_preg]) 
VALUES (9001, 3010, 1,'Le fue útil el producto "Microondas Samsung" recientemente adquirido, responda SI o NO')
GO
INSERT [dbo].[pregunta] ([id_pregunta], [id_linea], [numero], [texto_preg]) 
VALUES (9002, 3010, 2,'Que calificacion le daría Ud. al producto siendo "1" el puntaje mas bajo y 5 el puntaje más alto')
GO
INSERT [dbo].[pregunta] ([id_pregunta], [id_linea], [numero], [texto_preg]) 
VALUES (9003, 3011, 1,'Calificaría como bueno el producto "Plancha Oster", responda Si o No')
GO
INSERT [dbo].[pregunta] ([id_pregunta], [id_linea], [numero], [texto_preg]) 
VALUES (9004, 3011, 2,'Que calificacion le daría Ud. al producto siendo "1" el puntaje mas bajo y 5 el puntaje más alto')
GO

INSERT [dbo].[pregunta] ([id_pregunta], [id_linea], [numero], [texto_preg]) 
VALUES (9005, 3012, 1,'Le fue útil el producto "Lentes Rai-ban" recientemente adquirido, responda SI o NO')
GO
INSERT [dbo].[pregunta] ([id_pregunta], [id_linea], [numero], [texto_preg]) 
VALUES (9006, 3012, 2,'Recomendaría este producto responda Si o NO')
GO
INSERT [dbo].[pregunta] ([id_pregunta], [id_linea], [numero], [texto_preg]) 
VALUES (9007, 3013, 1,'Calificaría como bueno el producto "Camisa de vestir Van Heusen", responda Si o No')
GO
INSERT [dbo].[pregunta] ([id_pregunta], [id_linea], [numero], [texto_preg]) 
VALUES (9008, 3013, 2,'Recomendaría este producto responda Si o NO')
GO


-- insertar datos tabla [usuario]

INSERT [dbo].[usuario] ([id_usuario], [DNI_usua], [nombre_usua], [correo_usua], [cel_usua]) 
VALUES (1, 41546353, 'Marco Garcia','mgarcia@hotmail.com',+51888774450)
GO
INSERT [dbo].[usuario] ([id_usuario], [DNI_usua], [nombre_usua], [correo_usua], [cel_usua]) 
VALUES (2, 04676542, 'Alfonso Toledo','atoledo@gmail.com',+51998773333)
GO
INSERT [dbo].[usuario] ([id_usuario], [DNI_usua], [nombre_usua], [correo_usua], [cel_usua]) 
VALUES (3, 04623245, 'Julio Kuschinski','jkuschinski@outlook.com',+51987455441)
GO


-- insertar datos tabla [zona]

INSERT [dbo].[zona] ([id_zona], [id_usuario], [zona]) 
VALUES (10, 1, 'Lima Centro')
GO
INSERT [dbo].[zona] ([id_zona], [id_usuario], [zona]) 
VALUES (11, 2, 'Lima Centro')
GO
INSERT [dbo].[zona] ([id_zona], [id_usuario], [zona]) 
VALUES (12, 3, 'Lima Norte')
GO


-- insertar datos tabla [usuarioXencuesta]

INSERT [dbo].[usuarioXencuesta] ([id_usuarioXencuesta], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (21, 5001, 1, '2023-01-15','12:10:15')
GO
INSERT [dbo].[usuarioXencuesta] ([id_usuarioXencuesta], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (22, 5002, 1, '2023-01-30','11:23:40')
GO
INSERT [dbo].[usuarioXencuesta] ([id_usuarioXencuesta], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (23, 5001, 2, '2023-05-10','10:15:14')
GO
INSERT [dbo].[usuarioXencuesta] ([id_usuarioXencuesta], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (24, 5002, 2, '2023-06-12','12:00:01')
GO
INSERT [dbo].[usuarioXencuesta] ([id_usuarioXencuesta], [id_encuesta], [id_usuario], [fecha_inte], [hora_inte]) 
VALUES (25, 5001, 3, '2023-06-12','12:00:01')
GO


-- insertar datos tabla [respuesta]

INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7101, 9001, 21,'SI')
GO
INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7102, 9002, 21,'5')
GO
INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7103, 9003, 21,'NO')
GO
INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7104, 9004, 21,'1')
GO

INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7105, 9001, 22,'SI')
GO
INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7106, 9002, 22,'5')
GO
INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7107, 9003, 22,'SI')
GO
INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7108, 9004, 22,'5')
GO

INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7109, 9001, 23,'SI')
GO
INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7110, 9002, 23,'5')
GO
INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7111, 9003, 23,'NO')
GO
INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7112, 9004, 23,'1')
GO

INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7113, 9005, 23,'SI')
GO
INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7114, 9006, 23,'SI')
GO
INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7115, 9007, 23,'NO')
GO
INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7116, 9008, 23,'NO')
GO

INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7117, 9005, 24,'SI')
GO
INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7118, 9006, 24,'SI')
GO
INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7119, 9007, 24,'NO')
GO
INSERT [dbo].[respuesta] ([id_respuesta], [id_pregunta], [id_usuarioXencuesta], [texto_resp]) 
VALUES (7120, 9008, 24,'NO')
GO