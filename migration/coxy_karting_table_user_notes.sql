
-- --------------------------------------------------------

--
-- Table structure for table `user_notes`
--

CREATE TABLE `user_notes` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `notes` text,
  `added_by` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_notes`
--

INSERT INTO `user_notes` (`id`, `user_id`, `notes`, `added_by`, `date_time`) VALUES
(1, 2, 'tes', 1, '2024-03-21 06:35:37'),
(2, 31, 'First Notes', 1, '2025-12-11 17:49:32'),
(3, 31, 'Second Notes...', 1, '2025-12-11 17:49:42');
