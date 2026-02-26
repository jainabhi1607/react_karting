
-- --------------------------------------------------------

--
-- Table structure for table `communications`
--

CREATE TABLE `communications` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT 'admin or club member who sent the email',
  `recipient_type` int(2) DEFAULT NULL,
  `karting_event_id` bigint(25) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` longtext,
  `club_id` int(11) DEFAULT NULL,
  `last_user_id` bigint(20) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `send_status` int(1) DEFAULT NULL COMMENT '1= send\r\n3 = waiting for cron',
  `send_user_ids` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `communications`
--

INSERT INTO `communications` (`id`, `user_id`, `recipient_type`, `karting_event_id`, `subject`, `message`, `club_id`, `last_user_id`, `date_time`, `send_status`, `send_user_ids`) VALUES
(1, 1, 1, 0, 'test', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n<p>Nullam varius ante ac ligula suscipit tempus. Morbi fringilla diam finibus tellus sodales tempus. Phasellus at massa risus.&nbsp;</p>\r\n<p>Sed risus ex, elementum rutrum finibus at, pretium ac lorem. Donec ipsum lacus, tristique et tincidunt nec, feugiat at diam.&nbsp;</p>', NULL, 24, '2025-04-11 15:09:07', 1, NULL),
(2, 1, 3, 0, 'testing', '<p>This test..</p>', NULL, 32, '2025-04-11 17:18:04', 1, NULL);
