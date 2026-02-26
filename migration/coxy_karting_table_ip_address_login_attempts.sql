
-- --------------------------------------------------------

--
-- Table structure for table `ip_address_login_attempts`
--

CREATE TABLE `ip_address_login_attempts` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(70) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `logs` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ip_address_login_attempts`
--

INSERT INTO `ip_address_login_attempts` (`id`, `ip_address`, `date_time`, `logs`) VALUES
(16, '127.0.0.2', '2024-05-10 09:28:11', 'admin');
