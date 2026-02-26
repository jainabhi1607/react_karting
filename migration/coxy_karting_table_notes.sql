
-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `notes` text,
  `date_time` datetime DEFAULT NULL,
  `status` int(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
