
-- --------------------------------------------------------

--
-- Table structure for table `event_entry_details`
--

CREATE TABLE `event_entry_details` (
  `id` bigint(30) NOT NULL,
  `event_entry_id` bigint(30) DEFAULT NULL,
  `voucher_transaction_id` varchar(255) DEFAULT NULL,
  `team_name` varchar(255) DEFAULT NULL,
  `driver_apparel` int(1) DEFAULT NULL,
  `shade_structure` int(1) DEFAULT NULL,
  `price_details` longtext,
  `cancellation_reason` longtext,
  `stripe_refund_date_time` datetime DEFAULT NULL,
  `ip_address` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_entry_details`
--

INSERT INTO `event_entry_details` (`id`, `event_entry_id`, `voucher_transaction_id`, `team_name`, `driver_apparel`, `shade_structure`, `price_details`, `cancellation_reason`, `stripe_refund_date_time`, `ip_address`) VALUES
(1, 1, NULL, NULL, NULL, NULL, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:14:\"RKA F100 Heavy\";s:6:\"amount\";d:5;}}', NULL, NULL, '110.235.229.102'),
(2, 2, NULL, 'Players', 1, NULL, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:29:\"Speedway 4 Stroke Super Heavy\";s:6:\"amount\";d:10;}}', NULL, NULL, '110.235.229.102'),
(3, 3, NULL, NULL, NULL, NULL, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:14:\"RKA F100 Heavy\";s:6:\"amount\";d:5;}}', NULL, NULL, '110.235.229.102'),
(4, 4, NULL, 'Players', NULL, NULL, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:14:\"RKA F100 Heavy\";s:6:\"amount\";d:5;}}', NULL, NULL, '110.235.229.102'),
(5, 5, NULL, NULL, NULL, NULL, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:14:\"RKA F100 Heavy\";s:6:\"amount\";d:5;}}', NULL, NULL, '110.235.229.102'),
(6, 6, NULL, NULL, NULL, NULL, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:28:\"Vintage ERA 5: 1992 – 2000\";s:6:\"amount\";d:10;}}', NULL, NULL, '110.235.229.102'),
(7, 7, NULL, NULL, NULL, NULL, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:28:\"Vintage ERA 5: 1992 – 2000\";s:6:\"amount\";d:10;}}', NULL, NULL, '103.87.58.44'),
(8, 8, NULL, 'Players', NULL, NULL, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:14:\"RKA F100 Heavy\";s:6:\"amount\";d:5;}}', NULL, NULL, '127.0.0.1'),
(9, 9, NULL, 'test', NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:12:\"Senior Heavy\";s:6:\"amount\";d:7;}}', NULL, NULL, '127.0.0.1'),
(10, 10, NULL, 'test', NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:10:\"Senior Mid\";s:6:\"amount\";d:5;}}', NULL, NULL, '127.0.0.1'),
(11, 11, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:10:\"Senior Mid\";s:6:\"amount\";d:8;}}', 'Check refund amount for this entry...', '2024-03-27 05:15:06', '127.0.0.1'),
(12, 12, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:16:\"4SS Senior Heavy\";s:6:\"amount\";d:7;}}', NULL, NULL, '127.0.0.1'),
(13, 13, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:16:\"4SS Senior Light\";s:6:\"amount\";d:2;}}', NULL, NULL, '127.0.0.1'),
(14, 14, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:12:\"Senior Light\";s:6:\"amount\";d:6;}}', NULL, NULL, '127.0.0.1'),
(15, 15, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:12:\"Senior Light\";s:6:\"amount\";d:6;}}', NULL, NULL, '127.0.0.1'),
(16, 16, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:10:\"Senior Mid\";s:6:\"amount\";d:8;}}', NULL, NULL, '::1'),
(17, 17, NULL, 'test', NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:10:\"Senior Mid\";s:6:\"amount\";d:5;}}', NULL, NULL, '127.0.0.1'),
(18, 18, NULL, 'test', NULL, 1, 'a:0:{}', NULL, NULL, '127.0.0.1'),
(19, 19, NULL, 'test', NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:10:\"Senior Mid\";s:6:\"amount\";d:5;}}', NULL, NULL, '127.0.0.1'),
(20, 20, NULL, 'test', NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:12:\"Senior Heavy\";s:6:\"amount\";d:7;}}', NULL, NULL, '127.0.0.1'),
(21, 21, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:16:\"4SS Senior Light\";s:6:\"amount\";d:2;}}', NULL, NULL, '127.0.0.1'),
(22, 22, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:27:\"RKA Pro Clubman Super Heavy\";s:6:\"amount\";d:2;}}', NULL, NULL, '127.0.0.1'),
(23, 23, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:10:\"Senior Mid\";s:6:\"amount\";d:8;}}', NULL, NULL, '127.0.0.1'),
(24, 24, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:27:\"RKA Pro Clubman Super Heavy\";s:6:\"amount\";d:2;}}', NULL, NULL, '127.0.0.1'),
(25, 25, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:10:\"Senior Mid\";s:6:\"amount\";d:8;}}', NULL, NULL, '127.0.0.1'),
(26, 26, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:16:\"4SS Senior Light\";s:6:\"amount\";d:2;}}', NULL, NULL, '127.0.0.1'),
(27, 27, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:16:\"Kart Start Light\";s:6:\"amount\";d:6;}}', NULL, NULL, '127.0.0.1'),
(28, 28, NULL, NULL, NULL, NULL, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:17:\"Kart Start Junior\";s:6:\"amount\";d:4;}}', NULL, NULL, '127.0.0.1'),
(29, 29, NULL, NULL, NULL, NULL, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:16:\"Kart Start Light\";s:6:\"amount\";d:6;}}', NULL, NULL, '127.0.0.1'),
(30, 30, NULL, NULL, NULL, NULL, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:17:\"Kart Start Junior\";s:6:\"amount\";d:4;}}', NULL, NULL, '127.0.0.1'),
(31, 31, NULL, NULL, NULL, NULL, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:17:\"Kart Start Junior\";s:6:\"amount\";d:10;}}', NULL, NULL, '127.0.0.1'),
(32, 32, NULL, NULL, NULL, NULL, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:17:\"Kart Start Junior\";s:6:\"amount\";d:4;}}', NULL, NULL, '127.0.0.1'),
(33, 33, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:12:\"Senior Light\";s:6:\"amount\";d:9;}}', NULL, NULL, '127.0.0.1'),
(34, 34, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:16:\"4SS Senior Heavy\";s:6:\"amount\";d:7;}}', NULL, NULL, '127.0.0.1'),
(35, 35, NULL, NULL, NULL, NULL, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:9:\"Rotax DD2\";s:6:\"amount\";d:5;}}', NULL, NULL, '127.0.0.1'),
(36, 36, NULL, NULL, NULL, 1, 'a:2:{i:0;a:2:{s:10:\"class_name\";s:16:\"4SS Senior Light\";s:6:\"amount\";d:2;}i:1;a:2:{s:10:\"class_name\";s:12:\"Senior Light\";s:6:\"amount\";d:7;}}', NULL, NULL, '127.0.0.1'),
(37, 37, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:16:\"4SS Senior Heavy\";s:6:\"amount\";d:5;}}', NULL, NULL, '127.0.0.1'),
(38, 38, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:16:\"4SS Senior Heavy\";s:6:\"amount\";d:5;}}', NULL, NULL, '127.0.0.1'),
(39, 39, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:10:\"4SE Senior\";s:6:\"amount\";d:5;}}', NULL, NULL, '127.0.0.1'),
(40, 36, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:14:\"RKA F100 Heavy\";s:6:\"amount\";d:5;}}', NULL, NULL, '127.0.0.1'),
(41, 37, NULL, 'Players', NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:14:\"RKA F100 Heavy\";s:6:\"amount\";d:5;}}', NULL, NULL, '127.0.0.1'),
(42, 38, NULL, 'Players', NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:27:\"RKA Pro Clubman Super Heavy\";s:6:\"amount\";d:4;}}', NULL, NULL, '127.0.0.1'),
(43, 39, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:27:\"RKA Pro Clubman Super Heavy\";s:6:\"amount\";d:2;}}', NULL, NULL, '127.0.0.1'),
(44, 40, NULL, NULL, NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:27:\"RKA Pro Clubman Super Heavy\";s:6:\"amount\";d:2;}}', NULL, NULL, '127.0.0.1'),
(45, 41, NULL, 'Players', NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:14:\"RKA F100 Heavy\";s:6:\"amount\";d:5;}}', NULL, NULL, '127.0.0.1'),
(46, 42, NULL, 'Players', NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:14:\"RKA F100 Heavy\";s:6:\"amount\";d:5;}}', NULL, NULL, '127.0.0.1'),
(47, 43, NULL, '11		Those Bastards', NULL, 1, 'a:0:{}', NULL, NULL, '127.0.0.1'),
(48, 44, NULL, '4              Promove Motorsport #1', NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:10:\"4SE Senior\";s:6:\"amount\";d:600;}}', NULL, NULL, '127.0.0.1'),
(49, 45, NULL, '6              Wright Karts', NULL, 1, 'a:0:{}', NULL, NULL, '127.0.0.1'),
(50, 46, NULL, NULL, NULL, NULL, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:16:\"Kart Start Heavy\";s:6:\"amount\";d:9;}}', NULL, NULL, '127.0.0.1'),
(51, 47, NULL, '4              Promove Motorsport #1', NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:10:\"4SE Senior\";s:6:\"amount\";d:600;}}', NULL, NULL, '127.0.0.1'),
(52, 48, NULL, '5		Claw Racing', NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:10:\"4SE Senior\";s:6:\"amount\";d:600;}}', NULL, NULL, '127.0.0.1'),
(53, 49, NULL, '10            Those Other Bastards', NULL, 1, 'a:1:{i:0;a:2:{s:10:\"class_name\";s:10:\"4SE Senior\";s:6:\"amount\";d:600;}}', NULL, NULL, '127.0.0.1'),
(54, 50, NULL, '8              Snookered', NULL, 1, 'a:0:{}', NULL, NULL, '127.0.0.1'),
(55, 51, NULL, '12            Unbeatables', NULL, 1, 'a:0:{}', NULL, NULL, '127.0.0.1'),
(56, 52, NULL, '3		Five Lights Racing', NULL, 1, 'a:0:{}', NULL, NULL, '127.0.0.1');
