-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2022 at 03:37 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traffic_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `Numbers` varchar(16) NOT NULL,
  `Expires` varchar(5) DEFAULT NULL,
  `CVC` int(11) DEFAULT NULL,
  `Names` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`Numbers`, `Expires`, `CVC`, `Names`) VALUES
('1223456', '12/24', 545, 'Jack miller'),
('1234567', '12/22', 234, 'Avesh Khan'),
('12367231567342', '22/12', 123, 'Rashid Khan'),
('2147483647', '12/23', 324, 'Jack son'),
('5647932327843', '12/24', 234, 'Amir zaman');

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `Case_id` int(11) NOT NULL,
  `Vahicle_Number` varchar(15) DEFAULT NULL,
  `Occur_time` date DEFAULT current_timestamp(),
  `city` varchar(20) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `law_id1` varchar(50) DEFAULT NULL,
  `Total_fine` int(11) DEFAULT NULL,
  `last_pay_date` date DEFAULT '2022-06-23',
  `Case_Status` varchar(10) DEFAULT 'unpaid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`Case_id`, `Vahicle_Number`, `Occur_time`, `city`, `location`, `law_id1`, `Total_fine`, `last_pay_date`, `Case_Status`) VALUES
(1001, 'RM-C-654879', '2022-04-12', 'dhaka', 'Gulshan1', '101c', 5000, '2022-05-12', 'unpaid'),
(1002, 'CX-B-096759', '2022-04-13', 'Chittagong', 'Sagorika', '115B+107B', 8000, '2022-05-13', 'unpaid'),
(1003, 'DM-T-654879', '2022-04-14', 'dhaka', 'Dhanmondi', '112H', 50000, '2022-05-14', 'Closed'),
(1004, 'DM-C-234789', '2022-04-15', 'Khulna', 'Sonadanga', '111c', 2000, '2022-05-15', 'unpaid'),
(1005, 'DM-B-523489', '2022-04-16', 'dhaka', 'Khilgaon', '109b', 10000, '2022-05-16', 'Closed'),
(1006, 'DM-J-609897', '2022-04-17', 'Barisal', 'Barguna', '101H', 20000, '2022-05-17', 'unpaid'),
(1007, 'CM-T-790876', '2022-04-18', 'Jessore', 'Chuadanga', '108H+109', 22000, '2022-05-18', 'Closed'),
(1008, 'DM-B-526590', '2022-04-19', 'Gazipur', 'Board bazar', '105b', 5000, '2022-05-19', 'unpaid'),
(1009, 'RM-B-346757', '2022-04-20', 'Rajshahi', 'Noagoan', '108c', 3000, '2022-05-20', 'Closed'),
(1010, 'VH-B-126788', '2022-04-21', 'dhaka', 'khilkhet', '101b', 5000, '2022-05-21', 'unpaid'),
(1011, 'GZ-C-556098', '2022-04-22', 'Sylhet', 'Moulvibazar', '105c', 1000, '2022-05-22', 'Closed'),
(1012, 'DM-J-134879', '2022-04-23', 'Dinajpur', 'birampur', '103H', 30000, '2022-05-23', 'unpaid'),
(1013, 'NH-C-346759', '2022-04-24', 'dhaka', 'wari', '106c+112c +115c +106c', 50000, '2022-05-24', 'Closed'),
(1014, 'DM-T-768420', '2022-04-25', 'tangail', 'mirzapur', '101H+103H', 50000, '2022-05-25', 'unpaid'),
(1015, 'DM-B-526590', '2022-04-19', 'Dhaka', 'Santinagar', '107b', 5000, '2022-05-19', 'Closed'),
(1016, 'DM-C-234789', '2022-04-19', 'Gazipur', 'Board bazar', '102c', 2000, '2022-05-19', 'unpaid'),
(1017, 'CM-T-790876', '2022-04-27', 'karatia', 'Tangail', '104H', 30000, '2022-05-27', 'Closed'),
(1018, 'CM-T-790876', '2022-04-25', 'fatullah', 'Narayangang', '101H', 20000, '2022-05-25', 'Closed'),
(1062, 'RM-C-654879', '2022-05-10', 'Rajshahi', 'Haripur Mor', '111c', 2000, '2022-10-05', 'unpaid'),
(1063, 'RM-C-654879', '2022-05-10', 'Rajshahi', 'Haripur Mor', '111c', 2000, '2022-10-05', 'Closed'),
(1064, 'VH-B-126788', '2022-05-15', 'Dinajpur', 'Alipur', '113B', 5000, '2022-06-23', 'Closed');

