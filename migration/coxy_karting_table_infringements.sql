
-- --------------------------------------------------------

--
-- Table structure for table `infringements`
--

CREATE TABLE `infringements` (
  `id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `karting_event_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `finalised_by` int(11) DEFAULT NULL,
  `race_date` date DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `event_entry_id` int(11) DEFAULT NULL,
  `event_class_id` int(11) DEFAULT NULL,
  `kart_number` varchar(100) DEFAULT NULL,
  `official_witness` varchar(255) DEFAULT NULL,
  `host_club` varchar(200) DEFAULT NULL,
  `session_name` varchar(200) DEFAULT NULL,
  `rule_number` varchar(150) DEFAULT NULL,
  `penalty_issued` int(11) DEFAULT NULL,
  `regulation` int(5) DEFAULT NULL,
  `stewards_hearing_date` date DEFAULT NULL,
  `stewards_hearing_time` varchar(50) DEFAULT NULL,
  `defendant_notified_date` date DEFAULT NULL,
  `defendant_notified_time` varchar(50) DEFAULT NULL,
  `official_issuing` varchar(255) DEFAULT NULL,
  `official_issuing_date` date DEFAULT NULL,
  `hearing_date` date DEFAULT NULL,
  `hearing_time` varchar(50) DEFAULT NULL,
  `steward_id` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `finalised_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `infringements`
--

INSERT INTO `infringements` (`id`, `form_id`, `karting_event_id`, `admin_id`, `finalised_by`, `race_date`, `time`, `event_entry_id`, `event_class_id`, `kart_number`, `official_witness`, `host_club`, `session_name`, `rule_number`, `penalty_issued`, `regulation`, `stewards_hearing_date`, `stewards_hearing_time`, `defendant_notified_date`, `defendant_notified_time`, `official_issuing`, `official_issuing_date`, `hearing_date`, `hearing_time`, `steward_id`, `date_time`, `status`, `finalised_date`) VALUES
(1, 100000, 31, 42, 2, '2025-10-30', '1.35pm', 44, 45, '168', 'testing', 'Club1', 'Morning', '3', 3, NULL, '2025-10-23', '2.00pm', '2025-10-29', '5.00pm', 'Off', '2025-10-20', '2025-10-24', '5.30pm', 2, '2025-10-04 21:11:40', 1, '2025-10-07 14:42:37'),
(2, 100001, 31, 2, NULL, '2025-10-02', '10:20', 30, 30, '44', 'x', 'x', 'x', 'x', 1, NULL, '2025-10-02', '', '2025-10-02', '', 'greggo', NULL, '2025-10-02', '', 2, '2025-10-08 07:31:29', 5, NULL),
(3, 100002, 1, 1, NULL, '2026-02-06', '2:42 AM', 22, 22, '9', 'testing', 'Club1', 'Morning', '3', 3, NULL, '2026-02-18', '2.00pm', '2026-02-19', '5.00pm', 'Off', '2026-02-03', '2026-02-13', '', 2, '2026-02-06 02:43:06', 5, NULL);
