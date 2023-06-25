DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS accounts;

CREATE TABLE `customer` (
  `customer_id` int AUTO_INCREMENT  PRIMARY KEY,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `creation_date` date DEFAULT NULL
);

CREATE TABLE `accounts` (
  `customer_id` int NOT NULL,
   `account_number` int AUTO_INCREMENT  PRIMARY KEY,
  `account_type` varchar(100) NOT NULL,
  `country` varchar(200) NOT NULL,
  `branch_address` varchar(200) NOT NULL,
  `creation_date` date DEFAULT NULL
);

INSERT INTO `customer` (`name`,`email`,`mobile_number`,`creation_date`)
 VALUES ('John Doe','john@gmail.com','06123445678',CURDATE());
 
INSERT INTO `accounts` (`customer_id`, `account_number`, `account_type`, `country`, `branch_address`, `creation_date`)
 VALUES (1, 52341199, 'Savings', 'Netherlands' , 'De Dam 1, Amsterdam', CURDATE());
 
