-- phpMyAdmin SQL
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sept 27, 2021 at 9:24 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bnkms`
--

-- --------------------------------------------------------
--
-- Table structure for table `bank_customers`
--

CREATE TABLE `bank_customers` (
  `Id` int(100) NOT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(15) DEFAULT NULL,
  `Customer_Photo` longblob,
  `Photo_name` varchar(500) DEFAULT NULL,
  `Customer_ID` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) NOT NULL,
  `Landline_no` varchar(10) NOT NULL,
  `Home_Addr` varchar(100) NOT NULL,
  `Office_Addr` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Pin_code` varchar(255) NOT NULL,
  `Account_no` varchar(20) DEFAULT NULL,
  `Branch` varchar(50) DEFAULT NULL,
  `IFSC_Code` varchar(50) DEFAULT NULL,
  `PAN` varchar(10) DEFAULT NULL,
  `CITIZENSHIP` varchar(50) DEFAULT NULL,
  `Current_Balance` float(100,2) DEFAULT NULL,
  `LastTransaction` int(20) DEFAULT '0',
  `Mobile_no` varchar(20) DEFAULT NULL,
  `Email_ID` varchar(50) DEFAULT 'Nil',
  `Debit_Card_No` varchar(50) DEFAULT NULL,
  `Debit_Card_Pin` int(4) DEFAULT NULL,
  `CVV` int(3) DEFAULT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `Area_Loc` varchar(255) DEFAULT NULL,
  `Nominee_name` varchar(255) DEFAULT NULL,
  `Nominee_ac_no` varchar(255) DEFAULT NULL,
  `Last_Login` varchar(50) DEFAULT NULL,
  `Ac_Opening_Date` varchar(255) DEFAULT NULL,
  `Account_Status` varchar(10) NOT NULL,
  `Account_type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_customers`
--

INSERT INTO `bank_customers` (`Id`, `Username`, `Password`, `Customer_Photo`, `Photo_name`, `Customer_ID`, `Gender`, `Landline_no`, `Home_Addr`, `Office_Addr`, `Country`, `State`, `City`, `Pin_code`, `Account_no`, `Branch`, `IFSC_Code`, `PAN`, `CITIZENSHIP`, `Current_Balance`, `LastTransaction`, `Mobile_no`, `Email_ID`, `Debit_Card_No`, `Debit_Card_Pin`, `CVV`, `DOB`, `Area_Loc`, `Nominee_name`, `Nominee_ac_no`, `Last_Login`, `Ac_Opening_Date`, `Account_Status`, `Account_type`) VALUES
(1, 'Liam Moore', 'password', NULL, NULL, '1010112', 'Male', '1478545555', '464 Edgewood Avenue', '2248 Roosevelt Road', 'India', 'Delhi', 'Delhi', '74100', '1011071010112', 'Demo Branch', '1011', '1478569000', '178965412300', 3650.00, 0, '7415896650', 'liamoore@gmail.com', '421351746137', 6897, NULL, '1995-02-15', 'Demo', 'none', 'none', '27/07/21 02:45:15 PM', '22/07/21 10:07:46 PM', 'ACTIVE', 'Saving'),
(2, 'William Richards', 'password', NULL, NULL, '1011046', 'Male', '2145896666', '4126 Broadway Street', '2588 Mill Street', 'India', 'Maharashtra', 'Pune', '88660', '1011801011046', 'Demo Branch ', '1011', '24580001', '145896587450', 7090.00, 0, '7850001250', 'william@gmail.com', '421360993922', 2957, NULL, '1990-03-15', 'CLF', 'none', 'none', '27/07/21 02:41:02 PM', '26/07/21 10:34:49 PM', 'ACTIVE', 'Saving'),
(3, 'Christine Moore', 'password', NULL, NULL, '1011426', 'Female', '4520001250', '996 Quincy Street', '4196 Boggess Street', 'India', 'Kerala', 'Kochi', '99660', '1011411011426', 'Demo Branch ', '1011', '14701400', '256900000012', 1962.00, 0, '7012500010', 'christine@gmail.com', '421317135335', 2587, NULL, '1995-09-17', 'CLF', 'none', 'none', '26/07/21 11:56:16 PM', '26/07/21 11:24:10 PM', 'ACTIVE', 'Saving'),
-- --------------------------------------------------------

