
-- --------------------------------------------------------

--
-- Table structure for table `event_classes`
--

CREATE TABLE `event_classes` (
  `id` bigint(30) NOT NULL,
  `karting_event_id` bigint(30) DEFAULT NULL,
  `class_management_id` int(11) DEFAULT NULL,
  `max_entries` int(11) DEFAULT NULL,
  `fee` float DEFAULT NULL,
  `multi_event_fee` float DEFAULT NULL,
  `price_details` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_classes`
--

INSERT INTO `event_classes` (`id`, `karting_event_id`, `class_management_id`, `max_entries`, `fee`, `multi_event_fee`, `price_details`) VALUES
(1, 1, 9, 15, 5, 4, NULL),
(2, 1, 11, 20, 2, 3, NULL),
(3, 1, 1, 50, 10, 13, NULL),
(4, 2, 9, NULL, 5, 6, NULL),
(5, 2, 11, NULL, 4, 6, NULL),
(6, 2, 14, NULL, 10, 11, NULL),
(7, 2, 1, NULL, 15, 13, NULL),
(8, 3, 37, NULL, 40, 50, NULL),
(9, 3, 177, NULL, 20, 15, NULL),
(10, 3, 195, NULL, 30, 40, NULL),
(11, 3, 30, NULL, 25, 28, NULL),
(12, 4, 141, NULL, 45, 6, NULL),
(13, 4, 105, NULL, 22, 33, NULL),
(14, 4, 92, NULL, 11, 22, NULL),
(15, 5, 43, 66, 7, 7, NULL),
(16, 13, 43, NULL, 7, 8, NULL),
(17, 13, 79, NULL, 7, 8, NULL),
(18, 13, 34, NULL, 4, 5, NULL),
(19, 13, 196, 5, 7, 8, NULL),
(20, 13, 194, 0, 7, 8, NULL),
(21, 13, 182, 0, 5, 6, NULL),
(22, 13, 80, NULL, 6, 7, NULL),
(23, 14, 51, 6, 7, 8, NULL),
(24, 14, 53, 8, 2, 3, NULL),
(25, 14, 84, 4, 5, 6, NULL),
(26, 14, 80, 5, 6, 7, NULL),
(27, 14, 79, 7, 2, 3, NULL),
(28, 14, 182, 9, 7, 8, NULL),
(29, 15, 79, 6, 7, 8, NULL),
(30, 15, 182, 9, 20, 7, NULL),
(31, 15, 80, 55, 12, 14, NULL),
(32, 16, 82, NULL, 7, 8, NULL),
(33, 16, 85, NULL, 3, 4, NULL),
(34, 16, 80, NULL, 9, 7, NULL),
(35, 17, 142, 6, 7, 8, NULL),
(36, 17, 141, 5, 8, 9, NULL),
(37, 17, 145, 44, 5, 9, NULL),
(38, 17, 124, 50, 88, 77, NULL),
(39, 17, 131, 20, 22, 24, NULL),
(40, 18, 197, 88, 9, 7, NULL),
(41, 18, 199, 55, 6, 8, NULL),
(42, 18, 198, 55, 20, 30, NULL),
(43, 18, 200, 20, 10, 13, NULL),
(44, 19, 200, 45, 4, 5, NULL),
(45, 19, 197, 20, 25, 24, NULL),
(46, 20, 51, 100, 5, 4, NULL),
(47, 20, 82, 100, 6, 5, NULL),
(48, 20, 200, 20, 7, 8, NULL),
(49, 21, 142, 5, 6, 4, NULL),
(50, 21, 141, 8, 5, 4, NULL),
(51, 21, 130, 55, 6, 7, NULL),
(52, 21, 123, 22, 5, 4, NULL),
(53, 22, 128, 5, 6, 2, NULL),
(54, 22, 103, 6, 5, 4, NULL),
(55, 22, 125, 9, 8, 7, NULL),
(56, 23, 141, 5, 2, 5, NULL),
(57, 23, 146, 55, 2, 3, NULL),
(58, 23, 147, 20, 2, 4, NULL),
(59, 24, 42, NULL, 600, 400, NULL),
(60, 24, 194, NULL, 500, 600, NULL);
