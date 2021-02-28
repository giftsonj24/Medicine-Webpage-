-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2021 at 08:15 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
(101, 'abc@123');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `bookingid` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `vehicle_no` varchar(50) NOT NULL,
  `locationid` int(8) DEFAULT NULL,
  `slotid` varchar(20) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(20) NOT NULL,
  `duration` varchar(10) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `paid` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`bookingid`, `email`, `vehicle_type`, `vehicle_no`, `locationid`, `slotid`, `date`, `time`, `duration`, `cost`, `paid`) VALUES
(29, 'gj@gmail.com', '1 strip(contains 10tablets)', '', 1, '', '26-1-2021', '', '0', '0', 1),
(30, 'gj@gmail.com', '1 strip(contains 5tablets)', '', 1, '', '26-1-2021', '', '0', '0', 1),
(31, 'gj@gmail.com', '1 strip(contains 5tablets)', '', 2, '', '26-1-2021', '', '0', '0', 1),
(32, 'gj@gmail.com', '1 strip(contains 5tablets)', '', 1, '', '26-1-2021', '', '4', '0', 1),
(33, 'gj@gmail.com', '1 strip(contains 10tablets)', '', 2, '', '27-1-2021', '', '0', '0', 0),
(34, 'karthi@gmail.cm', '1 strip(contains 5tablets)', '', 2, '', '27-1-2021', '', '0', '0', 1),
(35, 'root@gmail.com', '1 strip(contains 5tablets)', '', 1, '', '27-1-2021', '', '0', '0', 1),
(36, 'testing@gmail.com', '1 strip(contains 10tablets)', '', 20, '', '27-1-2021', '', '0', '0', 1),
(37, 'testing@gmail.com', '1 strip(contains 5tablets)', '', 2, '', '27-1-2021', '', '0', '0', 1),
(38, 'test123@gmail.com', '1 strip(contains 10tablets)', '', 20, '', '27-1-2021', '', '0', '0', 1),
(39, 'test123@gmail.com', '1 strip(contains 5tablets)', '', 4, '', '27-1-2021', '', '0', '0', 1),
(40, 'root12345@gmail.com', '1 strip(contains 10tablets)', '', 2, '', '27-1-2021', '', '0', '0', 1),
(41, 'root12345@gmail.com', '1 strip(contains 5tablets)', '', 3, '', '27-1-2021', '', '0', '0', 1),
(42, 'root12345@gmail.com', '1 strip(contains 10tablets)', '', 20, '', '27-1-2021', '', '0', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `locationid` int(8) UNSIGNED NOT NULL,
  `location_name` varchar(80) NOT NULL,
  `area` varchar(300) NOT NULL,
  `slots` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`locationid`, `location_name`, `area`, `slots`) VALUES
(1, 'Paracetamol', 'it reduces high temperature (fever)', 500),
(2, 'Amoxil (amoxicillin)', ' It\'s used to treat bacterial infections', 500),
(3, 'Azithromycin', 'its an antibiotic and widely used to treat chest infections such as pneumonia, infections of nose\r\nand throat', 500),
(4, 'Vitamin A', 'Boosts immunity, Helps prevent iron deficiency,May reduce your risk of chronic disease', 500),
(5, 'Vitamin A', 'Vitamin A Capsules are used for the treatment of symptoms associated with a severe deficiency of vitamin A in the diet. These symptoms include long term infections, skin rashes, acne, skin ulcers and eye problems.', 500),
(6, 'Betamethasone Sodium Phosphate : 0.5 mg', 'Betamethasone is a prescription medication use to treat conditions such as allergic reactions, dermatologic disease, endocrine disorders, gastrointestinal disease, hematologic disorders, neoplastic disease, ophthalmic diseases, renal diseases, rheumatic disorders, and disorders affecting the nervous', 350),
(7, 'Vitamin E', 'Vitamin E supplements may prevent coronary heart disease, support immune function, prevent inflammation, promote eye health, and lower the risk of cancer.', 500),
(8, 'Vitamin B1', 'Thiamine is also used for AIDS and boosting the immune system, diabetic pain, heart disease, alcoholism, aging, a type of brain damage called cerebellar syndrome, canker sores, vision problems such as cataracts and glaucoma, motion sickness, and improving athletic performance.', 500),
(9, 'Antipyrine / Benzocaine', 'Also simply called A/B otic drops, these analgesic ear drops can help relieve the pain and discomfort that can accompany an ear infection.', 200),
(10, 'Vitamin D', 'Vitamin D is used to treat and prevent bone disorders (such as rickets, osteomalacia). Vitamin D is made by the body when skin is exposed to sunlight. Sunscreen, protective clothing, limited exposure to sunlight, dark skin, and age may prevent getting enough vitamin D from the sun.', 500),
(11, 'Antihistamines', 'They can be used to reduce the pain and swelling from wasp or bee stings.', 300),
(12, 'Diclofenac', 'Diclofenac is a medicine that reduces inflammation and pain. It\'s used to treat aches and pains, as well as problems with joints, muscles and bones. These include: rheumatoid arthritis, osteoarthritis and gout.', 200),
(13, 'Antihistamines', 'They can be used to reduce the pain and swelling from wasp or bee stings.', 300),
(14, 'Diclofenac', 'Diclofenac is a medicine that reduces inflammation and pain. It\'s used to treat aches and pains, as well as problems with joints, muscles and bones. These include: rheumatoid arthritis, osteoarthritis and gout.', 200),
(15, 'LAN 30', 'reduces the amount of acid produced in your stomach. It is used for treating acid-related diseases of the stomach and intestine such as acid reflux, peptic ulcer disease, and some other stomach conditions associated with excessive acid production.', 400),
(16, 'Axbex', ' useful in the prevention of oxidative stress, strengthens the immune system, and various chronic diseases.', 300),
(17, 'Ibuprofen', 'Ibuprofen is used to relieve pain from various conditions such as headache, dental pain, menstrual cramps, muscle aches, or arthritis. It is also used to reduce fever and to relieve minor aches and pain due to the common cold or flu. Ibuprofen is a nonsteroidal anti-inflammatory drug (NSAID).\r\n', 250),
(18, 'Atenolol ', 'It\'s used to treat high blood pressure and irregular heartbeats (arrhythmia). It can also be used to prevent chest pain caused by angina. If you have high blood pressure, taking atenolol helps prevent future heart disease, heart attacks and strokes.', 150),
(19, 'Zincovit', 'Zincovit tablet is a multivitamin and multimineral supplement. It is useful in treating and preventing vitamin and mineral deficiencies. It also helps in protecting the body from damage, improves immu. It also promotes skin, hair, bones, healthy joints.', 250),
(20, 'Dexasone', 'It is used specifically to decrease swelling (edema), associated with tumors of the spine and brain, and to treat eye inflammation. To treat or prevent allergic reactions. As treatment of certain kinds of autoimmune diseases, skin conditions, asthma and other lung conditions.', 150);

-- --------------------------------------------------------

--
-- Table structure for table `slots`
--

CREATE TABLE `slots` (
  `slotid` varchar(20) NOT NULL,
  `locationid` int(8) NOT NULL,
  `slotno` varchar(20) NOT NULL,
  `status` int(8) NOT NULL,
  `time` varchar(20) NOT NULL,
  `duration` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `mobno` varchar(15) NOT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `fullname`, `mobno`, `password`) VALUES
('gj@gmail.com', 'Gj', '1234567897', '12345'),
('karthi@gmail.cm', 'selfie', '122344', '123'),
('raghulrage@gmail.com', 'Raghul T', '08428616811', '111'),
('root12345@gmail.com', 'root', '1234567898', '12345'),
('root@gmail.com', 'root', '1234589', '12345'),
('test01@gmail.com', 'test01', '1234567890', 'abc'),
('test05@gmail.com', 'test5', '1234567890', 'xyz'),
('test123@gmail.com', 'test', '3421567890', '12345678'),
('test1@gmail.com', 'test1', '1234567890', '123'),
('testing@gmail.com', 'test', '1234657890', 'test@123');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicleid` int(8) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `cost` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicleid`, `vehicle_type`, `cost`) VALUES
(5, '1 strip(contains 5tablets)', '25'),
(10, '1 strip(contains 10tablets)', '50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`bookingid`),
  ADD KEY `fk_email` (`email`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`locationid`);

--
-- Indexes for table `slots`
--
ALTER TABLE `slots`
  ADD PRIMARY KEY (`slotid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD UNIQUE KEY `vehicleid` (`vehicleid`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `bookingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `locationid` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicleid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `fk_email` FOREIGN KEY (`email`) REFERENCES `users` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
