
-- --------------------------------------------------------

--
-- Table structure for table `event_entry_engine_details`
--

CREATE TABLE `event_entry_engine_details` (
  `id` bigint(30) NOT NULL,
  `event_entry_id` bigint(30) DEFAULT NULL,
  `event_class_id` int(11) DEFAULT NULL,
  `engine_no_id` int(1) DEFAULT NULL COMMENT '1,2,3',
  `engine_no` varchar(255) DEFAULT NULL,
  `briggs_seal_1` int(1) DEFAULT NULL,
  `briggs_seal_2` int(1) DEFAULT NULL,
  `ska_seal_1` varchar(255) DEFAULT NULL,
  `ska_seal_2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
