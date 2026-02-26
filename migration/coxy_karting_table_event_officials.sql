
-- --------------------------------------------------------

--
-- Table structure for table `event_officials`
--

CREATE TABLE `event_officials` (
  `id` bigint(28) NOT NULL,
  `karting_event_id` bigint(30) DEFAULT NULL,
  `user_id_clerk_of_course` bigint(30) DEFAULT NULL,
  `user_id_steward` bigint(30) DEFAULT NULL,
  `user_id_scrutineer` bigint(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_officials`
--

INSERT INTO `event_officials` (`id`, `karting_event_id`, `user_id_clerk_of_course`, `user_id_steward`, `user_id_scrutineer`) VALUES
(1, 3, 130001, 130001, NULL),
(2, 4, 130001, NULL, NULL),
(3, 4, NULL, NULL, NULL),
(4, 4, 130001, NULL, NULL),
(5, 5, NULL, NULL, NULL),
(6, 5, NULL, NULL, NULL),
(7, 5, NULL, NULL, NULL),
(8, 5, 130001, NULL, NULL),
(9, 5, 130001, NULL, NULL),
(10, 6, NULL, NULL, NULL),
(11, 6, NULL, NULL, NULL),
(12, 6, NULL, NULL, NULL),
(13, 6, 130001, NULL, NULL),
(14, 6, 130001, NULL, NULL),
(15, 7, NULL, 130001, NULL),
(16, 7, NULL, NULL, NULL),
(17, 7, NULL, 130001, NULL),
(18, 7, 130001, NULL, NULL),
(19, 7, 130001, 130001, NULL),
(20, 8, NULL, 130001, NULL),
(21, 8, NULL, NULL, NULL),
(22, 8, NULL, 130001, NULL),
(23, 8, 130001, NULL, NULL),
(24, 8, 130001, 130001, NULL),
(25, 9, NULL, 130001, NULL),
(26, 9, NULL, 130001, NULL),
(27, 9, 130001, NULL, NULL),
(28, 9, 130001, 130001, NULL),
(29, 10, NULL, 130001, NULL),
(30, 10, NULL, 130001, NULL),
(31, 15, 130001, 100024, NULL),
(32, 10, 130001, 130001, NULL),
(33, 12, NULL, 130001, NULL),
(34, NULL, NULL, 130001, NULL),
(35, NULL, 130001, NULL, NULL),
(36, NULL, 130001, NULL, NULL),
(37, NULL, 130001, NULL, NULL),
(38, NULL, NULL, 130001, NULL),
(39, NULL, NULL, 130001, NULL),
(40, NULL, NULL, 130001, NULL),
(41, NULL, 130001, NULL, NULL),
(42, NULL, 130001, NULL, NULL),
(43, NULL, NULL, 130001, NULL),
(44, NULL, 130001, NULL, NULL),
(45, NULL, 130001, NULL, NULL),
(46, 11, NULL, 130001, NULL),
(47, 11, 130001, 100024, NULL),
(48, 1, 130001, NULL, NULL),
(49, 23, 130001, 100020, NULL),
(50, 1, 100024, NULL, 100020),
(51, 1, NULL, 130001, NULL),
(52, 1, NULL, 100020, NULL);
