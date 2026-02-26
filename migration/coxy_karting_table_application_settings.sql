
-- --------------------------------------------------------

--
-- Table structure for table `application_settings`
--

CREATE TABLE `application_settings` (
  `id` int(11) NOT NULL,
  `super_admin_email` varchar(255) NOT NULL,
  `site_title` varchar(255) NOT NULL,
  `forget_password_email` varchar(100) NOT NULL,
  `paypal_email` varchar(100) NOT NULL,
  `rupee_dollor` float NOT NULL,
  `last_date_csv_pdf` datetime DEFAULT NULL,
  `dropbox_upload_file` bigint(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
