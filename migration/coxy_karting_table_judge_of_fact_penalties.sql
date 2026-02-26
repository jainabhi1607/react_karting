
-- --------------------------------------------------------

--
-- Table structure for table `judge_of_fact_penalties`
--

CREATE TABLE `judge_of_fact_penalties` (
  `id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `karting_event_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `finalised_by` int(11) DEFAULT NULL,
  `race_date` date DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `event_entry_id` int(11) DEFAULT NULL,
  `licence_number` varchar(150) DEFAULT NULL,
  `event_class_id` int(11) DEFAULT NULL,
  `kart_number` varchar(100) DEFAULT NULL,
  `penalty_issued` int(11) DEFAULT NULL,
  `regulation` int(11) DEFAULT NULL,
  `penalty_applied` longtext,
  `fact_name` int(11) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `steward_id` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `notify_competitor` int(1) DEFAULT NULL,
  `chief_timekeeper` int(1) DEFAULT NULL,
  `chief_steward` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `finalised_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `judge_of_fact_penalties`
--

INSERT INTO `judge_of_fact_penalties` (`id`, `form_id`, `karting_event_id`, `admin_id`, `finalised_by`, `race_date`, `time`, `event_name`, `event_entry_id`, `licence_number`, `event_class_id`, `kart_number`, `penalty_issued`, `regulation`, `penalty_applied`, `fact_name`, `position`, `steward_id`, `date_time`, `notify_competitor`, `chief_timekeeper`, `chief_steward`, `status`, `finalised_date`) VALUES
(2, 100000, 31, 42, 42, '2025-10-21', '4.00 PM', 'Heat 2', 44, NULL, 45, '168', 7, 29, 'Transponder. Failure to Comply', 2, 'Steward', 2, '2025-10-03 13:14:38', 1, 1, 1, 1, '2025-10-07 01:51:25'),
(3, 100001, 16, 2, NULL, '2025-10-02', '10:20', 'Dunlop Kart Stars SERIES ENTRY', 33, NULL, 33, '45', 9, 25, '', 2, 'Steward', 2, '2025-10-07 20:57:05', 1, 1, 1, 5, NULL),
(4, 100002, 1, 1, NULL, '2026-02-06', '2:58 AM', 'Event - 27-02-2026', 3, NULL, 3, '6', 3, NULL, 'tes', 25, 'Clerk of Course', 2, '2026-02-06 02:58:49', 1, 1, 1, 5, NULL),
(5, 100003, 1, 1, NULL, '2026-02-06', '3:06 AM', 'Event - 27-02-2026', 5, NULL, 5, '78', 7, 28, 'test', 21, 'Steward', 2, '2026-02-06 03:06:51', 1, 1, 1, 5, NULL),
(6, 100004, 2, 1, NULL, '2026-02-06', '4:51 PM', 'Event - 27-02-2026', 42, NULL, 47, '5', 5, NULL, 'testing penalty', NULL, '', NULL, '2026-02-06 16:52:36', 1, 1, 1, 5, NULL),
(7, 100005, 2, 1, 1, '2026-02-06', '4:52 PM', '22-02-2026', 2, NULL, NULL, '5', 7, 33, 'Late appearance.', NULL, '', NULL, '2026-02-06 16:55:36', 1, 1, 1, 1, '2026-02-06 17:17:38');
