CREATE SCHEMA `online_voting_db` ;

CREATE TABLE `online_voting_db`.`admin` (
  `adminId` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `adminName` VARCHAR(45) NOT NULL,
  `adminPass` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`adminId`));
  
  ALTER TABLE `online_voting_db`.`admin` 
ADD UNIQUE INDEX `adminId_UNIQUE` (`adminId` ASC) VISIBLE;
;

CREATE TABLE `online_voting_db`.`contact` (
  `cid` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `pnumber` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `cmnt` VARCHAR(45) NULL,
  PRIMARY KEY (`cid`));
  
  CREATE TABLE `online_voting_db`.`vote` (
  `id` INT NOT NULL,
  `voter_card_number` VARCHAR(45) NOT NULL,
  `party` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `voter_card_number_UNIQUE` (`voter_card_number` ASC) VISIBLE);
  
  CREATE TABLE `online_voting_db`.`voters` (
  `vid` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `pnumber` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `voter_card_number` VARCHAR(45) NOT NULL,
  `addrs` VARCHAR(45) NOT NULL,
  `dob` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`vid`),
  UNIQUE INDEX `voter_card_number_UNIQUE` (`voter_card_number` ASC) VISIBLE);
  
  
  
  