-- --------------------------------------------------------

--
-- Table structure for table `case_payments`
--

CREATE TABLE `case_payments` (
  `Transacn_id` int(11) NOT NULL,
  `case_id` int(11) DEFAULT NULL,
  `Total_Fine` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `case_payments`
--

INSERT INTO `case_payments` (`Transacn_id`, `case_id`, `Total_Fine`, `payment_date`) VALUES
(1001, 1003, 50000, '2022-04-20'),
(1002, 1005, 8000, '2022-04-18'),
(1003, 1009, 3000, '2022-04-20'),
(1004, 1013, 10000, '2022-05-30'),
(1005, 1015, 5000, '2022-05-29'),
(1006, 1011, 1000, '2022-05-02'),
(1007, 1007, 22000, '2022-04-23'),
(1009, 1017, 30000, '2022-05-10'),
(1017, 1063, 2000, '2022-05-10'),
(1018, 1018, 20000, '2022-05-12'),
(1019, 1064, 5000, '2022-05-15');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `License_No` varchar(15) NOT NULL,
  `Names` varchar(20) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Area` varchar(20) DEFAULT NULL,
  `House` int(11) DEFAULT NULL,
  `Zip` int(11) DEFAULT NULL,
  `Blood_Group` varchar(20) DEFAULT NULL,
  `Validity` date DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `License_Status` varchar(20) DEFAULT NULL,
  `Total_Cases` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`License_No`, `Names`, `Phone`, `City`, `Area`, `House`, `Zip`, `Blood_Group`, `Validity`, `Type`, `License_Status`, `Total_Cases`) VALUES
('AK-765701846723', ' Mosrshed ', '01986546739', 'Noakhali', 'Binodpur', 654, 1234, 'B+', '2025-04-30', 'Light', 'Active', 2),
('BM-378909543768', 'Sagor Islam', '01500498729', 'Vola', 'volagang', 25, 1088, 'O+', '2025-11-06', 'Heavy+Two wheeler', 'Active', 2),
('BM-456701846723', 'Noyon miah', '01786546739', 'Barishal', 'sagordi', 123, 1345, 'AB-', '2022-04-20', 'Heavy', 'Exprired', 0),
('CM-094523788456', 'Abdul Razzk ', '016789378432', 'Gazipur', 'Konabari', 34, 1299, 'B+', '2023-11-24', 'Heavy', 'Active', 0),
('DM-436708345689', 'Tawhid mollah ', '01576533786', 'Sirajgang', 'badai', 234, 1134, 'O+', '2023-12-10', 'Light+Two wheeler', 'Active', 0),
('DM-563829671056', 'Rahim Uddin', '01786796739', 'Tangail', 'kalihati', 344, 1219, 'B+', '2026-04-20', 'Light', 'Active', 1),
('DM-567701846723', 'Sozib Rahaman', '01956796739', 'Dhaka', 'vatara', 123, 1228, '0+', '2030-12-20', 'Two wheeler', 'Active', 0),
('DM-567823964523', 'Mozid Alom', '01987654320', 'Kustia', 'Courtpara', 12, 1178, 'AB+', '2022-04-14', 'Light', 'Active', 1),
('DM-567823964534', 'Nubinur Miah', '01347654326', 'Kishoreganj', 'Nikli', 17, 1078, 'B+', '2024-01-20', 'Light+Two wheeler', 'Active', 0),
('DM-678908345689', 'Shohan khan ', '01876543765', 'Dhaka', 'Bonosree', 123, 1218, 'O-', '2029-12-10', 'Two wheeler', 'Active', 1),
('DM-997808345689', 'Jahid Hasan ', '01765369786', 'Dahaka', 'Maniknagar', 23, 1212, 'A+', '2026-12-10', 'Heavy', 'Active', 0),
('KH-378909543768', 'Asik Uddin', '01965004729', 'Kisorjonj', 'Mithamine', 245, 1008, 'B+', '2024-11-06', 'Heavy', 'Active', 1),
('KH-676701846723', 'Noyon Khan', '01679867343', 'Khulna', 'Magura', 34, 1299, 'AB+', '2023-04-20', 'Heavy', 'Active', 1),
('KM-423209543768', 'Akib Miah', '01478654729', 'Khulna', 'Ropsan', 65, 1276, 'AB-', '2023-07-05', 'Heavy+Two wheeler', 'Active', 1),
('MM-654785401482', 'Shohel ', '01865472947', 'Mymensingh', 'Bhaluka', 34, 1236, 'AB+', '2026-05-29', 'Heavy', 'Active', 1),
('NK-567890954376', 'Bazuzzamam', '01789654729', 'Noakhali', 'bander hut', 23, 1245, 'A+', '2027-06-06', 'Two wheeler', 'Active', 0),
('RM-423209763768', 'Rahat Miah', '01478784729', 'Rajshahi', 'Sabaliya', 245, 1286, 'O-', '2026-07-05', 'Light+Two wheeler', 'Active', 0),
('RM-634534964534', 'Rakib zaman ', '01786533432', 'Rajshahi', 'Rajpara', 234, 1745, 'A-', '2022-12-30', 'Heavy', 'Cancelled', 3),
('RR-654785401482', 'Rafin ullah ', '01905472947', 'Rangpur', 'Banglabandha', 1, 1245, 'AB+', '2024-05-29', 'Light', 'Active', 1),
('TL-657823964534', 'Robin Khan', '0134733432', 'Coxs-Bazar', 'Kolatoli', 67, 1325, 'B-', '2027-01-24', 'Two wheeler', 'Active', 1),
('TL-674320954376', 'Asazullah', '01734784729', 'Tangail', 'Bashail', 45, 1203, 'A-', '2029-06-05', 'Light+Two wheeler', 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `law`
--

CREATE TABLE `law` (
  `lawid` varchar(20) NOT NULL,
  `Decription` varchar(200) DEFAULT NULL,
  `Fine` int(11) DEFAULT NULL,
  `Vehicle_Class` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `law`
--

INSERT INTO `law` (`lawid`, `Decription`, `Fine`, `Vehicle_Class`) VALUES
('101b', 'Overspeeding', 3000, 'Bike'),
('101c', 'Overspeeding', 5000, 'car'),
('101H', 'Overspeeding', 20000, 'Bus+Truck'),
('102b', 'not follow lane', 2000, 'Bike'),
('102c', 'Illigal parking', 2000, 'car'),
('102H', 'Illigal parking', 20000, 'Bus+Truck'),
('103b', 'Violating traffic signals', 3000, 'Bike'),
('103c', 'not follow lane ', 3000, 'car'),
('103H', 'not follow lane ', 30000, 'Bus+Truck'),
('104b', ' Hore use at no horn zone ', 1000, 'Bike'),
('104c', 'Violating traffic signals', 3000, 'car'),
('104H', 'Violating traffic signals', 30000, 'Bus+Truck'),
('105b', 'No Driving liscence', 5000, 'Bike'),
('105c', ' Hore use at no horn zone ', 1000, 'car'),
('105H', ' Hore use at no horn zone ', 10000, 'Bus+Truck'),
('106b', 'failed to show Vahild tax token', 2000, 'Bike'),
('106c', 'No Driving liscence', 10000, 'car'),
('106H', 'No Driving liscence', 25000, 'Bus+Truck'),
('107b', 'Ride on footpaths', 5000, 'Bike'),
('107c', 'failed to show Vahild tax token', 5000, 'car'),
('107H', 'failed to show Vahild tax token', 10000, 'Bus+Truck'),
('108b', 'Failed to show RC', 3000, 'Bike'),
('108c', 'Failed to show RC', 5000, 'car'),
('108H', 'Failed to show RC ', 12000, 'Bus+Truck'),
('109b', 'Drink & Drive ', 10000, 'Bike'),
('109c', 'Car is not fit for road', 5000, 'car'),
('109H', 'vahicle is not fit for road ', 10000, 'Bus+Truck'),
('110b', 'Use of illegal horn ', 2000, 'Bike'),
('110c', 'Drink & Drive ', 100000, 'car'),
('110H', 'Drink & Drive ', 100000, 'Bus+Truck'),
('111b', 'dont allow emgency vahicle to pass ', 10000, 'Bike'),
('111c', 'Use of illegal horn ', 2000, 'car'),
('111H', 'Use of illegal horn ', 20000, 'Bus+Truck'),
('112b', 'Using wrong route ', 10000, 'Bike'),
('112c', 'dont allow emgency vahicle to pass ', 20000, 'car'),
('112H', 'dont allow emgency vahicle to pass ', 50000, 'Bus+Truck'),
('113B', 'Ride without Helmate', 5000, 'Bike'),
('113c', 'failed to show insurance ', 5000, 'car'),
('113H', 'failed to show insurance ', 15000, 'Bus+Truck'),
('114B', ' No Helmate for Pillion  ', 1000, 'Bike'),
('114c', 'Vehicles without route permit ', 5000, 'car'),
('114H', 'Vehicles without route permit', 25000, 'Bus+Truck'),
('115B', ' Ride with More than 2 pepole  ', 2000, 'Bike'),
('115c', 'Using wrong route ', 10000, 'car'),
('115H', 'Using wrong route ', 20000, 'Bus+Truck');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `Owner_id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Phone` varchar(11) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Area` varchar(50) DEFAULT NULL,
  `House` int(11) DEFAULT NULL,
  `Zip` int(11) DEFAULT NULL,
  `Vahicle_Number1` varchar(11) DEFAULT NULL,
  `Vahicle_Number2` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`Owner_id`, `Name`, `Phone`, `Email`, `City`, `Area`, `House`, `Zip`, `Vahicle_Number1`, `Vahicle_Number2`) VALUES
