-- MySQL Script generated by MySQL Workbench
-- Tue Jun 27 22:04:32 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`USUARIOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`USUARIOS` (
  `DNI_USER` INT NOT NULL,
  `NOMBRE_USER` VARCHAR(45) NOT NULL,
  `APELLIDO_USER` VARCHAR(45) NOT NULL,
  `EDAD_USER` INT NULL,
  `TELEFONO_USER` INT NULL,
  `DIRECCION_USER` VARCHAR(45) NULL,
  PRIMARY KEY (`DNI_USER`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`RUTAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`RUTAS` (
  `ID_RUTA` INT NOT NULL,
  `NOMBRE_RUTA` VARCHAR(100) NULL,
  `PRECIO_PERSONA_RUTA` FLOAT NULL,
  `PRECIO_PAQUETE_RUTA` VARCHAR(45) NULL,
  `HORA_RUTA` VARCHAR(45) NULL,
  `DEMORA_RUTA` VARCHAR(45) NULL,
  PRIMARY KEY (`ID_RUTA`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`RESERVACIONES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`RESERVACIONES` (
  `ID_RESERVACIONES` INT NOT NULL AUTO_INCREMENT,
  `DNI_USER` INT NOT NULL,
  `FECHA_RESERVACION` DATETIME NULL,
  `RUTAS_ID_RUTA` INT NOT NULL,
  `USUARIOS_DNI_USER` INT NOT NULL,
  PRIMARY KEY (`ID_RESERVACIONES`),
  INDEX `fk_RESERVACIONES_RUTAS1_idx` (`RUTAS_ID_RUTA` ASC) VISIBLE,
  INDEX `fk_RESERVACIONES_USUARIOS1_idx` (`USUARIOS_DNI_USER` ASC) VISIBLE,
  CONSTRAINT `fk_RESERVACIONES_RUTAS1`
    FOREIGN KEY (`RUTAS_ID_RUTA`)
    REFERENCES `mydb`.`RUTAS` (`ID_RUTA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_RESERVACIONES_USUARIOS1`
    FOREIGN KEY (`USUARIOS_DNI_USER`)
    REFERENCES `mydb`.`USUARIOS` (`DNI_USER`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PAQUETES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`PAQUETES` (
  `ID_PAQUETE` INT NOT NULL AUTO_INCREMENT,
  `PRODUCTO_PAQUETE` VARCHAR(45) NOT NULL,
  `PESO_PAQUETE` DECIMAL(5) NOT NULL,
  `TAMAÑO_PAQUETE` VARCHAR(10) NOT NULL,
  `DATOS_DESTINO_PAQUETE` VARCHAR(45) NULL,
  `RUTAS_ID_RUTA` INT NOT NULL,
  `USUARIOS_DNI_USER` INT NOT NULL,
  PRIMARY KEY (`ID_PAQUETE`),
  INDEX `fk_PAQUETES_RUTAS1_idx` (`RUTAS_ID_RUTA` ASC) VISIBLE,
  INDEX `fk_PAQUETES_USUARIOS1_idx` (`USUARIOS_DNI_USER` ASC) VISIBLE,
  CONSTRAINT `fk_PAQUETES_RUTAS1`
    FOREIGN KEY (`RUTAS_ID_RUTA`)
    REFERENCES `mydb`.`RUTAS` (`ID_RUTA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PAQUETES_USUARIOS1`
    FOREIGN KEY (`USUARIOS_DNI_USER`)
    REFERENCES `mydb`.`USUARIOS` (`DNI_USER`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;