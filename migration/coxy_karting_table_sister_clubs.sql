
-- --------------------------------------------------------

--
-- Table structure for table `sister_clubs`
--

CREATE TABLE `sister_clubs` (
  `id` int(11) NOT NULL,
  `club_id` int(11) DEFAULT NULL,
  `sister_club_id` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sister_clubs`
--

INSERT INTO `sister_clubs` (`id`, `club_id`, `sister_club_id`, `date_time`) VALUES
(8, 2, 1, '2024-05-20 18:13:42');
