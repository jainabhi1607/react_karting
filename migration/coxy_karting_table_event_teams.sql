
-- --------------------------------------------------------

--
-- Table structure for table `event_teams`
--

CREATE TABLE `event_teams` (
  `id` int(11) NOT NULL,
  `karting_event_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_teams`
--

INSERT INTO `event_teams` (`id`, `karting_event_id`, `title`, `order_no`, `date_time`) VALUES
(12, 21, 'Team 2', NULL, '2025-01-18 00:06:57'),
(14, 21, 'Team 3', NULL, '2025-01-18 00:06:57'),
(19, 21, 'Team 4', NULL, '2025-01-18 00:06:57'),
(20, 5, 'Team 1', NULL, '2025-01-18 00:06:57'),
(21, 20, 'Team 11', 1, '2025-04-09 22:44:44'),
(22, 20, 'Team 22', 2, '2025-04-09 22:44:44'),
(24, 14, 'Team 4', 27, '2025-12-02 15:18:40'),
(25, 14, 'yyy', 29, '2025-12-02 15:18:40'),
(27, 14, 'Team 22', 28, '2025-12-02 15:18:40'),
(31, 14, 'team13', 30, '2025-12-02 15:18:40'),
(32, 14, 'Team 11', 31, '2025-12-02 15:18:40'),
(38, 22, 'Team 1', 33, '2025-04-09 22:46:21'),
(42, 22, 'Team 3', 37, '2025-04-09 22:46:21'),
(43, 22, 'Team 11', 39, '2025-04-09 22:46:21'),
(44, 22, 'Team 2', 40, '2025-04-09 22:46:21'),
(45, 22, 'Team 23', 34, '2025-04-09 22:46:21'),
(52, 22, 'Team 22', 35, '2025-04-09 22:46:21'),
(53, 22, 'Team 20', 36, '2025-04-09 22:46:21'),
(54, 22, 'Team 21', 38, '2025-04-09 22:46:21');
