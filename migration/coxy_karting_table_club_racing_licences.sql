
-- --------------------------------------------------------

--
-- Table structure for table `club_racing_licences`
--

CREATE TABLE `club_racing_licences` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `licence_user_id` bigint(20) DEFAULT NULL,
  `licence_number` varchar(100) DEFAULT NULL COMMENT 'unique for each licence',
  `licence_expire_date` date DEFAULT NULL,
  `australian_citizen` int(2) DEFAULT NULL COMMENT '1="Yes","2"=>"No"',
  `gender` int(2) NOT NULL DEFAULT '1' COMMENT '1=male, 2 female',
  `venue_id` int(11) DEFAULT NULL,
  `venue` varchar(200) DEFAULT NULL,
  `club_licence_type` int(3) DEFAULT NULL,
  `previously_held_a_motor_racing` int(2) DEFAULT NULL COMMENT '1="Yes","2"=>"No"',
  `last_year_held` varchar(150) DEFAULT NULL,
  `previous_licence_no` varchar(150) DEFAULT NULL,
  `issuing_body` varchar(255) DEFAULT NULL,
  `blood_group` int(4) DEFAULT NULL,
  `tetanus_immunisation_date` varchar(100) DEFAULT NULL,
  `allergies` int(2) DEFAULT NULL COMMENT '1="Yes","2"=>"No"',
  `please_list` text,
  `psychiatric` int(2) DEFAULT NULL,
  `persistent` int(2) DEFAULT NULL,
  `heart_or_lung_disease` int(2) DEFAULT NULL,
  `cancer_diabetes` int(2) DEFAULT NULL,
  `other_significant_illness` int(2) DEFAULT NULL,
  `taken_any_medications` int(2) DEFAULT NULL,
  `hearing_impairment` int(2) DEFAULT NULL,
  `hearing_disorder` int(2) DEFAULT NULL,
  `eyesight_normal` int(2) DEFAULT NULL,
  `wear_spectacles` tinyint(2) DEFAULT NULL,
  `medical_examination` varchar(255) DEFAULT NULL,
  `full_details_answer` text,
  `name_of_club_organization_individual` varchar(255) DEFAULT NULL,
  `increase_personal_accident` int(3) DEFAULT NULL,
  `amount_increase_id` int(3) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `admin_approval` tinyint(2) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
