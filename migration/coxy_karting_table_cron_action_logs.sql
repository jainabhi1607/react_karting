
-- --------------------------------------------------------

--
-- Table structure for table `cron_action_logs`
--

CREATE TABLE `cron_action_logs` (
  `id` int(11) NOT NULL,
  `user_id` bigint(30) DEFAULT NULL,
  `tasks` longtext,
  `action_type` int(11) DEFAULT NULL COMMENT '1=Licence expired, 2= Event type licence expired, 3 = club membership expired',
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
