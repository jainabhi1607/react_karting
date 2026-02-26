
-- --------------------------------------------------------

--
-- Table structure for table `reporting_engines`
--

CREATE TABLE `reporting_engines` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` bigint(30) DEFAULT NULL,
  `number_of_record` int(11) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `search_data` longtext,
  `date_time` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
