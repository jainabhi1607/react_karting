
-- --------------------------------------------------------

--
-- Table structure for table `coupon_codes`
--

CREATE TABLE `coupon_codes` (
  `id` int(11) NOT NULL,
  `user_id` bigint(30) DEFAULT NULL,
  `coupon_code_type` int(3) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `coupon_code` varchar(150) DEFAULT NULL,
  `coupon_type` int(3) DEFAULT NULL COMMENT '1=flat, 2=percentage',
  `discount_value` float DEFAULT NULL,
  `coupon_code_amount` float DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `usage_limit` int(11) DEFAULT '0',
  `no_of_time_used` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `cron_day_licence` int(3) DEFAULT NULL COMMENT '1= It is generated using cron for day licence',
  `date_time` datetime DEFAULT NULL,
  `status` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
