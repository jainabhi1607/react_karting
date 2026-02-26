
-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `document_type` int(4) DEFAULT NULL COMMENT '1=Document, 2=Nation Certificate ',
  `user_id` bigint(30) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
