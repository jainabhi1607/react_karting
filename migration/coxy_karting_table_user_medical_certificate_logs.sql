
-- --------------------------------------------------------

--
-- Table structure for table `user_medical_certificate_logs`
--

CREATE TABLE `user_medical_certificate_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `medical_certificate` varchar(255) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_medical_certificate_logs`
--

INSERT INTO `user_medical_certificate_logs` (`id`, `user_id`, `medical_certificate`, `ip_address`, `date_time`) VALUES
(1, 2, '8de12ac8d5e6a65bf522e6bcb7b6388e.png', '110.235.229.47', '2023-09-15 17:30:35'),
(2, 11, '59456d3074b02e71a6dce93916aef4d6.jpg', '110.235.229.102', '2023-09-16 03:47:07'),
(3, 3, 'ada6ae51658a334e6c6fbaac1cedeb07.pdf', '127.0.0.1', '2023-10-09 03:03:47'),
(4, 2, 'cfb00a899fe7453c3d9e6ff57078b09c.pdf', '127.0.0.1', '2023-10-09 04:27:43'),
(5, 31, 'ea27eaabb80b850c0ff88cc7eb9a8747.pdf', '127.0.0.1', '2025-12-11 16:32:20'),
(6, 16, '9555d50ed738ce0310ce62874efe7418.pdf', '127.0.0.1', '2026-01-05 19:34:33'),
(7, 17, '4c84082ff3b8e0f95cacfeb68c3493f9.pdf', '127.0.0.1', '2026-01-06 16:37:19'),
(8, 17, '6f5cb18a4b5f892a2ff2cbdfd0d27893.pdf', '127.0.0.1', '2026-01-08 15:23:53'),
(9, 12, '34a3909b91954a36d7d9f5617be18a8c.pdf', '127.0.0.1', '2026-01-13 14:17:13');
