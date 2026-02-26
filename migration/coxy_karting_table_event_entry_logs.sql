
-- --------------------------------------------------------

--
-- Table structure for table `event_entry_logs`
--

CREATE TABLE `event_entry_logs` (
  `id` int(11) NOT NULL,
  `event_entry_id` int(11) DEFAULT NULL,
  `logs` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_entry_logs`
--

INSERT INTO `event_entry_logs` (`id`, `event_entry_id`, `logs`) VALUES
(1, 40, '{\"form_data\":{\"event_class_id\":[\"2\"],\"EventEntryClassDetails\":{\"kart_number\":{\"1\":\"\",\"2\":\"4\",\"3\":\"\"},\"transponder_number\":{\"1\":\"\",\"2\":\"5\",\"3\":\"\"},\"engine_type\":{\"1\":\"\",\"2\":\"7\",\"3\":\"\"},\"kart_type\":{\"1\":\"\",\"2\":\"5\",\"3\":\"\"},\"engine_number\":{\"1\":\"\",\"2\":\"57\",\"3\":\"\"},\"chassis_number\":{\"1\":\"\",\"2\":\"7\",\"3\":\"\"},\"sponsers\":{\"1\":\"\",\"2\":\"8\",\"3\":\"\"},\"scrutineering_check\":{\"2\":\"1\"}},\"DryTyreBarcodes\":{\"tyre1\":{\"1\":\"\",\"2\":\"9\",\"3\":\"\"},\"tyre2\":{\"1\":\"\",\"2\":\"8\",\"3\":\"\"},\"tyre3\":{\"1\":\"\",\"2\":\"4\",\"3\":\"\"},\"tyre4\":{\"1\":\"\",\"2\":\"1\",\"3\":\"\"},\"reserve\":{\"1\":\"\",\"2\":\"56\",\"3\":\"\"}},\"WetWeatherTyreBarcodes\":{\"tyre1\":{\"1\":\"\",\"2\":\"1\",\"3\":\"\"},\"tyre2\":{\"1\":\"\",\"2\":\"5\",\"3\":\"\"},\"tyre3\":{\"1\":\"\",\"2\":\"6\",\"3\":\"\"},\"tyre4\":{\"1\":\"\",\"2\":\"11\",\"3\":\"\"},\"reserve\":{\"1\":\"\",\"2\":\"\",\"3\":\"\"}},\"EventEntryDetails\":{\"shade_structure\":\"1\",\"event_entry_id\":40,\"ip_address\":\"127.0.0.1\",\"price_details\":\"a:1:{i:0;a:2:{s:10:\\\"class_name\\\";s:27:\\\"RKA Pro Clubman Super Heavy\\\";s:6:\\\"amount\\\";d:2;}}\"},\"licence_application_declaration\":\"1\",\"payment_method\":\"2\",\"Payment\":{\"full_name\":\"\",\"token\":\"\"},\"actual_amount\":2,\"invoice_number\":\"MKP-100142\",\"invoice_number_numeric\":100142,\"karting_event_id\":1,\"user_id\":22,\"amount\":2,\"online_booking_fee\":0,\"date_time\":\"2025-12-02 23:41:20\",\"status\":2,\"stripe_id\":\"\",\"licence_grade\":7,\"licence_id\":5},\"endorsement_check\":{\"status\":2},\"user_payment_check\":null,\"licence_payment_check\":{\"id\":56,\"licence_id\":4,\"user_id\":22,\"grade_id\":7,\"karting_event_id\":null,\"invoice_number\":\"MKP-100081\",\"invoice_number_numeric\":100081,\"total_amount\":239.580000000000012505552149377763271331787109375,\"voucher_code\":\"\",\"voucher_discount\":null,\"online_booking_fee\":4.5800000000000000710542735760100185871124267578125,\"amount\":239.580000000000012505552149377763271331787109375,\"added_by\":null,\"kids_api_transaction_code\":null,\"kart_start_licence_payment_id\":null,\"renewal_date\":\"2026-05-07\",\"renew\":null,\"parent_payment_id\":null,\"stripe_id\":\"ch_3OZT2qDUudBmH3d43D0KRXvx\",\"date_time\":\"2024-01-17T06:56:16+11:00\",\"status\":1},\"endorsement\":2}');
