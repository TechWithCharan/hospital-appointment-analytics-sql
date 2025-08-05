-- =====================================================
-- HOSPITAL APPOINTMENT ANALYTICS - MySQL Practice Exercises
-- =====================================================
-- This file contains step-by-step MySQL exercises for CMD practice
-- Author: Sankavaram Charan Sai
-- LinkedIn: https://www.linkedin.com/in/s-charan-sai-16613b245/
-- GitHub: https://github.com/TechWithCharan
-- Email: charansaicherry2004@gmail.com
-- Date: 2025-08-05
-- 
-- PREREQUISITES:
-- - MySQL is installed and in PATH
-- - MySQL service is running
-- - Open Command Prompt (cmd)
-- - Hospital analytics database is set up

-- =====================================================
-- EXERCISE 1: BASIC CONNECTION AND NAVIGATION
-- =====================================================

-- Step 1: Connect to MySQL
-- C:\> mysql -u root -p
-- Enter password: (your password)

-- Step 2: Check Current Status
SELECT VERSION();
SELECT NOW();
SELECT USER();

-- Step 3: View All Databases
SHOW DATABASES;

-- Step 4: Use Hospital Database
USE hospital_analytics;
SELECT DATABASE();

-- Step 5: View All Tables
SHOW TABLES;

-- Step 6: Check Table Structures
DESCRIBE patients;
DESCRIBE doctors;
DESCRIBE appointments;

-- =====================================================
-- EXERCISE 2: BASIC SELECT QUERIES
-- =====================================================

-- Step 1: View All Data
SELECT * FROM patients LIMIT 5;
SELECT * FROM doctors LIMIT 5;
SELECT * FROM appointments LIMIT 5;

-- Step 2: Select Specific Columns
SELECT patient_id, age, gender FROM patients;
SELECT doctor_name, department, experience_years FROM doctors;
SELECT appointment_id, patient_id, doctor_id, status FROM appointments;

-- Step 3: WHERE Clause
SELECT * FROM patients WHERE age > 50;
SELECT * FROM patients WHERE gender = 'Female';
SELECT * FROM doctors WHERE experience_years > 10;
SELECT * FROM appointments WHERE status = 'No-Show';

-- Step 4: ORDER BY
SELECT * FROM patients ORDER BY age;
SELECT * FROM patients ORDER BY age DESC;
SELECT * FROM doctors ORDER BY experience_years DESC;
SELECT * FROM appointments ORDER BY appointment_date;

-- Step 5: LIMIT
SELECT * FROM patients LIMIT 3;
SELECT * FROM doctors ORDER BY experience_years DESC LIMIT 3;
SELECT * FROM appointments ORDER BY appointment_date DESC LIMIT 5;

-- =====================================================
-- EXERCISE 3: FILTERING AND PATTERN MATCHING
-- =====================================================

-- Step 1: LIKE Operator
SELECT * FROM patients WHERE address_city LIKE 'J%';
SELECT * FROM doctors WHERE doctor_name LIKE 'Dr. %';
SELECT * FROM patients WHERE address_city LIKE '%Delhi%';

-- Step 2: IN Operator
SELECT * FROM patients WHERE age IN (25, 30, 35, 40);
SELECT * FROM doctors WHERE department IN ('Cardiology', 'Neurology');
SELECT * FROM appointments WHERE appointment_type IN ('Emergency', 'Routine');

-- Step 3: BETWEEN Operator
SELECT * FROM patients WHERE age BETWEEN 20 AND 40;
SELECT * FROM doctors WHERE experience_years BETWEEN 5 AND 15;
SELECT * FROM appointments WHERE appointment_date BETWEEN '2023-10-01' AND '2023-10-15';

-- Step 4: NULL Values
SELECT * FROM appointments WHERE feedback_rating IS NULL;
SELECT * FROM appointments WHERE diagnosis IS NOT NULL;

-- =====================================================
-- EXERCISE 4: AGGREGATE FUNCTIONS
-- =====================================================

