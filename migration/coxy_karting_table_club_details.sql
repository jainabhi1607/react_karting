
-- --------------------------------------------------------

--
-- Table structure for table `club_details`
--

CREATE TABLE `club_details` (
  `id` int(11) NOT NULL,
  `club_id` int(11) DEFAULT NULL,
  `stripe_publishable_key` varchar(255) DEFAULT NULL,
  `stripe_secret_key` varchar(255) DEFAULT NULL,
  `terms_conditions` longtext,
  `invoice_footer_text` longtext,
  `membership_status_pending_enable` int(2) DEFAULT NULL,
  `email_subject` varchar(255) DEFAULT NULL,
  `email_content` longtext,
  `enter_email_subject` varchar(255) DEFAULT NULL,
  `entry_email_content` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club_details`
--

INSERT INTO `club_details` (`id`, `club_id`, `stripe_publishable_key`, `stripe_secret_key`, `terms_conditions`, `invoice_footer_text`, `membership_status_pending_enable`, `email_subject`, `email_content`, `enter_email_subject`, `entry_email_content`) VALUES
(1, 1, 'pk_test_578WanK7SzdvJTw5jt0FCdmQ', 'ZzZTTzZqbTBBb0JsVEEzdm9Dd0lrMkhnSzk3elFWMkpKTHhVM1ZWTWZoeDBNY1pYbnJtUjJyeTVDbDkvTDlrOA==', 'I hereby apply to become a member of the Sterling Club. In the event of my/our admission as a member, I/we agree to be bound by the Sterling Infotech code of conduct.', 'Find us on Facebook @sterlinginfotech', 0, 'You have entered an event at the Sterling!', '<p>Hi&nbsp;{Name},</p>\r\n\r\n<p>Thank you for entering&nbsp;an event at the&nbsp;{Club Name}!!</p>\r\n\r\n<p><strong>Event&nbsp;Details</strong></p>\r\n\r\n<p style=\"margin-left: 40px;\">Event Name: {Event Name}<br />\r\nEvent Date:&nbsp;{Event Date}.</p>', NULL, NULL),
(2, 2, 'pk_test_578WanK7SzdvJTw5jt0FCdmQ', 'ZzZTTzZqbTBBb0JsVEEzdm9Dd0lrMkhnSzk3elFWMkpKTHhVM1ZWTWZoeDBNY1pYbnJtUjJyeTVDbDkvTDlrOA==', 'I hereby apply to become a member of the Coburg Club. In the event of my/our admission as a member, I/we agree to be bound by the Coburg  code of conduct.', 'Find us on install @sterlinginfotech', 0, 'You have entered an event at the Sterling!', '<p>Hi&nbsp;{Name},</p>\r\n\r\n<p>Thank you for entering&nbsp;an event at the&nbsp;{Club Name}!!</p>\r\n\r\n<p><strong>Event&nbsp;Details</strong></p>\r\n\r\n<p style=\"margin-left: 40px;\">Event Name: {Event Name}<br />\r\nEvent Date:&nbsp;{Event Date}.</p>', NULL, NULL);
