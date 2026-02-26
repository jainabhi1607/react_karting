
-- --------------------------------------------------------

--
-- Table structure for table `user_medical_details`
--

CREATE TABLE `user_medical_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `neurological_disorder` int(2) DEFAULT NULL,
  `cancer_kidney_liver_disorder` int(2) DEFAULT NULL,
  `lung_disease` int(2) DEFAULT NULL,
  `diabetes` int(2) DEFAULT NULL,
  `blood_pressure` int(2) DEFAULT NULL,
  `psychological_psychiactric_disorders` int(2) DEFAULT NULL,
  `loss_of_consciousness` int(2) DEFAULT NULL,
  `allergy_to_medicine` longtext,
  `other_significant_medical` longtext,
  `any_surgical_or_medical_conditions` int(2) DEFAULT NULL,
  `taking_prescribed_medication` int(2) DEFAULT NULL,
  `ear_disorder` int(2) DEFAULT NULL,
  `hearing_imparied` int(2) DEFAULT NULL,
  `wear_spectacles_contact_lenses` int(2) DEFAULT NULL,
  `suffer_other_conditions` int(2) DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_medical_details`
--

INSERT INTO `user_medical_details` (`id`, `user_id`, `neurological_disorder`, `cancer_kidney_liver_disorder`, `lung_disease`, `diabetes`, `blood_pressure`, `psychological_psychiactric_disorders`, `loss_of_consciousness`, `allergy_to_medicine`, `other_significant_medical`, `any_surgical_or_medical_conditions`, `taking_prescribed_medication`, `ear_disorder`, `hearing_imparied`, `wear_spectacles_contact_lenses`, `suffer_other_conditions`, `last_update`) VALUES
(1, 2, 1, 2, 1, 2, 2, 2, 2, 'No', 'No', 2, 2, 2, 2, 2, 2, NULL),
(2, 11, 1, 1, 1, 1, 1, 1, 1, 'No', 'No', 1, 1, 1, 1, 1, 1, NULL),
(3, 6, 1, 2, 2, 2, 2, 2, 2, 'No', 'No', 2, 2, 1, 2, 2, 2, NULL),
(4, 8, 1, 1, 2, 2, 2, 2, 1, 'No', 'No', 2, 1, 1, 2, 1, 2, NULL),
(5, 10, 1, 2, 2, 2, 1, 1, 1, 'No', 'No', 1, 1, 1, 1, 2, 2, NULL),
(6, 14, 1, 2, 2, 2, 2, 2, 2, 'No', 'No', 2, 2, 2, 2, 2, 2, NULL),
(7, 18, 2, 2, 2, 2, 2, 2, 2, 'No', 'No', 2, 2, 2, 2, 2, 2, NULL),
(8, 24, 2, 2, 2, 2, 2, 2, 2, 'No', 'No', 2, 2, 2, 2, 2, 2, NULL),
(9, 32, 2, 2, 2, 2, 2, 2, 2, 'No', 'No', 2, 2, 2, 2, 2, 2, NULL),
(10, 31, 1, 1, 2, 2, 2, 2, 2, 'No', 'No', 2, 2, 2, 2, 2, 2, NULL),
(11, 21, 2, 2, 2, 2, 2, 2, 2, 'No', 'No', 2, 2, 2, 2, 2, 2, NULL),
(12, 22, 2, 2, 2, 2, 2, 2, 2, 'No', 'No', 2, 2, 2, 2, 2, 2, NULL),
(13, 16, 2, 1, 1, 2, 2, 2, 2, 'No', 'No', 2, 2, 2, 2, 2, 2, '2026-01-26 16:23:28'),
(14, 26, 2, 2, 2, 2, 2, 2, 2, 'No', 'No', 2, 2, 2, 2, 2, 2, NULL),
(15, 19, 2, 2, 2, 2, 2, 2, 2, 'No', 'No', 2, 2, 2, 2, 2, 2, NULL),
(16, 9, 2, 2, 2, 1, 2, 2, 2, 'No', 'No', 2, 2, 2, 2, 2, 2, NULL),
(17, 25, 2, 2, 2, 2, 2, 2, 2, 'No', 'No', 2, 2, 2, 2, 2, 2, NULL),
(19, 27, 1, 2, 2, 2, 2, 2, 2, 'No', 'No', 2, 2, 2, 2, 2, 2, NULL),
(20, 17, 2, 1, 1, 2, 1, 2, 2, 'No', 'No', 1, 2, 2, 1, 2, 2, '2026-01-08 15:23:53'),
(21, 15, 2, 2, 2, 2, 2, 2, 2, 'No', 'No', 2, 2, 2, 2, 2, 2, NULL),
(22, 13, 2, 2, 2, 2, 2, 2, 2, 'No', 'No', 2, 2, 2, 2, 2, 2, NULL),
(23, 23, 2, 2, 2, 2, 2, 2, 2, 'No', 'No', 2, 2, 2, 2, 2, 2, NULL),
(24, 12, 2, 2, 2, 2, 2, 2, 1, 'No', 'No', 2, 2, 2, 2, 1, 1, '2026-01-13 18:34:14');
