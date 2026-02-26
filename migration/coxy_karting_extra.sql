
--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_logs`
--
ALTER TABLE `action_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_settings`
--
ALTER TABLE `application_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_engine_types`
--
ALTER TABLE `class_engine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_managements`
--
ALTER TABLE `class_managements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `club_availabilities`
--
ALTER TABLE `club_availabilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `club_availability_logs`
--
ALTER TABLE `club_availability_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `club_details`
--
ALTER TABLE `club_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `club_racing_licences`
--
ALTER TABLE `club_racing_licences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communications`
--
ALTER TABLE `communications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cron_action_logs`
--
ALTER TABLE `cron_action_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dry_tyre_barcodes`
--
ALTER TABLE `dry_tyre_barcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `endorsements`
--
ALTER TABLE `endorsements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engine_types`
--
ALTER TABLE `engine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_classes`
--
ALTER TABLE `event_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_details`
--
ALTER TABLE `event_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_entries`
--
ALTER TABLE `event_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_entry_class_details`
--
ALTER TABLE `event_entry_class_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_entry_details`
--
ALTER TABLE `event_entry_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_entry_engine_details`
--
ALTER TABLE `event_entry_engine_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_entry_form_data_details`
--
ALTER TABLE `event_entry_form_data_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_entry_logs`
--
ALTER TABLE `event_entry_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_entry_product_details`
--
ALTER TABLE `event_entry_product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_licence_payment_details`
--
ALTER TABLE `event_licence_payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_officials`
--
ALTER TABLE `event_officials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_products`
--
ALTER TABLE `event_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_teams`
--
ALTER TABLE `event_teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_vouchers`
--
ALTER TABLE `gift_vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infringements`
--
ALTER TABLE `infringements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_address_login_attempts`
--
ALTER TABLE `ip_address_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `judge_of_fact_penalties`
--
ALTER TABLE `judge_of_fact_penalties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karting_events`
--
ALTER TABLE `karting_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kart_start_licence_details`
--
ALTER TABLE `kart_start_licence_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licences`
--
ALTER TABLE `licences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licence_payments`
--
ALTER TABLE `licence_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licence_payment_details`
--
ALTER TABLE `licence_payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licence_payment_upgrade_logs`
--
ALTER TABLE `licence_payment_upgrade_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licence_payment_wwcc_details`
--
ALTER TABLE `licence_payment_wwcc_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licence_reports`
--
ALTER TABLE `licence_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licence_safety_questions`
--
ALTER TABLE `licence_safety_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licence_settings`
--
ALTER TABLE `licence_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nose_cones`
--
ALTER TABLE `nose_cones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_of_minor_ineligibilities`
--
ALTER TABLE `notification_of_minor_ineligibilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penalties`
--
ALTER TABLE `penalties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penalty_managements`
--
ALTER TABLE `penalty_managements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `practice_bookings`
--
ALTER TABLE `practice_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `practice_booking_details`
--
ALTER TABLE `practice_booking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `practice_settings`
--
ALTER TABLE `practice_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reporting_engines`
--
ALTER TABLE `reporting_engines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sister_clubs`
--
ALTER TABLE `sister_clubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_cards`
--
ALTER TABLE `user_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_club_memberships`
--
ALTER TABLE `user_club_memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_club_membership_details`
--
ALTER TABLE `user_club_membership_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_grades`
--
ALTER TABLE `user_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login_codes`
--
ALTER TABLE `user_login_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login_ip_addresses`
--
ALTER TABLE `user_login_ip_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_medical_certificate_logs`
--
ALTER TABLE `user_medical_certificate_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_medical_details`
--
ALTER TABLE `user_medical_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_medical_detail_logs`
--
ALTER TABLE `user_medical_detail_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notes`
--
ALTER TABLE `user_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wet_weather_tyre_barcodes`
--
ALTER TABLE `wet_weather_tyre_barcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wwcc_detail_logs`
--
ALTER TABLE `wwcc_detail_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_logs`
--
ALTER TABLE `action_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `application_settings`
--
ALTER TABLE `application_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_engine_types`
--
ALTER TABLE `class_engine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510;

