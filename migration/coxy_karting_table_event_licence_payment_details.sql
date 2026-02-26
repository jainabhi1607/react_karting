
-- --------------------------------------------------------

--
-- Table structure for table `event_licence_payment_details`
--

CREATE TABLE `event_licence_payment_details` (
  `id` int(11) NOT NULL,
  `licence_payment_id` int(11) DEFAULT NULL,
  `event_entry_id` int(11) DEFAULT NULL,
  `practice_booking_id` int(11) DEFAULT NULL,
  `licence_type` int(2) DEFAULT NULL,
  `event_licence_number` varchar(150) DEFAULT NULL,
  `licence_expiry_date` date DEFAULT NULL,
  `event_licence_status` int(2) DEFAULT NULL COMMENT '1=Active, 2 = used, 3= expired'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event_licence_payment_details`
--

INSERT INTO `event_licence_payment_details` (`id`, `licence_payment_id`, `event_entry_id`, `practice_booking_id`, `licence_type`, `event_licence_number`, `licence_expiry_date`, `event_licence_status`) VALUES
(2, 46, 12, NULL, 4, '120001', '2024-02-29', 2),
(3, 51, 11, NULL, 4, '120002', '2024-02-02', 2),
(5, 53, NULL, NULL, 4, '120003', '2024-01-29', 1),
(6, 16, NULL, NULL, NULL, NULL, NULL, 3),
(7, 28, NULL, NULL, NULL, NULL, NULL, 1),
(8, 13, NULL, NULL, NULL, NULL, NULL, 2),
(9, 40, NULL, NULL, 4, '120004', '2024-05-15', 2),
(10, 55, 14, 11, 4, '120005', '2024-02-10', 2),
(11, 57, NULL, NULL, 3, '120006', '2024-02-11', 1),
(12, 59, 16, NULL, 4, '120007', '2024-02-11', 2),
(13, 60, 15, NULL, 4, '120008', '2024-02-12', 2),
(14, 80, NULL, NULL, 4, '120009', '2029-05-02', 1),
(15, 88, 37, NULL, 4, '120010', '2026-12-27', 1),
(16, 90, NULL, NULL, 4, '120011', '2026-01-05', 1),
(17, 91, NULL, NULL, 4, '120012', '2026-01-06', 1),
(18, 96, NULL, NULL, 4, '120013', '2026-02-17', 9),
(19, 98, NULL, NULL, 4, '120014', '2026-02-17', 1),
(20, 99, NULL, NULL, 4, '120015', '2026-02-17', 1),
(21, 100, NULL, NULL, 4, '120016', '2026-02-18', 9),
(22, 101, NULL, NULL, 4, '120017', '2026-02-20', 9);
