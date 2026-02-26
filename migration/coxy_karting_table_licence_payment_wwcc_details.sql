
-- --------------------------------------------------------

--
-- Table structure for table `licence_payment_wwcc_details`
--

CREATE TABLE `licence_payment_wwcc_details` (
  `id` int(11) NOT NULL,
  `licence_payment_id` int(11) DEFAULT NULL,
  `wwcc_id_number` varchar(255) DEFAULT NULL,
  `wwcc_expiry_date` date DEFAULT NULL,
  `wwcc_licence_upload` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `licence_payment_wwcc_details`
--

INSERT INTO `licence_payment_wwcc_details` (`id`, `licence_payment_id`, `wwcc_id_number`, `wwcc_expiry_date`, `wwcc_licence_upload`) VALUES
(1, 4, '9876543210', '2023-09-28', NULL),
(2, 5, '9876543210', '2023-09-28', NULL),
(3, 6, '9876543210', '2023-09-28', NULL),
(4, 8, 'WW7658YU', '2032-09-16', NULL),
(5, 11, 'WW7658YU', '2032-09-16', NULL),
(6, 21, 'WWRT67676', '2026-09-11', NULL),
(7, 24, 'WWCC877', '2023-09-28', NULL),
(8, 31, 'WW234234', '2024-05-16', NULL),
(9, 32, 'WW234234', '2024-05-16', NULL),
(10, 37, 'WW23', '2023-12-14', NULL),
(11, 38, 'WER2345', '2024-03-15', NULL),
(12, 49, 'ww09876', '2024-03-14', NULL),
(13, 50, 'ww09876', '2024-01-27', NULL);
