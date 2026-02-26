
-- --------------------------------------------------------

--
-- Table structure for table `engine_types`
--

CREATE TABLE `engine_types` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `status` int(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `engine_types`
--

INSERT INTO `engine_types` (`id`, `title`, `date_time`, `status`) VALUES
(6, 'Yamaha KT100S with 25mm exhaust restrictor', '2022-01-07 14:06:44', 1),
(7, 'Yamaha KT100S', '2022-01-07 14:06:52', 1),
(8, 'Yamaha KT100J with 18mm exhaust restrictor', '2022-01-07 14:07:01', 1),
(9, 'Yamaha KT100J with 16mm exhaust restrictor', '2022-01-07 14:07:07', 1),
(10, 'Yamaha KT100J', '2022-01-07 14:07:15', 1),
(11, 'Vortex Mini Rok', '2022-01-07 14:08:01', 1),
(12, 'Vortex Mini Rok with 16mm exhaust restrictor', '2022-01-07 14:08:17', 1),
(13, 'Torini Clubmaxx 210', '2022-01-07 14:08:31', 1),
(14, 'Subaru KX21DU', '2022-01-07 14:08:38', 1),
(15, 'Rotax Max 125 non EVO', '2022-01-07 14:08:54', 1),
(16, 'Rotax Max 125 EVO', '2022-01-07 14:09:06', 1),
(18, 'Rotax 125 Max non EVO with 24.50mm / AKA SR2 restrictor', '2022-01-07 14:10:27', 1),
(19, 'Rotax 125 Max EVO with 24.50mm / AKA SR2 restrictor', '2022-01-07 14:10:33', 1),
(20, 'Rotax 125 Junior Max non EVO', '2022-01-07 14:10:40', 1),
(21, 'Rotax 125 Junior Max EVO', '2022-01-07 14:10:46', 1),
(22, 'Rotax 125 Junior Max non EVO with 26.00mm / AKA JR1 restrictor', '2022-01-07 14:10:52', 1),
(23, 'Rotax 125 Junior Max EVO with 26.00mm / AKA JR1 restrictor', '2022-01-07 14:10:57', 1),
(24, 'Rotax 125 Mini Max non EVO', '2022-01-07 14:11:03', 1),
(25, 'Rotax 125 Mini Max EVO', '2022-01-07 14:11:08', 1),
(26, 'Rotax 125 Micro Max non EVO', '2022-01-07 14:11:14', 1),
(27, 'Rotax 125 Micro Max EVO', '2022-01-07 14:11:19', 1),
(28, 'PRD Galaxy 125 with 24.95mm / G1 restrictor', '2022-01-07 14:11:34', 1),
(29, 'PRD Galaxy 125', '2022-01-07 14:11:41', 1),
(30, 'PRD Fireball 125 with 24.50mm AKA F1 restrictor', '2022-01-07 14:11:47', 1),
(31, 'PRD Fireball 125', '2022-01-07 14:11:54', 1),
(32, 'Parilla Leopard 125-Green with 23.80mm / AKA L2 restrictor', '2022-01-07 14:12:02', 1),
(33, 'Parilla Leopard 125-Black with 23.00mm / AKA L1 restrictor', '2022-01-07 14:12:09', 1),
(34, 'Parilla Leopard 125', '2022-01-07 14:12:16', 1),
(35, 'IAME X30 with 23.40mm / AKA X30 restrictor', '2022-01-07 14:12:22', 1),
(36, 'IAME X30', '2022-01-07 14:12:28', 1),
(37, 'IAME 100 Reedjet with 19mm exhaust restrictor', '2022-01-07 14:12:39', 1),
(38, 'IAME 100 Reedjet', '2022-01-07 14:12:54', 1),
(39, 'Honda GX200 Series', '2022-01-07 14:13:00', 1),
(40, 'Comer SW80', '2022-01-07 14:13:08', 1),
(41, 'Briggs Animal', '2022-01-07 14:13:13', 1),
(42, 'Briggs & Stratton LO206', '2022-01-07 14:13:18', 1),
(43, 'Any engine as per class rules', '2022-01-07 14:13:24', 1);
