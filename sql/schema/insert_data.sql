-- Hospital Appointment Analytics - Data Insertion Script
-- This script populates the database with sample data for analysis
-- Author: Sankavaram Charan Sai
-- LinkedIn: https://www.linkedin.com/in/s-charan-sai-16613b245/
-- GitHub: https://github.com/TechWithCharan
-- Email: charansaicherry2004@gmail.com
-- Date: 2025-08-05

-- =====================================================
-- INSERT PATIENTS DATA (25 patients)
-- =====================================================

INSERT INTO patients (patient_id, age, gender, insurance_type, has_chronic_disease, diabetic, blood_group, emergency_contact, address_city, occupation, marital_status, income_level, preferred_language, last_visit_date, patient_since) VALUES
(1, 45, 'Male', 'Private', 'Yes', 'No', 'A+', '9876543210', 'Hyderabad', 'Engineer', 'Married', 'High', 'English', '2023-12-15', '2020-03-10'),
(2, 62, 'Female', 'Public', 'Yes', 'Yes', 'B+', '8765432109', 'Chennai', 'Teacher', 'Widowed', 'Medium', 'Tamil', '2023-11-20', '2018-07-22'),
(3, 29, 'Female', 'Private', 'No', 'No', 'O+', '7654321098', 'Bangalore', 'Software Developer', 'Single', 'High', 'English', '2023-12-10', '2021-09-15'),
(4, 70, 'Male', 'Public', 'Yes', 'Yes', 'AB+', '6543210987', 'Mumbai', 'Retired', 'Married', 'Low', 'Hindi', '2023-10-25', '2015-11-30'),
(5, 34, 'Male', 'Private', 'No', 'No', 'B-', '5432109876', 'Delhi', 'Manager', 'Married', 'High', 'English', '2023-12-05', '2022-01-12'),
(6, 28, 'Female', 'Private', 'No', 'No', 'A-', '4321098765', 'Pune', 'Designer', 'Single', 'Medium', 'English', '2023-11-30', '2021-06-08'),
(7, 55, 'Male', 'Public', 'Yes', 'No', 'O-', '3210987654', 'Kolkata', 'Accountant', 'Married', 'Medium', 'Bengali', '2023-12-01', '2019-04-18'),
(8, 41, 'Female', 'Private', 'No', 'Yes', 'A+', '2109876543', 'Ahmedabad', 'Doctor', 'Married', 'High', 'Gujarati', '2023-11-25', '2020-08-05'),
(9, 67, 'Male', 'Public', 'Yes', 'Yes', 'B+', '1098765432', 'Jaipur', 'Retired', 'Widowed', 'Low', 'Hindi', '2023-10-30', '2017-12-03'),
(10, 23, 'Female', 'Private', 'No', 'No', 'O+', '0987654321', 'Indore', 'Student', 'Single', 'Low', 'English', '2023-12-12', '2022-11-20'),
(11, 52, 'Female', 'Public', 'Yes', 'No', 'AB-', '9876543211', 'Patna', 'Teacher', 'Married', 'Medium', 'Hindi', '2023-11-18', '2018-09-14'),
(12, 38, 'Male', 'Private', 'No', 'No', 'A+', '8765432101', 'Chandigarh', 'Engineer', 'Married', 'High', 'English', '2023-12-08', '2021-03-25'),
(13, 71, 'Male', 'Public', 'Yes', 'Yes', 'B+', '7654321091', 'Lucknow', 'Retired', 'Married', 'Low', 'Hindi', '2023-10-22', '2016-05-12'),
(14, 26, 'Female', 'Private', 'No', 'No', 'O+', '6543210981', 'Surat', 'Marketing Executive', 'Single', 'Medium', 'Gujarati', '2023-11-28', '2022-07-30'),
(15, 48, 'Male', 'Private', 'Yes', 'No', 'A-', '5432109871', 'Nagpur', 'Business Owner', 'Married', 'High', 'English', '2023-12-03', '2019-11-08'),
(16, 33, 'Female', 'Public', 'No', 'No', 'B-', '4321098761', 'Thane', 'Nurse', 'Single', 'Medium', 'English', '2023-11-15', '2021-12-10'),
(17, 59, 'Male', 'Private', 'Yes', 'Yes', 'O+', '3210987651', 'Vadodara', 'Professor', 'Married', 'High', 'Gujarati', '2023-10-28', '2018-02-15'),
(18, 31, 'Female', 'Private', 'No', 'No', 'AB+', '2109876541', 'Coimbatore', 'Architect', 'Single', 'High', 'Tamil', '2023-12-07', '2022-04-22'),
(19, 64, 'Female', 'Public', 'Yes', 'Yes', 'A+', '1098765431', 'Visakhapatnam', 'Retired', 'Widowed', 'Low', 'Telugu', '2023-11-12', '2017-08-19'),
(20, 27, 'Male', 'Private', 'No', 'No', 'B+', '0987654321', 'Guwahati', 'Software Engineer', 'Single', 'High', 'English', '2023-12-14', '2021-10-05'),
(21, 42, 'Male', 'Private', 'Yes', 'No', 'O+', '9876543212', 'Bhopal', 'Lawyer', 'Married', 'High', 'Hindi', '2023-12-16', '2020-05-18'),
(22, 35, 'Female', 'Public', 'No', 'No', 'A+', '8765432102', 'Raipur', 'Teacher', 'Married', 'Medium', 'Hindi', '2023-11-25', '2021-08-12'),
(23, 58, 'Male', 'Private', 'Yes', 'Yes', 'B+', '7654321092', 'Dehradun', 'Retired', 'Married', 'Medium', 'English', '2023-10-30', '2018-11-05'),
(24, 24, 'Female', 'Private', 'No', 'No', 'O+', '6543210982', 'Shimla', 'Student', 'Single', 'Low', 'English', '2023-12-10', '2022-03-20'),
(25, 49, 'Male', 'Public', 'Yes', 'No', 'AB+', '5432109872', 'Agartala', 'Government Employee', 'Married', 'Medium', 'Bengali', '2023-11-28', '2019-06-15');

