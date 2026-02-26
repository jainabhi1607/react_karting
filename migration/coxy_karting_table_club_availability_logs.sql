
-- --------------------------------------------------------

--
-- Table structure for table `club_availability_logs`
--

CREATE TABLE `club_availability_logs` (
  `id` int(11) NOT NULL,
  `club_availability_id` int(11) DEFAULT NULL,
  `availability_status` int(3) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
