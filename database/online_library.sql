-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2020 at 03:43 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin1', 'admin1@elib.com', 'admin1'),
(2, 'admin2', 'admin2@elib.com', 'admin2');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(255) NOT NULL,
  `image_url` varchar(1000) NOT NULL,
  `name` varchar(200) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publication_year` varchar(50) NOT NULL,
  `books_isbn` varchar(100) NOT NULL,
  `shelf_number` varchar(10) NOT NULL,
  `department_id` int(255) NOT NULL,
  `admin_id` int(255) NOT NULL,
  `borrowed_out` text NOT NULL,
  `date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `image_url`, `name`, `author`, `publication_year`, `books_isbn`, `shelf_number`, `department_id`, `admin_id`, `borrowed_out`, `date`) VALUES
(4, './books_pictures/IMG_20200313_1122595e6c4bc81b1111.71741884.jpg', 'Environmental Biotechnology', 'T.Srinivas', '1995', '978-0-06-051640-6', '01', 15, 1, '0', '14-03-2020'),
(5, './books_pictures/IMG_20200313_1122595e6c4c6b910bf5.63801074.jpg', 'Environmental Biotechnology', 'T.Srinivas', '1992', '978-0-06-051640-6', '01', 13, 1, '0', '14-03-2020'),
(6, './books_pictures/IMG_20200313_112331~25e6c4d14986388.53405363.jpg', 'Basics Environmental chemistry', 'E.W NSI', '200', '978-0-06-051640-6', '01', 13, 1, '0', '14-03-2020'),
(7, './books_pictures/IMG_20200313_112651~25e6c4f971ea070.19523023.jpg', 'slavery, commerce and production', 'paul E.Lovejoy', '1993', '978-0-0-051640-9', '02', 14, 1, '0', '14-03-2020'),
(8, './books_pictures/IMG_20200313_112717~35e6c4ff946a813.26629262.jpg', 'Environmental pollution and hazard', 'L.R.Patro', '1992', '978-0-06-051640-5', '03', 14, 1, '0', '14-03-2020'),
(9, './books_pictures/IMG_20200313_112757~25e6c51ea7e5120.33226261.jpg', 'Automata and theory', 'Adesh K.Pandey', '2005', '978-0-06-051640-5', '04', 15, 1, '0', '14-03-2020'),
(10, './books_pictures/IMG_20200313_1129205e6c5258845b16.50359145.jpg', 'Facility change management', 'Wiley Blackwwell', '1987', '978-0-06-051640-4', '05', 15, 1, '0', '14-03-2020'),
(11, './books_pictures/IMG_20200313_112959~25e6c52b49b9826.95194112.jpg', 'Theory of Automata', 'Adesh Pandey', '2000', '978-0-06-051640-32', '06', 16, 1, '0', '14-03-2020'),
(12, './books_pictures/IMG_20200313_113023~25e6c53548e0d67.41011131.jpg', 'Introduction to advance control system', 'C.O Orege', '1999', '978-0-06-051640-3', '07', 16, 1, '0', '14-03-2020'),
(13, './books_pictures/IMG_20200313_113105~25e6c54b692adf8.16298934.jpg', 'concept in engineering', 'Holtzapple Recce', '1999', '978-0-06-051640-6', '08', 17, 1, '0', '14-03-2020'),
(14, './books_pictures/IMG_20200313_1131325e6c552bbc6672.36181816.jpg', 'Mechanisms', 'Douglas  Quadliry', '2001', '978-0-06-051640-7', '08', 17, 1, '0', '14-03-2020'),
(15, './books_pictures/IMG_20200313_113158~25e6c558e4108c7.51271598.jpg', 'Biotechnology 4', 'S.Mahesh', '1967', '978-0-06-051640-2', '04', 18, 1, '0', '14-03-2020'),
(16, './books_pictures/IMG_20200313_113231~25e6c55f99fd641.60984044.jpg', 'Biotechnology exploration', 'Judith Schepple', '2008', '978-0-06-051640-8', '04', 18, 1, '0', '14-03-2020'),
(17, './books_pictures/IMG_20200313_1133245e6c567ddb4b85.64370830.jpg', 'producing literature televisio', 'Annesa Hartman', '1946', '978-0-07-051640-6', '05', 19, 1, '0', '14-03-2020'),
(18, './books_pictures/IMG_20200313_120954~25e6c59718f7fd8.51399180.jpg', 'start your new life today', 'Joyce meye', '2001', '978-0-06-051640-8', '20', 43, 1, '0', '14-03-2020'),
(19, './books_pictures/IMG_20200313_113524~25e6c5aac73ab12.19231527.jpg', 'video basics ', 'Zehl', '2005', '978-0-06-051640-4', '04', 21, 1, '1', '14-03-2020'),
(20, './books_pictures/IMG_20200313_113545~25e6c6768f0cef2.43406368.jpg', 'photojounalism', 'John Olu Fasheke', '1999', '232444535254', '06', 21, 1, '0', '14-03-2020'),
(21, './books_pictures/IMG_20200313_113610~25e6c6840874b58.46141232.jpg', 'understanding food and nutrition', 'James A.Ajaja', '2004', '978-0-06-051640-4', '07', 22, 1, '0', '14-03-2020'),
(22, './books_pictures/IMG_20200313_113654~25e6c68b65dbea2.51310414.jpg', 'Hotel organization and management', 'Nayesh Tiwari', '1987', '978-0-06-051640-1', '06', 22, 1, '0', '14-03-2020'),
(23, './books_pictures/IMG_20200313_113756~25e6c690738ab92.60759492.jpg', 'Medical-surgical Nursing', 'Brumen', '1987', '978-0-06-051640-7', '07', 23, 1, '0', '14-03-2020'),
(24, './books_pictures/IMG_20200313_113830~25e6c697e957475.97193663.jpg', 'introduction to symptoms and sign of surgical disease', 'Norman L. Browse', '2009', '978-0-06-051640-5', '07', 0, 1, '0', '14-03-2020'),
(25, './books_pictures/IMG_20200313_113940~25e6c69d83aa7f6.60694796.jpg', 'Renal Nursing', 'Nicola thomas', '1999', '978-0-07-041640-4', '09', 24, 1, '0', '14-03-2020'),
(26, './books_pictures/IMG_20200313_114203~25e6c6a6bc212d8.36162657.jpg', 'kidney and kidney related disease', 'Babatunde Lawal salako', '1956', '978-0-06-051640-4', '10', 24, 1, '0', '14-03-2020'),
(27, './books_pictures/IMG_20200313_115120~25e6c6b9bb7b200.99993633.jpg', 'Art of computer programming', 'Donald E. knuth', '1998', '978-0-06-054540-4', '19', 31, 1, '0', '14-03-2020'),
(28, './books_pictures/IMG_20200313_115143~25e6c6bf17d9e97.13058742.jpg', 'concept of programming language', 'Robert w.sebesta', '1977', '978-0-06-051640-4', '19', 31, 1, '0', '14-03-2020'),
(29, './books_pictures/IMG_20200313_115216~25e6c6c5b84c4e6.98237187.jpg', 'Database Management', 'Ramakrishna Gehrke', '1965', '978-0-06-051640-4', '19', 31, 1, '0', '14-03-2020'),
(30, './books_pictures/IMG_20200313_115256~25e6c6cafbd46b1.28393612.jpg', 'object oriented COBOL programming', 'Nzute silas', '1983', '978-0-06-051640-4', '19', 31, 1, '0', '14-03-2020'),
(31, './books_pictures/IMG_20200313_115337~25e6c6cff28b6b9.03470277.jpg', 'operating system', 'Williams stallings', '1893', '978-0-06-055540-6', '19', 31, 1, '0', '14-03-2020'),
(32, './books_pictures/IMG_20200313_115413~25e6c6daf05cec0.12753451.jpg', 'Foundation of mathematics and statistics', 'Thomas Bending', '1988', '978-0-06-051640-4', '20', 32, 1, '0', '14-03-2020'),
(33, './books_pictures/IMG_20200313_115429~25e6c6e3bdc3ca2.66448749.jpg', 'college mathematics', 'philip A. schmidt', '1976', '978-0-06-051640-5', '20', 32, 1, '0', '14-03-2020'),
(34, './books_pictures/IMG_20200313_115451~25e6c6ea81ad035.60215732.jpg', 'mathematics method and their application', 'Ezekiel F.Adebiyi', '2006', '978-0-06-051640-9', '20', 32, 1, '0', '14-03-2020'),
(35, './books_pictures/IMG_20200313_1134405e6c6fa5bfb061.44763281.jpg', 'chemical engineering', 'JR Backhurst', '1987', '978-0-06-051640-4', '08', 20, 1, '0', '14-03-2020'),
(36, './books_pictures/IMG_20200313_114203~25e6c70f583a9b0.33353359.jpg', 'pocket radiologist', 'Birdwell Morris', '1990', '978-0-06-051640-6', '13', 25, 1, '0', '14-03-2020'),
(37, './books_pictures/IMG_20200313_114222~25e6c713fa77464.33997415.jpg', 'contraception today', 'John Gullibeard', '1888', '978-1-04-051640-7', '13', 25, 1, '0', '14-03-2020'),
(38, './books_pictures/IMG_20200313_114438~25e6c71bb919622.81804140.jpg', 'Becoming a doctor', 'Adrian Bhundell', '1945', '978-0-06-051640-4', '14', 26, 1, '0', '14-03-2020'),
(39, './books_pictures/IMG_20200313_1145075e6c720a613e54.59871463.jpg', 'practice dermatology', 'P.N Behl', '1987', '978-0-06-051640-6', '14', 26, 1, '0', '14-03-2020'),
(40, './books_pictures/IMG_20200313_114542~25e6c7268603991.68556688.jpg', 'cure for HIV and AIDS', 'Dr.Hulda clark', '2008', '978-0-06-051640-4', '15', 27, 1, '0', '14-03-2020'),
(41, './books_pictures/IMG_20200313_114609~25e6c72d7e92cb5.65994236.jpg', 'Basic and clinical biostatistics', 'Beth Dawson', '2003', '778-0-05-051640-4', '15', 27, 1, '0', '14-03-2020'),
(42, './books_pictures/IMG_20200313_114728~25e6c732d923706.64986855.jpg', 'Essential of haemotology', 'shrish M.', '2000', '978-0-06-051640-97', '16', 28, 1, '0', '14-03-2020'),
(43, './books_pictures/IMG_20200313_114741~25e6c739259ff66.92916095.jpg', 'clinical pathology', 'Narida maheshwarri', '1999', '9766-06-051640-4', '16', 28, 1, '0', '14-03-2020'),
(44, './books_pictures/IMG_20200313_114852~25e6c73f32a1c37.82347140.jpg', 'physiological plant ecology', 'Walter larche', '1988', '978-0-06-0555640-6', '17', 29, 1, '0', '14-03-2020'),
(45, './books_pictures/IMG_20200313_114909~25e6c74b6dfeea6.16478600.jpg', 'Biology of flowering plants', 'Alan Japp', '2002', '978-0-06-051640-4', '17', 29, 1, '0', '14-03-2020'),
(46, './books_pictures/IMG_20200313_114947~25e6c7562c26db1.87790562.jpg', 'Aterial blood gases made easy', 'Alan japp', '2005', '978-0-06-051640-4', '18', 30, 1, '0', '14-03-2020'),
(47, './books_pictures/IMG_20200313_115010~25e6c75e9211ab1.71640825.jpg', 'Amphibian Development', 'Manju yadau', '1998', '978-0-06-0561640-8', '18', 30, 1, '0', '14-03-2020'),
(48, './books_pictures/IMG_20200313_115750~25e6c82ce60f5f1.28944617.jpg', 'A toast in the cemetry', 'Abubakar Gimbia', '2009', '978-0-00-081640-4', '1', 33, 1, '0', '14-03-2020'),
(49, './books_pictures/IMG_20200313_115804~25e6c831bb571d2.57327267.jpg', 'The lion and the jewel', 'wole soyinka', '1999', '978-0-06-051640-8', '1', 33, 1, '0', '14-03-2020'),
(50, './books_pictures/IMG_20200313_1158515e6c83d13bb195.23889741.jpg', 'sufism', 'Nuri TOPBAS', '1899', '978-0-06-051640-9', '2', 34, 1, '0', '14-03-2020'),
(51, './books_pictures/IMG_20200313_115930~25e6c847bdf57f2.78197821.jpg', 'Legacy', 'Hamsatt', '2001', '9228-0-06-051640-9', '2', 34, 1, '0', '14-03-2020'),
(52, './books_pictures/IMG_20200313_120150~25e6c84e9be5b14.61307342.jpg', 'New face of islam', 'Egedi uchendu', '1999', '978-0-06-081640-4', '3', 35, 1, '0', '14-03-2020'),
(53, './books_pictures/IMG_20200313_1202345e6c8574b431f0.75278138.jpg', 'The distinguished jurist prime', 'Ibn Rushed', '1956', '978-0-06-051640-4', '3', 35, 1, '0', '14-03-2020'),
(54, './books_pictures/IMG_20200313_120150~25e6c863a6568c4.36302766.jpg', 'practice in oral french', 'Tunde Ajiboye', '1999', '978-0-06-051640-4', '4', 36, 1, '0', '14-03-2020'),
(55, './books_pictures/IMG_20200313_120150~25e6c877f339536.47759819.jpg', 'introduction to stylist theories practice and critism', 'isah mukhtar', '2008', '978-0-06-051634-6', '5', 37, 1, '0', '14-03-2020'),
(56, './books_pictures/IMG_20200313_1202345e6c87fd72ff57.52576369.jpg', 'introduction to logic', 'irving copi', '1987', '9756-0-06-051640-7', '6', 38, 1, '0', '14-03-2020'),
(57, './books_pictures/IMG_20200313_120252~25e6c897c8bd5a9.38395476.jpg', 'management and electronic media', 'Alam B.Albarram', '1992', '978-0-06-051640-4', '6', 38, 1, '0', '14-03-2020'),
(58, './books_pictures/IMG_20200313_120357~25e6c8a0a0f9b15.67011808.jpg', 'learning to teach using ICT in secondary school', 'Manlyn leask', '2011', '978-0-06-051640-4', '7', 39, 1, '0', '14-03-2020'),
(59, './books_pictures/IMG_20200313_120418~25e6c8a69637dc0.43228985.jpg', 'Read on', 'stuart marrist', '2014', '978-0-06-881640-99', '7', 39, 1, '0', '14-03-2020'),
(60, './books_pictures/IMG_20200313_120509~25e6c8aefc00186.13076960.jpg', 'studying your own school', 'Gary Anderson', '1980', '876-0-06-051640-9', '8', 40, 1, '0', '14-03-2020'),
(61, './books_pictures/IMG_20200313_120523~25e6c8b756186e2.58320639.jpg', 'working with governors in school', 'cynthia beckett', '1976', '978-0-06-076788-4', '8', 40, 1, '0', '14-03-2020'),
(62, './books_pictures/IMG_20200313_120710~25e6c8c06ac5d47.76326979.jpg', 'political geography', 'colin flint', '2009', '978-0-06-05164-889', '9', 41, 1, '0', '14-03-2020'),
(63, './books_pictures/IMG_20200313_120710~25e6c8c9d6b0538.21854510.jpg', 'modern political thought', 'lain hampsher', '1978', '978-0-06-06676640-1', '9', 41, 1, '0', '14-03-2020'),
(64, './books_pictures/IMG_20200313_120750~25e6c8d57dd3a79.94705064.jpg', 'social in Ageing', 'Dr.A foze Eqbal', '2008', '978-0-06-05-666', '10', 42, 1, '0', '14-03-2020'),
(65, './books_pictures/IMG_20200313_120822~25e6c8db4984be8.43501016.jpg', 'sex slave and dicourse masters', 'JO Doezems', '1987', '978-0-96-0780-4', '10', 42, 1, '0', '14-03-2020'),
(66, './books_pictures/IMG_20200313_120929~25e6c8e2bc71f36.65591467.jpg', 'African Traditional Religion', 'Lois Fuller', '2012', '978-0-06-051640-4', '11', 43, 1, '0', '14-03-2020');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`) VALUES
(13, 'HYDRAULIC ENGINEERING'),
(14, 'ENVIRONMENTAL TECHNOLOGY'),
(15, 'BUILDING CONSTRUCTION'),
(16, 'MECHANICAL ENGINEERING'),
(17, 'CIVIL ENGINEERING'),
(18, 'BIOTECHNOLOGY'),
(19, 'ELECTRICAL ENGINEERING'),
(20, 'CHEMICAL TECHNOLOGY'),
(21, 'PHOTOGRAPHY'),
(22, 'HOME ECONOMIC'),
(23, 'SURGERY'),
(24, 'INTERNAL MEDICINE'),
(25, 'GYNAECOLOGY'),
(26, 'GENERAL MEDICINE'),
(27, 'COMMUNITY MEDICINE'),
(28, 'GENERAL MICROBIOLOGY'),
(29, 'BOTANY'),
(30, 'ZOOLOGY'),
(31, 'COMPUTER SCIENCE'),
(32, 'MATHEMATICS'),
(33, 'ENGLISH/LITERATURE'),
(34, 'ARABIC'),
(35, 'ISLAMIC STUDIES'),
(36, 'FRENCH'),
(37, 'HAUSA'),
(38, 'MASS COMM'),
(39, 'SPECIAL ASPECT OF EDUCATION'),
(40, 'HISTORY OF EDUCATION'),
(41, 'POLITICAL SCIENCE'),
(42, 'SOCIAL HISTORY'),
(43, 'CHRISTIAN RELIGIOUS');

-- --------------------------------------------------------

--
-- Table structure for table `search_queries`
--

CREATE TABLE `search_queries` (
  `id` int(255) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `num_of_rows` int(255) NOT NULL,
  `search_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search_queries`
--

INSERT INTO `search_queries` (`id`, `query`, `num_of_rows`, `search_date`) VALUES
(38, 'ENVIRONMENTAL BIOTECHNOLOGY', 2, '14-03-2020'),
(39, 'BASIC ENVIRONMENTAL CHEMISTRY', 0, '14-03-2020'),
(40, 'BASIC ENVIRONMENTAL CHEMISTRY', 0, '14-03-2020'),
(41, 'BASIC ENVIRONMENTAL CHEMISTRY', 0, '14-03-2020'),
(42, 'Basic Environmental chemistry', 0, '14-03-2020'),
(43, 'E.W NSI', 0, '14-03-2020'),
(44, 'slavery, commerce andproduction', 0, '14-03-2020'),
(45, 'slavery, commerce and production', 1, '14-03-2020'),
(46, 'Environmental pollution and hazard', 1, '14-03-2020'),
(47, 'automata and theory', 1, '14-03-2020'),
(48, 'facility change managemnt', 0, '14-03-2020'),
(49, 'facility change management', 1, '14-03-2020'),
(50, 'Basic Environmental chemistry', 0, '14-03-2020'),
(51, 'Basics Environmental chemistry', 1, '14-03-2020'),
(52, 'understanding food nutrition', 0, '14-03-2020'),
(53, 'understanding food and nutrition', 1, '14-03-2020'),
(54, 'sufism', 1, '14-03-2020'),
(55, 'Srinivas', 2, '13-05-2020'),
(56, 'Srinivas', 2, '13-05-2020'),
(57, 'Srinivas', 2, '13-05-2020');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_queries`
--
ALTER TABLE `search_queries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `search_queries`
--
ALTER TABLE `search_queries`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
