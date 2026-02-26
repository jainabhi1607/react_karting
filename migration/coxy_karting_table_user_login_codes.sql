
-- --------------------------------------------------------

--
-- Table structure for table `user_login_codes`
--

CREATE TABLE `user_login_codes` (
  `id` int(11) NOT NULL,
  `user_id` bigint(30) DEFAULT NULL,
  `otp` int(7) DEFAULT NULL,
  `expiry_time` datetime DEFAULT NULL,
  `status` int(2) DEFAULT NULL COMMENT '1 = Available, 2 =used, 3 =expired',
  `remember_me` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
