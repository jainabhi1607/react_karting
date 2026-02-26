
-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `id` int(11) NOT NULL,
  `club_name` varchar(255) DEFAULT NULL,
  `club_logo` varchar(255) DEFAULT NULL,
  `phone_number` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `abn` varchar(100) DEFAULT NULL,
  `from_email` varchar(255) DEFAULT NULL,
  `hide_club` int(1) DEFAULT NULL,
  `hide_practice_bookings` int(1) DEFAULT NULL,
  `stripe_publishable_key` varchar(255) DEFAULT NULL,
  `stripe_secret_key` text,
  `stripe_secret_encrypt` text COMMENT 'Not used only for track',
  `online_booking_fee` float DEFAULT NULL,
  `terms_conditions` longtext,
  `date_time` datetime DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `club_name`, `club_logo`, `phone_number`, `address`, `email`, `abn`, `from_email`, `hide_club`, `hide_practice_bookings`, `stripe_publishable_key`, `stripe_secret_key`, `stripe_secret_encrypt`, `online_booking_fee`, `terms_conditions`, `date_time`, `status`) VALUES
(1, 'Sterling', 'logo.png', '9874569874', 'Maharani Farm', 'info@sterlinginfotech.com', 'ABN567835', 'info@sterlinginfotech.com', 0, 0, 'pk_test_578WanK7SzdvJTw5jt0FCdmQ', 'ZzZTTzZqbTBBb0JsVEEzdm9Dd0lrMkhnSzk3elFWMkpKTHhVM1ZWTWZoeDBNY1pYbnJtUjJyeTVDbDkvTDlrOA==', 'c2tfdGVzdF95OThHSWt0aDBHclhMbTVwaGFDam5HMjk=', 10, 'I hereby apply to become a member of the Sterling Club. In the event of my/our admission as a member, I/we agree to be bound by the Sterling Infotech code of conduct.', '2023-09-15 14:22:47', 1),
(2, 'Coburg Club', '0.png', '456145421', 'Austine', 'info@sterlinginfotech.com', '7854564', '', NULL, NULL, 'pk_test_578WanK7SzdvJTw5jt0FCdmQ', 'ZzZTTzZqbTBBb0JsVEEzdm9Dd0lrMkhnSzk3elFWMkpKTHhVM1ZWTWZoeDBNY1pYbnJtUjJyeTVDbDkvTDlrOA==', 'c2tfdGVzdF95OThHSWt0aDBHclhMbTVwaGFDam5HMjk=', 20, 'I hereby apply to become a member of the Coburg Club. In the event of my/our admission as a member, I/we agree to be bound by the Coburg  code of conduct.', '2023-09-15 17:21:40', 1);
