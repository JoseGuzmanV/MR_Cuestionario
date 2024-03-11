
CREATE DATABASE ENCUESTA;
USE ENCUESTA;

/*1*/	IF OBJECT_ID('INTENTO') IS NOT NULL DROP TABLE INTENTO;
/*2*/	IF OBJECT_ID('RADICA') IS NOT NULL DROP TABLE RADICA;
/*3*/	IF OBJECT_ID('LINEAXPREGUNTA') IS NOT NULL DROP TABLE LINEAXPREGUNTA;
/*4*/	IF OBJECT_ID('RESPUESTA') IS NOT NULL DROP TABLE RESPUESTA;
/*5*/	IF OBJECT_ID('RESPONSABLE') IS NOT NULL DROP TABLE RESPONSABLE;
/*6*/	IF OBJECT_ID('DISEÑA') IS NOT NULL DROP TABLE DISEÑA;
/*7*/	IF OBJECT_ID('PREGUNTA') IS NOT NULL DROP TABLE PREGUNTA;
/*8*/	IF OBJECT_ID('ENCUESTA') IS NOT NULL DROP TABLE ENCUESTA;
/*9*/	IF OBJECT_ID('LINEA') IS NOT NULL DROP TABLE LINEA;	
/*10*/	IF OBJECT_ID('USUARIO') IS NOT NULL DROP TABLE USUARIO;
/*11*/	IF OBJECT_ID('ZONA') IS NOT NULL DROP TABLE ZONA;
GO


CREATE TABLE RESPONSABLE
(
	id_responsable	int not null,
	id_diseña		int not null,
	dni_respon		char(8),
	nombre_respon	varchar(45),
	correo_respon	varchar(45),
	cel_respon		varchar(12),
)

CREATE TABLE DISEÑA
(
	id_diseña	int not null,
	id_responsable	int not null,
	id_encuesta	int not null,
)

CREATE TABLE ENCUESTA
(
	id_encuesta		int not null,
	id_diseña		int not null,
	titulo_encu		varchar(45),
	descripcion_encu	varchar(45),
	id_linea		int not null,
	fecha_inicio_encu	date,
	fecha_fin_encu		date,
)

CREATE TABLE INTENTO
(
	id_intento	int not null,
	id_encuesta	int not null,
	id_usuario	int not null,
	fecha_inte	date,
	hora_inte	time,
)

CREATE TABLE USUARIO
(
	id_usuario	int not null,
	dni_usua	char(8),
	nombre_usua	varchar(45),
	fec_nac_usua	date,
	sexo_usua	varchar(2),
	correo_usua	varchar(45),
	cel_usua	varchar(12),
)

CREATE TABLE RADICA
(
	id_radica	int not null,
	id_zona		int not null,
	id_usuario	int not null,
)

CREATE TABLE ZONA
(
	id_zona		int not null,
	nombre_zona	varchar(45),
)

CREATE TABLE LINEA
(
	id_linea	int not null,
	nombre_linea	varchar(45),
)

CREATE TABLE LINEAXPREGUNTA
(
	id_lineaXpregunta	int not null,
	id_linea		int not null,
	id_pregunta		int not null,
)

CREATE TABLE PREGUNTA
(
	id_pregunta	int not null,
	numero_preg	int not null,
	texto_preg	varchar(150),
)

CREATE TABLE RESPUESTA
(
	id_respuesta	int not null,
	id_pregunta	int not null,
	id_intento	int not null,
	item_resp	float not null,
)

go

--modificacion de tablas para llaves primarias

ALTER TABLE RESPONSABLE ADD CONSTRAINT pk_responsables PRIMARY KEY (id_responsable)
ALTER TABLE DISEÑA ADD CONSTRAINT pk_diseña PRIMARY KEY (id_diseña)
ALTER TABLE USUARIO ADD CONSTRAINT pk_usuarios PRIMARY KEY (id_usuario)
ALTER TABLE RADICA ADD CONSTRAINT pk_radica PRIMARY KEY (id_radica)
ALTER TABLE ZONA ADD CONSTRAINT pk_zonas PRIMARY KEY (id_zona)
ALTER TABLE INTENTO ADD CONSTRAINT pk_intentos PRIMARY KEY (id_intento)
ALTER TABLE ENCUESTA ADD CONSTRAINT pk_encuestas PRIMARY KEY (id_encuesta)
ALTER TABLE LINEA ADD CONSTRAINT pk_lineas PRIMARY KEY (id_linea)
ALTER TABLE LINEAXPREGUNTA ADD CONSTRAINT pk_lineXpreg PRIMARY KEY (id_lineaXpregunta)
ALTER TABLE PREGUNTA ADD CONSTRAINT pk_preguntas PRIMARY KEY (id_pregunta)
ALTER TABLE RESPUESTA ADD CONSTRAINT pk_respuestas PRIMARY KEY (id_respuesta)
go

