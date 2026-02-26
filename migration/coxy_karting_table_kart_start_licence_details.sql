
-- --------------------------------------------------------

--
-- Table structure for table `kart_start_licence_details`
--

CREATE TABLE `kart_start_licence_details` (
  `id` int(11) NOT NULL,
  `licence_payment_id` int(11) DEFAULT NULL,
  `neurological_disorder` int(1) DEFAULT NULL,
  `cancer_kidney` int(1) DEFAULT NULL,
  `lung_disease` int(1) DEFAULT NULL,
  `diabetes` int(1) DEFAULT NULL,
  `blood_pressure` int(1) DEFAULT NULL,
  `psychological_disorders` int(1) DEFAULT NULL,
  `loss_of_consciousness` int(1) DEFAULT NULL,
  `allergy_to_medicine` varchar(255) DEFAULT NULL,
  `other_significant_medical` varchar(255) DEFAULT NULL,
  `surgical_medical_conditions` int(1) DEFAULT NULL,
  `prescribed_medication` int(1) DEFAULT NULL,
  `ear_disorder` int(1) DEFAULT NULL,
  `hearing_imparied` int(1) DEFAULT NULL,
  `wear_spectacles` int(1) DEFAULT NULL,
  `suffer_from_other_conditions` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kart_start_licence_details`
--

INSERT INTO `kart_start_licence_details` (`id`, `licence_payment_id`, `neurological_disorder`, `cancer_kidney`, `lung_disease`, `diabetes`, `blood_pressure`, `psychological_disorders`, `loss_of_consciousness`, `allergy_to_medicine`, `other_significant_medical`, `surgical_medical_conditions`, `prescribed_medication`, `ear_disorder`, `hearing_imparied`, `wear_spectacles`, `suffer_from_other_conditions`) VALUES
(1, 64, 1, 2, 2, 1, 1, 2, 1, 'tel', 'yes', 2, 1, 2, 2, 2, 2),
(2, 65, 2, 2, 2, 2, 2, 2, 2, 'tel', 'yes', 1, 2, 2, 2, 2, 2),
(3, 66, 2, 1, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 75, 2, NULL, 2, 2, 2, NULL, 2, 'No', 'No', NULL, NULL, 1, 1, NULL, NULL),
(5, 76, 1, NULL, 2, 1, 2, NULL, 2, 'No', 'No', NULL, NULL, 2, 2, NULL, NULL),
(6, 77, 1, NULL, 2, 2, 2, NULL, 2, 'No', 'No', NULL, NULL, 2, 2, NULL, NULL),
(7, 78, 1, NULL, 2, 2, 2, NULL, 2, 'No', 'No', NULL, NULL, 2, 2, NULL, NULL),
(8, 79, 2, NULL, 2, NULL, 1, NULL, 2, 'No', 'No', NULL, NULL, 2, 2, NULL, NULL),
(9, 81, 1, NULL, 2, 1, 2, NULL, 2, 'No', 'No', NULL, NULL, 2, 2, NULL, NULL),
(10, 93, 1, NULL, 2, 2, 2, NULL, 2, 'No', 'No', NULL, NULL, 2, 2, NULL, NULL),
(11, 102, 2, NULL, 2, 2, 2, NULL, 1, 'No', 'No', NULL, NULL, 2, 2, NULL, NULL),
(12, 103, 2, NULL, 2, 2, 2, NULL, 1, 'No', 'No', NULL, NULL, 2, 2, NULL, NULL),
(13, 104, 2, NULL, 2, 2, 2, NULL, 1, 'No', 'No', NULL, NULL, 2, 2, NULL, NULL),
(14, 105, 2, NULL, 2, 2, 2, NULL, 1, 'No', 'No', NULL, NULL, 2, 2, NULL, NULL);
