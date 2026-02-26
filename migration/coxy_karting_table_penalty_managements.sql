
-- --------------------------------------------------------

--
-- Table structure for table `penalty_managements`
--

CREATE TABLE `penalty_managements` (
  `id` int(11) NOT NULL,
  `penalty_type` int(11) DEFAULT NULL,
  `penalty_name` varchar(255) DEFAULT NULL,
  `panelty_rule` varchar(255) DEFAULT NULL,
  `minimum_recommended_penalty` varchar(255) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penalty_managements`
--

INSERT INTO `penalty_managements` (`id`, `penalty_type`, `penalty_name`, `panelty_rule`, `minimum_recommended_penalty`, `date_time`, `status`) VALUES
(22, 9, 'Start Procedure infringement', 'S.3.6', '+10 second time penalty or Start Rear of Field', '2021-07-24 11:25:46', 1),
(23, 9, 'Race Receiver – ignore Official  directives', 'S.5.4 f)', 'Start/Restart Rear of Field', '2021-07-24 11:26:06', 1),
(24, 9, 'Flags Yellow. Failure to slow  and signal appropriately', 'S.4.1 c)', 'Start/Restart Rear of Field', '2021-07-24 11:26:40', 1),
(25, 9, 'Driving Standard: Careless', 'M.4.2 a)', '+5 second time penalty or Start/Restart Rear of  Field', '2021-07-24 11:27:02', 1),
(26, 7, 'Weight Infringement', 'T.1.5', 'A three (3) lap computer penalty for every one  (1) kilogram, or part thereof, underweight.', '2021-07-24 11:27:30', 1),
(27, 7, 'Unauthorized self recovery of  Kart during Racing', '4E.9.7 e)', '10 lap penalty', '2021-07-24 11:27:55', 1),
(28, 7, 'Start procedure infringement  (Jump start)', 'M.2.20 c)', '15 seconds added to the first pit stop', '2021-07-24 11:28:16', 1),
(29, 7, 'Radio communication. System not secure', '4E.7.1 a)', 'Mechanical flag. Return to pits to rectify issue', '2021-07-24 11:28:35', 1),
(30, 7, 'Radio communication – access  officials radio channel(s)', '4E.7.1 c)', '10 lap penalty', '2021-07-24 11:28:51', 1),
(31, 7, 'Pit Lane. Working on Kart  outside of the regulations', '4E.8.3 d)', 'Drive Thru penalty', '2021-07-24 11:29:06', 1),
(32, 7, 'Pit Lane – Tools/equipment left in', '4E.8.3 d)', '1st team offence warning. <br>Further team breach. Drive Thru penalty.', '2021-07-24 11:29:59', 1),
(33, 7, 'Pit Lane. Tools used in an area outside of Regulations', '4E.8.3 d)', '5 lap penalty', '2021-07-24 11:30:23', 1),
(34, 7, 'Pit Lane. Lubing of chain outside designated area', '4E.8.3 d)', 'Drive Thru penalty', '2021-07-24 11:30:46', 1),
(35, 7, 'Pit Lane – Kart within, when exit  gate closes for race start', '4E.9.2 b)', 'Kart will start race from Pit Lane', '2021-07-24 11:31:04', 1),
(36, 7, 'Pit Lane. Fuel bay queue jump', '4E.9.5 j)', 'Drive Thru penalty', '2021-07-24 11:31:28', 1),
(37, 7, 'Pit Lane. Exceed 15 km/h  speed limit', '4E.8.3 c)', '1st team offence. Drive Thru penalty<br>2nd team offence. Stop Go 30 second penalty<br> 3rd team offence – Stop Go 60 second penalty<br> 4th team offence. Stop Go 60 second penalty plus two (2) lap computer penalty', '2021-07-24 11:32:28', 1),
(38, 7, 'Pit Lane. Dangerous speeding', '4E.8.3 c)', 'Penalty at the discretion of the Clerk of Course', '2021-07-24 11:33:08', 1),
(39, 7, 'Kart weights. Loose or unsafe', '4E.6.2 a)', 'Mechanical flag. Return to pits to rectify issue', '2021-07-24 11:33:32', 1),
(40, 7, 'Flags Yellow. Failure to  maintain position', 'M.3.3 g)', 'Drive Thru penalty', '2021-07-24 11:36:32', 1);
