
-- --------------------------------------------------------

--
-- Table structure for table `user_club_memberships`
--

CREATE TABLE `user_club_memberships` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `club_id` int(11) DEFAULT NULL,
  `membership_id` int(11) DEFAULT NULL,
  `parent_id` bigint(30) DEFAULT NULL COMMENT 'Its used for family member products.',
  `membership_type` int(3) DEFAULT NULL,
  `invoice_number` varchar(150) DEFAULT NULL,
  `invoice_number_numeric` bigint(30) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `online_booking_fee` float DEFAULT NULL,
  `membership_start_date` date DEFAULT NULL,
  `renewal_date` date DEFAULT NULL,
  `stripe_id` varchar(255) DEFAULT NULL,
  `manual_added` int(1) DEFAULT NULL COMMENT '1 = yes',
  `renew` int(2) DEFAULT NULL,
  `parent_payment_id` bigint(30) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `status` int(2) DEFAULT NULL COMMENT '1= Active,\r\n3= Expired\r\n7= Renewed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_club_memberships`
--

INSERT INTO `user_club_memberships` (`id`, `user_id`, `club_id`, `membership_id`, `parent_id`, `membership_type`, `invoice_number`, `invoice_number_numeric`, `amount`, `online_booking_fee`, `membership_start_date`, `renewal_date`, `stripe_id`, `manual_added`, `renew`, `parent_payment_id`, `date_time`, `status`) VALUES
(1, 2, 2, 2, NULL, 3, 'MKP-100003', 100003, 60, 10, '2023-09-15', '2024-11-02', 'ch_3Nqg5cDUudBmH3d43E3P6fVC', NULL, NULL, NULL, '2023-09-15 17:46:01', 5),
(2, 11, 2, 3, NULL, 1, 'MKP-100009', 100009, 120, 20, '2023-09-16', '2024-09-16', 'ch_3NqpU8DUudBmH3d43VPwhDGp', NULL, NULL, NULL, '2023-09-16 03:47:57', 1),
(3, 6, 2, 2, NULL, 3, 'MKP-100017', 100017, 60, 10, '2023-09-16', '2024-03-03', 'ch_3NqqEUDUudBmH3d43U7O2huc', NULL, NULL, NULL, '2023-09-16 04:35:51', 1),
(4, 6, 2, 1, NULL, 1, 'MKP-100018', 100018, 96, 16, '2023-09-16', '2024-09-16', 'ch_3NqqEzDUudBmH3d40E5VKA7n', NULL, NULL, NULL, '2023-09-16 04:36:22', 1),
(5, 8, 2, 1, NULL, 1, 'MKP-100022', 100022, 96, 16, '2023-09-16', '2024-09-16', 'ch_3NqqQdDUudBmH3d42a1aR1dY', NULL, NULL, NULL, '2023-09-16 04:48:24', 1),
(6, 8, 2, 2, NULL, 3, 'MKP-100023', 100023, 60, 10, '2023-09-16', '2024-03-03', 'ch_3NqqQwDUudBmH3d40wwbEDbK', NULL, NULL, NULL, '2023-09-16 04:48:43', 1),
(7, 8, 2, 3, NULL, 1, 'MKP-100024', 100024, 120, 20, '2023-09-16', '2024-09-16', 'ch_3NqqRGDUudBmH3d409U01AKR', NULL, NULL, NULL, '2023-09-16 04:49:03', 1),
(8, 10, 2, 1, NULL, 1, 'MKP-100030', 100030, 96, 16, '2023-09-16', '2024-09-16', 'ch_3NqslADUudBmH3d42i1YbBHi', NULL, NULL, NULL, '2023-09-16 07:17:44', 1),
(9, 10, 2, 2, NULL, 3, 'MKP-100031', 100031, 60, 10, '2023-09-16', '2024-03-03', 'ch_3NqslhDUudBmH3d417lIcRsJ', NULL, NULL, NULL, '2023-09-16 07:18:18', 1),
(10, 14, 2, 1, NULL, 1, 'MKP-100037', 100037, 96, 16, '2023-09-16', '2024-09-16', 'ch_3NqtRRDUudBmH3d43ij4NRUD', NULL, NULL, NULL, '2023-09-16 08:01:26', 1),
(11, 14, 2, 2, NULL, 3, 'MKP-100038', 100038, 60, 10, '2023-09-16', '2024-03-03', 'ch_3NqtRxDUudBmH3d42b1GXHLE', NULL, NULL, NULL, '2023-09-16 08:01:58', 1),
(12, 18, 1, 4, NULL, 1, 'MKP-100043', 100043, 22, 2, '2023-09-16', '2024-09-16', 'ch_3NqufcDUudBmH3d407686rs1', NULL, NULL, NULL, '2023-09-16 09:20:09', 1),
(13, 24, 1, 5, NULL, 3, 'MKP-100048', 100048, 16.5, 1.5, '2023-09-16', '2024-06-08', 'ch_3Nquw9DUudBmH3d40kwKjVLp', NULL, NULL, NULL, '2023-09-16 09:37:14', 1),
(14, 32, 2, 1, NULL, 1, 'MKP-100057', 100057, 96, 16, '2023-11-24', '2024-11-24', 'ch_3OFwMFDUudBmH3d42yqLdqr8', NULL, NULL, NULL, '2023-11-24 10:11:35', 1),
(15, 2, 2, 7, NULL, 1, 'MKP-100061', 100061, 60, 10, '2023-12-11', '2023-12-31', 'ch_3OM4jQDUudBmH3d439IhNPjm', NULL, 1, NULL, '2023-12-11 08:20:52', 1),
(16, 20, 2, 7, 15, 1, 'MKP-100061', 100061, 60, 10, '2023-12-11', '2024-12-31', 'ch_3OM4jQDUudBmH3d439IhNPjm', NULL, 1, NULL, '2023-12-11 08:20:52', 7),
(17, 24, 2, 7, NULL, 1, 'MKP-100061', 100061, 60, 10, '2023-12-11', '2024-12-31', 'ch_3OM4jQDUudBmH3d439IhNPjm', NULL, NULL, NULL, '2023-12-11 08:20:52', 1),
(18, 36, 2, 7, NULL, 1, 'MKP-100061', 100061, 60, 10, '2023-12-11', '2024-12-31', 'ch_3OM4jQDUudBmH3d439IhNPjm', NULL, NULL, NULL, '2023-12-11 08:20:52', 1),
(19, 31, 2, 1, NULL, 1, 'MKP-100062', 100062, 96, 16, '2023-12-27', '2024-12-27', 'ch_3ORo6YDUudBmH3d431XUiNCi', NULL, 1, NULL, '2023-12-27 03:48:25', 1),
(20, 22, 2, 7, NULL, 1, 'MKP-100065', 100065, 60, 10, '2023-12-27', '2024-12-27', 'ch_3ORpUqDUudBmH3d43X1TGufr', NULL, NULL, NULL, '2023-12-27 05:17:36', 1),
(21, 22, 1, 4, NULL, 1, 'MKP-100066', 100066, 22, 2, '2023-12-27', '2024-12-27', 'ch_3ORqWwDUudBmH3d40yj66Zax', NULL, 1, NULL, '2023-12-27 06:23:49', 1),
(22, 21, 1, 6, NULL, 1, 'MKP-100068', 100068, 33, 3, '2024-01-02', '2025-01-02', 'ch_3OU937DUudBmH3d41YNgQRiV', NULL, NULL, NULL, '2024-01-02 14:34:33', 1),
(23, 23, 2, 7, 15, 1, 'MKP-100061', 100061, 60, 10, '2023-12-11', '2024-12-31', 'ch_3OM4jQDUudBmH3d439IhNPjm', NULL, 1, NULL, '2024-01-09 15:37:08', 7),
(24, 16, 2, 3, NULL, 1, 'MKP-100082', 100082, 120, 20, '2024-01-17', '2025-01-17', 'ch_3OZT4cDUudBmH3d43Zm28Q01', NULL, 1, NULL, '2024-01-17 06:58:05', 1),
(25, 26, 2, 3, NULL, 1, 'MKP-100086', 100086, 120, 20, '2024-01-18', '2025-01-18', 'ch_3OZuwNDUudBmH3d43GtCEWeg', NULL, NULL, NULL, '2024-01-18 12:43:27', 1),
(26, 19, 1, 5, NULL, 3, 'MKP-100090', 100090, 16.5, 1.5, '2024-02-22', '2030-06-08', 'ch_3OmXHwDUudBmH3d42JLVdvjK', NULL, NULL, NULL, '2024-02-22 08:05:52', 1),
(27, 9, 2, 2, NULL, 3, 'MKP-100094', 100094, 60, 10, '2024-02-22', '2024-03-03', 'ch_3OmcHbDUudBmH3d42HdSh12C', NULL, NULL, NULL, '2024-02-22 13:25:50', 1),
(28, 9, 1, 4, NULL, 1, 'MKP-100096', 100096, 22, 2, '2024-02-22', '2025-02-22', 'ch_3OmcJRDUudBmH3d43hC5Mv0N', NULL, NULL, NULL, '2024-02-22 13:27:44', 1),
(29, 25, 2, 1, NULL, 1, 'MKP-100101', 100101, 96, 16, '2024-02-26', '2025-02-26', 'ch_3Oo6r0DUudBmH3d400ojAlJN', NULL, NULL, NULL, '2024-02-26 16:16:35', 1),
(30, 2, 2, 2, NULL, 3, 'MKP-100105', 100105, 60, 10, '2024-03-12', '2024-04-09', 'ch_3OtVEkDUudBmH3d42cKRaWd2', NULL, 1, NULL, '2024-03-12 13:19:24', 1),
(31, 6, 2, 8, NULL, 3, 'MKP-100106', 100106, 55, 11, '2024-03-17', '2025-02-04', NULL, 1, NULL, NULL, '2024-03-17 07:23:13', 1),
(32, 2, 2, 7, NULL, 1, 'MKP-100107', 100107, 60, 10, '2024-03-18', '2025-03-18', 'ch_3OvbJKDUudBmH3d42xjUEO7Q', NULL, NULL, 15, '2024-03-18 08:12:46', 1),
(33, 20, 2, 7, 32, 1, 'MKP-100107', 100107, 60, 10, '2024-03-18', '2025-03-18', 'ch_3OvbJKDUudBmH3d42xjUEO7Q', NULL, NULL, 16, '2024-03-18 08:12:46', 1),
(34, 23, 2, 7, 32, 1, 'MKP-100107', 100107, 60, 10, '2024-03-18', '2025-03-18', 'ch_3OvbJKDUudBmH3d42xjUEO7Q', NULL, 1, 23, '2024-03-18 08:12:46', 1),
(35, 13, 2, 1, NULL, 1, 'MKP-100129', 100129, 96, 16, '2024-09-25', '2025-09-25', 'ch_3Q2q8eDUudBmH3d40CCAEJLk', NULL, NULL, NULL, '2024-09-25 17:59:55', 1),
(36, 2, 2, 2, NULL, 3, 'MKP-100131', 100131, 60, 10, '2025-04-09', '2026-03-03', 'ch_3RBy3fDUudBmH3d4311RAWFn', NULL, NULL, 30, '2025-04-09 22:48:47', 1),
(42, 2, 1, 9, NULL, 3, 'MKP-100132', 100132, 0, 0, '2025-05-16', '2026-05-03', NULL, NULL, NULL, NULL, '2025-05-16 15:05:30', 1),
(43, 23, 2, 7, NULL, 1, 'MKP-100136', 100136, 60, 10, '2025-08-26', '2026-08-26', 'ch_3S0FP3DUudBmH3d438UGSmeV', NULL, NULL, 34, '2025-08-26 15:26:41', 1),
(44, 22, 1, 4, NULL, 1, 'MKP-100141', 100141, 22, 2, '2025-12-02', '2026-12-02', 'ch_3SZssrDUudBmH3d42D3R619c', NULL, NULL, 21, '2025-12-02 23:40:45', 1),
(45, 31, 2, 1, NULL, 1, 'MKP-100144', 100144, 96, 16, '2025-12-11', '2026-12-11', 'ch_3Sd0wvDUudBmH3d43F3Dp39y', NULL, NULL, 19, '2025-12-11 14:53:56', 1),
(47, 16, 2, 3, NULL, 1, 'MKP-100153', 100153, 120, 20, '2026-01-23', '2027-01-23', 'ch_3SscRMDUudBmH3d40uo3vm6v', NULL, NULL, 24, '2026-01-23 15:57:47', 1);
