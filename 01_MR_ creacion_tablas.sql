--use master
--go
--if DB_ID('encuesta') is not null
--drop database encuesta
--go
--create database encuesta
--go
--use encuesta
--go


/*1*/	IF OBJECT_ID('respuesta') IS NOT NULL DROP TABLE respuesta;
/*2*/	IF OBJECT_ID('creador') IS NOT NULL DROP TABLE creador;
/*3*/	IF OBJECT_ID('pregunta') IS NOT NULL DROP TABLE pregunta;
/*4*/	IF OBJECT_ID('linea') IS NOT NULL DROP TABLE linea;	
/*5*/	IF OBJECT_ID('encuesta') IS NOT NULL DROP TABLE encuesta;
/*6*/	IF OBJECT_ID('creadorXencuesta') IS NOT NULL DROP TABLE creadorXencuesta;
/*7*/	IF OBJECT_ID('usuario') IS NOT NULL DROP TABLE usuario;
/*8*/	IF OBJECT_ID('usuarioXencuesta') IS NOT NULL DROP TABLE usuarioXencuesta;
/*9*/	IF OBJECT_ID('zona') IS NOT NULL DROP TABLE zona;

go

create table creador
(
	id_creador		int not null,
	DNI_encu		char(8),
	nombre_encu		varchar(45),
	correo_encu		varchar(45),
	cel_encu		varchar(12),
);

create table creadorXencuesta
(
	id_creadorXencuesta	int not null,
	id_creador		int not null,
	id_encuesta		int not null,
);

create table usuario
(
	id_usuario	int not null,
	DNI_usua	char(8),
	nombre_usua	varchar(45),
	correo_usua	varchar(45),
	cel_usua	varchar(12),
);

create table grupo5.zona
(
	id_zona		int not null,
	id_usuario	int not null,
	zona		varchar(45),
);

create table usuarioXencuesta
(
	id_usuarioXencuesta	int not null,
	id_encuesta		int not null,
	id_usuario		int not null,
	fecha_inte		date,
	hora_inte		time,
);

create table encuesta
(
	id_encuesta	int not null,
	titulo		varchar(45),
	descripcion	varchar(45),
	fecha_inicio	date,
	fecha_fin	date,
);

create table grupo5.linea
(
	id_linea	int not null,
	id_encuesta	int not null,
	nombre_linea	varchar(45),
);

create table grupo5.pregunta
(
	id_pregunta	int not null,
	id_linea	int not null,
	numero		int not null,
	texto_preg	varchar(150),
);

create table grupo5.respuesta
(
	id_respuesta		int not null,
	id_pregunta		int not null,
	id_usuarioXencuesta	int not null,
	texto_resp		varchar(45)
);

go

ALTER TABLE creador 
ADD CONSTRAINT pk_creadores PRIMARY KEY (id_creador);

ALTER TABLE creadorXencuesta 
ADD CONSTRAINT pk_creaXencu PRIMARY KEY (id_creadorXencuesta);

ALTER TABLE usuario 
ADD CONSTRAINT pk_usuarios PRIMARY KEY (id_usuario);

ALTER TABLE zona 
ADD CONSTRAINT pk_zonas PRIMARY KEY (id_zona);

ALTER TABLE usuarioXencuesta 
ADD CONSTRAINT pk_userXencu PRIMARY KEY (id_usuarioXencuesta);

ALTER TABLE encuesta 
ADD CONSTRAINT pk_encuestas PRIMARY KEY (id_encuesta);

ALTER TABLE linea 
ADD CONSTRAINT pk_lineas PRIMARY KEY (id_linea);

ALTER TABLE pregunta
ADD CONSTRAINT pk_preguntas PRIMARY KEY (id_pregunta);

ALTER TABLE respuesta
ADD CONSTRAINT pk_respuestas PRIMARY KEY (id_respuesta);

go

ALTER TABLE usuarioXencuesta
ADD CONSTRAINT fk_usuario_encuesta
FOREIGN KEY(id_usuario) REFERENCES usuario (id_usuario);

ALTER TABLE usuarioXencuesta
ADD CONSTRAINT fk_encuesta_usuario
FOREIGN KEY (id_encuesta) REFERENCES encuesta (id_encuesta);

ALTER TABLE creadorXencuesta
ADD CONSTRAINT fk_creador_encuesta
FOREIGN KEY (id_creador) REFERENCES creador (id_creador);

ALTER TABLE creadorXencuesta
ADD CONSTRAINT fk_encuesta_creador
FOREIGN KEY (id_encuesta) REFERENCES encuesta (id_encuesta);

ALTER TABLE linea
ADD CONSTRAINT fk_line_encuesta
FOREIGN KEY (id_encuesta) REFERENCES encuesta (id_encuesta);

ALTER TABLE pregunta
ADD CONSTRAINT fk_pregunta_linea
FOREIGN KEY (id_linea) REFERENCES linea (id_linea);

ALTER TABLE respuesta
ADD CONSTRAINT fk_respuesta_pregunta
FOREIGN KEY (id_pregunta) REFERENCES pregunta (id_pregunta);

ALTER TABLE respuesta
ADD CONSTRAINT fk_usuXencu_respuesta
FOREIGN KEY (id_usuarioXencuesta) REFERENCES usuarioXencuesta (id_usuarioXencuesta);

ALTER TABLE zona
ADD CONSTRAINT fk_usuario_zona
FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario;