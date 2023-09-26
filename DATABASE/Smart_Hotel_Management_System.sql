-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 29, 2023 at 09:33 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Smart_Hotel_Management_System`
--

-- --------------------------------------------------------

--
-- Table structure for table `BOOKING`
--

CREATE TABLE `BOOKING` (
  `B_ID` int(11) NOT NULL,
  `C_ID` int(11) NOT NULL,
  `Total_Amount` int(11) NOT NULL,
  `Payment_Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `BOOKING`
--

INSERT INTO `BOOKING` (`B_ID`, `C_ID`, `Total_Amount`, `Payment_Status`) VALUES
(1101, 1, 5000, 'Done'),
(1102, 2, 5000, 'Panding'),
(1103, 3, 9000, 'Done'),
(1104, 4, 5000, 'Panding');

-- --------------------------------------------------------

--
-- Table structure for table `Booking_Details`
--

CREATE TABLE `Booking_Details` (
  `B_ID` int(11) NOT NULL,
  `R_ID` int(11) NOT NULL,
  `CheckIn` varchar(20) NOT NULL,
  `CheckOut` varchar(20) NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Booking_Details`
--

INSERT INTO `Booking_Details` (`B_ID`, `R_ID`, `CheckIn`, `CheckOut`, `Amount`) VALUES
(1101, 501, 'Yes', 'Yes', 5000),
(1102, 302, 'Yes', 'No', 5000),
(1103, 409, 'No', 'No', 9000),
(1104, 601, 'No', 'No', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `CUSTOMER`
--

CREATE TABLE `CUSTOMER` (
  `C_ID` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Address` varchar(150) NOT NULL,
  `DOB` date NOT NULL,
  `NID_Num` varchar(17) NOT NULL,
  `password` varchar(32) NOT NULL,
  `Confirm_password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CUSTOMER`
--

INSERT INTO `CUSTOMER` (`C_ID`, `Name`, `Email`, `Phone`, `Address`, `DOB`, `NID_Num`, `password`, `Confirm_password`) VALUES
(1, 'MD. SUMON', 'sumon.bncd@gmail.com', '01731057540', 'Gulshan,Dhaka-1212', '1999-10-25', '615626721', '$Sumon1212', '$Sumon1212'),
(2, 'Maimona Rahman Farjana', 'maimona@gmail.com', '01756443215', 'Block-C,Basundara', '2001-07-05', '765624568', 'Maimona$@1', 'Maimona$@1'),
(3, 'SNAHASISH DEY', 'dey1243@gmail.com', '01666527381', 'Mirpur 1', '2000-04-03', '672628728', 'Dey@1321$', 'Dey@1321$'),
(4, 'MITU RANI GHOSH', 'miturani@gamil.com', '01362815638', 'Mirpur-2', '2002-02-04', '54425127786', 'Ghosh2002$$', 'Ghosh2002$$');

-- --------------------------------------------------------

--
-- Table structure for table `PAYMENT`
--

CREATE TABLE `PAYMENT` (
  `Card_Num` int(11) NOT NULL,
  `Card_Name` varchar(50) NOT NULL,
  `CVV` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Pay_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PAYMENT`
--

INSERT INTO `PAYMENT` (`Card_Num`, `Card_Name`, `CVV`, `Amount`, `Pay_ID`) VALUES
(1135671576, 'MD. SUMON', 221, 5000, 9897);

-- --------------------------------------------------------

--
-- Table structure for table `ROOM`
--

CREATE TABLE `ROOM` (
  `R_type` varchar(30) NOT NULL,
  `R_ID` int(11) NOT NULL,
  `R_price` int(11) NOT NULL,
  `R_floor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ROOM`
--

INSERT INTO `ROOM` (`R_type`, `R_ID`, `R_price`, `R_floor`) VALUES
('Single', 302, 5000, '3rd'),
('Double', 409, 9000, '4th'),
('Single', 501, 5000, '5th'),
('Single', 601, 5000, '5th');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BOOKING`
--
ALTER TABLE `BOOKING`
  ADD PRIMARY KEY (`B_ID`);

--
-- Indexes for table `Booking_Details`
--
ALTER TABLE `Booking_Details`
  ADD PRIMARY KEY (`B_ID`);

--
-- Indexes for table `CUSTOMER`
--
ALTER TABLE `CUSTOMER`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `PAYMENT`
--
ALTER TABLE `PAYMENT`
  ADD PRIMARY KEY (`Pay_ID`);

--
-- Indexes for table `ROOM`
--
ALTER TABLE `ROOM`
  ADD PRIMARY KEY (`R_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BOOKING`
--
ALTER TABLE `BOOKING`
  MODIFY `B_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1105;

--
-- AUTO_INCREMENT for table `Booking_Details`
--
ALTER TABLE `Booking_Details`
  MODIFY `B_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1105;

--
-- AUTO_INCREMENT for table `CUSTOMER`
--
ALTER TABLE `CUSTOMER`
  MODIFY `C_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `PAYMENT`
--
ALTER TABLE `PAYMENT`
  MODIFY `Pay_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9898;

--
-- AUTO_INCREMENT for table `ROOM`
--
ALTER TABLE `ROOM`
  MODIFY `R_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=602;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
