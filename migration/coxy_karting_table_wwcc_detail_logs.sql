
-- --------------------------------------------------------

--
-- Table structure for table `wwcc_detail_logs`
--

CREATE TABLE `wwcc_detail_logs` (
  `id` int(11) NOT NULL,
  `user_id` bigint(30) DEFAULT NULL,
  `wwcc_update_date` datetime DEFAULT NULL,
  `wwcc_notification` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wwcc_detail_logs`
--

INSERT INTO `wwcc_detail_logs` (`id`, `user_id`, `wwcc_update_date`, `wwcc_notification`) VALUES
(1, 3, '2023-09-15 17:33:20', NULL),
(2, 3, NULL, NULL),
(3, 3, NULL, NULL),
(4, 3, NULL, NULL),
(5, 11, NULL, NULL),
(6, 11, NULL, NULL),
(7, 10, NULL, NULL),
(8, 14, NULL, NULL),
(9, 24, NULL, NULL),
(10, 24, NULL, NULL),
(11, 2, NULL, NULL),
(12, 2, NULL, NULL),
(13, 21, NULL, NULL),
(14, 21, NULL, NULL);
