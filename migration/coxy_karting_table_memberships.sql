
-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` int(11) NOT NULL,
  `club_id` bigint(20) DEFAULT NULL,
  `membership_name` varchar(255) DEFAULT NULL,
  `membership_type` int(3) DEFAULT NULL,
  `membership_price` float DEFAULT NULL,
  `membership_end_date` int(3) DEFAULT NULL,
  `membership_end_month` int(3) DEFAULT NULL,
  `family_membership_product` int(2) DEFAULT '0',
  `membership_description` longtext,
  `date_time` datetime DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `club_id`, `membership_name`, `membership_type`, `membership_price`, `membership_end_date`, `membership_end_month`, `family_membership_product`, `membership_description`, `date_time`, `status`) VALUES
(1, 2, 'Senior Membership', 1, 80, NULL, NULL, 2, 'Senior Membership Product', '2023-09-15 17:44:00', 1),
(2, 2, 'Junior Membership', 3, 50, 3, 3, 2, 'Junior Membership Product', '2023-09-15 17:44:34', 1),
(3, 2, 'Life Membership', 1, 100, NULL, NULL, 2, 'Life Membership Product...', '2023-09-15 17:45:14', 1),
(4, 1, 'Bronze', 1, 20, NULL, NULL, 2, 'Bronze Membership.', '2023-09-16 09:17:33', 1),
(5, 1, 'Silver', 3, 15, 8, 6, 1, 'Silver Membership', '2023-09-16 09:18:06', 1),
(6, 1, 'Gold', 1, 30, NULL, NULL, 2, 'Gold Membership', '2023-09-16 09:18:31', 1),
(7, 2, 'Club Family Membership', 1, 50, NULL, NULL, 1, 'Family Membership Product', '2023-12-11 08:13:09', 1),
(8, 2, 'Family Membership', 3, 55, 4, 2, 1, 'Family Membership Product', '2024-01-09 15:29:49', 1),
(9, 1, 'Family Membership 16 May', 3, 100, 3, 5, 1, 'testing', '2025-05-16 14:50:24', 1);
