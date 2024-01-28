
USE ucontinental;

/*1*/	IF OBJECT_ID('grupo5.usuarioXencuesta') IS NOT NULL DROP TABLE grupo5.usuarioXencuesta;
/*2*/	IF OBJECT_ID('grupo5.usuarioXzona') IS NOT NULL DROP TABLE grupo5.usuarioXzona;
/*3*/	IF OBJECT_ID('grupo5.lineaXpregunta') IS NOT NULL DROP TABLE grupo5.lineaXpregunta;
/*4*/	IF OBJECT_ID('grupo5.respuesta') IS NOT NULL DROP TABLE grupo5.respuesta;
/*5*/	IF OBJECT_ID('grupo5.responsable') IS NOT NULL DROP TABLE grupo5.responsable;
/*6*/	IF OBJECT_ID('grupo5.responsableXencuesta') IS NOT NULL DROP TABLE grupo5.responsableXencuesta;
/*7*/	IF OBJECT_ID('grupo5.pregunta') IS NOT NULL DROP TABLE grupo5.pregunta;
/*8*/	IF OBJECT_ID('grupo5.encuesta') IS NOT NULL DROP TABLE grupo5.encuesta;
/*9*/	IF OBJECT_ID('grupo5.linea') IS NOT NULL DROP TABLE grupo5.linea;
/*10*/	IF OBJECT_ID('grupo5.usuario') IS NOT NULL DROP TABLE grupo5.usuario;
/*11*/	IF OBJECT_ID('grupo5.zona') IS NOT NULL DROP TABLE grupo5.zona;
go

create table grupo5.responsable
(
	id_responsable			int not null,
	id_responsableXencuesta	int not null,
	DNI_respon				char(8),
	nombre_respon			varchar(45),
	correo_respon			varchar(45),
	cel_respon				varchar(12),
)

create table grupo5.responsableXencuesta
(
	id_responsableXencuesta	int not null,
	id_responsable			int not null,
	id_encuesta			int not null,
)

create table grupo5.encuesta
(
	id_encuesta				int not null,
	id_responsableXencuesta	int not null,
	titulo_encu				varchar(45),
	descripcion_encu		varchar(45),
	id_linea				int not null,
	fecha_inicio_encu		date,
	fecha_fin_encu			date,
)

create table grupo5.usuarioXencuesta
(
	id_usuarioXencuesta	int not null,
	id_encuesta			int not null,
	id_usuario			int not null,
	fecha_inte			date,
	hora_inte			time,
)

create table grupo5.usuario
(
	id_usuario		int not null,
	DNI_usua		char(8),
	nombre_usua		varchar(45),
	fec_nac_usua	date,
	sexo_usua		varchar(2),
	correo_usua		varchar(45),
	cel_usua		varchar(12),
)

create table grupo5.usuarioXzona
(
	id_usuarioXzona	int not null,
	id_zona			int not null,
	id_usuario		int not null,
)

create table grupo5.zona
(
	id_zona	int not null,
	nombre_zona	varchar(45),
)

create table grupo5.linea
(
	id_linea		int not null,
	nombre_linea	varchar(45),
)

create table grupo5.lineaXpregunta
(
	id_lineaXpregunta	int not null,
	id_linea			int not null,
	id_pregunta			int not null,
)

create table grupo5.pregunta
(
	id_pregunta	int not null,
	numero_preg	int not null,
	texto_preg	varchar(150),
)

create table grupo5.respuesta
(
	id_respuesta		int not null,
	id_pregunta			int not null,
	id_usuarioXencuesta	int not null,
	texto_resp			varchar(45)
)

go

--modificacion de tablas para llaves primarias

ALTER TABLE grupo5.responsable ADD CONSTRAINT pk_responsables PRIMARY KEY (id_responsable)
ALTER TABLE grupo5.responsableXencuesta ADD CONSTRAINT pk_responXencu PRIMARY KEY (id_responsableXencuesta)
ALTER TABLE grupo5.usuario ADD CONSTRAINT pk_usuarios PRIMARY KEY (id_usuario)
ALTER TABLE grupo5.usuarioXzona ADD CONSTRAINT pk_usuaXzona PRIMARY KEY (id_usuarioXzona)
ALTER TABLE grupo5.zona ADD CONSTRAINT pk_zonas PRIMARY KEY (id_zona)
ALTER TABLE grupo5.usuarioXencuesta ADD CONSTRAINT pk_userXencu PRIMARY KEY (id_usuarioXencuesta)
ALTER TABLE grupo5.encuesta ADD CONSTRAINT pk_encuestas PRIMARY KEY (id_encuesta)
ALTER TABLE grupo5.linea ADD CONSTRAINT pk_lineas PRIMARY KEY (id_linea)
ALTER TABLE grupo5.lineaXpregunta ADD CONSTRAINT pk_lineXpreg PRIMARY KEY (id_lineaXpregunta)
ALTER TABLE grupo5.pregunta ADD CONSTRAINT pk_preguntas PRIMARY KEY (id_pregunta)
ALTER TABLE grupo5.respuesta ADD CONSTRAINT pk_respuestas PRIMARY KEY (id_respuesta)
go

