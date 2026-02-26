
-- --------------------------------------------------------

--
-- Table structure for table `penalties`
--

CREATE TABLE `penalties` (
  `id` bigint(30) NOT NULL,
  `penalty_number` varchar(150) DEFAULT NULL,
  `penalty_number_only` int(11) DEFAULT NULL,
  `event_entry_id` bigint(30) DEFAULT NULL,
  `user_id` bigint(30) DEFAULT NULL,
  `penalty_type` int(3) DEFAULT NULL,
  `penalty_management_id` int(11) DEFAULT NULL,
  `penalty_applied` varchar(255) DEFAULT NULL,
  `penalty_notes` text,
  `written_warning` int(2) DEFAULT NULL,
  `judge_of_fact_penalty_id` bigint(20) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `status` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penalties`
--

INSERT INTO `penalties` (`id`, `penalty_number`, `penalty_number_only`, `event_entry_id`, `user_id`, `penalty_type`, `penalty_management_id`, `penalty_applied`, `penalty_notes`, `written_warning`, `judge_of_fact_penalty_id`, `date_time`, `status`) VALUES
(1, 'P10000', 10000, 23, 9, 1, 1, '10', 'Did applicable for this Event', 0, NULL, '2023-09-16 04:57:06', 1),
(2, 'P10001', 10001, 23, 9, 9, 23, 'Transponder. Failure to Comply', 'We removed stuart from that section of the event', 1, NULL, '2025-09-04 00:58:21', 1),
(3, 'P10002', 10002, 11, 21, 7, 28, 'test', 'ty', 1, NULL, '2025-09-04 15:19:11', 1),
(4, 'P10003', 10003, 11, 21, 7, 28, 'test', 'Notes added...', 0, NULL, '2025-09-04 16:37:10', 1),
(5, 'P10004', 10004, 23, 9, 7, 26, 'test', 'Notes added...', 0, NULL, '2025-09-04 16:37:28', 1),
(6, 'P10005', 10005, 1, 11, 9, 23, 'Transponder. Failure to Comply', 'We removed stuart from that section of the event', 1, NULL, '2025-09-22 20:31:04', 1),
(7, 'P10006', 10006, NULL, 23, 9, 23, '50', '', 1, NULL, '2025-12-23 03:09:15', 1),
(8, 'P10007', 10007, NULL, 23, 9, 25, '60', '+5 second time penalty or Start/Restart Rear of Field', 1, NULL, '2025-12-23 03:09:39', 1),
(10, 'P10008', 10008, 2, 11, 7, 33, 'Late appearance.', NULL, NULL, 7, '2026-02-06 17:17:38', 1);