-- Step 1: COUNT
SELECT COUNT(*) FROM patients;
SELECT COUNT(*) FROM doctors;
SELECT COUNT(*) FROM appointments;
SELECT COUNT(*) FROM appointments WHERE status = 'No-Show';

-- Step 2: AVG, SUM, MAX, MIN
SELECT AVG(age) FROM patients;
SELECT AVG(experience_years) FROM doctors;
SELECT MAX(consultation_fee) FROM doctors;
SELECT MIN(consultation_fee) FROM doctors;
SELECT SUM(consultation_fee) FROM doctors;

-- Step 3: GROUP BY
SELECT department, COUNT(*) FROM doctors GROUP BY department;
SELECT gender, COUNT(*) FROM patients GROUP BY gender;
SELECT status, COUNT(*) FROM appointments GROUP BY status;

-- Step 4: HAVING
SELECT department, COUNT(*) as doctor_count 
FROM doctors 
GROUP BY department 
HAVING doctor_count > 1;

SELECT age, COUNT(*) as patient_count 
FROM patients 
GROUP BY age 
HAVING patient_count > 1;

-- =====================================================
-- EXERCISE 5: JOIN QUERIES
-- =====================================================

-- Step 1: INNER JOIN
SELECT p.patient_id, p.age, p.gender, a.appointment_date, a.status
FROM patients p
INNER JOIN appointments a ON p.patient_id = a.patient_id;

-- Step 2: LEFT JOIN
SELECT d.doctor_name, d.department, a.appointment_date, a.status
FROM doctors d
LEFT JOIN appointments a ON d.doctor_id = a.doctor_id;

-- Step 3: Multiple Table JOIN
SELECT p.patient_id, p.age, p.gender, d.doctor_name, d.department, a.status
FROM patients p
INNER JOIN appointments a ON p.patient_id = a.patient_id
INNER JOIN doctors d ON a.doctor_id = d.doctor_id;

-- Step 4: Self JOIN (if needed)
-- This would be useful if we had related appointments

-- =====================================================
-- EXERCISE 6: SUBQUERIES
-- =====================================================

-- Step 1: Subquery in WHERE
SELECT * FROM patients 
WHERE age > (SELECT AVG(age) FROM patients);

SELECT * FROM doctors 
WHERE experience_years > (SELECT AVG(experience_years) FROM doctors);

-- Step 2: Subquery in SELECT
SELECT doctor_name, department,
       (SELECT COUNT(*) FROM appointments a WHERE a.doctor_id = d.doctor_id) as appointment_count
FROM doctors d;

-- Step 3: EXISTS
SELECT * FROM doctors d 
WHERE EXISTS (SELECT 1 FROM appointments a WHERE a.doctor_id = d.doctor_id);

-- =====================================================
-- EXERCISE 7: CASE STATEMENTS
-- =====================================================

-- Step 1: Simple CASE
SELECT patient_id, age, gender,
CASE 
    WHEN age < 18 THEN 'Child'
    WHEN age BETWEEN 18 AND 35 THEN 'Young Adult'
    WHEN age BETWEEN 36 AND 60 THEN 'Adult'
    ELSE 'Senior'
END as age_group
FROM patients;

-- Step 2: CASE with Aggregation
SELECT 
    CASE 
        WHEN age < 18 THEN 'Child'
        WHEN age BETWEEN 18 AND 35 THEN 'Young Adult'
        WHEN age BETWEEN 36 AND 60 THEN 'Adult'
        ELSE 'Senior'
    END as age_group,
    COUNT(*) as patient_count
FROM patients
GROUP BY age_group;

-- Step 3: CASE for Status Analysis
SELECT 
    CASE 
        WHEN status = 'Attended' THEN 'Completed'
        WHEN status = 'No-Show' THEN 'Missed'
        ELSE 'Unknown'
    END as appointment_status,
    COUNT(*) as count
FROM appointments
GROUP BY appointment_status;

