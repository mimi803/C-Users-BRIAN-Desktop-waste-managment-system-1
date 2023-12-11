-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2021 at 10:00 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mwms`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE ADMINLOGIN (
  ID INT (11) NOT NULL,
  USERNAME VARCHAR(255) NOT NULL DEFAULT ADMIN,
  PASSWORD VARCHAR(255) NOT NULL DEFAULT ADMIN,
) ENGINE =INNODB DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO ADMINLOGIN (
  ID,
  USERNAME,
  PASSWORD
) VALUES
 -- --------------------------------------------------------
 --
 -- Table structure for table `adminlogin_tbl`
 --
CREATE TABLE ADMINLOGIN_TBL (
  ID INT(11) NOT NULL,
  NAME VARCHAR(255) NOT NULL,
  EMAIL VARCHAR(255) NOT NULL,
  PASSWORD VARCHAR(255) NOT NULL,
  CODE MEDIUMINT(50) NOT NULL,
  STATUS TEXT NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table `adminlogin_tbl`
--

INSERT INTO ADMINLOGIN_TBL (
  ID,
  NAME,
  EMAIL,
  PASSWORD,
  CODE,
  STATUS
) VALUES
 -- --------------------------------------------------------
 --
 -- Table structure for table `contact`
 --
CREATE TABLE CONTACT (
  FNAME VARCHAR(20) NOT NULL,
  LNAME VARCHAR(20) NOT NULL,
  CONTACTEMAIL VARCHAR(20) NOT NULL,
  CONTACTPHONE VARCHAR(10) NOT NULL,
  COMMENT VARCHAR(2000) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table `contact`
--

INSERT INTO CONTACT (
  FNAME,
  LNAME,
  CONTACTEMAIL,
  CONTACTPHONE,
  COMMENT
) VALUES
 -- --------------------------------------------------------
 --
 -- Table structure for table `garbageinfo`
 --
CREATE TABLE GARBAGEINFO (
  ID INT (11) NOT NULL,
  NAME VARCHAR(255) NOT NULL,
  MOBILE VARCHAR(15) DEFAULT NULL,
  EMAIL VARCHAR(255) NOT NULL,
  WASTETYPE VARCHAR(255) NOT NULL,
  LOCATION VARCHAR(255) NOT NULL,
  LOCATIONDESCRIPTION VARCHAR(255) NOT NULL,
  FILE VARCHAR(255) NOT NULL,
  DATE VARCHAR(255) DEFAULT NULL,
  STATUS VARCHAR(50) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table `garbageinfo`
--

INSERT INTO GARBAGEINFO (
  ID,
  NAME,
  MOBILE,
  EMAIL,
  WASTETYPE,
  LOCATION,
  LOCATION,
  DESCRIPTION,
  FILE,
  DATE,
  STATUS
) VALUES
 -- --------------------------------------------------------
 --
 -- Table structure for table `usertable`
 --
CREATE TABLE USERTABLE (
  ID INT (11) NOT NULL,
  NAME VARCHAR(255) NOT NULL,
  EMAIL VARCHAR(255) NOT NULL,
  PASSWORD VARCHAR(255) NOT NULL,
  CODE MEDIUM INT(50) NOT NULL,
  STATUS TEXT NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table `usertable`
--

INSERT INTO USERTABLE (
  ID,
  NAME,
  EMAIL,
  PASSWORD,
  CODE,
  STATUS
) VALUES
 --
 -- Indexes for dumped tables
 --
 --
 -- Indexes for table `adminlogin`
 --
ALTER TABLE ADMINLOGIN ADD PRIMARY KEY (
  ID
);

--
-- Indexes for table `adminlogin_tbl`
--
ALTER TABLE ADMINLOGIN_TBL ADD PRIMARY KEY (ID);

--
-- Indexes for table `garbageinfo`
--
ALTER TABLE GARBAGEINFO ADD PRIMARY KEY (ID);

--
-- Indexes for table `usertable`
--
ALTER TABLE USERTABLE ADD PRIMARY KEY (ID);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE ADMINLOGIN MODIFY ID INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminlogin_tbl`
--
ALTER TABLE ADMINLOGIN_TBL MODIFY ID INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `garbageinfo`
--
ALTER TABLE GARBAGEINFO MODIFY ID INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE USERTABLE MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;