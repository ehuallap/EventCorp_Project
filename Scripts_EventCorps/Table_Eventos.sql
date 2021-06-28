
CREATE TABLE `eventos` (
  `idEventos` INT NOT NULL AUTO_INCREMENT,
  `Titulo` VARCHAR(45) NOT NULL,
  `Lugar` VARCHAR(60) NOT NULL,
  `Descripcion` TEXT(100) NOT NULL,
  `DiaInicio` VARCHAR(45) NOT NULL,
  `HoraInicio` VARCHAR(45) NOT NULL,
  `Recurrencia` VARCHAR(45) NOT NULL,
  `Correos` VARCHAR(45) NOT NULL,
PRIMARY KEY (`idEventos`));
  
