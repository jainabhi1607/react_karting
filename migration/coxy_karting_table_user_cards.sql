
-- --------------------------------------------------------

--
-- Table structure for table `user_cards`
--

CREATE TABLE `user_cards` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `stripe_customer_id` varchar(200) DEFAULT NULL,
  `stripe_customer_response` longtext,
  `date_time` datetime DEFAULT NULL,
  `status` int(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