-- =====================================================
-- INSERT DOCTORS DATA (20 doctors)
-- =====================================================

INSERT INTO doctors (doctor_id, doctor_name, department, specialization, experience_years, qualification, consultation_fee, working_hours, phone_number, email, join_date, is_active, rating, total_patients, emergency_available) VALUES
(201, 'Dr. Ramesh Rao', 'Cardiology', 'Interventional Cardiologist', 15, 'MBBS MD Cardiology', 1200.00, '9-5', '9876543210', 'ramesh.rao@hospital.com', '2018-03-15', 'Yes', 4.50, 1250, 'Yes'),
(202, 'Dr. Sneha Verma', 'Orthopedics', 'Orthopedic Surgeon', 12, 'MBBS MS Orthopedics', 1500.00, '8-6', '8765432109', 'sneha.verma@hospital.com', '2019-07-22', 'Yes', 4.80, 980, 'Yes'),
(203, 'Dr. Ali Syed', 'Neurology', 'Neurologist', 18, 'MBBS MD Neurology', 1800.00, '9-5', '7654321098', 'ali.syed@hospital.com', '2017-11-10', 'Yes', 4.60, 1100, 'No'),
(204, 'Dr. Keerthi N', 'Pediatrics', 'Pediatrician', 8, 'MBBS MD Pediatrics', 800.00, '8-4', '6543210987', 'keerthi.n@hospital.com', '2020-01-20', 'Yes', 4.70, 850, 'Yes'),
(205, 'Dr. Priya Sharma', 'Dermatology', 'Dermatologist', 10, 'MBBS MD Dermatology', 1000.00, '9-5', '5432109876', 'priya.sharma@hospital.com', '2019-09-15', 'Yes', 4.40, 720, 'No'),
(206, 'Dr. Rajesh Kumar', 'General Surgery', 'General Surgeon', 14, 'MBBS MS General Surgery', 2000.00, '8-6', '4321098765', 'rajesh.kumar@hospital.com', '2018-05-12', 'Yes', 4.90, 890, 'Yes'),
(207, 'Dr. Anjali Patel', 'Obstetrics', 'Obstetrician', 11, 'MBBS MS Obstetrics', 1600.00, '9-5', '3210987654', 'anjali.patel@hospital.com', '2019-12-03', 'Yes', 4.60, 650, 'Yes'),
(208, 'Dr. Suresh Menon', 'Psychiatry', 'Psychiatrist', 16, 'MBBS MD Psychiatry', 1400.00, '10-6', '2109876543', 'suresh.menon@hospital.com', '2017-08-18', 'Yes', 4.30, 580, 'No'),
(209, 'Dr. Meera Iyer', 'Oncology', 'Oncologist', 20, 'MBBS MD Oncology', 2500.00, '9-5', '1098765432', 'meera.iyer@hospital.com', '2016-04-25', 'Yes', 4.80, 420, 'Yes'),
(210, 'Dr. Vikram Singh', 'Emergency Medicine', 'Emergency Physician', 9, 'MBBS MD Emergency Medicine', 1200.00, '12-12', '0987654321', 'vikram.singh@hospital.com', '2020-06-10', 'Yes', 4.50, 1500, 'Yes'),
(211, 'Dr. Lakshmi Devi', 'Endocrinology', 'Endocrinologist', 13, 'MBBS MD Endocrinology', 1600.00, '9-5', '9876543211', 'lakshmi.devi@hospital.com', '2018-10-08', 'Yes', 4.70, 680, 'No'),
(212, 'Dr. Arun Joshi', 'Radiology', 'Radiologist', 12, 'MBBS MD Radiology', 1100.00, '8-4', '8765432101', 'arun.joshi@hospital.com', '2019-02-14', 'Yes', 4.40, 920, 'No'),
(213, 'Dr. Sunita Reddy', 'ENT', 'ENT Specialist', 10, 'MBBS MS ENT', 900.00, '9-5', '7654321091', 'sunita.reddy@hospital.com', '2020-03-30', 'Yes', 4.60, 750, 'No'),
(214, 'Dr. Manoj Gupta', 'Urology', 'Urologist', 15, 'MBBS MS Urology', 1700.00, '9-5', '6543210981', 'manoj.gupta@hospital.com', '2018-07-05', 'Yes', 4.80, 620, 'Yes'),
(215, 'Dr. Kavita Desai', 'Anesthesiology', 'Anesthesiologist', 11, 'MBBS MD Anesthesiology', 1300.00, '8-6', '5432109871', 'kavita.desai@hospital.com', '2019-11-12', 'Yes', 4.50, 1100, 'Yes'),
(216, 'Dr. Amit Patel', 'Cardiology', 'Cardiologist', 14, 'MBBS MD Cardiology', 1400.00, '9-5', '4321098761', 'amit.patel@hospital.com', '2018-09-15', 'Yes', 4.60, 1150, 'Yes'),
(217, 'Dr. Reena Sharma', 'Orthopedics', 'Orthopedic Surgeon', 13, 'MBBS MS Orthopedics', 1600.00, '8-6', '3210987651', 'reena.sharma@hospital.com', '2019-04-20', 'Yes', 4.70, 920, 'Yes'),
(218, 'Dr. Deepak Verma', 'Neurology', 'Neurologist', 16, 'MBBS MD Neurology', 1900.00, '9-5', '2109876541', 'deepak.verma@hospital.com', '2017-12-08', 'Yes', 4.50, 1050, 'No'),
(219, 'Dr. Neha Gupta', 'Pediatrics', 'Pediatrician', 9, 'MBBS MD Pediatrics', 900.00, '8-4', '1098765431', 'neha.gupta@hospital.com', '2020-08-12', 'Yes', 4.80, 780, 'Yes'),
(220, 'Dr. Rajiv Malhotra', 'Dermatology', 'Dermatologist', 11, 'MBBS MD Dermatology', 1100.00, '9-5', '0987654321', 'rajiv.malhotra@hospital.com', '2019-06-25', 'Yes', 4.30, 650, 'No');

