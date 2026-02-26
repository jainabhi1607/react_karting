
-- --------------------------------------------------------

--
-- Table structure for table `karting_events`
--

CREATE TABLE `karting_events` (
  `id` bigint(30) NOT NULL,
  `user_id` bigint(30) DEFAULT NULL COMMENT 'admin id, added this event',
  `club_id` bigint(30) DEFAULT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `event_type` int(3) DEFAULT NULL,
  `endurance_event` int(2) DEFAULT NULL,
  `additional_driver_fee` float DEFAULT NULL,
  `max_entries` int(11) DEFAULT NULL,
  `set_min_drivers` int(3) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_duration` int(2) DEFAULT NULL,
  `event_end_date` date DEFAULT NULL,
  `endorsement` int(2) DEFAULT NULL,
  `team_names` longtext,
  `payment_on_the_day_available` int(2) DEFAULT NULL,
  `event_extra_activities` varchar(255) DEFAULT NULL,
  `hide_event` int(2) DEFAULT NULL,
  `user_id_clerk_of_course` bigint(30) DEFAULT NULL,
  `user_id_steward` bigint(30) DEFAULT NULL,
  `user_id_scrutineer` bigint(30) DEFAULT NULL,
  `enable_scrutineering` tinyint(2) DEFAULT NULL,
  `enable_engine_chassis_number` int(1) DEFAULT NULL,
  `enable_tyre_barcodes` int(1) DEFAULT NULL,
  `event_location` varchar(255) DEFAULT NULL,
  `kart_start_event` int(1) DEFAULT NULL,
  `teams_event` int(1) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `status` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karting_events`
--

INSERT INTO `karting_events` (`id`, `user_id`, `club_id`, `event_name`, `event_type`, `endurance_event`, `additional_driver_fee`, `max_entries`, `set_min_drivers`, `event_date`, `event_duration`, `event_end_date`, `endorsement`, `team_names`, `payment_on_the_day_available`, `event_extra_activities`, `hide_event`, `user_id_clerk_of_course`, `user_id_steward`, `user_id_scrutineer`, `enable_scrutineering`, `enable_engine_chassis_number`, `enable_tyre_barcodes`, `event_location`, `kart_start_event`, `teams_event`, `date_time`, `status`) VALUES
(1, NULL, 1, 'Sterling Club Day', 1, 2, NULL, NULL, NULL, '2026-10-30', 2, '2026-10-31', NULL, '', 1, NULL, 0, NULL, NULL, NULL, 1, 1, 1, '', NULL, 0, '2023-09-15 14:25:49', 1),
(2, NULL, 1, 'Ster Endurance Event', 1, 1, 30, 150, NULL, '2026-11-27', 2, '2026-11-30', NULL, 'Players', 1, NULL, 0, NULL, NULL, NULL, 1, 0, 1, '', NULL, 0, '2023-09-15 17:10:47', 1),
(11, NULL, 2, 'dfg', 1, 2, NULL, NULL, NULL, '2026-02-15', 1, NULL, NULL, '', 1, NULL, 0, NULL, NULL, NULL, 0, 1, 1, '', NULL, NULL, '2023-12-22 03:17:04', 1),
(12, NULL, 2, 'dfg', 1, 2, NULL, NULL, NULL, '2026-02-15', 1, NULL, NULL, '', 1, NULL, 1, NULL, NULL, NULL, 0, 1, 1, '', NULL, NULL, '2023-12-22 03:17:41', 1),
(13, NULL, 1, 'Check checkbox', 1, 1, 50, 500, NULL, '2026-06-13', 1, NULL, NULL, 'test', 1, NULL, 0, NULL, NULL, NULL, 1, 0, 0, '', NULL, NULL, '2023-12-27 03:47:11', 1),
(14, NULL, 1, '21th March Event', 1, 2, NULL, NULL, NULL, '2026-02-14', 1, NULL, NULL, '', 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, '', NULL, 1, '2024-01-04 11:54:51', 1),
(15, NULL, 2, '5th Feb Event', 1, 2, NULL, NULL, NULL, '2026-03-14', 1, NULL, NULL, '', 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, '', NULL, NULL, '2024-01-04 11:56:05', 1),
(16, NULL, 1, 'Design Scrutineering Design', 1, 2, 5, 500, NULL, '2026-06-19', 1, NULL, NULL, 'test', 1, NULL, 0, NULL, NULL, NULL, 1, 1, 1, '', NULL, NULL, '2024-03-04 11:01:15', 1),
(17, NULL, 1, 'DREW TEST 5', 2, 2, NULL, NULL, NULL, '2026-07-10', 1, NULL, NULL, '', 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, 'test', 1, NULL, '2024-04-05 07:37:13', 1),
(18, NULL, 1, 'Kart Start Event', 1, 2, NULL, NULL, NULL, '2026-05-23', 1, NULL, NULL, '', 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, '', 1, NULL, '2024-04-07 10:19:25', 1),
(19, NULL, 1, 'Kart Start Event -1', 1, 2, NULL, NULL, NULL, '2026-05-23', 1, NULL, NULL, '', 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, '', 1, NULL, '2024-04-07 11:04:53', 1),
(20, NULL, 2, '7th June 2025', 1, 2, NULL, NULL, NULL, '2026-06-07', 1, NULL, NULL, '', 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, '', NULL, 1, '2024-10-16 22:03:28', 1),
(21, NULL, 2, '17th Jan 2025', 2, 2, NULL, NULL, NULL, '2026-05-06', 1, NULL, NULL, '', 1, NULL, 0, NULL, NULL, NULL, 0, 1, 0, '', NULL, 1, '2025-01-17 23:37:21', 1),
(22, NULL, 1, '27th Aug 2025', 2, 2, NULL, NULL, NULL, '2026-01-24', 1, NULL, NULL, '', 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, '', NULL, 1, '2025-01-22 14:45:15', 1),
(23, NULL, 2, 'Official Event 25', 2, 2, NULL, NULL, NULL, '2026-03-04', 1, NULL, NULL, '', 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0, '', NULL, 0, '2025-09-02 18:41:57', 1),
(24, NULL, 2, 'ERC Round 1 - Grenfell', 1, 1, 0, 40, NULL, '2026-02-21', 2, '2026-02-22', NULL, '2		DejaTwo\r\n3		Five Lights Racing\r\n4              Promove Motorsport #1 \r\n5		Claw Racing\r\n6              Wright Karts\r\n7		Ignite Racing\r\n8              Snookered\r\n9		CNE Racing\r\n10            Those Other Bastards\r\n11		Those Bastards\r\n12            Unbeatables\r\n14            Bitch Energy\r\n15		Stratco Racing\r\n16		A.C.E. Racing\r\n17            Kartini Racing\r\n19            La Mafia\r\n20            Experiencing Deja Two\r\n21		Loose Nuts Racing\r\n22            KartGPT\r\n23		Alpha Clearing\r\n24		Polaris Marine Racing 2\r\n25            Grass Cutters\r\n27		AP Racing\r\n29            Deja Two / Apex Racing\r\n31		Scooda\r\n32		Alpha Clearing 2\r\n33		Five Lights Racing 2\r\n34		Mediocre Racing\r\n36            1X Racing / Maverick \r\n37            Underworld Racing\r\n38            OKC Young Lions Racing\r\n39            Scaff it up\r\n43		Kart Blanche\r\n45		Topstep Motorsport\r\n46		Karting Solutions / Maverick 3\r\n49		DSR\r\n50		Coast Pave Racing\r\n53            Project 5Five3\r\n55            Five Lights Racing\r\n57	 	Karting Solutions / Maverick 3\r\n58            Maverick Kart\r\n59		Karting Solutions / Maverick 2\r\n62            BBA Motorsport\r\n63            Ignite Racing\r\n64		M Metal Racing\r\n67		Chuqy Motorsport\r\n69		Red Dog Racing\r\n70		Karting Solutions / Maverick\r\n71            EDTWARP\r\n72            Wildslide Motorsport\r\n77		Ignite Racing\r\n86		Ignite Racing\r\n88            PCR Australia\r\n93            Anthony\r\n94            Thunder Motorsport\r\n96		NTR\r\n98            Ignite Racing\r\n99		Hoofhearted\r\n110          Gas Up Racing\r\n111          90% Done Racing\r\n149          Wynnum Haulage Motorsports\r\n180          Are We There Yet\r\n199          Hoofhearted\r\n232		East Coast Veg 2\r\n246		APEX Racing\r\n249		APEX\r\n285          285 Racing\r\n272          GSR Venette\r\n333          ARK\r\n338          Scaff It Up Racing\r\n349          Torque It Up Racing\r\n420		Purple Haze\r\n444          Promove Motorsport #2\r\n502          GSR Byrd Racing\r\n510          Full Send Motorsport\r\n529		Madcalf Racing\r\n551          Sector 1 Sim Racing\r\n555		Claw Racing\r\n638          Yeah The Girls\r\n676		The Kartworks 676\r\n707          Question Racing\r\n777          Ignite Racing', 1, NULL, 0, NULL, NULL, NULL, 1, 0, 0, '', NULL, 0, '2026-02-05 14:45:45', 1);
