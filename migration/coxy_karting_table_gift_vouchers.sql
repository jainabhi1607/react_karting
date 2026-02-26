
-- --------------------------------------------------------

--
-- Table structure for table `gift_vouchers`
--

CREATE TABLE `gift_vouchers` (
  `id` int(11) NOT NULL,
  `coupon_code_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `recipient_special_note` text,
  `recipient_email` varchar(255) DEFAULT NULL,
  `purchaser_name` varchar(255) DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
