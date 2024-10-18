CREATE Database bookstore;
use bookstore;

CREATE TABLE `books` (
  `_id`            int(11) NOT NULL AUTO_INCREMENT,
  `_title`         varchar(45) NOT NULL,
  `author_name`    varchar(45) NOT NULL,
  `country`        varchar(45) NOT NULL,
  `release_year`   int(11) NOT NULL,
  PRIMARY KEY      (`_id`)
);

INSERT INTO `books` VALUES 
  (1,'The Philosopher''s Stone','J. K. Rowling','UK',1997),
  (2,'The Chamber of Secrets','J. K. Rowling','UK',1998),
  (3,'The Prisoner of Azkaban','J. K. Rowling','UK',1999),
  (4,'The Goblet of Fire','J. K. Rowling','UK',2000),
  (5,'The Order of the Phoenix','J. K. Rowling','UK',2003),
  (6,'The Half-Blood Prince','J. K. Rowling','UK',2005),
  (7,'The Deathly Hallows','J. K. Rowling','UK',2007),
  (8,'American Gods','Neil Gaiman','UK',2001),
  (14,'Introduction to Algorithms','Thomas H. Cormen','USA',1990),
  (15,'The Underground Railroad','Colson Whitehead','USA',2016),
  (16,'The Magic','Rhonda Byrne','USA',2012),
  (17,'Srikanta','Sarat Chandra Chattopadhyay','India',1917),
  (18,'CyberStorm','Matthew Mather','USA',2013),
  (19,'Alice in Wonderland','Lewis Carroll','UK',1865);

CREATE TABLE `category` (
  `cat_id`         int(11) NOT NULL AUTO_INCREMENT,
  `cat_title`      varchar(45) NOT NULL,
  PRIMARY KEY      (`cat_id`)
);

INSERT INTO `category` VALUES
  (1,'Award Winners'),
  (2,'Biographies and Memoirs'),
  (3,'Computers and Technology'),
  (4,'Literature and Fiction'),
  (5,'Mystery, Thriller and Suspense'),
  (6,'Romance'),
  (8,'Children Book'),
  (9,'Health, Fitness and Dieting '),
  (10,'Science and Math'),
  (11,'Fantasy'),
  (19,'Test Preperation'),
  (21,'Self-Help');

CREATE TABLE `book_category_relationship` (
  `_id`            int(11) NOT NULL AUTO_INCREMENT,
  `_book_id`       int(11) DEFAULT NULL,
  `_cat_id`        int(11) DEFAULT NULL,
  PRIMARY KEY      (`_id`),
  FOREIGN KEY      (`_book_id`)      REFERENCES `books` (`_id`),
  FOREIGN KEY      (`_cat_id`)       REFERENCES `category` (`cat_id`)
);

INSERT INTO `book_category_relationship` VALUES
  (1,2,11),
  (2,3,11),
  (3,4,11),
  (4,5,11),
  (5,6,11),
  (6,7,11),
  (7,2,4),
  (8,3,4),
  (9,4,4),
  (10,5,4),
  (11,6,4),
  (12,7,4),
  (13,1,11),
  (14,1,4),
  (15,8,11),
  (16,14,3),
  (17,15,1),
  (18,15,4),
  (19,16,21),
  (20,17,4),
  (21,17,6),
  (22,18,5),
  (23,19,8),
  (24,19,11);
