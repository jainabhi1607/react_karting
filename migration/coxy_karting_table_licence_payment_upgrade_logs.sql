
-- --------------------------------------------------------

--
-- Table structure for table `licence_payment_upgrade_logs`
--

CREATE TABLE `licence_payment_upgrade_logs` (
  `id` bigint(30) NOT NULL,
  `licence_payment_id` bigint(30) DEFAULT NULL,
  `old_licence_id` int(3) DEFAULT NULL,
  `new_licence_id` int(3) DEFAULT NULL,
  `user_id` bigint(30) DEFAULT NULL,
  `invoice_number` varchar(150) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
