
-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(30) NOT NULL,
  `report_type` int(3) DEFAULT NULL,
  `licence_id` int(3) DEFAULT NULL,
  `exclude_suspended` int(2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `cron_status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `report_type`, `licence_id`, `exclude_suspended`, `start_date`, `end_date`, `filename`, `date_time`, `cron_status`) VALUES
(1, 2, 3, 0, NULL, NULL, 'Club-Membership-Summary-Report-1711014425.csv', '2024-03-21 09:47:05', 1),
(2, 6, NULL, 0, '2024-06-04', NULL, 'Licence-Breakdown-Summary-Report-1730211277.csv', '2024-10-29 14:14:37', 1),
(3, 9, NULL, 0, '2024-10-03', NULL, NULL, '2025-01-21 21:54:32', 2);
