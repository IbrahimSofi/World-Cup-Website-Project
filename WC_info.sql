-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 04, 2023 at 04:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `WC_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `HistoryList`
--

CREATE TABLE `HistoryList` (
  `YEAR` int(11) NOT NULL,
  `WINNER` varchar(30) NOT NULL,
  `SCORE` varchar(30) NOT NULL,
  `RUNNER_UP` varchar(30) NOT NULL,
  `HOST` varchar(30) NOT NULL,
  `VENUE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `HistoryList`
--

INSERT INTO `HistoryList` (`YEAR`, `WINNER`, `SCORE`, `RUNNER_UP`, `HOST`, `VENUE`) VALUES
(1930, 'Uruguay', '4-2', 'Argentina', 'Uruguay', 'Estadio Centenario'),
(1934, 'Italy', '2-1', 'Czechoslovakia', 'Italy', 'Stadio Nazionale PNF'),
(1938, 'Italy', '4-2', 'Hungary', 'France', 'Stade Olympique de Colombes'),
(1950, 'Uruguay', '2-1', 'Brazil', 'Brazil', 'Maracanã Stadium'),
(1954, 'West Germany', '3-2', 'Hungary', 'Switzerland', 'Wankdorf Stadium'),
(1958, 'Brazil', '5-2', 'Sweden', 'Sweden', 'Råsunda Stadium'),
(1962, 'Brazil', '3-1', 'Czechoslovakia', 'Chile', 'Estadio Nacional'),
(1966, 'England', '4-2', 'West Germany', 'England', 'Wembley Stadium'),
(1970, 'Brazil', '4-1', 'Italy', 'Mexico', 'Estadio Azteca'),
(1974, 'West Germany', '2-1', 'Netherlands', 'West Germany', 'Olympiastadion'),
(1978, 'Argentina', '3-1', 'Netherlands', 'Argentina', 'Estadio Monumental'),
(1982, 'Italy', '3-1', 'West Germany', 'Spain', 'Santiago Bernabéu'),
(1986, 'Argentina', '3-2', 'West Germany', 'Mexico', 'Estadio Azteca'),
(1990, 'West Germany', '1-0', 'Argentina', 'Italy', 'Stadio Olimpico'),
(1994, 'Brazil', '0-0(3-2 pen)', 'Italy', 'USA', 'Rose Bowl'),
(1998, 'France', '3-0', 'Brazil', 'France', 'Stade de France'),
(2002, 'Brazil', '2-0', 'Germany', 'South Korea, Japan', 'International Stadium'),
(2006, 'Italy', '1-1(5-3 pen)', 'France', 'Germany', 'Olympiastadion'),
(2010, 'Spain', '1-0', 'Netherlands', 'South Africa', 'Soccer City'),
(2014, 'Germany', '1-0', 'Argentina', 'Brazil', 'Maracanã Stadium'),
(2018, 'France', '4-2', 'Croatia', 'Russia', 'Luzhniki Stadium'),
(2022, 'Argentina', '3-3(4-2 pen)', 'France', 'Qatar', 'Lusail Stadium');

-- --------------------------------------------------------

--
-- Table structure for table `Result`
--

CREATE TABLE `Result` (
  `TEAM` varchar(30) NOT NULL,
  `WINS` int(11) NOT NULL,
  `FINALS_ATTENDED` int(11) NOT NULL,
  `YEARS_WON` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Result`
--

INSERT INTO `Result` (`TEAM`, `WINS`, `FINALS_ATTENDED`, `YEARS_WON`) VALUES
('Argentina', 3, 6, '1978,1986,2022'),
('Brazil', 5, 7, '1958,1962,1970,1994,2002'),
('Croatia', 0, 1, '---------'),
('Czechoslovakia', 0, 2, '---------'),
('England', 1, 1, '1966'),
('France', 2, 4, '1998,2018'),
('Germany', 4, 8, '1954,1974,1990,2014'),
('Hungary', 0, 2, '---------'),
('Italy', 4, 6, '1934,1938,1982,2006'),
('Netherlands', 0, 3, '---------'),
('Spain', 1, 1, '2010'),
('Sweden', 0, 1, '---------'),
('Uruguay', 2, 2, '1930,1950');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `HistoryList`
--
ALTER TABLE `HistoryList`
  ADD PRIMARY KEY (`YEAR`);

--
-- Indexes for table `Result`
--
ALTER TABLE `Result`
  ADD UNIQUE KEY `TEAM` (`TEAM`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `HistoryList`
--
ALTER TABLE `HistoryList`
  MODIFY `YEAR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2023;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
