-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2024 at 07:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basegaceta`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `Artist_id` int(11) NOT NULL,
  `Artist_name` varchar(200) NOT NULL,
  `Artist_tittle` text NOT NULL,
  `Artist_bio` text NOT NULL,
  `Category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`Artist_id`, `Artist_name`, `Artist_tittle`, `Artist_bio`, `Category_id`) VALUES
(1, 'Ramma', 'El nuevo artista revelacion', 'El representante de la nueva generación del trap argentino, Ramma, está revolucionando la escena musical con su increíble talento y carisma. Con más de 550.000 oyentes mensuales en Spotify, Ramma ha conquistado al público con su amplio catálogo musical, destacando especialmente sus dos discos: \"Incrédulo\" e \"Intrépido\".\n\nDesde hace cinco años, Ramma ha venido sorprendiendo a sus seguidores con canciones innovadoras y auténticas. Su destreza inigualable para la música le ha permitido destacar como un verdadero prodigio en la industria y ser la promesa de la generación para los amantes del trap. Este año, su carrera ha alcanzado nuevos hitos, agotando en menos de 20 horas las entradas para su próximo show en Uniclub, donde presentará por primera vez dos nuevos EP: “TRIP” y “SOMOS EL SHOW” en colaboración con ARA Youngboy.\n\nAdemás, Ramma está confirmado para presentarse en el Buenos Aires Trap, el festival de trap más importante de Latinoamérica, donde cerrará el año con una actuación que promete ser inolvidable.\n', 1),
(2, 'Ara', 'ARA TITULO', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam doloremque quis iure. Alias maiores tempora error libero unde obcaecati nobis saepe commodi, praesentium facere voluptas dolor porro accusantium, minus sint.', 1),
(3, '⁠Valuto', '⁠Valuto titulo', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam doloremque quis iure. Alias maiores tempora error libero unde obcaecati nobis saepe commodi, praesentium facere voluptas dolor porro accusantium, minus sint.', 1),
(4, 'Wave', 'Wave titulo', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam doloremque quis iure. Alias maiores tempora error libero unde obcaecati nobis saepe commodi, praesentium facere voluptas dolor porro accusantium, minus sint.', 1),
(5, '⁠Fosse', '⁠Fosse titulo', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam doloremque quis iure. Alias maiores tempora error libero unde obcaecati nobis saepe commodi, praesentium facere voluptas dolor porro accusantium, minus sint.', 1),
(6, 'Tadu Vázquez', 'Tadu Vázquez titulo', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam doloremque quis iure. Alias maiores tempora error libero unde obcaecati nobis saepe commodi, praesentium facere voluptas dolor porro accusantium, minus sint.', 1),
(7, 'Barta', 'Barta titulo', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam doloremque quis iure. Alias maiores tempora error libero unde obcaecati nobis saepe commodi, praesentium facere voluptas dolor porro accusantium, minus sint.', 2),
(8, '⁠Lonzo', '⁠Lonzo titulo', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam doloremque quis iure. Alias maiores tempora error libero unde obcaecati nobis saepe commodi, praesentium facere voluptas dolor porro accusantium, minus sint.', 2),
(9, '⁠Fosse', '⁠Fosse titulo', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam doloremque quis iure. Alias maiores tempora error libero unde obcaecati nobis saepe commodi, praesentium facere voluptas dolor porro accusantium, minus sint.', 2),
(10, '⁠Tiano', '⁠Tiano titulo', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam doloremque quis iure. Alias maiores tempora error libero unde obcaecati nobis saepe commodi, praesentium facere voluptas dolor porro accusantium, minus sint.', 2),
(11, 'Zekko', 'Zekko titulo', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam doloremque quis iure. Alias maiores tempora error libero unde obcaecati nobis saepe commodi, praesentium facere voluptas dolor porro accusantium, minus sint.', 2),
(12, 'Tadu Vázquez', 'Tadu Vázquez titulo produc', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam doloremque quis iure. Alias maiores tempora error libero unde obcaecati nobis saepe commodi, praesentium facere voluptas dolor porro accusantium, minus sint.', 2),
(13, 'Antu.av', 'Antu.av titulo', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam doloremque quis iure. Alias maiores tempora error libero unde obcaecati nobis saepe commodi, praesentium facere voluptas dolor porro accusantium, minus sint.\r\n', 3),
(14, '⁠Wocseall', '⁠wocseall titulo', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam doloremque quis iure. Alias maiores tempora error libero unde obcaecati nobis saepe commodi, praesentium facere voluptas dolor porro accusantium, minus sint.\r\n', 3),
(15, 'Madebysai', 'madebysai titulo', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam doloremque quis iure. Alias maiores tempora error libero unde obcaecati nobis saepe commodi, praesentium facere voluptas dolor porro accusantium, minus sint.\r\n', 3);

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `Category_id` int(11) NOT NULL,
  `Category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`Category_id`, `Category_name`) VALUES
(1, 'Artistas'),
(2, 'Productores'),
(3, 'Audiovisuales');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`Artist_id`),
  ADD KEY `Category_id` (`Category_id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`Category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `Artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `Category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artist`
--
ALTER TABLE `artist`
  ADD CONSTRAINT `artist_ibfk_1` FOREIGN KEY (`Category_id`) REFERENCES `categorys` (`Category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
