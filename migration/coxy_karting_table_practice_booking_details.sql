
-- --------------------------------------------------------

--
-- Table structure for table `practice_booking_details`
--

CREATE TABLE `practice_booking_details` (
  `id` int(11) NOT NULL,
  `practice_booking_id` int(11) DEFAULT NULL,
  `email_content` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `practice_booking_details`
--

INSERT INTO `practice_booking_details` (`id`, `practice_booking_id`, `email_content`) VALUES
(1, 12, ''),
(2, 13, '<p>Your practice booking is confirmed at Sterling on&nbsp;03-06-2024</p>'),
(3, 14, '<p>Your practice booking is confirmed at Sterling on&nbsp;30-09-2024</p>'),
(4, 15, '<p>Your practice booking is confirmed at Sterling on&nbsp;05-10-2024</p>'),
(5, 16, '<p>Your practice booking is confirmed at Sterling on&nbsp;15-04-2025</p>'),
(6, 17, '<p>Your practice booking is confirmed at Sterling on&nbsp;16-04-2025</p>'),
(7, 18, '<p>Your practice booking is confirmed at Coburg Club on&nbsp;23-04-2025</p>'),
(8, 19, '<p>Your practice booking is confirmed at Coburg Club on&nbsp;27-08-2025</p>'),
(9, 20, '<p>Your practice booking is confirmed at Sterling on&nbsp;25-12-2025</p>');