-- =====================================================
-- EXERCISE 8: DATE AND TIME FUNCTIONS
-- =====================================================

-- Step 1: Date Functions
SELECT appointment_date, 
       YEAR(appointment_date) as year,
       MONTH(appointment_date) as month,
       DAY(appointment_date) as day
FROM appointments;

-- Step 2: Date Calculations
SELECT appointment_date, 
       scheduled_date,
       DATEDIFF(appointment_date, scheduled_date) as days_difference
FROM appointments;

-- Step 3: Date Formatting
SELECT appointment_date,
       DATE_FORMAT(appointment_date, '%W') as day_name,
       DATE_FORMAT(appointment_date, '%M') as month_name
FROM appointments;

-- Step 4: Time Functions
SELECT appointment_time,
       HOUR(appointment_time) as hour,
       MINUTE(appointment_time) as minute
FROM appointments;

-- =====================================================
-- EXERCISE 9: WINDOW FUNCTIONS (MySQL 8.0+)
-- =====================================================

-- Step 1: ROW_NUMBER()
SELECT patient_id, age, gender,
       ROW_NUMBER() OVER (ORDER BY age) as row_num
FROM patients;

-- Step 2: RANK()
SELECT doctor_name, experience_years,
       RANK() OVER (ORDER BY experience_years DESC) as experience_rank
FROM doctors;

-- Step 3: DENSE_RANK()
SELECT doctor_name, consultation_fee,
       DENSE_RANK() OVER (ORDER BY consultation_fee DESC) as fee_rank
FROM doctors;

-- =====================================================
-- EXERCISE 10: DATA MODIFICATION (SAFE PRACTICE)
-- =====================================================

-- Step 1: Create Backup Tables (SAFE PRACTICE)
CREATE TABLE patients_backup AS SELECT * FROM patients;
CREATE TABLE doctors_backup AS SELECT * FROM doctors;
CREATE TABLE appointments_backup AS SELECT * FROM appointments;

-- Step 2: Update Data (with backup)
UPDATE patients SET age = age + 1 WHERE patient_id = 1;
SELECT * FROM patients WHERE patient_id = 1;

-- Step 3: Revert Changes (SAFE PRACTICE)
-- If something goes wrong, restore from backup:
-- UPDATE patients SET age = (SELECT age FROM patients_backup WHERE patient_id = 1) WHERE patient_id = 1;

-- Step 4: Delete Data (with backup)
DELETE FROM appointments WHERE appointment_id = 1001;
SELECT * FROM appointments WHERE appointment_id = 1001;

-- Step 5: Revert Deletion (SAFE PRACTICE)
-- If needed, restore from backup:
-- INSERT INTO appointments SELECT * FROM appointments_backup WHERE appointment_id = 1001;

-- =====================================================
-- EXERCISE 11: INDEXES AND OPTIMIZATION
-- =====================================================

-- Step 1: Create Indexes
CREATE INDEX idx_patient_age ON patients(age);
CREATE INDEX idx_doctor_department ON doctors(department);
CREATE INDEX idx_appointment_date ON appointments(appointment_date);

-- Step 2: Show Indexes
SHOW INDEX FROM patients;
SHOW INDEX FROM doctors;
SHOW INDEX FROM appointments;

-- Step 3: Explain Query
EXPLAIN SELECT * FROM patients WHERE age > 50;
EXPLAIN SELECT * FROM doctors WHERE department = 'Cardiology';

-- Step 4: Drop Indexes (if needed)
-- DROP INDEX idx_patient_age ON patients;
-- DROP INDEX idx_doctor_department ON doctors;
-- DROP INDEX idx_appointment_date ON appointments;

-- =====================================================
-- EXERCISE 12: ADVANCED ANALYTICS
-- =====================================================

-- Step 1: No-Show Analysis
SELECT 
    department,
    COUNT(*) as total_appointments,
    SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) as no_shows,
    ROUND(SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) as no_show_rate
