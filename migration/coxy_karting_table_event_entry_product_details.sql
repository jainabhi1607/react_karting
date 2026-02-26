
-- --------------------------------------------------------

--
-- Table structure for table `event_entry_product_details`
--

CREATE TABLE `event_entry_product_details` (
  `id` bigint(30) NOT NULL,
  `event_entry_id` bigint(30) DEFAULT NULL,
  `event_product_id` bigint(20) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `stripe_refund_id` varchar(255) DEFAULT NULL,
  `cancellation_reason` longtext,
  `stripe_refund_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_entry_product_details`
--

INSERT INTO `event_entry_product_details` (`id`, `event_entry_id`, `event_product_id`, `price`, `unit_price`, `quantity`, `product_name`, `stripe_refund_id`, `cancellation_reason`, `stripe_refund_date_time`) VALUES
(1, 23, 1, 1.2, 1.2, 1, 'Friday Practice per kart', NULL, NULL, NULL),
(2, 23, 2, 1.4, 1.4, 1, 'Set of Slicks', NULL, NULL, NULL);
