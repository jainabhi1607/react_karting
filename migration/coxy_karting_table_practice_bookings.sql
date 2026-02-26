
-- --------------------------------------------------------

--
-- Table structure for table `practice_bookings`
--

CREATE TABLE `practice_bookings` (
  `id` int(11) NOT NULL,
  `invoice_number` varchar(150) DEFAULT NULL,
  `invoice_number_numeric` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `practice_setting_id` int(11) DEFAULT NULL,
  `club_id` int(11) DEFAULT NULL,
  `class_management_id` int(11) DEFAULT NULL,
  `class_name` varchar(200) DEFAULT NULL,
  `practice_date` date DEFAULT NULL,
  `kart_number` varchar(200) DEFAULT NULL,
  `scrutineering` tinyint(1) DEFAULT NULL,
  `driver_apparel` tinyint(1) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `online_fee` float DEFAULT NULL,
  `payment_method` int(2) DEFAULT NULL,
  `stripe_payment_id` varchar(200) DEFAULT NULL,
  `stripe_refund_id` varchar(255) DEFAULT NULL,
  `refund_reason` varchar(255) DEFAULT NULL,
  `stripe_refund_date` datetime DEFAULT NULL,
  `rules_regulations` int(1) DEFAULT NULL,
  `ip_address` varchar(150) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `practice_bookings`
--

INSERT INTO `practice_bookings` (`id`, `invoice_number`, `invoice_number_numeric`, `user_id`, `practice_setting_id`, `club_id`, `class_management_id`, `class_name`, `practice_date`, `kart_number`, `scrutineering`, `driver_apparel`, `amount`, `online_fee`, `payment_method`, `stripe_payment_id`, `stripe_refund_id`, `refund_reason`, `stripe_refund_date`, `rules_regulations`, `ip_address`, `date_time`, `status`) VALUES
(1, 'MKP-100001', 100001, 11, 3, 1, 12, NULL, '2023-09-21', 'Kart567', 1, 1, 25.3, 2.3, 1, 'ch_3Nqq4uDUudBmH3d42vVqVsE3', NULL, NULL, NULL, 1, '110.235.229.102', '2023-09-16 04:25:56', 1),
(2, 'MKP-100002', 100002, 8, 3, 1, NULL, 'First', '2023-09-24', '8546', 1, 1, 25.3, 2.3, 1, 'ch_3NqqWYDUudBmH3d43NKXTLxt', NULL, NULL, NULL, 1, '110.235.229.102', '2023-09-16 04:54:31', 1),
(3, 'MKP-100003', 100003, 10, 3, 1, NULL, 'no', '2023-09-21', '67', 1, 1, 25.3, 2.3, 1, 'ch_3NqstNDUudBmH3d416MCzIcx', NULL, NULL, NULL, 1, '110.235.229.102', '2023-09-16 07:26:14', 1),
(4, 'MKP-100004', 100004, 14, 3, 1, 11, NULL, '2023-09-24', '99', 1, 1, 25.3, 2.3, 1, 'ch_3NquTfDUudBmH3d42T0CoIdO', NULL, NULL, NULL, 1, '103.87.58.44', '2023-09-16 09:07:48', 1),
(5, 'MKP-100005', 100005, 14, 3, 1, 12, NULL, '2023-10-01', '22', 1, 1, 25.3, 2.3, 1, 'ch_3NquUeDUudBmH3d41GXyUqO5', NULL, NULL, NULL, 1, '103.87.58.44', '2023-09-16 09:08:48', 1),
(6, 'MKP-100006', 100006, 18, 3, 1, NULL, 'Gold', '2023-09-24', '41', 1, 1, 38.5, 3.5, 1, 'ch_3NquozDUudBmH3d40ZDW8KI9', NULL, NULL, NULL, 1, '103.87.58.44', '2023-09-16 09:29:50', 1),
(7, 'MKP-100007', 100007, 2, NULL, NULL, NULL, '1', '2023-10-03', 'Kart567', 1, 1, 0, 0, NULL, '', NULL, NULL, NULL, 1, '127.0.0.1', '2023-09-23 07:23:26', 1),
(8, 'MKP-100008', 100008, 2, 3, 1, NULL, '1', '2023-10-28', 'Kart567', 1, 1, 23, 0, 2, '', NULL, NULL, NULL, 1, '127.0.0.1', '2023-10-27 06:01:30', 2),
(11, 'MKP-100009', 100009, 31, 3, 1, NULL, '1', '2024-01-28', '456487', 1, 1, 25.3, 2.3, 1, 'ch_3OZ3vvDUudBmH3d43z34vYk7', NULL, NULL, NULL, 1, '127.0.0.1', '2024-01-16 04:07:27', 1),
(12, 'MKP-100010', 100010, 2, 11, 2, NULL, '1', '2024-06-05', '412', 1, 1, 46, 0, 2, '', NULL, NULL, NULL, 1, '127.0.0.1', '2024-05-25 12:56:07', 2),
(13, 'MKP-100011', 100011, 2, 3, 1, NULL, '1', '2024-06-03', '42', 1, 1, 23, 0, 2, '', NULL, NULL, NULL, 1, '127.0.0.1', '2024-05-25 13:02:13', 2),
(14, 'MKP-100012', 100012, 13, 3, 1, 4, NULL, '2024-09-30', '1', 1, 1, 21, 0, 2, '', NULL, NULL, NULL, 1, '127.0.0.1', '2024-09-25 18:05:42', 2),
(15, 'MKP-100013', 100013, 13, 3, 1, 4, NULL, '2024-10-05', '22', 1, 1, 31, 0, 2, '', NULL, NULL, NULL, 1, '127.0.0.1', '2024-09-25 18:06:52', 2),
(16, 'MKP-100014', 100014, 2, 3, 1, 12, NULL, '2025-04-15', '412', 1, 1, 31, 0, 2, '', NULL, NULL, NULL, 1, '127.0.0.1', '2025-04-14 13:10:32', 2),
(17, 'MKP-100015', 100015, 2, 3, 1, 14, NULL, '2025-04-16', '7', 1, 1, 34.1, 3.1, 1, 'ch_3RDdSvDUudBmH3d42Zzo6Vzw', NULL, NULL, NULL, 1, '127.0.0.1', '2025-04-14 13:13:45', 1),
(18, 'MKP-100016', 100016, 2, 11, 2, 16, NULL, '2025-04-23', '88', 1, 1, 55.2, 9.2, 1, 'ch_3RDdUnDUudBmH3d40VLNMsWr', NULL, NULL, NULL, 1, '127.0.0.1', '2025-04-14 13:15:41', 1),
(19, 'MKP-100017', 100017, 23, 11, 2, NULL, 'test', '2025-08-27', '435', 1, 1, 46, 0, 2, '', NULL, NULL, NULL, 1, '127.0.0.1', '2025-08-26 15:26:44', 2),
(20, 'MKP-100018', 100018, 23, 3, 1, 6, NULL, '2025-12-25', '5', 1, 1, 31, 0, 2, '', NULL, NULL, NULL, 1, '127.0.0.1', '2025-12-22 20:08:39', 2);
