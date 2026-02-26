
-- --------------------------------------------------------

--
-- Table structure for table `nose_cones`
--

CREATE TABLE `nose_cones` (
  `id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `karting_event_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `finalised_by` int(11) DEFAULT NULL,
  `race_date` date DEFAULT NULL,
  `event_entry_id` int(11) DEFAULT NULL,
  `licence_number` varchar(150) DEFAULT NULL,
  `event_class_id` int(11) DEFAULT NULL,
  `kart_number` varchar(100) DEFAULT NULL,
  `heat_race` varchar(255) DEFAULT NULL,
  `scrutineer_id` int(11) DEFAULT NULL,
  `steward_id` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `finalised_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nose_cones`
--

INSERT INTO `nose_cones` (`id`, `form_id`, `karting_event_id`, `admin_id`, `finalised_by`, `race_date`, `event_entry_id`, `licence_number`, `event_class_id`, `kart_number`, `heat_race`, `scrutineer_id`, `steward_id`, `date_time`, `status`, `finalised_date`) VALUES
(1, 100000, 31, 42, NULL, '2025-10-20', 25, NULL, 25, '4', 'Heat 1', NULL, 2, '2025-10-03 18:14:41', 5, NULL),
(2, 100001, 31, 2, NULL, '2025-10-31', 25, NULL, 25, '4', '2', NULL, NULL, '2025-10-03 18:31:35', 5, NULL),
(3, 100002, 1, 1, 1, '2026-02-06', 36, NULL, 37, '45F', 'Heat 1', 21, 2, '2026-02-06 02:44:47', 1, '2026-02-06 02:45:22');
