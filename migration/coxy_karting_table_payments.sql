
-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) NOT NULL,
  `licence_number` varchar(100) DEFAULT NULL COMMENT 'unique for each licence',
  `licence_number_numeric` bigint(20) DEFAULT NULL,
  `licence_type` int(4) DEFAULT NULL COMMENT '1="Club Racing",2=""',
  `user_id` bigint(20) DEFAULT NULL,
  `yearly_licence_fee` float DEFAULT NULL,
  `application_fee` float DEFAULT NULL,
  `transaction_fee` float DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `grand_total` float DEFAULT NULL,
  `coupon_code` varchar(150) DEFAULT NULL,
  `licence_expire_date` date DEFAULT NULL,
  `payment_type` int(3) DEFAULT NULL COMMENT '1=Credit Card, 2 = Payment in Person',
  `admin_approval` int(3) DEFAULT NULL,
  `imported_data` int(3) DEFAULT '1' COMMENT '1=No, 2=Yes',
  `renew` int(3) DEFAULT NULL,
  `parent_payment_id` bigint(30) DEFAULT NULL COMMENT 'In case of renew, it contain the first licence number for which the renew is done.',
  `licence_status` int(3) DEFAULT '1' COMMENT '1=valid, 2= invalid',
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
