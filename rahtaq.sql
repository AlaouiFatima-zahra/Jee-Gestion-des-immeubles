-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2021 at 01:59 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rahtaq`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nomC_admin` varchar(30) NOT NULL,
  `adress_admin` varchar(40) NOT NULL,
  `password_admin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `admin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id_client`, `nom`, `email`, `password`, `phone`, `admin`) VALUES
(1, 'Fatima Ezzahra', 'fatimaezzahra@gmail.com', '123456', '0613785432', 1),
(3, 'Mohamed', 'mohamed@gmail.com', '123456', '0665466231', 0),
(4, 'Mounir', 'mounir@gmail.com', '123456', '0768959432', 0),
(5, 'Salim', 'salim@gmail.com', '123456', '0745325412', 0),
(6, 'Wafae', 'wafae@gmail.com', '123456', '0654562321', 0);

-- --------------------------------------------------------

--
-- Table structure for table `commander`
--

CREATE TABLE `commander` (
  `id_comnd` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `date_cmnd` date NOT NULL,
  `ref` int(5) NOT NULL,
  `id_client` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `immobiliers`
--

CREATE TABLE `immobiliers` (
  `ref` int(11) NOT NULL,
  `titre` varchar(30) NOT NULL,
  `description` varchar(40) NOT NULL,
  `prix` int(15) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `id_client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `immobiliers`
--

INSERT INTO `immobiliers` (`ref`, `titre`, `description`, `prix`, `photo`, `id_client`) VALUES
(1, 'Appartement', 'Joli Appartement avec 3 chambres        ', 29000, 'https://images.pexels.com/photos/2635038/pexels-photo-2635038.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 1),
(3, 'Maison', 'Grand maison', 56000, 'https://images.pexels.com/photos/324629/pexels-photo-324629.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 1),
(5, 'Appartement', 'Joli Appartement avec 3 chambres        ', 29000, 'https://images.pexels.com/photos/2635038/pexels-photo-2635038.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quartier`
--

CREATE TABLE `quartier` (
  `id_qart` int(11) NOT NULL,
  `nom_ville` varchar(15) NOT NULL,
  `localisation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `typei`
--

CREATE TABLE `typei` (
  `id_type` int(11) NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ville`
--

CREATE TABLE `ville` (
  `id_ville` int(11) NOT NULL,
  `nom_ville` varchar(15) NOT NULL,
  `codePostal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `commander`
--
ALTER TABLE `commander`
  ADD PRIMARY KEY (`id_comnd`);

--
-- Indexes for table `immobiliers`
--
ALTER TABLE `immobiliers`
  ADD PRIMARY KEY (`ref`);

--
-- Indexes for table `quartier`
--
ALTER TABLE `quartier`
  ADD PRIMARY KEY (`id_qart`);

--
-- Indexes for table `typei`
--
ALTER TABLE `typei`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id_ville`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `commander`
--
ALTER TABLE `commander`
  MODIFY `id_comnd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `immobiliers`
--
ALTER TABLE `immobiliers`
  MODIFY `ref` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `quartier`
--
ALTER TABLE `quartier`
  MODIFY `id_qart` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `typei`
--
ALTER TABLE `typei`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ville`
--
ALTER TABLE `ville`
  MODIFY `id_ville` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
