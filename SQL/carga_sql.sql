CREATE DATABASE IF NOT EXISTS Siniestros_Viales;
USE Siniestros_Viales;

#### SETTINGS ####
SELECT @@global.secure_file_priv;
SET GLOBAL local_infile=1;
SET SQL_SAFE_UPDATES = 0;
SET FOREIGN_KEY_CHECKS=0;
SET SESSION group_concat_max_len = 10000;
SET GLOBAL local_infile = true;
SHOW GLOBAL VARIABLES LIKE 'local_infile';
show variables like 'character_set_server';
SET NAMES utf8mb4;


-- Creamos la tabla Homicidios Hechos:
DROP TABLE IF EXISTS `hh`;
CREATE TABLE IF NOT EXISTS `hh` (
  	`ID` VARCHAR(15),
    `N_VICTIMAS` INTEGER,
    `FECHA` DATE,
    `AAAA` INTEGER,
    `MM` INTEGER,
    `DD` INTEGER,
    `HORA` TIME,
    `HH` INTEGER,
    `LUGAR_DEL_HECHO` VARCHAR(50),
    `TIPO_DE_CALLE` VARCHAR(20),
    `Calle` VARCHAR(50),
    `Altura` VARCHAR(20),
    `Cruce` VARCHAR(50),
    `Dirección Normalizada` VARCHAR (50),
    `COMUNA` VARCHAR(30),
    `XY (CABA)` VARCHAR(60),
    `pos x` VARCHAR(50),
    `pos y` VARCHAR(50),
    `PARTICIPANTES` VARCHAR(20),
    `VICTIMA` VARCHAR(50),
    `ACUSADO` VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
 -- Verifico la creacion de la tabla
select  *
from hh ; -- ESTA OK
-- Cargo los datos en la tabla:
LOAD DATA INFILE 'C:\\Users\\Martin\\Desktop\\Mis Proyectos\\Siniestros_Viales\\datasets\\hh.csv'
INTO TABLE `hh` 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;

-- Error Code: 1262. Row 1 was truncated; it contained more data than there were input columns




-- Creamos la tabla Homicidios Victimas:
DROP TABLE IF EXISTS hv;

-- Creamos la tabla Lesiones Hechos:
DROP TABLE IF EXISTS lh;

-- Creamos la tabla Lesiones Victimas:
DROP TABLE IF EXISTS lv;
