
-- --------------------------------------------------------

--
-- Table structure for table `event_details`
--

CREATE TABLE `event_details` (
  `id` bigint(30) NOT NULL,
  `karting_event_id` bigint(30) DEFAULT NULL,
  `description` longtext,
  `permit_number` varchar(255) DEFAULT NULL,
  `entries_open_date` date DEFAULT NULL,
  `entries_close_date` date DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `content` longtext,
  `enter_email_subject` varchar(255) DEFAULT NULL,
  `entry_email_content` longtext,
  `supplementary_regulation` varchar(255) DEFAULT NULL,
  `series_regulation` varchar(255) DEFAULT NULL,
  `scrutineering_from_url` varchar(255) DEFAULT NULL,
  `event_flyer` varchar(255) DEFAULT NULL,
  `addendum1` varchar(244) DEFAULT NULL,
  `addendum2` varchar(244) DEFAULT NULL,
  `addendum3` varchar(233) DEFAULT NULL,
  `addendum4` varchar(223) DEFAULT NULL,
  `drivers_briefing` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_details`
--

INSERT INTO `event_details` (`id`, `karting_event_id`, `description`, `permit_number`, `entries_open_date`, `entries_close_date`, `document`, `content`, `enter_email_subject`, `entry_email_content`, `supplementary_regulation`, `series_regulation`, `scrutineering_from_url`, `event_flyer`, `addendum1`, `addendum2`, `addendum3`, `addendum4`, `drivers_briefing`) VALUES
(1, 1, NULL, 'FTY/21-1546', '2024-02-07', '2026-01-30', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, NULL, 'FTY/21-1144', '2023-09-16', '2026-02-09', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, NULL, '', '2023-12-08', '2026-01-31', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, NULL, '', '2023-12-08', '2026-03-07', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, NULL, '', '2023-12-08', '2026-12-27', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, NULL, '', '2023-12-22', '2026-03-14', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 12, NULL, '', '2023-12-22', '2026-03-14', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 13, NULL, '', '2024-04-04', '2026-07-12', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 14, NULL, '', '2025-01-01', '2026-02-11', NULL, NULL, NULL, NULL, 'Dummy_1.jpg', 'Dummy_3.jpg', '', 'dummy_profile_pic_300x300_1.png', 'Dummy_6.jpg', 'Dummy_9.jpg', 'Dummy_13.jpg', 'Dummy_1_.jpg', 'front.jpg'),
(15, 15, NULL, '', '2024-01-31', '2026-03-15', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 16, NULL, '', '2024-03-04', '2026-06-20', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 17, NULL, '', '2024-04-05', '2026-07-10', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 18, NULL, '', '2024-04-07', '2026-05-23', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 19, NULL, '', '2024-04-07', '2026-05-25', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 20, NULL, '', '2024-10-16', '2026-06-07', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 21, NULL, '', '2025-01-17', '2026-01-30', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 22, NULL, '', '2025-01-22', '2026-08-27', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 23, NULL, '', '2025-09-02', '2026-09-22', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 24, NULL, '', '2026-02-05', '2026-02-22', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL);
