/* Create DB for the application */
DROP DATABASE IF EXISTS Gamepiler;
CREATE DATABASE Gamepiler;

/* To see the DBs in the schema to the right, you must
 * refesh the schemas on the upper right side.
 * Or, you can uncomment out 
 */
-- SHOW DATABASES;


USE Gamepiler;


/* Create a table for the login for a test*/
CREATE TABLE `gamepiler`.`registered_user` (
  `registered_user_id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`registered_user_id`),
  UNIQUE INDEX `registered_user_id_UNIQUE` (`registered_user_id` ASC));


/* Fill with some test data */
INSERT INTO registered_user  
VALUES (1,  "brad" , "password"),
       (2,  "clint" , "pass");