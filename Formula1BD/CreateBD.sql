CREATE DATABASE formula1;
USE formula1;

-- TABLA TEMPORADAS
CREATE TABLE temporada (
    id_temporada INT AUTO_INCREMENT PRIMARY KEY,
    anio INT UNIQUE NOT NULL,
    descripcion VARCHAR(100)
);

-- TABLA PILOTOS
CREATE TABLE piloto (
    id_piloto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    numero INT,
    nacionalidad VARCHAR(50)
);

-- TABLA EQUIPOS
CREATE TABLE equipo (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    pais VARCHAR(50),
    motor VARCHAR(50)
);

-- TABLA CIRCUITOS
CREATE TABLE circuito (
    id_circuito INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    pais VARCHAR(50),
    longitud_km DECIMAL(6,3),
    curvas INT
);


-- TABLA PILOTO_TEMPORADA
CREATE TABLE piloto_temporada (
    id_piloto_temporada INT AUTO_INCREMENT PRIMARY KEY,
    id_piloto INT NOT NULL,
    id_equipo INT NOT NULL,
    id_temporada INT NOT NULL,
    puntos_totales INT DEFAULT 0,
    victorias INT DEFAULT 0,
    posicion_final INT,
    FOREIGN KEY (id_piloto) REFERENCES Piloto(id_piloto),
    FOREIGN KEY (id_equipo) REFERENCES Equipo(id_equipo),
    FOREIGN KEY (id_temporada) REFERENCES Temporada(id_temporada)
);

-- TABLA CARRERA
CREATE TABLE carrera (
    id_carrera INT AUTO_INCREMENT PRIMARY KEY,
    nombre_gp VARCHAR(100) NOT NULL,
    fecha DATE,
    id_circuito INT NOT NULL,
    id_temporada INT NOT NULL,
    num_vueltas INT,
    pole_position INT,
    vuelta_rapida INT,
    FOREIGN KEY (id_circuito) REFERENCES Circuito(id_circuito),
    FOREIGN KEY (id_temporada) REFERENCES Temporada(id_temporada),
    FOREIGN KEY (pole_position) REFERENCES Piloto(id_piloto),
    FOREIGN KEY (vuelta_rapida) REFERENCES Piloto(id_piloto)
);


-- TABLA RESULTADOS
CREATE TABLE resultado_carrera (
    id_resultado INT AUTO_INCREMENT PRIMARY KEY,
    id_carrera INT NOT NULL,
    id_piloto_temporada INT,
    posicion_final INT,
    estado VARCHAR(30),
    puntos_obtenidos INT DEFAULT 0,
    FOREIGN KEY (id_carrera) REFERENCES Carrera(id_carrera),
    FOREIGN KEY (id_piloto_temporada) REFERENCES Piloto_Temporada(id_piloto_temporada)
);