FROM appointments
GROUP BY department
ORDER BY no_show_rate DESC;

-- Step 2: Patient Demographics
SELECT 
    CASE 
        WHEN age < 18 THEN 'Child'
        WHEN age BETWEEN 18 AND 35 THEN 'Young Adult'
        WHEN age BETWEEN 36 AND 60 THEN 'Adult'
        ELSE 'Senior'
    END as age_group,
    COUNT(*) as patient_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM patients), 2) as percentage
FROM patients
GROUP BY age_group;

-- Step 3: Doctor Performance
SELECT 
    d.doctor_name,
    d.department,
    COUNT(a.appointment_id) as total_appointments,
    ROUND(AVG(a.feedback_rating), 2) as avg_rating
FROM doctors d
LEFT JOIN appointments a ON d.doctor_id = a.doctor_id
WHERE a.feedback_rating IS NOT NULL
GROUP BY d.doctor_id, d.doctor_name, d.department
ORDER BY avg_rating DESC;

-- =====================================================
-- EXERCISE 13: CLEANUP AND RESTORATION
-- =====================================================
-- Uncomment these lines when finished practicing:
-- Step 1: Drop Backup Tables (when done practicing)
-- DROP TABLE patients_backup;
-- DROP TABLE doctors_backup;
-- DROP TABLE appointments_backup;

-- Step 2: Drop Indexes (if created)
-- DROP INDEX idx_patient_age ON patients;
-- DROP INDEX idx_doctor_department ON doctors;
-- DROP INDEX idx_appointment_date ON appointments;

-- Step 3: Verify Original Data
SELECT COUNT(*) FROM patients;
SELECT COUNT(*) FROM doctors;
SELECT COUNT(*) FROM appointments;

-- =====================================================
-- USEFUL COMMANDS REFERENCE
-- =====================================================

/*
Connection Commands:
-------------------
mysql -u root -p                    -- Connect to MySQL
mysql -u root -p -D hospital_analytics   -- Connect to specific database
mysql -u root -p -e "SELECT 1;"     -- Execute single command

Navigation Commands:
-------------------
SHOW DATABASES;                     -- List all databases
USE hospital_analytics;             -- Switch database
SHOW TABLES;                        -- List all tables
DESCRIBE table_name;                -- Show table structure

Data Query Commands:
-------------------
SELECT * FROM table_name;           -- View all data
SELECT * FROM table_name LIMIT 5;   -- View first 5 rows
SELECT COUNT(*) FROM table_name;    -- Count records
SELECT DISTINCT column FROM table;  -- Unique values

System Commands:
---------------
SELECT VERSION();                   -- Check MySQL version
SELECT NOW();                       -- Current date/time
SELECT USER();                      -- Current user
SELECT DATABASE();                  -- Current database
EXIT;                               -- Quit MySQL

Backup Commands:
----------------
CREATE TABLE backup_table AS SELECT * FROM original_table;  -- Create backup
DROP TABLE backup_table;            -- Remove backup
*/

-- =====================================================
-- EXERCISE COMPLETION CHECKLIST
-- =====================================================

/*
✅ Exercise 1: Basic Connection and Navigation
✅ Exercise 2: Basic SELECT Queries  
✅ Exercise 3: Filtering and Pattern Matching
✅ Exercise 4: Aggregate Functions
✅ Exercise 5: JOIN Queries
✅ Exercise 6: Subqueries
✅ Exercise 7: CASE Statements
✅ Exercise 8: Date and Time Functions
✅ Exercise 9: Window Functions
✅ Exercise 10: Data Modification (Safe Practice)
✅ Exercise 11: Indexes and Optimization
✅ Exercise 12: Advanced Analytics
✅ Exercise 13: Cleanup and Restoration

🎯 All exercises completed successfully!
🚀 Ready for comprehensive analysis!
*/

-- =====================================================
-- END OF MYSQL PRACTICE EXERCISES
-- ===================================================== 