-- =====================================================
-- INSERT APPOINTMENTS DATA (60 appointments)
-- =====================================================

INSERT INTO appointments (appointment_id, patient_id, doctor_id, department, scheduled_date, appointment_date, appointment_time, status, appointment_type, consultation_duration, waiting_time_minutes, feedback_rating, payment_status, payment_method, diagnosis, prescription_given, lab_tests_ordered, follow_up_required, follow_up_date, notes) VALUES
(1001, 1, 201, 'Cardiology', '2023-10-01', '2023-10-05', '09:00:00', 'No-Show', 'Routine', 30, 0, NULL, 'Pending', 'Credit Card', NULL, 'No', 'No', 'No', NULL, 'Patient did not show up'),
(1002, 2, 202, 'Orthopedics', '2023-10-02', '2023-10-06', '14:30:00', 'Attended', 'Emergency', 45, 15, 4, 'Paid', 'Cash', 'Fracture', 'Yes', 'Yes', 'Yes', '2023-10-20', 'Patient needs follow-up for fracture healing'),
(1003, 3, 203, 'Neurology', '2023-10-03', '2023-10-10', '11:00:00', 'No-Show', 'Follow-up', 30, 0, NULL, 'Pending', 'Debit Card', NULL, 'No', 'No', 'No', NULL, 'Patient missed follow-up appointment'),
(1004, 4, 201, 'Cardiology', '2023-10-04', '2023-10-07', '10:30:00', 'Attended', 'Routine', 40, 20, 5, 'Paid', 'Insurance', 'Hypertension', 'Yes', 'Yes', 'Yes', '2023-11-07', 'Blood pressure under control'),
(1005, 5, 204, 'Pediatrics', '2023-10-06', '2023-10-10', '15:00:00', 'Attended', 'Routine', 25, 10, 3, 'Paid', 'Cash', 'Common Cold', 'Yes', 'No', 'No', NULL, 'Simple viral infection'),
(1006, 6, 205, 'Dermatology', '2023-10-07', '2023-10-12', '13:00:00', 'Attended', 'Routine', 35, 25, 4, 'Paid', 'Credit Card', 'Skin Allergy', 'Yes', 'Yes', 'Yes', '2023-10-26', 'Allergic reaction to new soap'),
(1007, 7, 206, 'General Surgery', '2023-10-08', '2023-10-13', '08:00:00', 'Attended', 'Emergency', 60, 5, 5, 'Paid', 'Insurance', 'Appendicitis', 'Yes', 'Yes', 'Yes', '2023-10-27', 'Surgery scheduled for next week'),
(1008, 8, 207, 'Obstetrics', '2023-10-09', '2023-10-14', '16:00:00', 'No-Show', 'Routine', 30, 0, NULL, 'Pending', 'Cash', NULL, 'No', 'No', 'No', NULL, 'Regular checkup missed'),
(1009, 9, 208, 'Psychiatry', '2023-10-10', '2023-10-15', '12:00:00', 'Attended', 'Follow-up', 50, 30, 4, 'Paid', 'Debit Card', 'Depression', 'Yes', 'No', 'Yes', '2023-11-15', 'Patient showing improvement'),
(1010, 10, 209, 'Oncology', '2023-10-11', '2023-10-16', '09:30:00', 'Attended', 'Routine', 45, 15, 5, 'Paid', 'Insurance', 'Cancer Screening', 'Yes', 'Yes', 'Yes', '2023-11-16', 'All tests normal'),
(1011, 11, 210, 'Emergency Medicine', '2023-10-12', '2023-10-17', '22:00:00', 'Attended', 'Emergency', 30, 0, 4, 'Paid', 'Cash', 'Accident', 'Yes', 'Yes', 'Yes', '2023-10-24', 'Minor accident, stitches required'),
(1012, 12, 211, 'Endocrinology', '2023-10-13', '2023-10-18', '14:00:00', 'Attended', 'Routine', 40, 20, 4, 'Paid', 'Insurance', 'Diabetes', 'Yes', 'Yes', 'Yes', '2023-11-18', 'Sugar levels stable'),
(1013, 13, 212, 'Radiology', '2023-10-14', '2023-10-19', '10:00:00', 'No-Show', 'Routine', 20, 0, NULL, 'Pending', 'Credit Card', NULL, 'No', 'No', 'No', NULL, 'X-ray appointment missed'),
(1014, 14, 213, 'ENT', '2023-10-15', '2023-10-20', '11:30:00', 'Attended', 'Routine', 30, 15, 3, 'Paid', 'Cash', 'Ear Infection', 'Yes', 'No', 'No', NULL, 'Simple ear infection'),
(1015, 15, 214, 'Urology', '2023-10-16', '2023-10-21', '15:30:00', 'Attended', 'Follow-up', 35, 25, 4, 'Paid', 'Insurance', 'Kidney Stone', 'Yes', 'Yes', 'Yes', '2023-11-21', 'Stone passed naturally'),
(1016, 16, 215, 'Anesthesiology', '2023-10-17', '2023-10-22', '08:30:00', 'Attended', 'Routine', 25, 10, 4, 'Paid', 'Debit Card', 'Pre-surgery Check', 'Yes', 'Yes', 'Yes', '2023-10-29', 'Surgery scheduled'),
(1017, 17, 201, 'Cardiology', '2023-10-18', '2023-10-23', '13:30:00', 'No-Show', 'Follow-up', 30, 0, NULL, 'Pending', 'Cash', NULL, 'No', 'No', 'No', NULL, 'Follow-up missed'),
(1018, 18, 202, 'Orthopedics', '2023-10-19', '2023-10-24', '16:00:00', 'Attended', 'Routine', 40, 20, 5, 'Paid', 'Insurance', 'Back Pain', 'Yes', 'Yes', 'Yes', '2023-11-24', 'Physiotherapy recommended'),
(1019, 19, 203, 'Neurology', '2023-10-20', '2023-10-25', '09:00:00', 'Attended', 'Routine', 45, 15, 4, 'Paid', 'Credit Card', 'Migraine', 'Yes', 'No', 'Yes', '2023-11-25', 'Headache frequency reduced'),
(1020, 20, 204, 'Pediatrics', '2023-10-21', '2023-10-26', '14:00:00', 'Attended', 'Emergency', 30, 5, 4, 'Paid', 'Cash', 'Fever', 'Yes', 'Yes', 'No', NULL, 'High fever antibiotics prescribed'),
(1021, 1, 205, 'Dermatology', '2023-10-22', '2023-10-27', '11:00:00', 'Attended', 'Follow-up', 25, 15, 4, 'Paid', 'Insurance', 'Eczema', 'Yes', 'No', 'Yes', '2023-11-27', 'Skin condition improving'),
(1022, 2, 206, 'General Surgery', '2023-10-23', '2023-10-28', '08:00:00', 'No-Show', 'Routine', 30, 0, NULL, 'Pending', 'Debit Card', NULL, 'No', 'No', 'No', NULL, 'Regular checkup missed'),
(1023, 3, 207, 'Obstetrics', '2023-10-24', '2023-10-29', '15:30:00', 'Attended', 'Routine', 35, 20, 5, 'Paid', 'Cash', 'Pregnancy Check', 'Yes', 'Yes', 'Yes', '2023-11-29', 'Everything normal'),
(1024, 4, 208, 'Psychiatry', '2023-10-25', '2023-10-30', '12:30:00', 'Attended', 'Follow-up', 50, 30, 4, 'Paid', 'Insurance', 'Anxiety', 'Yes', 'No', 'Yes', '2023-11-30', 'Medication adjusted'),
(1025, 5, 209, 'Oncology', '2023-10-26', '2023-11-01', '10:00:00', 'Attended', 'Routine', 45, 15, 5, 'Paid', 'Credit Card', 'Cancer Screening', 'Yes', 'Yes', 'Yes', '2023-12-01', 'All clear'),
(1026, 6, 210, 'Emergency Medicine', '2023-10-27', '2023-11-02', '21:00:00', 'Attended', 'Emergency', 25, 0, 4, 'Paid', 'Cash', 'Chest Pain', 'Yes', 'Yes', 'Yes', '2023-11-09', 'ECG normal'),
(1027, 7, 211, 'Endocrinology', '2023-10-28', '2023-11-03', '14:30:00', 'Attended', 'Routine', 40, 20, 4, 'Paid', 'Insurance', 'Thyroid', 'Yes', 'Yes', 'Yes', '2023-12-03', 'Thyroid levels stable'),
(1028, 8, 212, 'Radiology', '2023-10-29', '2023-11-04', '09:30:00', 'Attended', 'Routine', 20, 10, 3, 'Paid', 'Debit Card', 'X-ray', 'Yes', 'No', 'No', NULL, 'Simple X-ray'),
(1029, 9, 213, 'ENT', '2023-10-30', '2023-11-05', '11:00:00', 'No-Show', 'Routine', 30, 0, NULL, 'Pending', 'Cash', NULL, 'No', 'No', 'No', NULL, 'Regular checkup missed'),
(1030, 10, 214, 'Urology', '2023-10-31', '2023-11-06', '16:30:00', 'Attended', 'Follow-up', 35, 25, 4, 'Paid', 'Insurance', 'Prostate Check', 'Yes', 'Yes', 'Yes', '2023-12-06', 'All normal'),
(1031, 11, 215, 'Anesthesiology', '2023-11-01', '2023-11-07', '08:00:00', 'Attended', 'Routine', 25, 10, 4, 'Paid', 'Credit Card', 'Pre-surgery', 'Yes', 'Yes', 'Yes', '2023-11-14', 'Surgery scheduled'),
(1032, 12, 201, 'Cardiology', '2023-11-02', '2023-11-08', '13:00:00', 'Attended', 'Routine', 40, 20, 5, 'Paid', 'Insurance', 'Heart Check', 'Yes', 'Yes', 'Yes', '2023-12-08', 'Heart function normal'),
(1033, 13, 202, 'Orthopedics', '2023-11-03', '2023-11-09', '15:00:00', 'No-Show', 'Follow-up', 30, 0, NULL, 'Pending', 'Cash', NULL, 'No', 'No', 'No', NULL, 'Follow-up missed'),
(1034, 14, 203, 'Neurology', '2023-11-04', '2023-11-10', '10:30:00', 'Attended', 'Routine', 45, 15, 4, 'Paid', 'Debit Card', 'Seizure', 'Yes', 'Yes', 'Yes', '2023-12-10', 'Medication working'),
(1035, 15, 204, 'Pediatrics', '2023-11-05', '2023-11-11', '14:00:00', 'Attended', 'Emergency', 30, 5, 4, 'Paid', 'Cash', 'Accident', 'Yes', 'Yes', 'Yes', '2023-11-18', 'Minor injury'),
(1036, 16, 205, 'Dermatology', '2023-11-06', '2023-11-12', '12:00:00', 'Attended', 'Routine', 35, 20, 4, 'Paid', 'Insurance', 'Psoriasis', 'Yes', 'No', 'Yes', '2023-12-12', 'Treatment effective'),
(1037, 17, 206, 'General Surgery', '2023-11-07', '2023-11-13', '08:30:00', 'Attended', 'Routine', 30, 15, 4, 'Paid', 'Credit Card', 'Hernia', 'Yes', 'Yes', 'Yes', '2023-12-13', 'Surgery recommended'),
(1038, 18, 207, 'Obstetrics', '2023-11-08', '2023-11-14', '16:00:00', 'Attended', 'Routine', 35, 25, 5, 'Paid', 'Cash', 'Pregnancy', 'Yes', 'Yes', 'Yes', '2023-12-14', 'First trimester'),
(1039, 19, 208, 'Psychiatry', '2023-11-09', '2023-11-15', '12:00:00', 'No-Show', 'Follow-up', 50, 0, NULL, 'Pending', 'Debit Card', NULL, 'No', 'No', 'No', NULL, 'Follow-up missed'),
(1040, 20, 209, 'Oncology', '2023-11-10', '2023-11-16', '09:00:00', 'Attended', 'Routine', 45, 15, 5, 'Paid', 'Insurance', 'Screening', 'Yes', 'Yes', 'Yes', '2023-12-16', 'All tests normal'),
(1041, 1, 210, 'Emergency Medicine', '2023-11-11', '2023-11-17', '14:30:00', 'Attended', 'Emergency', 35, 5, 4, 'Paid', 'Cash', 'Minor Injury', 'Yes', 'Yes', 'Yes', '2023-11-26', 'Quick treatment'),
(1042, 2, 211, 'Endocrinology', '2023-11-12', '2023-11-18', '10:00:00', 'Attended', 'Routine', 40, 20, 4, 'Paid', 'Insurance', 'Diabetes Check', 'Yes', 'Yes', 'Yes', '2023-12-18', 'Stable condition'),
(1043, 3, 212, 'Radiology', '2023-11-13', '2023-11-19', '11:30:00', 'Attended', 'Routine', 20, 10, 3, 'Paid', 'Debit Card', 'CT Scan', 'Yes', 'No', 'No', NULL, 'Routine scan'),
(1044, 4, 213, 'ENT', '2023-11-14', '2023-11-20', '13:00:00', 'Attended', 'Follow-up', 30, 15, 4, 'Paid', 'Cash', 'Sinusitis', 'Yes', 'No', 'Yes', '2023-12-20', 'Improving condition'),
(1045, 5, 214, 'Urology', '2023-11-15', '2023-11-21', '15:30:00', 'Attended', 'Routine', 35, 25, 4, 'Paid', 'Insurance', 'Bladder Check', 'Yes', 'Yes', 'Yes', '2023-12-21', 'All normal'),
(1046, 6, 215, 'Anesthesiology', '2023-11-16', '2023-11-22', '08:00:00', 'Attended', 'Routine', 25, 10, 4, 'Paid', 'Credit Card', 'Pre-op', 'Yes', 'Yes', 'Yes', '2023-11-29', 'Surgery prep'),
(1047, 7, 201, 'Cardiology', '2023-11-17', '2023-11-23', '12:30:00', 'Attended', 'Follow-up', 40, 20, 5, 'Paid', 'Insurance', 'Heart Follow-up', 'Yes', 'Yes', 'Yes', '2023-12-23', 'Stable condition'),
(1048, 8, 202, 'Orthopedics', '2023-11-18', '2023-11-24', '14:00:00', 'Attended', 'Routine', 40, 20, 4, 'Paid', 'Cash', 'Joint Pain', 'Yes', 'Yes', 'Yes', '2023-12-24', 'Physiotherapy recommended'),
(1049, 9, 203, 'Neurology', '2023-11-19', '2023-11-25', '09:30:00', 'Attended', 'Follow-up', 45, 15, 4, 'Paid', 'Debit Card', 'Epilepsy', 'Yes', 'Yes', 'Yes', '2023-12-25', 'Medication stable'),
(1050, 10, 204, 'Pediatrics', '2023-11-20', '2023-11-26', '14:00:00', 'Attended', 'Emergency', 30, 5, 4, 'Paid', 'Cash', 'Accident', 'Yes', 'Yes', 'Yes', '2023-11-26', 'Minor injury'),
(1051, 21, 216, 'Cardiology', '2023-11-21', '2023-11-27', '10:00:00', 'Attended', 'Routine', 40, 15, 4, 'Paid', 'Insurance', 'Heart Check', 'Yes', 'Yes', 'Yes', '2023-12-27', 'Regular checkup'),
(1052, 22, 217, 'Orthopedics', '2023-11-22', '2023-11-28', '14:30:00', 'Attended', 'Routine', 35, 20, 4, 'Paid', 'Cash', 'Knee Pain', 'Yes', 'No', 'Yes', '2023-12-28', 'Physiotherapy recommended'),
(1053, 23, 218, 'Neurology', '2023-11-23', '2023-11-29', '11:00:00', 'Attended', 'Follow-up', 45, 10, 4, 'Paid', 'Debit Card', 'Stroke Follow-up', 'Yes', 'Yes', 'Yes', '2023-12-29', 'Recovery progressing'),
(1054, 24, 219, 'Pediatrics', '2023-11-24', '2023-11-30', '15:00:00', 'Attended', 'Routine', 25, 15, 5, 'Paid', 'Insurance', 'Vaccination', 'Yes', 'No', 'No', NULL, 'Regular vaccination'),
(1055, 25, 220, 'Dermatology', '2023-11-25', '2023-12-01', '13:00:00', 'Attended', 'Routine', 30, 20, 4, 'Paid', 'Cash', 'Skin Rash', 'Yes', 'No', 'Yes', '2023-12-15', 'Allergic reaction'),
(1056, 21, 201, 'Cardiology', '2023-11-26', '2023-12-02', '09:30:00', 'Attended', 'Emergency', 35, 5, 4, 'Paid', 'Insurance', 'Chest Pain', 'Yes', 'Yes', 'Yes', '2023-12-09', 'Emergency treatment'),
(1057, 22, 202, 'Orthopedics', '2023-11-27', '2023-12-03', '16:00:00', 'No-Show', 'Routine', 30, 0, NULL, 'Pending', 'Cash', NULL, 'No', 'No', 'No', NULL, 'Appointment missed'),
(1058, 23, 203, 'Neurology', '2023-11-28', '2023-12-04', '12:00:00', 'Attended', 'Routine', 40, 25, 4, 'Paid', 'Debit Card', 'Headache', 'Yes', 'No', 'No', NULL, 'Stress related'),
(1059, 24, 204, 'Pediatrics', '2023-11-29', '2023-12-05', '14:30:00', 'Attended', 'Emergency', 30, 10, 4, 'Paid', 'Cash', 'Fever', 'Yes', 'Yes', 'Yes', '2023-12-12', 'High temperature'),
(1060, 25, 205, 'Dermatology', '2023-11-30', '2023-12-06', '11:00:00', 'Attended', 'Routine', 35, 15, 4, 'Paid', 'Insurance', 'Acne', 'Yes', 'No', 'Yes', '2023-12-20', 'Treatment started');

-- =====================================================
-- DATA VERIFICATION QUERIES
-- =====================================================

-- Verify patient count
SELECT COUNT(*) AS total_patients FROM patients;

-- Verify doctor count  
SELECT COUNT(*) AS total_doctors FROM doctors;

-- Verify appointment count
SELECT COUNT(*) AS total_appointments FROM appointments;

-- Verify data integrity (foreign key relationships)
SELECT 
    'Patients with appointments' AS check_type,
    COUNT(DISTINCT p.patient_id) AS count
FROM patients p
JOIN appointments a ON p.patient_id = a.patient_id
UNION ALL
SELECT 
    'Doctors with appointments' AS check_type,
    COUNT(DISTINCT d.doctor_id) AS count
FROM doctors d
JOIN appointments a ON d.doctor_id = a.doctor_id; 