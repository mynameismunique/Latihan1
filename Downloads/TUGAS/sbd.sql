-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 11:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `barangID` int(11) NOT NULL,
  `barangName` varchar(100) NOT NULL,
  `barangHarga` double NOT NULL,
  `barangStock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`barangID`, `barangName`, `barangHarga`, `barangStock`) VALUES
(1, 'Kaos', 10000, 1),
(2, 'SepatuCoklat', 50000, 5),
(3, 'Celana', 75000, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barangID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barangID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

select * from sbd.barang 


CREATE TABLE penjualan (
idJual int NOT NULL AUTO_INCREMENT,
barangID int NOT NULL,
Quantity int,
Subtotal FLOAT,
PRIMARY KEY (idJual),
FOREIGN KEY (barangID) REFERENCES barang(barangID)
);

select * from barang b 
where b.barangStock > 5
order by barangHarga desc
limit 2;

select * from barang
where barangName like '%baj%'

select * from barang


insert into penjualan (barangID, Quantity, Subtotal)
values 
(2, 3, 900000),
(1,4, 400000),
(3, 6, 600000),
(6, 2, 100000)
;


select * from penjualan p 

select AVG(Subtotal) as "Rata2 Penjualan" from penjualan

select barangID, Quantity , SUM(Quantity) , SUM(Subtotal), COUNT(barangID)
from penjualan p 
where p.tanggal = '2024-02-04' or p.tanggal = '2024-02-03'
group by barangID 

select * from barang b 
where b.barangStock <= 7 and barangHarga <= 200000

select p.barangID,count(barangID)
from penjualan p 
group by barangID 
having count(barangID) = 1