--campos unicos seguridad

ALTER TABLE grupo5.linea ADD CONSTRAINT uq_id_linea UNIQUE (id_linea)
ALTER TABLE grupo5.linea ADD CONSTRAINT uq_linea UNIQUE (nombre_linea)
ALTER TABLE grupo5.zona ADD CONSTRAINT uq_id_zona UNIQUE (id_zona)
ALTER TABLE grupo5.zona ADD CONSTRAINT uq_zona UNIQUE (nombre_zona)
ALTER TABLE grupo5.encuesta ADD CONSTRAINT uq_id_encuestas UNIQUE (id_encuesta)
ALTER TABLE grupo5.usuario ADD CONSTRAINT uq_usuario UNIQUE (id_usuario)
ALTER TABLE grupo5.usuarioXencuesta ADD CONSTRAINT uq_id_usuXencu UNIQUE (id_usuarioXencuesta)
ALTER TABLE grupo5.respuesta ADD CONSTRAINT uq_respuestas UNIQUE (id_respuesta)
ALTER TABLE grupo5.usuarioXzona ADD CONSTRAINT uq_usuXzonas UNIQUE (id_usuarioXzona)
ALTER TABLE grupo5.lineaXpregunta ADD CONSTRAINT uq_lineXpreg UNIQUE (id_lineaXpregunta)
ALTER TABLE grupo5.pregunta ADD CONSTRAINT uq_preguntas UNIQUE (id_pregunta)
ALTER TABLE grupo5.responsable ADD CONSTRAINT uq_responsables UNIQUE (id_responsable)
ALTER TABLE grupo5.responsableXencuesta ADD CONSTRAINT uq_responXencu UNIQUE (id_responsableXencuesta)
go

--modificaciones de tablas para llaves foraneas

ALTER TABLE grupo5.usuarioXzona
ADD CONSTRAINT fk_usuario_zona
FOREIGN KEY (id_usuario) REFERENCES grupo5.usuario (id_usuario)

ALTER TABLE grupo5.usuarioXzona
ADD CONSTRAINT fk_zona_usuario
FOREIGN KEY (id_zona) REFERENCES grupo5.zona (id_zona)


ALTER TABLE grupo5.usuarioXencuesta
ADD CONSTRAINT fk_usuario_encuesta
FOREIGN KEY(id_usuario) REFERENCES grupo5.usuario (id_usuario)

ALTER TABLE grupo5.usuarioXencuesta
ADD CONSTRAINT fk_encuesta_usuario
FOREIGN KEY (id_encuesta) REFERENCES grupo5.encuesta (id_encuesta)

ALTER TABLE grupo5.encuesta
ADD CONSTRAINT fk_line_encuesta
FOREIGN KEY (id_linea) REFERENCES grupo5.linea (id_linea)

ALTER TABLE grupo5.responsable
ADD CONSTRAINT fk_responsable_encuesta
FOREIGN KEY (id_responsableXencuesta) REFERENCES grupo5.responsableXencuesta (id_responsableXencuesta)

ALTER TABLE grupo5.encuesta
ADD CONSTRAINT fk_encuesta_responsable
FOREIGN KEY (id_responsableXencuesta) REFERENCES grupo5.responsableXencuesta (id_responsableXencuesta)

ALTER TABLE grupo5.lineaXpregunta
ADD CONSTRAINT fk_preguntaXlinea_pregunta
FOREIGN KEY (id_linea) REFERENCES grupo5.linea (id_linea)

ALTER TABLE grupo5.lineaXpregunta
ADD CONSTRAINT fk_lineaXpregunta_linea
FOREIGN KEY (id_pregunta) REFERENCES grupo5.pregunta (id_pregunta)

ALTER TABLE grupo5.respuesta
ADD CONSTRAINT fk_respuesta_pregunta
FOREIGN KEY (id_pregunta) REFERENCES grupo5.pregunta (id_pregunta)

ALTER TABLE grupo5.respuesta
ADD CONSTRAINT fk_usuXencu_respuesta
FOREIGN KEY (id_usuarioXencuesta) REFERENCES grupo5.usuarioXencuesta (id_usuarioXencuesta)

GO
