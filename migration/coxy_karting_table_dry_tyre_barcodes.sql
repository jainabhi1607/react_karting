
-- --------------------------------------------------------

--
-- Table structure for table `dry_tyre_barcodes`
--

CREATE TABLE `dry_tyre_barcodes` (
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
-- Dumping data for table `dry_tyre_barcodes`
--

INSERT INTO `dry_tyre_barcodes` (`id`, `event_entry_id`, `event_class_id`, `tyre1`, `tyre2`, `tyre3`, `tyre4`, `reserve`) VALUES
(1, 5, 1, '65', '76565', '76', '875675', '675'),
(2, 6, 3, '67567564', '564', '564', '54657', '687'),
(3, 28, 44, NULL, NULL, NULL, NULL, NULL),
(4, 28, 44, NULL, NULL, NULL, NULL, NULL),
(5, 28, 44, NULL, NULL, NULL, NULL, NULL),
(6, 35, 37, NULL, NULL, NULL, NULL, NULL),
(7, 35, 37, NULL, NULL, NULL, NULL, NULL),
(8, 35, 37, NULL, NULL, NULL, NULL, NULL),
(9, 35, 37, NULL, NULL, NULL, NULL, NULL),
(10, 39, 50, NULL, NULL, NULL, NULL, NULL),
(11, 37, 46, NULL, NULL, NULL, NULL, NULL),
(12, 39, 2, '4', '8', '5', '7', '9'),
(13, 40, 2, '9', '8', '4', '1', '56');
