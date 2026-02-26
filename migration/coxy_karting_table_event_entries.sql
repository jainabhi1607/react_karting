
-- --------------------------------------------------------

--
-- Table structure for table `event_entries`
--

CREATE TABLE `event_entries` (
  `id` bigint(30) NOT NULL,
  `parent_id` bigint(30) DEFAULT NULL,
  `invoice_number` varchar(150) DEFAULT NULL,
  `invoice_number_numeric` bigint(30) DEFAULT NULL,
  `karting_event_id` bigint(30) DEFAULT NULL,
  `user_id` bigint(30) DEFAULT NULL,
  `event_class_id` int(11) DEFAULT NULL,
  `licence_id` int(5) DEFAULT NULL,
  `licence_grade` int(11) DEFAULT NULL,
  `endorsement` int(2) DEFAULT NULL,
  `driver_type` int(2) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `classes_total_amount` float DEFAULT NULL,
  `additional_driver_price` float DEFAULT NULL,
  `actual_amount` float DEFAULT NULL,
  `voucher_code` varchar(150) DEFAULT NULL,
  `voucher_discount` float DEFAULT NULL,
  `event_entry_fee` float DEFAULT NULL,
  `online_booking_fee` float DEFAULT NULL,
  `payment_method` int(2) DEFAULT NULL,
  `check_in` int(2) DEFAULT NULL COMMENT '1=At Track, 2= Check In',
  `stripe_id` varchar(255) DEFAULT NULL,
  `stripe_refund_id` varchar(255) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `status` int(2) DEFAULT NULL COMMENT '1= Payment Online\r\n2= Payment on the Day\r\n5= Partially Cancelled\r\n4= Fully Cancelled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_entries`
--

INSERT INTO `event_entries` (`id`, `parent_id`, `invoice_number`, `invoice_number_numeric`, `karting_event_id`, `user_id`, `event_class_id`, `licence_id`, `licence_grade`, `endorsement`, `driver_type`, `amount`, `classes_total_amount`, `additional_driver_price`, `actual_amount`, `voucher_code`, `voucher_discount`, `event_entry_fee`, `online_booking_fee`, `payment_method`, `check_in`, `stripe_id`, `stripe_refund_id`, `date_time`, `status`) VALUES
(1, NULL, 'MKP-100015', 100015, 1, 11, NULL, 4, 7, 2, NULL, 5.5, 5, NULL, 5, NULL, NULL, NULL, 0.5, 1, NULL, 'ch_3Nqq2GDUudBmH3d41JBodxnK', NULL, '2023-09-16 04:23:12', 1),
(2, NULL, 'MKP-100016', 100016, 2, 11, NULL, 4, 7, 1, 1, 44, 10, NULL, 40, NULL, NULL, NULL, 4, 1, NULL, 'ch_3Nqq49DUudBmH3d40U614cv4', NULL, '2023-09-16 04:25:10', 1),
(3, NULL, 'MKP-100027', 100027, 1, 8, NULL, 5, 7, 3, NULL, 5.5, 5, NULL, 5, NULL, NULL, NULL, 0.5, 1, NULL, 'ch_3NqqUgDUudBmH3d41XAyLpnY', NULL, '2023-09-16 04:52:35', 1),
(4, NULL, 'MKP-100028', 100028, 2, 8, NULL, 5, 7, 4, 1, 38.5, 5, NULL, 35, NULL, NULL, NULL, 3.5, 1, NULL, 'ch_3NqqVrDUudBmH3d41hvleyRh', NULL, '2023-09-16 04:53:47', 1),
(5, NULL, 'MKP-100036', 100036, 1, 10, NULL, 5, 7, 3, NULL, 5.5, 5, NULL, 5, NULL, NULL, NULL, 0.5, 1, NULL, 'ch_3NqssfDUudBmH3d42ORAJlNq', NULL, '2023-09-16 07:25:29', 1),
(6, NULL, 'MKP-100042', 100042, 1, 14, NULL, 4, 7, 1, NULL, 11, 10, NULL, 10, NULL, NULL, NULL, 1, 1, NULL, 'ch_3NqtYYDUudBmH3d428AKONUO', NULL, '2023-09-16 08:08:47', 1),
(7, NULL, 'MKP-100053', 100053, 1, 24, NULL, 4, 7, 3, NULL, 11, 10, NULL, 10, NULL, NULL, NULL, 1, 1, NULL, 'ch_3Nqv0uDUudBmH3d41Pfu68WE', NULL, '2023-09-16 09:42:09', 1),
(9, NULL, 'MKP-100064', 100064, 13, 31, NULL, 4, 7, 3, 1, 62.7, 7, NULL, 57, NULL, NULL, NULL, 5.7, 1, NULL, 'ch_3ORo8VDUudBmH3d43I04nRy0', NULL, '2023-12-27 03:50:27', 1),
(10, NULL, 'MKP-100075', 100075, 13, 21, NULL, 5, 7, 1, 1, 60.5, 5, NULL, 55, NULL, NULL, NULL, 5.5, 1, NULL, 'ch_3OUpStDUudBmH3d40ao5j7rB', NULL, '2024-01-04 11:51:59', 1),
(11, NULL, 'MKP-100076', 100076, 15, 21, NULL, 5, 7, 1, NULL, 9.6, 8, NULL, 8, NULL, NULL, NULL, 1.6, 1, 1, 'ch_3OUpsMDUudBmH3d40nixgwlJ', 're_3OUpsMDUudBmH3d40Letkgy8', '2024-01-04 12:18:17', 4),
(12, NULL, 'MKP-100077', 100077, 14, 21, NULL, 5, 7, 3, NULL, 7.7, 7, NULL, 7, NULL, NULL, NULL, 0.7, 1, 1, 'ch_3OUq0KDUudBmH3d42LJm1ReB', NULL, '2024-01-04 12:26:32', 1),
(15, NULL, 'MKP-100088', 100088, 14, 26, NULL, 5, 7, 1, NULL, 6.6, 6, NULL, 6, NULL, NULL, NULL, 0.6, 1, NULL, 'ch_3OZvDsDUudBmH3d41ftizwTT', NULL, '2024-01-18 13:01:32', 1),
(17, NULL, 'MKP-100092', 100092, 13, 19, NULL, 4, 7, NULL, 1, 60.5, 5, NULL, 55, NULL, NULL, NULL, 5.5, 1, NULL, 'ch_3OmbmYDUudBmH3d40Ja2OgaV', NULL, '2024-02-22 12:53:46', 1),
(20, NULL, 'MKP-100097', 100097, 13, 9, NULL, 4, 7, NULL, 1, 62.7, 7, NULL, 57, NULL, NULL, NULL, 5.7, 1, NULL, 'ch_3OmcNeDUudBmH3d40HaJV2in', NULL, '2024-02-22 13:32:05', 1),
(21, NULL, 'MKP-100098', 100098, 14, 9, NULL, 4, 7, NULL, NULL, 2.2, 2, NULL, 2, NULL, NULL, NULL, 0.2, 1, NULL, 'ch_3Oo6MHDUudBmH3d420SJtaYi', NULL, '2024-02-26 15:44:50', 1),
(22, NULL, 'MKP-100099', 100099, 1, 9, NULL, 4, 7, NULL, NULL, 2.2, 2, NULL, 2, NULL, NULL, NULL, 0.2, 1, 1, 'ch_3Oo6i5DUudBmH3d436zmBOnZ', NULL, '2024-02-26 16:07:21', 1),
(23, NULL, 'MKP-100100', 100100, 15, 9, NULL, 4, 7, NULL, NULL, 9.6, 8, NULL, 8, NULL, NULL, NULL, 1.6, 1, NULL, 'ch_3Oo6kDDUudBmH3d42oxo1KJh', NULL, '2024-02-26 16:09:34', 1),
(24, NULL, 'MKP-100103', 100103, 1, 25, NULL, 4, 7, NULL, NULL, 2.2, 2, NULL, 2, NULL, NULL, NULL, 0.2, 1, NULL, 'ch_3Oo6sdDUudBmH3d40JxEBC6c', NULL, '2024-02-26 16:18:15', 1),
(25, NULL, 'MKP-100104', 100104, 15, 25, NULL, 4, 7, NULL, NULL, 8, 8, NULL, 8, NULL, NULL, NULL, 0, 2, NULL, '', NULL, '2024-02-26 16:21:21', 2),
(26, NULL, 'MKP-100108', 100108, 14, 25, NULL, 4, 7, NULL, NULL, 2, 2, NULL, 2, NULL, NULL, NULL, 0, 2, NULL, '', NULL, '2024-03-21 09:40:35', 2),
(29, NULL, 'MKP-100117', 100117, 18, 27, NULL, NULL, NULL, NULL, NULL, 6.6, 6, NULL, 6, NULL, NULL, NULL, 0.6, 1, NULL, 'ch_3P78pyDUudBmH3d40IwpzylX', NULL, '2024-04-19 04:14:09', 1),
(30, NULL, 'MKP-100119', 100119, 19, 27, NULL, 20, NULL, NULL, NULL, 4.4, 4, NULL, 4, NULL, NULL, NULL, 0.4, 1, NULL, 'ch_3P78unDUudBmH3d43EEG6eiM', NULL, '2024-04-19 04:19:08', 1),
(31, NULL, 'MKP-100120', 100120, 18, 17, NULL, 20, NULL, NULL, NULL, 11, 10, NULL, 10, NULL, NULL, NULL, 1, 1, NULL, 'ch_3P7G34DUudBmH3d40VDut9Mg', NULL, '2024-04-19 11:56:11', 1),
(32, NULL, 'MKP-100122', 100122, 19, 17, NULL, 20, NULL, NULL, NULL, 4, 4, NULL, 4, NULL, NULL, NULL, 0, 2, NULL, '', NULL, '2024-04-19 13:11:35', 2),
(33, NULL, 'MKP-100123', 100123, 16, 8, NULL, 4, 7, NULL, NULL, 9, 9, NULL, 9, NULL, NULL, NULL, 0, 2, NULL, '', NULL, '2024-04-26 07:31:56', 2),
(34, NULL, 'MKP-100125', 100125, 14, 31, NULL, 5, 7, NULL, NULL, 7, 7, NULL, 7, NULL, NULL, NULL, 0, 2, NULL, '', NULL, '2024-05-17 14:45:32', 2),
(35, NULL, 'MKP-100127', 100127, 17, 12, NULL, 20, NULL, NULL, NULL, 5, 5, NULL, 5, NULL, NULL, NULL, 0, 2, NULL, '', NULL, '2024-07-05 13:30:28', 2),
(36, NULL, 'MKP-100137', 100137, 1, 2, NULL, 4, 4, NULL, NULL, 5, 5, NULL, 5, NULL, NULL, NULL, 0, 2, NULL, '', NULL, '2025-10-08 23:25:49', 2),
(38, NULL, 'MKP-100140', 100140, 2, 22, NULL, 5, 7, NULL, 1, 34, 4, NULL, 34, NULL, NULL, NULL, 0, 2, NULL, '', NULL, '2025-12-02 22:59:20', 2),
(40, NULL, 'MKP-100142', 100142, 1, 22, NULL, 5, 7, NULL, NULL, 2, 2, NULL, 2, NULL, NULL, NULL, 0, 2, NULL, '', NULL, '2025-12-02 23:41:20', 2),
(42, NULL, 'MKP-100147', 100147, 2, 23, NULL, 4, 7, 2, 1, 35, 5, NULL, 35, NULL, NULL, NULL, 0, 2, NULL, '', NULL, '2025-12-18 00:05:15', 2),
(46, NULL, 'MKP-100160', 100160, 18, 19, NULL, 4, 7, NULL, NULL, 9.9, 9, NULL, 9, NULL, NULL, NULL, 0.9, 1, NULL, 'ch_3SxLq7DUudBmH3d40hJ8Rvv4', NULL, '2026-02-05 17:14:55', 1),
(52, NULL, 'MKP-100161', 100161, 24, 19, NULL, 4, 7, NULL, 2, 0, 0, NULL, 0, NULL, NULL, NULL, 0, 1, NULL, '', NULL, '2026-02-06 18:49:01', 1);
