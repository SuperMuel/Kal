-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema kal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema kal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `kal` DEFAULT CHARACTER SET utf8 ;
USE `kal` ;

-- -----------------------------------------------------
-- Table `kal`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kal`.`users` (
  `username` VARCHAR(20) NOT NULL,
  `uid` VARCHAR(128) NOT NULL COMMENT 'If more than 128 characters, that\'s weird but always throw a server exception and issue a warning',
  `access_token` VARCHAR(4096) NULL,
  `refresh_token` VARCHAR(4096) NULL,
  `creation_dt` DATETIME NULL,
  PRIMARY KEY (`username`),
  UNIQUE INDEX `firebase_auth_id_UNIQUE` (`uid` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `kal`.`mirrors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kal`.`mirrors` (
  `id` VARCHAR(36) NOT NULL,
  `title` VARCHAR(50) NOT NULL,
  `description` TEXT(1000) NULL,
  `owner` VARCHAR(20) NULL,
  `public` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  `creation_dt` DATETIME NOT NULL,
  `last_modification_dt` DATETIME NULL,
  PRIMARY KEY (`id`),
  INDEX `owner_idx` (`owner` ASC) VISIBLE,
  CONSTRAINT `mirrors_owner`
    FOREIGN KEY (`owner`)
    REFERENCES `kal`.`users` (`username`)
    ON DELETE SET NULL
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `kal`.`mirrors_likes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kal`.`mirrors_likes` (
  `user` VARCHAR(20) NOT NULL,
  `mirror` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`user`, `mirror`),
  INDEX `mirror_idx` (`mirror` ASC) VISIBLE,
  CONSTRAINT `mirrors_likes_user`
    FOREIGN KEY (`user`)
    REFERENCES `kal`.`users` (`username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `mirrors_likes_mirror`
    FOREIGN KEY (`mirror`)
    REFERENCES `kal`.`mirrors` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `kal`.`mirror_subscriptions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kal`.`mirror_subscriptions` (
  `id` VARCHAR(36) NOT NULL,
  `user` VARCHAR(20) NOT NULL,
  `mirror` VARCHAR(36) NOT NULL,
  `enabled` TINYINT(1) NOT NULL,
  `last_refresh_dt` DATETIME NULL,
  PRIMARY KEY (`id`),
  INDEX `user_idx` (`user` ASC) VISIBLE,
  INDEX `mirror_idx` (`mirror` ASC) VISIBLE,
  CONSTRAINT `mirror_subscription_user`
    FOREIGN KEY (`user`)
    REFERENCES `kal`.`users` (`username`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `mirror_subscription_mirror`
    FOREIGN KEY (`mirror`)
    REFERENCES `kal`.`mirrors` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `kal`.`mirror_rules`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kal`.`mirror_rules` (
  `id` VARCHAR(36) NOT NULL,
  `mirror` VARCHAR(36) NOT NULL,
  `rule_json` LONGTEXT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `mirror_rules_mirror`
    FOREIGN KEY (`mirror`)
    REFERENCES `kal`.`mirrors` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `kal`.`schedule_provider`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kal`.`schedule_provider` (
  `id` VARCHAR(36) NOT NULL,
  `title` VARCHAR(128) NOT NULL,
  `parent_schedule_provider` VARCHAR(36) NULL,
  PRIMARY KEY (`id`),
  INDEX `schedule_provider_parent_idx` (`parent_schedule_provider` ASC) VISIBLE,
  CONSTRAINT `schedule_provider_parent`
    FOREIGN KEY (`parent_schedule_provider`)
    REFERENCES `kal`.`schedule_provider` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `kal`.`source_schedule`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kal`.`source_schedule` (
  `id` VARCHAR(36) NOT NULL,
  `title` VARCHAR(128) NOT NULL,
  `icsUrl` VARCHAR(2048) NULL,
  `parent_schedule_provider` VARCHAR(36) NOT NULL,
  `creation_dt` DATETIME NULL,
  PRIMARY KEY (`id`),
  INDEX `source_schedule_parent_idx` (`parent_schedule_provider` ASC) VISIBLE,
  CONSTRAINT `source_schedule_parent`
    FOREIGN KEY (`parent_schedule_provider`)
    REFERENCES `kal`.`schedule_provider` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `kal`.`mirror_source_schedules`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `kal`.`mirror_source_schedules` (
  `mirror` VARCHAR(36) NOT NULL,
  `source_schedule` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`mirror`, `source_schedule`),
  INDEX `mirror_source_schedules_mirror_source_schedule_idx` (`source_schedule` ASC) VISIBLE,
  CONSTRAINT `mirror_source_schedules_mirror`
    FOREIGN KEY (`mirror`)
    REFERENCES `kal`.`mirrors` (`id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `mirror_source_schedules_mirror_source_schedule`
    FOREIGN KEY (`source_schedule`)
    REFERENCES `kal`.`source_schedule` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
