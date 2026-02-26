
-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint(20) NOT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `price_detail` text,
  `coupon_code_id` int(11) DEFAULT NULL,
  `discount_value` float DEFAULT NULL,
  `ip_address` varchar(60) DEFAULT NULL,
  `stripe_payment_id` varchar(255) DEFAULT NULL,
  `stripe_response` longtext,
  `added_user_id` int(11) DEFAULT NULL COMMENT 'The licence is added by admin',
  `form_date_encrypted` longtext,
  `download_pdf_csv` int(3) DEFAULT NULL,
  `licence_report_id` bigint(20) DEFAULT NULL,
  `cron_completed` int(3) DEFAULT NULL,
  `historical` int(3) DEFAULT NULL,
  `update_expiry_date` int(3) DEFAULT '0',
  `dismiss_notice` int(3) DEFAULT NULL COMMENT '1=dismiss'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
