-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2023 at 07:48 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `worldcup_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `historylist`
--

CREATE TABLE `historylist` (
  `YEAR` int(11) NOT NULL,
  `WINNER` varchar(30) NOT NULL,
  `SCORE` varchar(30) NOT NULL,
  `RUNNER_UP` varchar(30) NOT NULL,
  `HOST` varchar(30) NOT NULL,
  `VENUE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `historylist`
--

INSERT INTO `historylist` (`YEAR`, `WINNER`, `SCORE`, `RUNNER_UP`, `HOST`, `VENUE`) VALUES
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
-- Table structure for table `match_info`
--

CREATE TABLE `match_info` (
  `match_ID` int(11) NOT NULL,
  `country` varchar(20) DEFAULT NULL,
  `stadium` varchar(20) DEFAULT NULL,
  `shots` int(2) NOT NULL DEFAULT 0,
  `shots_on_target` int(2) NOT NULL DEFAULT 0,
  `panalty_goals` int(2) DEFAULT 0,
  `match_goals` int(2) DEFAULT 0,
  `fouls` int(2) DEFAULT 0,
  `corners` int(2) DEFAULT 0,
  `yellow_card` int(2) NOT NULL DEFAULT 0,
  `red_card` int(2) NOT NULL DEFAULT 0,
  `match_name` varchar(20) DEFAULT NULL,
  `match_year` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `match_info`
--

INSERT INTO `match_info` (`match_ID`, `country`, `stadium`, `shots`, `shots_on_target`, `panalty_goals`, `match_goals`, `fouls`, `corners`, `yellow_card`, `red_card`, `match_name`, `match_year`) VALUES
(1, 'Argentina', 'Lusail Stadium', 20, 10, 4, 3, 26, 6, 5, 0, 'WC Final', 2022),
(2, 'France', 'Lusail Stadium', 10, 5, 2, 3, 19, 5, 3, 0, 'WC Final', 2022),
(3, 'Croatia', 'Lusail Stadium', 12, 2, 0, 0, 8, 4, 2, 0, 'WC Semi Final', 2022),
(4, 'Argentina', 'Lusail Stadium', 9, 7, 0, 3, 15, 2, 2, 0, 'WC Semi Final', 2022),
(5, 'Croatia', 'Khalifa Int. Stadium', 12, 4, 0, 2, 13, 6, 0, 0, 'Third Place', 2022),
(6, 'Morocco', 'Khalifa Int. Stadium', 9, 2, 0, 1, 11, 3, 2, 0, 'Third Place', 2022),
(7, 'Brazil', 'Education City', 21, 11, 2, 1, 24, 7, 3, 0, 'WC Quarter Final', 2022),
(8, 'Croatia', 'Education City', 9, 1, 4, 1, 22, 3, 2, 0, 'WC Quarter Final', 2022),
(9, 'Argentina', 'Lusail Stadium', 14, 5, 4, 2, 18, 8, 8, 0, 'WC Quarter Final', 2022),
(10, 'Netherlands', 'Lusail Stadium', 6, 2, 3, 2, 30, 2, 6, 1, 'WC Quarter Final', 2022),
(11, 'Morocco', 'Al Thumama Stadium', 9, 3, 0, 1, 15, 3, 1, 1, 'WC Quarter Final', 2022),
(12, 'Portugal', 'Al Thumama Stadium', 12, 3, 0, 0, 9, 9, 1, 0, 'WC Quarter Final', 2022),
(13, 'France', 'Al Bayt Stadium', 8, 5, 0, 2, 14, 2, 3, 0, 'WC Quarter Final', 2022),
(14, 'England', 'Al Bayt Stadium', 16, 8, 0, 1, 10, 5, 1, 0, 'WC Quarter Final', 2022);

-- --------------------------------------------------------

--
-- Table structure for table `player_info`
--

CREATE TABLE `player_info` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(30) DEFAULT NULL,
  `p_age` int(2) DEFAULT NULL,
  `p_country` varchar(20) DEFAULT NULL,
  `p_club` varchar(20) DEFAULT NULL,
  `p_position` varchar(20) DEFAULT NULL,
  `yellow_card` int(2) DEFAULT 0,
  `red_card` int(2) DEFAULT 0,
  `assists` int(2) DEFAULT 0,
  `p_goals` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `player_info`
--

INSERT INTO `player_info` (`p_id`, `p_name`, `p_age`, `p_country`, `p_club`, `p_position`, `yellow_card`, `red_card`, `assists`, `p_goals`) VALUES
(1, 'Lionel Messi', 35, 'Argentina', 'Paris Saint-Germain', 'FW', 1, 0, 3, 7),
(2, 'Ángel Di María', 34, 'Argentina', 'Juventus', 'MF', 0, 0, 1, 1),
(3, 'Kylian Mbappé', 24, 'France', 'Paris Saint-Germain', 'FW', 0, 0, 2, 8),
(4, 'Neymar Jr', 30, 'Brazil', 'Paris Saint-Germain', 'FW', 0, 0, 1, 2),
(5, 'Cristiano Ronaldo', 37, 'Portugal', 'Al Nassr FC', 'FW', 0, 0, 0, 1),
(6, 'Harry Kane', 29, 'England', 'Tottenham Hotspur FC', 'FW', 0, 0, 3, 2),
(7, 'Luka Modrić', 37, 'Croatia', 'Real Madrid', 'MF', 1, 0, 0, 0),
(8, 'Mesut Özil', 34, 'Germany', 'İstanbul Başakşehir ', 'MF', 0, 0, 0, 0),
(9, 'Son Heung-min', 30, 'South Korea', 'Tottenham Hotspur FC', 'FW', 0, 0, 1, 0),
(10, 'Richarlison', 25, 'Brazil', 'Tottenham Hotspur FC', 'FW', 0, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `TEAM` varchar(30) NOT NULL,
  `WINS` int(11) NOT NULL,
  `FINALS_ATTENDED` int(11) NOT NULL,
  `YEARS_WON` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`TEAM`, `WINS`, `FINALS_ATTENDED`, `YEARS_WON`) VALUES
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
-- Indexes for table `historylist`
--
ALTER TABLE `historylist`
  ADD PRIMARY KEY (`YEAR`);

--
-- Indexes for table `match_info`
--
ALTER TABLE `match_info`
  ADD PRIMARY KEY (`match_ID`);

--
-- Indexes for table `player_info`
--
ALTER TABLE `player_info`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD UNIQUE KEY `TEAM` (`TEAM`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `historylist`
--
ALTER TABLE `historylist`
  MODIFY `YEAR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2023;

--
-- AUTO_INCREMENT for table `match_info`
--
ALTER TABLE `match_info`
  MODIFY `match_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `player_info`
--
ALTER TABLE `player_info`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
