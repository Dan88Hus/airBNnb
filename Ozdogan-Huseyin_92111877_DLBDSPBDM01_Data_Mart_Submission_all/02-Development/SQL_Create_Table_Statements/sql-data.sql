SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema AirBnB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema AirBnB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `AirBnB` ;
USE `AirBnB` ;

-- -----------------------------------------------------
-- Table `AirBnB`.`userRole`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`userRole` (
  `id_userRole` INT NOT NULL AUTO_INCREMENT,
  `userRole` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  `surname` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `telephone` VARCHAR(45) NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  PRIMARY KEY (`id_userRole`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'To define user as Guest or Host';


-- -----------------------------------------------------
-- Table `AirBnB`.`facility`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`facility` (
  `id_facility` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  `adress` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `telephone` VARCHAR(45) NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  PRIMARY KEY (`id_facility`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'To define facility type like Hotel, apart and etc..';


-- -----------------------------------------------------
-- Table `AirBnB`.`facilityRate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`facilityRate` (
  `id_facilityRate` INT NOT NULL AUTO_INCREMENT,
  `rate` INT NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  `fk_userRole` INT NULL,
  `fk_facilityId` INT NULL,
  PRIMARY KEY (`id_facilityRate`),
  INDEX `fk_facilityRate_2_idx` (`fk_userRole` ASC) VISIBLE,
  INDEX `fk_facilityRate_1_idx` (`fk_facilityId` ASC) VISIBLE,
  CONSTRAINT `fk_facilityRate_1`
    FOREIGN KEY (`fk_facilityId`)
    REFERENCES `AirBnB`.`facility` (`id_facility`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_facilityRate_2`
    FOREIGN KEY (`fk_userRole`)
    REFERENCES `AirBnB`.`userRole` (`id_userRole`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'To keep record facility rate that user gives';


-- -----------------------------------------------------
-- Table `AirBnB`.`facilitySocial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`facilitySocial` (
  `id_facilitySocial` INT NOT NULL AUTO_INCREMENT,
  `facebookLink` VARCHAR(150) NULL,
  `instagramLink` VARCHAR(150) NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  `fk_facilityId` INT NULL,
  PRIMARY KEY (`id_facilitySocial`),
  INDEX `fk_facilitySocial_1_idx` (`fk_facilityId` ASC) VISIBLE,
  CONSTRAINT `fk_facilitySocial_1`
    FOREIGN KEY (`fk_facilityId`)
    REFERENCES `AirBnB`.`facility` (`id_facility`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'To keep record social network details';


-- -----------------------------------------------------
-- Table `AirBnB`.`facilityArchitecture`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`facilityArchitecture` (
  `id_facilityArchitecture` INT NOT NULL AUTO_INCREMENT,
  `hasRoom` INT NULL,
  `totalSq` INT NULL,
  `hasBalcoon` TINYINT NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  `fk_facilityId` INT NULL,
  PRIMARY KEY (`id_facilityArchitecture`),
  INDEX `fk_facilityArchitecture_1_idx` (`fk_facilityId` ASC) VISIBLE,
  CONSTRAINT `fk_facilityArchitecture_1`
    FOREIGN KEY (`fk_facilityId`)
    REFERENCES `AirBnB`.`facility` (`id_facility`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'to keep record of architectural details';


-- -----------------------------------------------------
-- Table `AirBnB`.`facilityPrice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`facilityPrice` (
  `id_facilityPrice` INT NOT NULL AUTO_INCREMENT,
  `pricePerDay` INT NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  `fk_facilityId` INT NULL,
  PRIMARY KEY (`id_facilityPrice`),
  INDEX `fk_facilityPrice_1_idx` (`fk_facilityId` ASC) VISIBLE,
  CONSTRAINT `fk_facilityPrice_1`
    FOREIGN KEY (`fk_facilityId`)
    REFERENCES `AirBnB`.`facility` (`id_facility`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'to keep records of facilty price/day';


-- -----------------------------------------------------
-- Table `AirBnB`.`facilityAvailability`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`facilityAvailability` (
  `id_facilityAvailability` INT NOT NULL AUTO_INCREMENT,
  `availableStartDate` TIMESTAMP NULL,
  `availableEndDate` TIMESTAMP NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  `fk_facilityId` INT NULL,
  PRIMARY KEY (`id_facilityAvailability`),
  INDEX `fk_facilityAvailability_1_idx` (`fk_facilityId` ASC) VISIBLE,
  CONSTRAINT `fk_facilityAvailability_1`
    FOREIGN KEY (`fk_facilityId`)
    REFERENCES `AirBnB`.`facility` (`id_facility`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'to keep records of facility avaibality days';


-- -----------------------------------------------------
-- Table `AirBnB`.`facilityLocation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`facilityLocation` (
  `id_facilityLocation` INT NOT NULL AUTO_INCREMENT COMMENT 'it will keep record of facility location geo coordinations',
  `latitude` VARCHAR(45) NULL,
  `longitude` VARCHAR(45) NULL,
  `cityName` VARCHAR(45) NULL,
  `countryName` VARCHAR(45) NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  `fk_facilityId` INT NULL,
  PRIMARY KEY (`id_facilityLocation`),
  INDEX `fk_facilityLocation_1_idx` (`fk_facilityId` ASC) VISIBLE,
  CONSTRAINT `fk_facilityLocation_1`
    FOREIGN KEY (`fk_facilityId`)
    REFERENCES `AirBnB`.`facility` (`id_facility`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'to keep record geolocation of facility';


-- -----------------------------------------------------
-- Table `AirBnB`.`facilityAdvantages`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`facilityAdvantages` (
  `id_facilityAdvantage` INT NOT NULL AUTO_INCREMENT,
  `advantage` VARCHAR(45) NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  `fk_facilityId` INT NULL,
  PRIMARY KEY (`id_facilityAdvantage`),
  INDEX `fk_facilityAdvantages_1_idx` (`fk_facilityId` ASC) VISIBLE,
  CONSTRAINT `fk_facilityAdvantages_1`
    FOREIGN KEY (`fk_facilityId`)
    REFERENCES `AirBnB`.`facility` (`id_facility`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'to keep records for the advantages of facility';


-- -----------------------------------------------------
-- Table `AirBnB`.`facilityTaxRate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`facilityTaxRate` (
  `id_facilityTaxRate` INT NOT NULL AUTO_INCREMENT,
  `taxRate` INT NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  `fk_facilityId` INT NULL,
  PRIMARY KEY (`id_facilityTaxRate`),
  INDEX `fk_facilityTaxRate_1_idx` (`fk_facilityId` ASC) VISIBLE,
  CONSTRAINT `fk_facilityTaxRate_1`
    FOREIGN KEY (`fk_facilityId`)
    REFERENCES `AirBnB`.`facility` (`id_facility`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'each facility can have it own tax rate according to regulations';


-- -----------------------------------------------------
-- Table `AirBnB`.`facilityOverDayStayed`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`facilityOverDayStayed` (
  `id_facilityOverDayStayed` INT NOT NULL AUTO_INCREMENT,
  `overDays` INT NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  `fk_facilityId` INT NULL,
  PRIMARY KEY (`id_facilityOverDayStayed`),
  INDEX `fk_facilityOverDayStayed_1_idx` (`fk_facilityId` ASC) VISIBLE,
  CONSTRAINT `fk_facilityOverDayStayed_1`
    FOREIGN KEY (`fk_facilityId`)
    REFERENCES `AirBnB`.`facility` (`id_facility`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'visitor can stay longer that planned';


-- -----------------------------------------------------
-- Table `AirBnB`.`facilityOrder`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`facilityOrder` (
  `id_facilityOrder` INT NOT NULL AUTO_INCREMENT,
  `dayOrder` INT NULL,
  `fk_userRoleId` INT NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  `fk_facilityId` INT NULL,
  PRIMARY KEY (`id_facilityOrder`),
  INDEX `fk_facilityOrders_1_idx` (`fk_userRoleId` ASC) VISIBLE,
  INDEX `fk_facilityOrder_1_idx` (`fk_facilityId` ASC) VISIBLE,
  CONSTRAINT `fk_facilityOrders_1`
    FOREIGN KEY (`fk_userRoleId`)
    REFERENCES `AirBnB`.`userRole` (`id_userRole`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_facilityOrder_1`
    FOREIGN KEY (`fk_facilityId`)
    REFERENCES `AirBnB`.`facility` (`id_facility`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'to keep record of facility order of guest';


-- -----------------------------------------------------
-- Table `AirBnB`.`facilityInvoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`facilityInvoice` (
  `id_facilityInvoice` INT NOT NULL AUTO_INCREMENT,
  `stayedDay` INT NULL,
  `fk_facilityPriceId` INT NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  `fk_facilityId` INT NULL,
  `discount` INT NULL,
  `fk_facilityTaxRateId` INT NULL,
  `invoiceAmountTotal` INT NULL,
  PRIMARY KEY (`id_facilityInvoice`),
  INDEX `fk_facilityInvoice_1_idx` (`fk_facilityPriceId` ASC) VISIBLE,
  INDEX `fk_facilityInvoice_2_idx` (`fk_facilityId` ASC) VISIBLE,
  INDEX `fk_facilityInvoice_3_idx` (`fk_facilityTaxRateId` ASC) VISIBLE,
  CONSTRAINT `fk_facilityInvoice_1`
    FOREIGN KEY (`fk_facilityPriceId`)
    REFERENCES `AirBnB`.`facilityPrice` (`id_facilityPrice`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_facilityInvoice_2`
    FOREIGN KEY (`fk_facilityId`)
    REFERENCES `AirBnB`.`facility` (`id_facility`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_facilityInvoice_3`
    FOREIGN KEY (`fk_facilityTaxRateId`)
    REFERENCES `AirBnB`.`facilityTaxRate` (`id_facilityTaxRate`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'to keep record of invoice belongs to guest';


-- -----------------------------------------------------
-- Table `AirBnB`.`facilityReview`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`facilityReview` (
  `id_facilityReview` INT NOT NULL AUTO_INCREMENT,
  `guestComment` VARCHAR(150) NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  `fk_facilityId` INT NULL,
  PRIMARY KEY (`id_facilityReview`),
  INDEX `fk_facilityReview_1_idx` (`fk_facilityId` ASC) VISIBLE,
  CONSTRAINT `fk_facilityReview_1`
    FOREIGN KEY (`fk_facilityId`)
    REFERENCES `AirBnB`.`facility` (`id_facility`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'to keep record for the comments of guest to facility';


-- -----------------------------------------------------
-- Table `AirBnB`.`userTaxId`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`userTaxId` (
  `id_userTaxId` INT NOT NULL AUTO_INCREMENT,
  `userTaxNo` VARCHAR(25) NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  `fk_userRoleId` INT NULL,
  PRIMARY KEY (`id_userTaxId`),
  INDEX `fk_userTaxId_1_idx` (`fk_userRoleId` ASC) VISIBLE,
  CONSTRAINT `fk_userTaxId_1`
    FOREIGN KEY (`fk_userRoleId`)
    REFERENCES `AirBnB`.`userRole` (`id_userRole`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'to keep records of the guest tax records';


-- -----------------------------------------------------
-- Table `AirBnB`.`expectedIncome`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`expectedIncome` (
  `id_expectedIncome` INT NOT NULL AUTO_INCREMENT,
  `expectedIncome` INT NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  `fk_facilityId` INT NULL,
  `fk_facilityPriceId` INT NULL,
  `fk_facilityOrderId` INT NULL,
  PRIMARY KEY (`id_expectedIncome`),
  INDEX `fk_expectedIncome_1_idx` (`fk_facilityId` ASC) VISIBLE,
  INDEX `fk_expectedIncome_2_idx` (`fk_facilityPriceId` ASC) VISIBLE,
  INDEX `fk_expectedIncome_3_idx` (`fk_facilityOrderId` ASC) VISIBLE,
  CONSTRAINT `fk_expectedIncome_1`
    FOREIGN KEY (`fk_facilityId`)
    REFERENCES `AirBnB`.`facility` (`id_facility`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_expectedIncome_2`
    FOREIGN KEY (`fk_facilityPriceId`)
    REFERENCES `AirBnB`.`facilityPrice` (`id_facilityPrice`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_expectedIncome_3`
    FOREIGN KEY (`fk_facilityOrderId`)
    REFERENCES `AirBnB`.`facilityOrder` (`id_facilityOrder`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'to keep record for the expected income';


-- -----------------------------------------------------
-- Table `AirBnB`.`carrier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`carrier` (
  `id_carrier` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NULL,
  `itemSent` VARCHAR(45) NULL,
  `trackingNo` VARCHAR(25) NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  `fk_facilityInvoideId` INT NULL,
  `fk_userRoleId` INT NULL,
  PRIMARY KEY (`id_carrier`),
  INDEX `fk_carrier_2_idx` (`fk_facilityInvoideId` ASC) VISIBLE,
  INDEX `fk_carrier_3_idx` (`fk_userRoleId` ASC) VISIBLE,
  CONSTRAINT `fk_carrier_2`
    FOREIGN KEY (`fk_facilityInvoideId`)
    REFERENCES `AirBnB`.`facilityInvoice` (`id_facilityInvoice`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_carrier_3`
    FOREIGN KEY (`fk_userRoleId`)
    REFERENCES `AirBnB`.`userRole` (`id_userRole`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'to keep records of carrier that platform user can track the sent items like invoice';


-- -----------------------------------------------------
-- Table `AirBnB`.`bank`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`bank` (
  `id_bank` INT NOT NULL AUTO_INCREMENT,
  `bankName` VARCHAR(250) NULL,
  `iban` VARCHAR(50) NULL,
  `accountHolderNameSurname` VARCHAR(50) NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  `fk_facilityId` INT NULL,
  `fk_userRole` INT NULL,
  PRIMARY KEY (`id_bank`),
  INDEX `fk_bank_1_idx` (`fk_facilityId` ASC) VISIBLE,
  INDEX `fk_bank_2_idx` (`fk_userRole` ASC) VISIBLE,
  CONSTRAINT `fk_bank_1`
    FOREIGN KEY (`fk_facilityId`)
    REFERENCES `AirBnB`.`facility` (`id_facility`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_bank_2`
    FOREIGN KEY (`fk_userRole`)
    REFERENCES `AirBnB`.`userRole` (`id_userRole`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'to keep bank records';


-- -----------------------------------------------------
-- Table `AirBnB`.`accountReceivable`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`accountReceivable` (
  `id_acctReceivable` INT NOT NULL AUTO_INCREMENT,
  `amount` INT NULL,
  `orgName` VARCHAR(50) NULL,
  `address` VARCHAR(50) NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  PRIMARY KEY (`id_acctReceivable`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'to keep account receivable';


-- -----------------------------------------------------
-- Table `AirBnB`.`accountPayable`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`accountPayable` (
  `id_acctPayable` INT NOT NULL AUTO_INCREMENT,
  `amount` INT NULL,
  `orgName` VARCHAR(50) NULL,
  `address` VARCHAR(50) NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  PRIMARY KEY (`id_acctPayable`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'To define user as Guest or Host';


-- -----------------------------------------------------
-- Table `AirBnB`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`employee` (
  `id_employee` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NULL,
  `surname` VARCHAR(50) NULL,
  `telephone` VARCHAR(50) NULL,
  `create_time` TIMESTAMP NULL,
  `update_time` TIMESTAMP NULL,
  `fk_facilityId` INT NULL,
  PRIMARY KEY (`id_employee`),
  INDEX `fk_employee_1_idx` (`fk_facilityId` ASC) VISIBLE,
  CONSTRAINT `fk_employee_1`
    FOREIGN KEY (`fk_facilityId`)
    REFERENCES `AirBnB`.`facility` (`id_facility`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'To define user as Guest or Host';


-- -----------------------------------------------------
-- Table `AirBnB`.`accountReceivable_has_facilityInvoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`accountReceivable_has_facilityInvoice` (
  `accountReceivable_id_acctReceivable` INT NOT NULL,
  `facilityInvoice_id_facilityInvoice` INT NOT NULL,
  PRIMARY KEY (`accountReceivable_id_acctReceivable`, `facilityInvoice_id_facilityInvoice`),
  INDEX `fk_accountReceivable_has_facilityInvoice_facilityInvoice1_idx` (`facilityInvoice_id_facilityInvoice` ASC) VISIBLE,
  INDEX `fk_accountReceivable_has_facilityInvoice_accountReceivable1_idx` (`accountReceivable_id_acctReceivable` ASC) VISIBLE,
  CONSTRAINT `fk_accountReceivable_has_facilityInvoice_accountReceivable1`
    FOREIGN KEY (`accountReceivable_id_acctReceivable`)
    REFERENCES `AirBnB`.`accountReceivable` (`id_acctReceivable`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_accountReceivable_has_facilityInvoice_facilityInvoice1`
    FOREIGN KEY (`facilityInvoice_id_facilityInvoice`)
    REFERENCES `AirBnB`.`facilityInvoice` (`id_facilityInvoice`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `AirBnB`.`facilityInvoice_has_accountPayable`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirBnB`.`facilityInvoice_has_accountPayable` (
  `facilityInvoice_id_facilityInvoice` INT NOT NULL,
  `accountPayable_id_acctPayable` INT NOT NULL,
  PRIMARY KEY (`facilityInvoice_id_facilityInvoice`, `accountPayable_id_acctPayable`),
  INDEX `fk_facilityInvoice_has_accountPayable_accountPayable1_idx` (`accountPayable_id_acctPayable` ASC) VISIBLE,
  INDEX `fk_facilityInvoice_has_accountPayable_facilityInvoice1_idx` (`facilityInvoice_id_facilityInvoice` ASC) VISIBLE,
  CONSTRAINT `fk_facilityInvoice_has_accountPayable_facilityInvoice1`
    FOREIGN KEY (`facilityInvoice_id_facilityInvoice`)
    REFERENCES `AirBnB`.`facilityInvoice` (`id_facilityInvoice`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_facilityInvoice_has_accountPayable_accountPayable1`
    FOREIGN KEY (`accountPayable_id_acctPayable`)
    REFERENCES `AirBnB`.`accountPayable` (`id_acctPayable`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
