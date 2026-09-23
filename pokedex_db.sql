CREATE DATABASE pokedex_db;
USE pokedex_db;


CREATE TABLE Usuarios (
	id INT PRIMARY KEY NOT NULL,
	nombre_Completo VARCHAR(100),
	tipo_docmuento VARCHAR(10),
	documento VARCHAR(100),
	correo VARCHAR(100) UNIQUE,
	PASS VARCHAR(100),
	fecha_registro Date
);


CREATE TABLE Mochila (
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    pokemon_id INT,
    nombre VARCHAR(100),
    imagen VARCHAR(200),
    tipo VARCHAR(50),
    experiencia_base INT,
    es_favorito BOOLEAN DEFAULT FALSE,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id)
    );