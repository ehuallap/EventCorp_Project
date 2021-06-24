use flask;

CREATE TABLE `flask`.`eventos` (
  `idEventos` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `fecha` VARCHAR(45) NOT NULL,
  `hora` VARCHAR(45) NOT NULL,
  `modalidad` VARCHAR(100) NOT NULL,
  `acceso` VARCHAR(45) NOT NULL,
  `organizador` VARCHAR(100) NOT NULL,
  `Nro_eventos_inscrito` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEventos`));
  
CREATE TABLE `flask`.`usuarios` (
  `idUsuarios` INT NOT NULL AUTO_INCREMENT,
  `apellidos` VARCHAR(100) NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  `correo` VARCHAR(100) NOT NULL,
  `inscrito` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idUsuarios`));