--
-- AUTO_INCREMENT for table `class_managements`
--
ALTER TABLE `class_managements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `club_availabilities`
--
ALTER TABLE `club_availabilities`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `club_availability_logs`
--
ALTER TABLE `club_availability_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `club_details`
--
ALTER TABLE `club_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `club_racing_licences`
--
ALTER TABLE `club_racing_licences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `communications`
--
ALTER TABLE `communications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cron_action_logs`
--
ALTER TABLE `cron_action_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dry_tyre_barcodes`
--
ALTER TABLE `dry_tyre_barcodes`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `endorsements`
--
ALTER TABLE `endorsements`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `engine_types`
--
ALTER TABLE `engine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `event_classes`
--
ALTER TABLE `event_classes`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `event_details`
--
ALTER TABLE `event_details`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `event_entries`
--
ALTER TABLE `event_entries`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `event_entry_class_details`
--
ALTER TABLE `event_entry_class_details`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `event_entry_details`
--
ALTER TABLE `event_entry_details`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `event_entry_engine_details`
--
ALTER TABLE `event_entry_engine_details`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_entry_form_data_details`
--
ALTER TABLE `event_entry_form_data_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `event_entry_logs`
--
ALTER TABLE `event_entry_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `event_entry_product_details`
--
ALTER TABLE `event_entry_product_details`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event_licence_payment_details`
--
ALTER TABLE `event_licence_payment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `event_officials`
--
ALTER TABLE `event_officials`
  MODIFY `id` bigint(28) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `event_products`
--
ALTER TABLE `event_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `event_teams`
--
ALTER TABLE `event_teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `gift_vouchers`
--
ALTER TABLE `gift_vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `infringements`
--
ALTER TABLE `infringements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ip_address_login_attempts`
--
ALTER TABLE `ip_address_login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `judge_of_fact_penalties`
--
ALTER TABLE `judge_of_fact_penalties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `karting_events`
--
ALTER TABLE `karting_events`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `kart_start_licence_details`
--
ALTER TABLE `kart_start_licence_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `licences`
--
ALTER TABLE `licences`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `licence_payments`
--
ALTER TABLE `licence_payments`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `licence_payment_details`
--
ALTER TABLE `licence_payment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `licence_payment_upgrade_logs`
--
ALTER TABLE `licence_payment_upgrade_logs`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `licence_payment_wwcc_details`
--
ALTER TABLE `licence_payment_wwcc_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `licence_reports`
--
ALTER TABLE `licence_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `licence_safety_questions`
--
ALTER TABLE `licence_safety_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `licence_settings`
--
ALTER TABLE `licence_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nose_cones`
--
ALTER TABLE `nose_cones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_of_minor_ineligibilities`
--
ALTER TABLE `notification_of_minor_ineligibilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penalties`
--
ALTER TABLE `penalties`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `penalty_managements`
--
ALTER TABLE `penalty_managements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `practice_bookings`
--
ALTER TABLE `practice_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `practice_booking_details`
--
ALTER TABLE `practice_booking_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `practice_settings`
--
ALTER TABLE `practice_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reporting_engines`
--
ALTER TABLE `reporting_engines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sister_clubs`
--
ALTER TABLE `sister_clubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user_cards`
--
ALTER TABLE `user_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_club_memberships`
--
ALTER TABLE `user_club_memberships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user_club_membership_details`
--
ALTER TABLE `user_club_membership_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user_grades`
--
ALTER TABLE `user_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user_login_codes`
--
ALTER TABLE `user_login_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_login_ip_addresses`
--
ALTER TABLE `user_login_ip_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user_medical_certificate_logs`
--
ALTER TABLE `user_medical_certificate_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_medical_details`
--
ALTER TABLE `user_medical_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_medical_detail_logs`
--
ALTER TABLE `user_medical_detail_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user_notes`
--
ALTER TABLE `user_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wet_weather_tyre_barcodes`
--
ALTER TABLE `wet_weather_tyre_barcodes`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wwcc_detail_logs`
--
ALTER TABLE `wwcc_detail_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
