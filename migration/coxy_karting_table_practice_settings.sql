
-- --------------------------------------------------------

--
-- Table structure for table `practice_settings`
--

CREATE TABLE `practice_settings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `club_id` int(11) DEFAULT NULL,
  `club_member_only` tinyint(1) DEFAULT NULL,
  `member_junior_fee` float DEFAULT NULL,
  `non_member_junior_fee` float DEFAULT NULL,
  `member_senior_fee` float DEFAULT NULL,
  `non_member_senior_fee` float DEFAULT NULL,
  `member_novice_rookie_fee` float DEFAULT NULL,
  `non_member_novice_rookie_fee` float DEFAULT NULL,
  `admin_email` varchar(150) DEFAULT NULL,
  `trun_off_payment_day` int(1) DEFAULT NULL,
  `user_confirmation_subject` varchar(255) DEFAULT NULL,
  `user_confirmation_content` longtext,
  `admin_booking_subject` varchar(255) DEFAULT NULL,
  `admin_booking_content` longtext,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `practice_settings`
--

INSERT INTO `practice_settings` (`id`, `user_id`, `club_id`, `club_member_only`, `member_junior_fee`, `non_member_junior_fee`, `member_senior_fee`, `non_member_senior_fee`, `member_novice_rookie_fee`, `non_member_novice_rookie_fee`, `admin_email`, `trun_off_payment_day`, `user_confirmation_subject`, `user_confirmation_content`, `admin_booking_subject`, `admin_booking_content`, `date_time`) VALUES
(3, 4949, 1, 0, 28, 30, 21, 31, 33, 35, 'jainabhi1607@gmail.com', 0, 'Practice Booking Confirmed - Sterling', '<p>Your practice booking is confirmed at Sterling on&nbsp;{practice-date}</p>', 'You have a new Practice Booking - Sterling', '<p>You have a new practice booking on&nbsp;{practice-date} for&nbsp;{user-name} at&nbsp;{club-name}</p>\r\n\r\n<p>Sterling</p>', NULL),
(5, NULL, 3, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, 4, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 11, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, 13, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, 21, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, 24, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 33, 2, 0, 56, 67, 46, 48, 67, 87, 'info@sterlinginfotech.com', 0, 'Practice Booking Confirmed - Coburg Club', '<p>Your practice booking is confirmed at Coburg Club on&nbsp;{practice-date}</p>', 'You have a new Practice Booking - Coburg Club', '<p>You have a new practice booking on&nbsp;{practice-date} for&nbsp;{user-name} at&nbsp;{club-name}</p>\r\n\r\n<p>Coburg Club</p>', NULL);
