select * from user where us_pincode=600001 and us_bloodgroup="O+";

$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK

select hp_name from hospital where hp_pincode=600001;

INSERT INTO `online_blood_bank`.`user` (`us_id`, `us_firstname`, `us_lastname`, `us_age`, `us_gender`, `us_contactnumber`, `us_email`, `us_password`, `us_weight`, `us_bloodgroup`, `us_username`,`us_state`, `us_area`, `us_pincode`) VALUES ('1', 'poorna', 'shree', '21', 'female', '9171632512', '34@gmail.com', '$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK', '60', 'O+','poorna', 'TamilNadu', 'Chennai', '600001');
INSERT INTO `online_blood_bank`.`user` (`us_id`, `us_firstname`, `us_lastname`, `us_age`, `us_gender`, `us_contactnumber`, `us_email`, `us_password`, `us_weight`, `us_bloodgroup`, `us_username`,`us_state`, `us_area`, `us_pincode`) VALUES ('2', 'pappu', 'P', '21', 'female', '9816372134', '56@gmail.com', '$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK', '59', 'A+','pappu','Telangana', 'Hyderabad', '500001');
INSERT INTO `online_blood_bank`.`user` (`us_id`, `us_firstname`, `us_lastname`, `us_age`, `us_gender`, `us_contactnumber`, `us_email`, `us_password`, `us_weight`, `us_bloodgroup`, `us_username`,`us_state`, `us_area`, `us_pincode`) VALUES ('3', 'a', 'b', '32', 'male', '9864343651', 'hgf@gamil.com', '$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK', '56', 'B+','admin' ,'Kerala', 'Cochi', '700001');


INSERT INTO `online_blood_bank`.`role` (`ro_id`, `ro_name`) VALUES ('1', 'ROLE_ADMIN');
INSERT INTO `online_blood_bank`.`role` (`ro_id`, `ro_name`) VALUES ('2', 'ROLE_USER');

INSERT INTO `online_blood_bank`.`address` (`addr_id`, `addr_state`, `addr_area`, `addr_pincode`) VALUES ('1', 'TamilNadu', 'Chennai', '600001');
INSERT INTO `online_blood_bank`.`address` (`addr_id`, `addr_state`, `addr_area`, `addr_pincode`) VALUES ('2', 'TamilNadu', 'Coimbatore', '600002');
INSERT INTO `online_blood_bank`.`address` (`addr_id`, `addr_state`, `addr_area`, `addr_pincode`) VALUES ('3', 'TamilNadu', 'Madurai', '600003');
INSERT INTO `online_blood_bank`.`address` (`addr_id`, `addr_state`, `addr_area`, `addr_pincode`) VALUES ('4', 'TamilNadu', 'Trichy', '600004');
INSERT INTO `online_blood_bank`.`address` (`addr_id`, `addr_state`, `addr_area`, `addr_pincode`) VALUES ('5', 'Telangana', 'Hyderabad', '500001');
INSERT INTO `online_blood_bank`.`address` (`addr_id`, `addr_state`, `addr_area`, `addr_pincode`) VALUES ('6', 'Telangana', 'Secunderabad', '500002');
INSERT INTO `online_blood_bank`.`address` (`addr_id`, `addr_state`, `addr_area`, `addr_pincode`) VALUES ('7', 'Telangana', 'Warangal','500003');
INSERT INTO `online_blood_bank`.`address` (`addr_id`, `addr_state`, `addr_area`, `addr_pincode`) VALUES ('8', 'Telangana', 'Nizamabad', '500004');
INSERT INTO `online_blood_bank`.`address` (`addr_id`, `addr_state`, `addr_area`, `addr_pincode`) VALUES ('9', 'Kerala', 'Cochi', '700001');
INSERT INTO `online_blood_bank`.`address` (`addr_id`, `addr_state`, `addr_area`, `addr_pincode`) VALUES ('10', 'Kerala', 'Munnar', '700002');
INSERT INTO `online_blood_bank`.`address` (`addr_id`, `addr_state`, `addr_area`, `addr_pincode`) VALUES ('11', 'Kerala', 'Kollam', '700003');
INSERT INTO `online_blood_bank`.`address` (`addr_id`, `addr_state`, `addr_area`, `addr_pincode`) VALUES ('12', 'Kerala', 'Wayanad', '700004');

