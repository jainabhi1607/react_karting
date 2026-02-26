
-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `referrer_link` varchar(255) DEFAULT NULL,
  `month_year` varchar(50) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
