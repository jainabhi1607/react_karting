
-- --------------------------------------------------------

--
-- Table structure for table `event_products`
--

CREATE TABLE `event_products` (
  `id` bigint(20) NOT NULL,
  `karting_event_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `price` float DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_products`
--

INSERT INTO `event_products` (`id`, `karting_event_id`, `title`, `description`, `price`, `date_time`, `status`) VALUES
(1, 15, 'Friday Practice per kart', NULL, 1.5, '2025-02-19 20:05:51', 1),
(2, 15, 'Set of Slicks', NULL, 1.5, '2025-02-19 20:05:51', 1),
(3, 15, 'Retro Karting Aust Friday Practice', NULL, 1.5, '2025-02-19 20:05:51', 1);
