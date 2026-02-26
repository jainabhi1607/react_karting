
-- --------------------------------------------------------

--
-- Table structure for table `licence_reports`
--

CREATE TABLE `licence_reports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_id_arr` text,
  `report_generate_date` date DEFAULT NULL,
  `batch_number` bigint(20) DEFAULT NULL,
  `sent_date` datetime DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