INSERT INTO `online_blood_bank`.`blood_request` (`req_id`, `req_bloodgroup`, `req_state`, `req_name`, `req_contactnumber`, `req_area`, `req_pincode`) VALUES ('1', 'O+', 'TamilNadu', 'poorna', '9174356352', 'Chennai', '600001');

INSERT INTO `online_blood_bank`.`donor_feedback` (`df_id`, `df_hp_name`, `df_feedback`, `df_us_id_fk`, `df_hp_area`) VALUES ('1', 'poorna', 'good', '1', 'Chennai');

INSERT INTO `online_blood_bank`.`user_role` (`ur_id`, `ur_us_id_fk`, `ur_ro_id_fk`) VALUES ('1', '1', '2');
INSERT INTO `online_blood_bank`.`user_role` (`ur_id`, `ur_us_id_fk`, `ur_ro_id_fk`) VALUES ('2', '2', '2');
INSERT INTO `online_blood_bank`.`user_role` (`ur_id`, `ur_us_id_fk`, `ur_ro_id_fk`) VALUES ('3', '3', '1');

INSERT INTO `online_blood_bank`.`hospital` (`hp_id`, `hp_state`, `hp_area`, `hp_pincode`, `hp_name`) VALUES ('1', 'TamilNadu', 'Chennai', '600001', 'Kauvery Hospital');
INSERT INTO `online_blood_bank`.`hospital` (`hp_id`, `hp_state`, `hp_area`, `hp_pincode`, `hp_name`) VALUES ('2', 'TamilNadu',  'Coimbatore', '600002', 'Apollo Hospital');
INSERT INTO `online_blood_bank`.`hospital` (`hp_id`, `hp_state`, `hp_area`, `hp_pincode`, `hp_name`) VALUES ('3', 'TamilNadu', 'Madurai', '600003', 'Global Hospital');
INSERT INTO `online_blood_bank`.`hospital` (`hp_id`, `hp_state`, `hp_area`, `hp_pincode`, `hp_name`) VALUES ('4', 'TamilNadu','Trichy', '600004', 'Fortis Hospital');
INSERT INTO `online_blood_bank`.`hospital` (`hp_id`, `hp_state`, `hp_area`, `hp_pincode`, `hp_name`) VALUES ('5', 'Telangana', 'Hyderabad', '500001', 'Sunshine Hospital');
INSERT INTO `online_blood_bank`.`hospital` (`hp_id`, `hp_state`, `hp_area`, `hp_pincode`, `hp_name`) VALUES ('6', 'Telangana', 'Secunderabad', '500002', 'Continental Hospital');
INSERT INTO `online_blood_bank`.`hospital` (`hp_id`, `hp_state`, `hp_area`, `hp_pincode`, `hp_name`) VALUES ('7', 'Telangana', 'Warangal','500003', 'Medicover Hospital');
INSERT INTO `online_blood_bank`.`hospital` (`hp_id`, `hp_state`, `hp_area`, `hp_pincode`, `hp_name`) VALUES ('8', 'Telangana',  'Nizamabad', '500004', 'KIMS Hospital');
INSERT INTO `online_blood_bank`.`hospital` (`hp_id`, `hp_state`, `hp_area`, `hp_pincode`, `hp_name`) VALUES ('9', 'Kerala', 'Cochi', '700001', 'Lords Hospital');
INSERT INTO `online_blood_bank`.`hospital` (`hp_id`, `hp_state`, `hp_area`, `hp_pincode`, `hp_name`) VALUES ('10', 'Kerala',  'Munnar', '700002', 'Medical Trust Hospital');
INSERT INTO `online_blood_bank`.`hospital` (`hp_id`, `hp_state`, `hp_area`, `hp_pincode`, `hp_name`) VALUES ('11', 'Kerala', 'Kollam', '700003', 'PVS Hospital');
INSERT INTO `online_blood_bank`.`hospital` (`hp_id`, `hp_state`, `hp_area`, `hp_pincode`, `hp_name`) VALUES ('12', 'Kerala', 'Wayanad', '700004', 'MIMS Hospital');