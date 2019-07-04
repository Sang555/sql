create database blog_db;

use blog_db;


CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `blog_name` varchar(10) DEFAULT NULL,
  `blog_url` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`blog_id`)
) ;

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(10) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `blog_id` (`blog_id`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`blog_id`)
);

CREATE TABLE `comments` (
  `cid` int(11) NOT NULL,
  `author` varchar(10) DEFAULT NULL,
  `text` varchar(30) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `pid` (`pid`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `post` (`pid`)
);

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `blog_name` varchar(10) DEFAULT NULL,
  `blog_url` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`blog_id`)
);

CREATE TABLE `post` (
  `pid` int(11) NOT NULL,
  `title` varchar(10) NOT NULL,
  `author` varchar(10) NOT NULL,
  `sub_cat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `fpk` (`sub_cat_id`),
  CONSTRAINT `fpk` FOREIGN KEY (`sub_cat_id`) REFERENCES `sub_cat` (`sub_cat_id`)
);

CREATE TABLE `prod_tag` (
  `tag_id` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`,`tag_id`),
  KEY `qpk` (`tag_id`),
  CONSTRAINT `qpk` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`),
  CONSTRAINT `wpk` FOREIGN KEY (`pid`) REFERENCES `post` (`pid`)
);

CREATE TABLE `sub_cat` (
  `sub_cat_id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`sub_cat_id`),
  KEY `cpk` (`cat_id`),
  CONSTRAINT `cpk` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`)
);

CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
);