--campos unicos seguridad

ALTER TABLE LINEA ADD CONSTRAINT uq_id_linea UNIQUE (id_linea)
ALTER TABLE LINEA ADD CONSTRAINT uq_linea UNIQUE (nombre_linea)
ALTER TABLE ZONA ADD CONSTRAINT uq_id_zona UNIQUE (id_zona)
ALTER TABLE ZONA ADD CONSTRAINT uq_zona UNIQUE (nombre_zona)
ALTER TABLE ENCUESTA ADD CONSTRAINT uq_id_encuestas UNIQUE (id_encuesta)
ALTER TABLE USUARIO ADD CONSTRAINT uq_usuario UNIQUE (id_usuario)
ALTER TABLE INTENTO ADD CONSTRAINT uq_id_intento UNIQUE (id_intento)
ALTER TABLE RESPUESTA ADD CONSTRAINT uq_respuestas UNIQUE (id_respuesta)
ALTER TABLE RADICA ADD CONSTRAINT uq_radica UNIQUE (id_radica)
ALTER TABLE LINEAXPREGUNTA ADD CONSTRAINT uq_lineXpreg UNIQUE (id_lineaXpregunta)
ALTER TABLE PREGUNTA ADD CONSTRAINT uq_preguntas UNIQUE (id_pregunta)
ALTER TABLE RESPONSABLE ADD CONSTRAINT uq_responsables UNIQUE (id_responsable)
ALTER TABLE DISEÑA ADD CONSTRAINT uq_diseña UNIQUE (id_diseña)
go

--modificaciones de tablas para llaves foraneas

ALTER TABLE RADICA
ADD CONSTRAINT fk_usuario_zona
FOREIGN KEY (id_usuario) REFERENCES USUARIO (id_usuario)

ALTER TABLE RADICA
ADD CONSTRAINT fk_zona_usuario
FOREIGN KEY (id_zona) REFERENCES ZONA (id_zona)


ALTER TABLE INTENTO
ADD CONSTRAINT fk_usuario_encuesta
FOREIGN KEY(id_usuario) REFERENCES USUARIO (id_usuario)

ALTER TABLE INTENTO
ADD CONSTRAINT fk_encuesta_usuario
FOREIGN KEY (id_encuesta) REFERENCES ENCUESTA (id_encuesta)

ALTER TABLE ENCUESTA
ADD CONSTRAINT fk_line_encuesta
FOREIGN KEY (id_linea) REFERENCES LINEA (id_linea)

ALTER TABLE RESPONSABLE
ADD CONSTRAINT fk_responsable_encuesta
FOREIGN KEY (id_diseña) REFERENCES DISEÑA (id_diseña)

ALTER TABLE ENCUESTA
ADD CONSTRAINT fk_encuesta_responsable
FOREIGN KEY (id_diseña) REFERENCES DISEÑA (id_diseña)

ALTER TABLE LINEAXPREGUNTA
ADD CONSTRAINT fk_preguntaXlinea_pregunta
FOREIGN KEY (id_linea) REFERENCES LINEA (id_linea)

ALTER TABLE LINEAXPREGUNTA
ADD CONSTRAINT fk_lineaXpregunta_linea
FOREIGN KEY (id_pregunta) REFERENCES PREGUNTA (id_pregunta)

ALTER TABLE RESPUESTA
ADD CONSTRAINT fk_respuesta_pregunta
FOREIGN KEY (id_pregunta) REFERENCES PREGUNTA (id_pregunta)

ALTER TABLE RESPUESTA
ADD CONSTRAINT fk_intento_respuesta
FOREIGN KEY (id_intento) REFERENCES INTENTO (id_intento)

GO