(1, 'Arman Uddin', '0192481333', 'arman@gmail.com', 'Dhaka', 'gulshan', 101, 1213, 'DM-C-325677', 'DM-B-526590'),
(2, 'Rohan khan', '0172481456', 'rohan@gmail.com', 'Chittagong', 'Sagorika', 34, 1278, 'CM-T-790876', 'CM-B-236790'),
(3, 'Arifin haque', '0182487890', 'arifin@yahoo.com', 'Rajshahi', 'Mollapara', 176, 1234, 'RM-B-346757', NULL),
(4, 'Didar Mollah', '0162484589', 'didar@protonmail.com', 'Gazipur', 'Tongi', 35, 1234, 'GZ-C-556098', NULL),
(5, 'Hanif zaman', '0192481222', 'hanif@gmail.com', 'Sirajganj', 'Masimpur', 234, 1278, 'DP-J-345609', 'DM-J-609897'),
(6, 'Shohan khan', '01876543765', 'shohan@gmail.com', 'Dhaka', 'Bonosree', 123, 1218, 'DM-B-523489', NULL),
(7, 'Sozib Rahaman', '01956796739', 'sozib@gmail.com', 'Dhaka', 'vatara', 123, 1228, 'DM-B-527689', NULL),
(8, 'Bazuzzamam', '01789654729', 'bazuzzamam@gamil.com', 'Noakhali', 'bander hut', 23, 1245, 'NH-B-107689', NULL),
(9, 'Robin khan', '0134733432', 'robin@gmail.com', 'Coxs-Bazar', 'bander hut', 67, 1225, 'CX-B-096759', NULL),
(10, 'Mosrshed miah', '01986546739', 'mosrshed@gmail.com', 'Noakhali', 'Binodpur', 654, 1234, 'NH-C-346759', NULL),
(11, 'Sagor Islam  ', '01500498729', 'sagor@gmail.com', 'Vola', 'volagang', 25, 1088, 'VH-B-126788', NULL),
(12, 'Tawhid mollah   ', '01576533786', 'tawhid@yahoo.com', 'Sirajgang', 'badai', 234, 1134, 'SG-B-234789', NULL),
(13, 'Mozid Alom  ', '01987654320', 'mozid@yahoo.com', 'Kustia', 'Courtpara', 12, 1178, 'DM-C-234789', NULL),
(14, 'Momin Sarker', '0192498733', 'momin@gamial.com', 'Barishal', 'Sagordi', 17, 2023, 'DM-J-134879', 'DM-T-768420'),
(15, 'Bipul Islam  ', '0167409533', 'bipul@protonmail.com', 'Rangpur', 'Dhap', 43, 1298, 'RM-C-654879', 'DM-T-654879'),
(16, 'Amir zaman', '0151211333', 'amir@gmail.com', 'Dinajpur', 'Alipur', 134, 1267, 'DP-T-543690', 'DP-J-120967');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `rank` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`id`, `username`, `email`, `password`, `rank`) VALUES
(1, 'Azad', 'azad56@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', 'surgeon'),
(2, 'Rahim', 'rahim@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'constable'),
(3, 'Polash', 'polash@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'surgeon'),
(4, 'Kalam', 'kalam@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'constable'),
(5, 'Akib', 'akib123@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'surgeon'),
(6, 'Fahim', 'fahim@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'constable'),
(7, 'Bashar', 'bashar@hotmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'surgeon'),
(8, 'Kayyum', 'kayyum@yahoo.com\n', '81dc9bdb52d04dc20036dbd8313ed055', 'constable'),
(9, 'Abul', 'abul@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'surgeon'),
(10, 'Hossain', 'hossain@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'constable'),
(11, 'Hashem', 'hashem@outlook.com', '81dc9bdb52d04dc20036dbd8313ed055', 'surgeon'),
(12, 'Ripon', 'ripon45@hotmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'constable'),
(13, 'Mahmud', 'mahmud@yahoo.com\n', '81dc9bdb52d04dc20036dbd8313ed055', 'surgeon'),
(14, 'Aziz', 'aziz@protonmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'surgeon'),
(15, 'Abdul', 'abdul@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', 'constable'),
(16, 'Liakat', 'liakat@yahoo.com\n', '81dc9bdb52d04dc20036dbd8313ed055', 'surgeon'),
(17, 'Akash', 'akash@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'constable'),
(19, 'Noman', 'noman@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'constable'),
(20, 'Shohel', 'shohel@outlook.com', '81dc9bdb52d04dc20036dbd8313ed055', 'surgeon'),
(23, 'Ebadot', 'ebadot@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'constable'),
(24, 'Rahman', 'rahman@protonmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'surgeon'),
(25, 'Karim', 'karim@yahoo.com\n', '81dc9bdb52d04dc20036dbd8313ed055', 'constable');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Sorowar_Sunny', 'msunny201006@bscse.uiu.ac.bd', '81dc9bdb52d04dc20036dbd8313ed055'),
(10, 'Nahian_Sourov', 'nahiansourov@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(11, 'Abrar_adib', 'abrar@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(12, 'pepeppikapika', 'demo@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(13, 'akash', 'akash1276@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(14, 'rakib', 'rakib@outlook.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(16, 'jackob', 'jack143@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(17, 'rio', 'rio@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(18, 'dfgdfgs', 'dfsgdfgsdfgs@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `vahicle`
--

CREATE TABLE `vahicle` (
  `Number` varchar(11) NOT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Brand` varchar(50) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `Years` int(11) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `Driver` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vahicle`
--

INSERT INTO `vahicle` (`Number`, `Type`, `Brand`, `Model`, `Years`, `Color`, `Driver`) VALUES
('CM-B-236790', 'Bike', 'Hero', 'Thriller 160', 2022, 'White', 'RM-423209763768'),
('CM-T-790876', 'Truck', 'Hino', 'Dump Truck', 2012, 'Blue', 'RM-634534964534'),
('CX-B-096759', 'Bike', 'Lifan', 'Kpr 165', 2021, 'Green', 'TL-657823964534'),
('DM-B-523489', 'Bike', 'Gpx', 'Demon 165', 2022, 'Red', 'DM-678908345689'),
('DM-B-526590', 'Bike', 'Ktm', 'Duke 125', 2022, 'Orange', 'RM-634534964534'),
('DM-B-527689', 'Bike', 'Tvs', 'Rtr 4v', 2021, 'Blue', 'DM-567701846723'),
('DM-C-234789', 'Car', 'Honda', 'Civic Turbo', 2021, 'Red', 'AK-765701846723'),
('DM-C-325677', 'Car', 'Toyota', 'Premio', 2017, 'Red Wine', 'DM-567823964534'),
('DM-J-134879', 'Bus', 'Isuzu', 'NKR55L', 2019, 'Blue', 'KM-423209543768'),
('DM-J-609897', 'Bus', 'Ashok leyland', 'EAGLE 180HP', 2019, 'Yellow', 'MM-654785401482'),
('DM-T-654879', 'Truck', 'Tata', 'Super Ace', 2016, 'Yellow', 'KH-378909543768'),
('DM-T-768420', 'Truck', 'Toyota', 'DYNA 1.5', 2017, 'Whight', 'KH-676701846723'),
('DP-J-120967', 'Bus', 'Tata', 'LPO 1316', 2018, 'Red', 'CM-094523788456'),
('DP-J-345609', 'Bus', 'Eicher', '1060', 2017, 'White', 'DM-997808345689'),
('DP-T-543690', 'Truck', 'Ashok Leyland', 'Cargo 1613h', 2010, 'Yellow', 'BM-378909543768'),
('GZ-C-556098', 'Car', 'Toyota', 'Xcrolla', 2015, 'Silver', 'DM-567823964523'),
('NH-B-107689', 'Bike', 'Yamaha', 'MT 15', 2022, 'White', 'NK-567890954376'),
('NH-C-346759', 'Car', 'Suzuki', 'Alto 800', 2020, 'Red', 'RR-654785401482'),
('RM-B-346757', 'Bike', 'Suzuki', 'Gixxer', 2021, 'Blue', 'TL-674320954376'),
('RM-C-654879', 'Car', 'Hyundai', 'Accent', 2021, 'Grey', 'DM-563829671056'),
('SG-B-234789', 'Bike', 'Yamaha', 'Fzs V3', 2022, 'Black', 'DM-436708345689'),
('VH-B-126788', 'Bike', 'Bajaj', 'Pulser Ns-160', 2021, 'Red', 'BM-378909543768');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`Numbers`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`Case_id`),
  ADD KEY `Fk` (`law_id1`),
  ADD KEY `FK99` (`Vahicle_Number`);

--
-- Indexes for table `case_payments`
--
ALTER TABLE `case_payments`
  ADD PRIMARY KEY (`Transacn_id`),
  ADD KEY `case_id` (`case_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`License_No`);

--
-- Indexes for table `law`
--
ALTER TABLE `law`
  ADD PRIMARY KEY (`lawid`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`Owner_id`),
  ADD KEY `Fk9` (`Vahicle_Number1`),
  ADD KEY `vh` (`Vahicle_Number2`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vahicle`
--
ALTER TABLE `vahicle`
  ADD PRIMARY KEY (`Number`),
  ADD KEY `Fk8` (`Driver`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `Case_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1065;

--
-- AUTO_INCREMENT for table `case_payments`
--
ALTER TABLE `case_payments`
  MODIFY `Transacn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `Owner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cases`
--
ALTER TABLE `cases`
  ADD CONSTRAINT `FK99` FOREIGN KEY (`Vahicle_Number`) REFERENCES `vahicle` (`Number`) ON DELETE NO ACTION;

--
-- Constraints for table `case_payments`
--
ALTER TABLE `case_payments`
  ADD CONSTRAINT `case_payments_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `cases` (`Case_id`);

--
-- Constraints for table `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `Fk9` FOREIGN KEY (`Vahicle_Number1`) REFERENCES `vahicle` (`Number`),
  ADD CONSTRAINT `vh` FOREIGN KEY (`Vahicle_Number2`) REFERENCES `vahicle` (`Number`);

--
-- Constraints for table `vahicle`
--
ALTER TABLE `vahicle`
  ADD CONSTRAINT `Fk8` FOREIGN KEY (`Driver`) REFERENCES `driver` (`License_No`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