--
-- Table structure for table `bank_staff`
--

CREATE TABLE `bank_staff` (
  `Id` int(255) NOT NULL,
  `staff_name` varchar(50) DEFAULT NULL,
  `staff_id` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Mobile_no` varchar(50) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT 'Nill',
  `Gender` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `CITIZENSHIP` varchar(50) DEFAULT NULL,
  `PAN` varchar(50) DEFAULT NULL,
  `Home_addr` varchar(50) DEFAULT NULL,
  `Last_login` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_staff`
--

INSERT INTO `bank_staff` (`Id`, `staff_name`, `staff_id`, `Password`, `Mobile_no`, `Email_id`, `Gender`, `Department`, `DOB`, `CITIZENSHIP`, `PAN`, `Home_addr`, `Last_login`) VALUES
(1, 'Akalbir Singh Chadha', '210001', 'password', '7412225696', 'ak1708@gmail.com', 'Male', 'Revenue', '17/08/2001', '379145632000', '14569855', '445 Woodlawn Drive', '27/09/21 03:53:18 PM');
(2, 'Yashowardhan Shinde', '210002', 'password', '3345895647', 'yasho131@gmail.com', 'Male', 'Loan', '01/09/2001', '34563200074', '12354850', 'Shivajinagar', '29/10/21 09:53:18 PM');
(2, 'Naman Das', '210003', 'password', '1568748010', 'noman@gmail.com', 'Male', 'Credit', '22/01/2002', '3456374898', '01487552', 'Pimple Saudagar', '01/11/21 08:15:18 AM');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary_1010112`
--

CREATE TABLE `beneficiary_1010112` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `beneficiary_1010112`
--

INSERT INTO `beneficiary_1010112` (`id`, `Beneficiary_name`, `Beneficiary_ac_no`, `IFSC_code`, `Account_type`, `Status`, `Date_added`) VALUES
(2, 'William Richards', '1011801011046', '1011', 'Saving', 'ACTIVE', '26/07/21 11:02:55 PM'),
(3, 'Trevor Russo', '1011951011439', '1011', 'Saving', 'ACTIVE', '27/07/21 02:45:39 PM');

-- --------------------------------------------------------
--
-- Table structure for table `beneficiary_1011439`
--

CREATE TABLE `beneficiary_1011439` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiary_1011439`
--

INSERT INTO `beneficiary_1011439` (`id`, `Beneficiary_name`, `Beneficiary_ac_no`, `IFSC_code`, `Account_type`, `Status`, `Date_added`) VALUES
(1, 'Christine Moore', '1011411011426', '1011', 'Saving', 'ACTIVE', '27/07/21 03:12:14 PM'),

-- --------------------------------------------------------
--
-- Table structure for table `beneficiary_1011742`
--

CREATE TABLE `beneficiary_1011742` (
  `id` int(255) NOT NULL,
  `Beneficiary_name` varchar(255) DEFAULT NULL,
  `Beneficiary_ac_no` varchar(255) DEFAULT NULL,
  `IFSC_code` varchar(255) DEFAULT NULL,
  `Account_type` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Date_added` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiary_1011742`
--

INSERT INTO `beneficiary_1011742` (`id`, `Beneficiary_name`, `Beneficiary_ac_no`, `IFSC_code`, `Account_type`, `Status`, `Date_added`) VALUES
(1, 'William Richards', '1011951011439', '1011', 'Saving', 'ACTIVE', '27/07/21 03:02:08 PM');

-- --------------------------------------------------------
--
-- Table structure for table `passbook_1010112`
--

CREATE TABLE `passbook_1010112` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `passbook_1010112`
--

INSERT INTO `passbook_1010112` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '589306552', '26/12/20 02:55:43 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '583402470', '26/12/20 03:01:35 PM', 'Cash Deposit/583402470572', '55000', '0', '55000', 'Cash Deposit'),
(5, '841496557', '26/07/21 11:08:04 PM', 'William Richards/1011801011046/1011', '0', '250', '4750', 'Billings'),
(6, '491178166', '27/07/21 02:46:16 PM', 'Liam Moore/1011951011439/1011', '0', '1100', '3650', 'Personal');

-- --------------------------------------------------------
--
-- Table structure for table `passbook_1011439`
--

CREATE TABLE `passbook_1011439` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook_1011439`
--

INSERT INTO `passbook_1011439` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '975444354', '26/07/21 11:52:58 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '983840333', '26/07/21 11:57:18 PM', 'Christine Moore/1011411011426/1011', '175', '0', '175', 'Rst Bills'),
(3, '429360631', '27/07/21 10:35:20 AM', 'William Richards/1011801011046/1011', '660', '0', '835', 'Sales'),
(4, '491178166', '27/07/21 02:46:16 PM', 'Liam Moore/1011071010112/1011', '1100', '0', '1885', 'Personal'),
(5, '200212796', '27/07/21 03:14:13 PM', 'Christine Moore/1011411011426/1011', '0', '37', '1737', 'domain and stuff'),
(6, '238728498', '27/07/21 03:15:46 PM', 'Cash Deposit/238728498', '3650', '0', '5387', 'Cash Deposit'),

-- --------------------------------------------------------
--
-- Table structure for table `passbook_1011742`
--

CREATE TABLE `passbook_1011742` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook_1011742`
--

INSERT INTO `passbook_1011742` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '877580638', '27/07/21 02:55:25 PM', 'Account Opening', '0', '0', '0', NULL),
(2, '384183921', '27/07/21 03:00:04 PM', 'Christine Moore/1011951011439/1011', '113', '0', '113', 'sales'),
(3, '123457098', '27/07/21 03:07:47 PM', 'Christine Moore/1011951011439/1011', '0', '2', '111', 'cashback');

-- --------------------------------------------------------
--
-- Table structure for table `pending_accounts`
--

CREATE TABLE `pending_accounts` (
  `Application_no` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Mobile_no` varchar(50) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT 'Nil',
  `Landline_no` varchar(50) DEFAULT 'Nil',
  `DOB` varchar(50) DEFAULT NULL,
  `PAN` varchar(50) DEFAULT NULL,
  `CITIZENSHIP` varchar(50) DEFAULT NULL,
  `Home_Addr` varchar(100) DEFAULT NULL,
  `Office_Addr` varchar(100) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Pin` varchar(50) DEFAULT NULL,
  `Area_Loc` varchar(255) DEFAULT NULL,
  `Nominee_name` varchar(255) DEFAULT NULL,
  `Nominee_ac_no` varchar(255) DEFAULT NULL,
  `Account_type` varchar(50) DEFAULT NULL,
  `Application_Date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
--
-- Indexes for dumped tables
--
--
-- Indexes for table `bank_customers`
--
ALTER TABLE `bank_customers`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `bank_staff`
--
ALTER TABLE `bank_staff`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `beneficiary_1010112`
--
ALTER TABLE `beneficiary_1010112`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011439`
--
ALTER TABLE `beneficiary_1011439`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary_1011742`
--
ALTER TABLE `beneficiary_1011742`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1010112`
--
ALTER TABLE `passbook_1010112`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011439`
--
ALTER TABLE `passbook_1011439`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook_1011742`
--
ALTER TABLE `passbook_1011742`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending_accounts`
--
ALTER TABLE `pending_accounts`
  ADD PRIMARY KEY (`Application_no`);


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_customers`
--
ALTER TABLE `bank_customers`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `bank_staff`
--
ALTER TABLE `bank_staff`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `beneficiary_1010112`
--
ALTER TABLE `beneficiary_1010112`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `beneficiary_1011439`
--
ALTER TABLE `beneficiary_1011439`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `beneficiary_1011742`
--
ALTER TABLE `beneficiary_1011742`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `passbook_1010112`
--
ALTER TABLE `passbook_1010112`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `passbook_1011439`
--
ALTER TABLE `passbook_1011439`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `passbook_1011742`
--
ALTER TABLE `passbook_1011742`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
