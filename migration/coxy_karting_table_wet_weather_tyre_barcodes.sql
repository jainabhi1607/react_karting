
-- --------------------------------------------------------

--
-- Table structure for table `wet_weather_tyre_barcodes`
--

CREATE TABLE `wet_weather_tyre_barcodes` (
  `id` bigint(30) NOT NULL,
  `event_entry_id` bigint(30) DEFAULT NULL,
  `event_class_id` int(11) DEFAULT NULL,
  `tyre1` varchar(255) DEFAULT NULL,
  `tyre2` varchar(255) DEFAULT NULL,
  `tyre3` varchar(255) DEFAULT NULL,
  `tyre4` varchar(255) DEFAULT NULL,
  `reserve` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wet_weather_tyre_barcodes`
--

INSERT INTO `wet_weather_tyre_barcodes` (`id`, `event_entry_id`, `event_class_id`, `tyre1`, `tyre2`, `tyre3`, `tyre4`, `reserve`) VALUES
(1, 5, 1, '67', '765', '675654', '564', '6'),
(2, 28, 44, NULL, NULL, NULL, NULL, NULL),
(3, 28, 44, NULL, NULL, NULL, NULL, NULL),
(4, 28, 44, NULL, NULL, NULL, NULL, NULL),
(5, 35, 37, NULL, NULL, NULL, NULL, NULL),
(6, 35, 37, NULL, NULL, NULL, NULL, NULL),
(7, 35, 37, NULL, NULL, NULL, NULL, NULL),
(8, 35, 37, NULL, NULL, NULL, NULL, NULL),
(9, 39, 50, NULL, NULL, NULL, NULL, NULL),
(10, 37, 46, NULL, NULL, NULL, NULL, NULL),
(11, 39, 2, '1', '2', '6', '44', '6'),
(12, 40, 2, '1', '5', '6', '11', '');
