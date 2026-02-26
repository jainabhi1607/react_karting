
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `member_id` bigint(30) DEFAULT NULL,
  `club_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL COMMENT 'Admin id who added this member',
  `parent_user_id` bigint(30) DEFAULT NULL COMMENT 'Parent id who added this member as his child',
  `parent_member_id` bigint(30) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` text,
  `name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(150) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(150) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `current_endorsement` int(1) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `medical_detail_expiry_date` date DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `role` int(3) DEFAULT NULL,
  `user_adult` int(2) DEFAULT '1' COMMENT '1= Yes he is adult,\r\n2= No, he is not adult ',
  `status` int(3) DEFAULT NULL,
  `change_current_endorsement` int(1) DEFAULT NULL,
  `medical_certificate_required` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `member_id`, `club_id`, `admin_id`, `parent_user_id`, `parent_member_id`, `username`, `password`, `name`, `middle_name`, `last_name`, `email`, `mobile`, `phone`, `date_of_birth`, `current_endorsement`, `gender`, `medical_detail_expiry_date`, `user_image`, `role`, `user_adult`, `status`, `change_current_endorsement`, `medical_certificate_required`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 'admin', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Admin', NULL, NULL, 'jainabhi1607@gmail.com', NULL, NULL, '1991-09-11', NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL),
(2, 130001, 2, 0, 0, 0, 'enim.gravida@google.edu', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Phelan', '', 'Mckee', 'enim.gravida@google.edu', '7936263339', '3834235122', '1986-09-25', 3, 1, '2024-10-09', '', 13, 1, 1, 1, NULL),
(4, 100003, 0, 0, 0, 0, 'amet.orci@google.org', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Kyle', '', 'Richardson', 'auctor.ullamcorper@aol.net', '6937026501', '1-444-734-2856', '1986-09-10', NULL, 1, '0000-00-00', '', 13, 1, 1, NULL, NULL),
(5, 100004, 0, 0, 0, 0, 'tristique@outlook.couk', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Hector', '', 'Tillman', 'in.felis@aol.edu', '5707318233', '(563) 132-8856', '1986-09-25', NULL, 2, '0000-00-00', '', 13, 1, 1, NULL, NULL),
(6, 100005, 2, 0, 0, 0, 'et.nunc@protonmail.edu', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Celeste', '', 'Hays', 'elementum.dui@protonmail.net', '7979759826', '1-596-665-7344', '2015-09-25', NULL, 1, '2024-09-16', '', 13, 1, 1, NULL, NULL),
(7, 100006, 0, 0, 0, 0, 'vel.arcu@google.edu', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Darryl', '', 'Bonner', 'aliquet@yahoo.org', '7865080980', '1-146-446-6733', '1986-09-25', NULL, 2, '0000-00-00', '', 13, 1, 1, NULL, NULL),
(8, 100007, 2, 0, 0, 0, 'et.risus@yahoo.com', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Cedric', '', 'Mclaughlin', 'dis.parturient@outlook.couk', '2013213167', '1-821-503-2817', '1983-09-07', 2, 1, '2024-09-16', '', 13, 1, 1, NULL, NULL),
(9, 100008, 2, 0, 0, 0, 'ligula.eu@outlook.edu', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Dustin', '', 'Wilder', 'lacus@aol.ca', '5280697289', '(846) 885-3787', '1986-09-25', 2, 2, '2025-02-22', '', 13, 1, 1, NULL, NULL),
(10, 100009, 2, 0, 0, 0, 'eu.ligula@outlook.ca', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Joshua', '', 'Lamb', 'lorem@hotmail.com', '4091586899', '1-853-694-6750', '1986-09-25', NULL, 2, '2024-09-16', '', 13, 1, 1, NULL, NULL),
(11, 100010, 2, 0, 0, 0, 'ac.risus.morbi@outlook.couk', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Cade', '', 'Rogers', 'et.ultrices.posuere@hotmail.org', '9595823094', '1-430-586-7118', '2001-09-25', 2, 2, '2024-09-16', '', 13, 1, 1, 1, NULL),
(12, 100011, 2, 0, 0, 0, 'ac@google.org', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Shelley', '', 'Sanford', 'lacus.nulla@yahoo.org', '5561782194', '(488) 356-8263', '1990-07-14', NULL, 2, '2027-01-13', '', 13, 1, 1, NULL, NULL),
(13, 100012, 2, 0, 0, 0, 'molestie.arcu@protonmail.edu', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Orson', '', 'Ramsey', 'amet.ante@protonmail.net', '1126039209', '(383) 587-0650', '1986-09-25', NULL, 2, '2025-09-25', '', 13, 1, 1, NULL, NULL),
(14, 100013, 2, 0, 0, 0, 'gravida.aliquam@protonmail.ca', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Unity', '', 'Moss', 'justo.nec@protonmail.org', '3156356577', '1-733-751-9768', '2003-09-25', 4, 2, '2024-09-16', '', 13, 1, 1, 1, NULL),
(15, 100014, 0, 0, 0, 0, 'ut.tincidunt@outlook.net', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Dorian', '', 'Morrison', 'gravida.mauris@hotmail.com', '2328581337', '1-774-127-6357', '1986-09-25', NULL, 1, '2025-05-01', '', 13, 1, 1, NULL, NULL),
(16, 100015, 2, 0, 0, 0, 'semper.dui.lectus@hotmail.com', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Thane', '', 'Reyes', 'gravida@google.net', '7953173343', '(468) 384-2798', '2010-09-28', NULL, 2, '2027-01-05', '', 13, 1, 1, NULL, 1),
(17, 100016, 0, 0, 0, 0, 'sed@yahoo.ca', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Margaret', '', 'Browning', 'phasellus.ornare@google.org', '7273678316', '1-131-538-9967', '1986-09-25', NULL, 2, '2027-01-08', '', 13, 1, 1, NULL, NULL),
(18, 100017, 1, 0, 0, 0, 'mattis.ornare@icloud.ca', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Hollee', '', 'Lopez', 'ut.quam.vel@google.ca', '4039449271', '(865) 927-6526', '1985-09-25', NULL, 2, '2024-09-16', '', 13, 1, 1, NULL, NULL),
(19, 100018, 1, 0, 0, 0, 'felis.nulla.tempor@hotmail.edu', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Tara', '', 'Kane', 'vel.vulputate@outlook.edu', '1255861732', '(338) 715-7275', '1993-10-13', 2, 1, '2025-02-22', '', 13, 1, 1, 1, NULL),
(20, 100019, 0, 0, NULL, 0, 'dfgd@df.com', '$2y$10$Jkl4FhqN6JOE.DnJJuk6iepDMXNO8tXKCaqAj8faJvwnLbkInTwYu', 'Justina', '', 'Griffith', 'dfgd@df.com', '1138837166', '(851) 188-9784', '2018-09-25', NULL, 1, '0000-00-00', '', 13, 1, 1, NULL, NULL),
(21, 100020, 1, 0, 0, 0, 'diam.nunc@protonmail.ca', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Theodore', '', 'Puckett', 'orci.sem.eget@yahoo.edu', '1716171480', '1-222-865-2861', '2003-09-25', 3, 2, '2025-01-02', '', 13, 1, 1, 1, NULL),
(22, 100021, 2, 0, 0, 0, 'nam.porttitor@hotmail.com', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Allegra', '', 'Mullen', 'montes@aol.ca', '1381037496', '1-560-676-6947', '1986-09-25', 2, 2, '2025-01-17', '', 13, 1, 1, NULL, NULL),
(23, 100022, 2, 0, 2, 0, 'cubilia.curae@aol.ca', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Carol', '', 'Christian', 'fusce.mollis.duis@yahoo.edu', '8985263585', '(232) 629-5412', '1999-09-25', 2, 1, '2026-12-17', '', 13, 1, 1, NULL, NULL),
(24, 100023, 1, 0, 4, 0, 'magnis@yahoo.couk', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Chadwick', '', 'Harper', 'augue.sed.molestie@aol.couk', '5905553354', '(915) 591-4222', '2018-01-11', 3, 2, '2024-09-16', '', 13, 2, 1, 1, NULL),
(25, 100024, 2, 0, 0, 0, 'sed.turpis.nec@aol.com', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Byron', '', 'Wiley', 'sapien.cras.dolor@hotmail.com', '9715856238', '1-664-871-4186', '1986-09-25', 2, 2, '2026-09-04', '', 13, 1, 1, NULL, NULL),
(26, 100025, 2, 0, 0, 0, 'turpis.nec.mauris@aol.couk', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Risa', '', 'Bauer', 'nullam.suscipit.est@protonmail.org', '8874474040', '1-978-229-3235', '1986-09-25', NULL, 1, '2025-01-18', '', 13, 1, 1, NULL, NULL),
(27, 100026, 0, 0, 0, 0, 'ante.dictum.mi@hotmail.ca', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Rhona', '', 'Prince', 'quisque.ac.libero@outlook.org', '5731871456', '1-266-720-8676', '1986-09-25', 2, 1, '0000-00-00', '', 13, 1, 1, NULL, NULL),
(28, 100027, 0, 0, 0, 0, 'montes.nascetur.ridiculus@google.ca', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Stacy', '', 'Stewart', 'eleifend.vitae@icloud.couk', '9123381944', '(917) 916-6134', '2010-09-25', NULL, 2, '0000-00-00', '', 13, 1, 1, NULL, NULL),
(29, 100028, 0, 0, 0, 0, 'non.cursus@aol.ca', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Anastasia', '', 'Hayes', 'vivamus@outlook.net', '9172153759', '(658) 202-8133', '1986-09-25', NULL, 2, '0000-00-00', '', 13, 1, 1, NULL, NULL),
(30, 100029, 0, 0, 0, 0, 'leo.in.lobortis@outlook.com', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Owen', '', 'Solomon', 'nisl@aol.ca', '9575888871', '1-392-142-1897', '1986-09-25', NULL, 2, '0000-00-00', '', 13, 1, 1, NULL, NULL),
(31, 100030, 2, 0, 2, 0, 'lacinia.vitae.sodales@outlook.com', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Peter', '', 'Luna', 'lacinia.vitae.sodales@outlook.com', '8315915904', '7567828145', '1986-09-25', 3, 2, '2026-12-11', '974231765418464.png', 13, 1, 1, 1, NULL),
(32, 100031, 2, 0, 0, 0, 'nec.quam@outlook.org', '$2y$10$aSk.FtePU2wUyv./znCugOEQMY6GYGugqA/SR3/5ZvGc303gPLzWi', 'Zeus', '', 'Finley', 'lorem.vehicula@outlook.net', '1503144934', '(143) 646-7304', '2011-04-19', NULL, 1, '2024-11-24', '', 13, 1, 1, NULL, NULL),
(33, NULL, 2, NULL, NULL, NULL, 'club', '$2y$10$59ikr17W2MPYlASDi3cWb.5cl/IW/ujeJgmQbIxcMfQwC1NIcUFF6', 'Desirae', NULL, 'Cantu', 'dapibus.id@yahoo.ca', '954488239', NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, 1, NULL, NULL),
(34, NULL, 2, NULL, NULL, NULL, 'sagittis.augue.eu@yahoo.cou', '$2y$10$IlglTEP9TZKnSj1g.rmGcOCD/ykv.S.osTmhyksYI2ZE8V2O/I5Ni', 'Ivan', NULL, 'Chambers', 'sagittis.augue.eu@yahoo.cou', '964689904', NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, 1, NULL, NULL),
(35, NULL, 1, NULL, NULL, NULL, 'velit.aliquam@yahoo.couk', '$2y$10$xw.5V5xFoqIzYHoL5C4e8uTAnTJEwDEnVnOaMWU.8Lu4GcWQfFBpq', 'Enim Etiam', NULL, 'Industries', 'velit.aliquam@yahoo.couk', '9876543284', NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, 1, NULL, NULL),
(36, 130002, NULL, NULL, 25, NULL, 'member130002@kartingnsw.com.au', NULL, 'Jamal', '', 'Richard', 'member130002@kartingnsw.com.au', '50452843', '', '2006-01-08', NULL, 1, NULL, '922121765286448.png', 13, 2, 1, NULL, NULL),
(37, 130003, NULL, NULL, 2, NULL, 'member130003@kartingnsw.com.au', NULL, 'Sylvia', '', 'Cruz', 'member130003@kartingnsw.com.au', '436263338', '4683842798', '2013-05-09', NULL, 2, NULL, '1732683745.png', 13, 2, 1, NULL, NULL),
(38, NULL, 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(39, NULL, 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(40, NULL, NULL, NULL, NULL, NULL, 'acvbg', '$2y$10$u6JAIKUQlEPKZAPzq0JCQOgmStlqpT8rrJFKiw2uWuUU78YsWRJ.i', 'Super Admin', NULL, NULL, 'anshu_777771111@yahoo.co.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL);
