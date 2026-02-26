
-- --------------------------------------------------------

--
-- Table structure for table `notification_of_minor_ineligibilities`
--

CREATE TABLE `notification_of_minor_ineligibilities` (
  `id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `karting_event_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `finalised_by` int(11) DEFAULT NULL,
  `race_date` date DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `event_entry_id` int(11) DEFAULT NULL,
  `licence_number` varchar(150) DEFAULT NULL,
  `event_class_id` int(11) DEFAULT NULL,
  `kart_number` varchar(100) DEFAULT NULL,
  `details` longtext,
  `scrutineer_id` int(11) DEFAULT NULL,
  `steward_id` int(11) DEFAULT NULL,
  `authority` int(1) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `finalised_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification_of_minor_ineligibilities`
--

INSERT INTO `notification_of_minor_ineligibilities` (`id`, `form_id`, `karting_event_id`, `admin_id`, `finalised_by`, `race_date`, `time`, `event_entry_id`, `licence_number`, `event_class_id`, `kart_number`, `details`, `scrutineer_id`, `steward_id`, `authority`, `date_time`, `status`, `finalised_date`) VALUES
(1, 100000, 31, 42, NULL, '2025-10-31', '1.00', 25, NULL, 25, '4', 'Multiple Image', NULL, 2, NULL, '2025-10-03 13:16:01', 5, NULL),
(2, 100001, 1, 1, 1, '2026-02-06', '2:46 AM', 24, NULL, 24, '454', 'test', 21, 2, NULL, '2026-02-06 02:46:25', 1, '2026-02-06 02:58:12');
