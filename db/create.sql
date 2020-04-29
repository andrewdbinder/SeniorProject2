-- MySQL Script generated by MySQL Workbench
-- Wed Apr 29 14:05:20 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema powermonitoring
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema powermonitoring
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `powermonitoring` DEFAULT CHARACTER SET utf8 ;
USE `powermonitoring` ;

-- -----------------------------------------------------
-- Table `powermonitoring`.`devices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `powermonitoring`.`devices` (
  `DeviceID` VARCHAR(24) NOT NULL,
  `FriendlyName` VARCHAR(45) NOT NULL,
  `active` TINYINT NULL DEFAULT '1',
  PRIMARY KEY (`DeviceID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `powermonitoring`.`powerusage`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `powermonitoring`.`powerusage` (
  `MeasurementTime` DATETIME NOT NULL,
  `Device` VARCHAR(24) NOT NULL,
  `WattValue` SMALLINT NOT NULL,
  PRIMARY KEY (`MeasurementTime`, `Device`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;