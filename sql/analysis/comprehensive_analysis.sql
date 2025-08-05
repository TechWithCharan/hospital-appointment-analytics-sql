-- =====================================================
-- HOSPITAL APPOINTMENT ANALYTICS - COMPREHENSIVE ANALYSIS
-- =====================================================
-- This file contains advanced SQL queries to solve real-world hospital problems
-- Author: Sankavaram Charan Sai
-- LinkedIn: https://www.linkedin.com/in/s-charan-sai-16613b245/
-- GitHub: https://github.com/TechWithCharan
-- Email: charansaicherry2004@gmail.com
-- Date: 2025-08-05

-- =====================================================
-- 1. NO-SHOW ANALYSIS QUERIES
-- =====================================================

-- 1.1 Overall no-show rate by department
SELECT 
    department,
    COUNT(*) AS total_appointments,
    SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) AS no_shows,
    ROUND(SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS no_show_rate
FROM appointments
GROUP BY department
ORDER BY no_show_rate DESC;

-- 1.2 No-show rate by doctor (with doctor details)
SELECT 
    d.doctor_name,
    d.department,
    d.experience_years,
    COUNT(*) AS total_appointments,
    SUM(CASE WHEN a.status = 'No-Show' THEN 1 ELSE 0 END) AS no_shows,
    ROUND(SUM(CASE WHEN a.status = 'No-Show' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS no_show_rate
FROM appointments a
JOIN doctors d ON a.doctor_id = d.doctor_id
GROUP BY d.doctor_name, d.department, d.experience_years
ORDER BY no_show_rate DESC;

-- 1.3 No-show rate by appointment type
SELECT 
    appointment_type,
    COUNT(*) AS total,
    SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) AS no_shows,
    ROUND(SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS no_show_rate
FROM appointments
GROUP BY appointment_type
ORDER BY no_show_rate DESC;

-- 1.4 No-show rate by day of week
SELECT 
    DATE_FORMAT(appointment_date, '%W') AS day_name,
    COUNT(*) AS total,
    SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) AS no_shows,
    ROUND(SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS no_show_rate
FROM appointments
GROUP BY day_name
ORDER BY no_shows DESC;

-- 1.5 No-show rate by time of day (morning vs afternoon)
SELECT 
    CASE 
        WHEN HOUR(appointment_time) < 12 THEN 'Morning'
        ELSE 'Afternoon'
    END AS time_of_day,
    COUNT(*) AS total,
    SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) AS no_shows,
    ROUND(SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS no_show_rate
FROM appointments
GROUP BY time_of_day
ORDER BY no_show_rate DESC;

-- =====================================================
-- 2. PATIENT DEMOGRAPHIC ANALYSIS
-- =====================================================

-- 2.1 No-show rate by age group
SELECT
    CASE 
        WHEN age < 18 THEN 'Child (0-17)'
        WHEN age BETWEEN 18 AND 35 THEN 'Young Adult (18-35)'
        WHEN age BETWEEN 36 AND 60 THEN 'Adult (36-60)'
        ELSE 'Senior (60+)'
    END AS age_group,
    COUNT(*) AS total,
    SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) AS no_shows,
    ROUND(SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS no_show_rate
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
GROUP BY age_group
ORDER BY no_show_rate DESC;

-- 2.2 No-show rate by gender and department
SELECT 
    department,
    gender,
    COUNT(*) AS total,
    SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) AS no_shows,
    ROUND(SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS no_show_rate
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
GROUP BY department, gender
ORDER BY department, gender;

-- 2.3 No-show rate by insurance type
SELECT 
    insurance_type,
    COUNT(*) AS total,
    SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) AS no_shows,
    ROUND(SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS no_show_rate
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
GROUP BY insurance_type
ORDER BY no_show_rate DESC;

-- 2.4 No-show rate by income level
SELECT 
    income_level,
    COUNT(*) AS total,
    SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) AS no_shows,
    ROUND(SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS no_show_rate
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
GROUP BY income_level
ORDER BY no_show_rate DESC;

-- 2.5 No-show rate by chronic disease status
SELECT 
    has_chronic_disease,
    COUNT(*) AS total,
    SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) AS no_shows,
    ROUND(SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS no_show_rate
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
GROUP BY has_chronic_disease
ORDER BY no_show_rate DESC;

-- =====================================================
-- 3. DOCTOR PERFORMANCE ANALYSIS
-- =====================================================

-- 3.1 Doctor workload analysis
SELECT 
    d.doctor_name,
    d.department,
    COUNT(*) AS total_appointments,
    ROUND(AVG(a.consultation_duration), 2) AS avg_consultation_duration,
    ROUND(AVG(a.waiting_time_minutes), 2) AS avg_waiting_time,
    ROUND(AVG(a.feedback_rating), 2) AS avg_feedback_rating
FROM appointments a
JOIN doctors d ON a.doctor_id = d.doctor_id
WHERE a.status = 'Attended'
GROUP BY d.doctor_name, d.department
ORDER BY total_appointments DESC;

-- 3.2 Best performing doctors by feedback rating (minimum 2 appointments)
SELECT 
    d.doctor_name,
    d.department,
    COUNT(*) AS rated_appointments,
    ROUND(AVG(a.feedback_rating), 2) AS avg_feedback,
    ROUND(AVG(a.consultation_duration), 2) AS avg_consultation_time
FROM appointments a
JOIN doctors d ON a.doctor_id = d.doctor_id
WHERE a.feedback_rating IS NOT NULL
GROUP BY d.doctor_name, d.department
HAVING COUNT(*) >= 2
ORDER BY avg_feedback DESC;

-- 3.3 Doctor efficiency analysis (consultation time vs patient satisfaction)
SELECT 
    d.doctor_name,
    d.department,
    ROUND(AVG(a.consultation_duration), 2) AS avg_consultation_duration,
    ROUND(AVG(a.feedback_rating), 2) AS avg_feedback,
    COUNT(*) AS total_patients
FROM appointments a
JOIN doctors d ON a.doctor_id = d.doctor_id
WHERE a.status = 'Attended' AND a.feedback_rating IS NOT NULL
GROUP BY d.doctor_name, d.department
ORDER BY avg_feedback DESC;

-- =====================================================
-- 4. OPERATIONAL ANALYSIS
-- =====================================================

-- 4.1 Average waiting time by department
SELECT 
    department,
    COUNT(*) AS total_appointments,
    ROUND(AVG(waiting_time_minutes), 2) AS avg_waiting_time,
    MAX(waiting_time_minutes) AS max_waiting_time,
    MIN(waiting_time_minutes) AS min_waiting_time
FROM appointments
WHERE status = 'Attended'
GROUP BY department
ORDER BY avg_waiting_time DESC;

-- 4.2 Appointment scheduling efficiency (lead time analysis)
SELECT 
    appointment_type,
    ROUND(AVG(DATEDIFF(appointment_date, scheduled_date)), 2) AS avg_lead_time_days,
    COUNT(*) AS total_appointments,
    ROUND(SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS no_show_rate
FROM appointments
GROUP BY appointment_type
ORDER BY avg_lead_time_days DESC;

-- 4.3 Monthly appointment trends
SELECT 
    DATE_FORMAT(appointment_date, '%Y-%m-01') AS month,
    COUNT(*) AS total_appointments,
    SUM(CASE WHEN status = 'Attended' THEN 1 ELSE 0 END) AS attended,
    SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) AS no_shows,
    ROUND(SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS no_show_rate
FROM appointments
GROUP BY month
ORDER BY month;

-- 4.4 Department utilization analysis
SELECT 
    department,
    COUNT(*) AS total_appointments,
    COUNT(DISTINCT patient_id) AS unique_patients,
    COUNT(DISTINCT doctor_id) AS doctors_involved,
    ROUND(COUNT(*) * 1.0 / COUNT(DISTINCT doctor_id), 2) AS appointments_per_doctor
FROM appointments
GROUP BY department
ORDER BY total_appointments DESC;

-- =====================================================
-- 5. FINANCIAL ANALYSIS
-- =====================================================

-- 5.1 Revenue analysis by payment method
SELECT 
    payment_method,
    COUNT(*) AS total_appointments,
    SUM(CASE WHEN payment_status = 'Paid' THEN 1 ELSE 0 END) AS paid_appointments,
    SUM(CASE WHEN payment_status = 'Pending' THEN 1 ELSE 0 END) AS pending_payments,
    ROUND(SUM(CASE WHEN payment_status = 'Paid' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS payment_success_rate
FROM appointments
GROUP BY payment_method
ORDER BY total_appointments DESC;

-- 5.2 Revenue impact of no-shows (estimated)
SELECT 
    a.department,
    COUNT(*) AS total_appointments,
    SUM(CASE WHEN a.status = 'No-Show' THEN 1 ELSE 0 END) AS no_shows,
    ROUND(AVG(d.consultation_fee), 2) AS avg_consultation_fee,
    ROUND(SUM(CASE WHEN a.status = 'No-Show' THEN 1 ELSE 0 END) * AVG(d.consultation_fee), 2) AS estimated_revenue_loss
FROM appointments a
JOIN doctors d ON a.doctor_id = d.doctor_id
GROUP BY a.department
ORDER BY estimated_revenue_loss DESC;

-- 5.3 Payment status by insurance type
SELECT 
    p.insurance_type,
    COUNT(*) AS total_appointments,
    SUM(CASE WHEN a.payment_status = 'Paid' THEN 1 ELSE 0 END) AS paid,
    SUM(CASE WHEN a.payment_status = 'Pending' THEN 1 ELSE 0 END) AS pending,
    ROUND(SUM(CASE WHEN a.payment_status = 'Paid' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS payment_rate
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
GROUP BY p.insurance_type
ORDER BY payment_rate DESC;

-- =====================================================
-- 6. PATIENT BEHAVIOR ANALYSIS
-- =====================================================

-- 6.1 Frequent defaulters (patients with multiple no-shows)
SELECT 
    p.patient_id,
    p.age,
    p.gender,
    p.insurance_type,
    COUNT(*) AS total_no_shows,
    COUNT(DISTINCT a.department) AS departments_visited
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
WHERE a.status = 'No-Show'
GROUP BY p.patient_id, p.age, p.gender, p.insurance_type
HAVING COUNT(*) > 1
ORDER BY total_no_shows DESC;

-- 6.2 Patient loyalty analysis (return visits)
SELECT 
    p.patient_id,
    p.age,
    p.gender,
    COUNT(*) AS total_visits,
    SUM(CASE WHEN a.status = 'Attended' THEN 1 ELSE 0 END) AS attended_visits,
    SUM(CASE WHEN a.status = 'No-Show' THEN 1 ELSE 0 END) AS missed_visits,
    ROUND(SUM(CASE WHEN a.status = 'Attended' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attendance_rate
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
GROUP BY p.patient_id, p.age, p.gender
HAVING COUNT(*) > 1
ORDER BY total_visits DESC;

-- 6.3 Patient retention analysis (90-day return rate)
WITH first_visits AS (
    SELECT patient_id, MIN(appointment_date) AS first_appointment
    FROM appointments
    GROUP BY patient_id
),
return_visits AS (
    SELECT a.patient_id
    FROM appointments a
    JOIN first_visits f ON a.patient_id = f.patient_id
    WHERE a.appointment_date > f.first_appointment
        AND a.appointment_date <= DATE_ADD(f.first_appointment, INTERVAL 90 DAY)
)
SELECT 
    COUNT(DISTINCT f.patient_id) AS total_patients,
    COUNT(DISTINCT r.patient_id) AS returned_within_90_days,
    ROUND(COUNT(DISTINCT r.patient_id) * 100.0 / COUNT(DISTINCT f.patient_id), 2) AS return_rate
FROM first_visits f
LEFT JOIN return_visits r ON f.patient_id = r.patient_id;

-- =====================================================
-- 7. ADVANCED PREDICTIVE ANALYSIS
-- =====================================================

-- 7.1 Risk factors for no-shows (comprehensive analysis)
SELECT 
    p.has_chronic_disease,
    p.diabetic,
    p.income_level,
    p.insurance_type,
    a.appointment_type,
    COUNT(*) AS total_appointments,
    SUM(CASE WHEN a.status = 'No-Show' THEN 1 ELSE 0 END) AS no_shows,
    ROUND(SUM(CASE WHEN a.status = 'No-Show' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS no_show_rate
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
GROUP BY p.has_chronic_disease, p.diabetic, p.income_level, p.insurance_type, a.appointment_type
ORDER BY no_show_rate DESC;

-- 7.2 Optimal appointment scheduling analysis
SELECT 
    (DAYOFWEEK(appointment_date) - 1) AS day_of_week,
    HOUR(appointment_time) AS hour_of_day,
    COUNT(*) AS total_appointments,
    SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) AS no_shows,
    ROUND(SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS no_show_rate
FROM appointments
GROUP BY day_of_week, hour_of_day
ORDER BY no_show_rate ASC;

-- 7.3 Patient satisfaction correlation with waiting time
SELECT 
    CASE 
        WHEN waiting_time_minutes < 15 THEN 'Low Wait (< 15 min)'
        WHEN waiting_time_minutes BETWEEN 15 AND 30 THEN 'Medium Wait (15-30 min)'
        ELSE 'High Wait (> 30 min)'
    END AS wait_category,
    COUNT(*) AS total_appointments,
    ROUND(AVG(feedback_rating), 2) AS avg_satisfaction,
    ROUND(AVG(waiting_time_minutes), 2) AS avg_wait_time
FROM appointments
WHERE status = 'Attended' AND feedback_rating IS NOT NULL
GROUP BY wait_category
ORDER BY avg_satisfaction DESC;

-- =====================================================
-- 8. BUSINESS INTELLIGENCE DASHBOARD QUERIES
-- =====================================================

-- 8.1 Key Performance Indicators (KPIs)
SELECT 
    'Total Appointments' AS metric,
    COUNT(*) AS value
FROM appointments
UNION ALL
SELECT 
    'No-Show Rate' AS metric,
    ROUND(SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS value
FROM appointments
UNION ALL
SELECT 
    'Average Waiting Time (minutes)' AS metric,
    ROUND(AVG(waiting_time_minutes), 2) AS value
FROM appointments
WHERE status = 'Attended'
UNION ALL
SELECT 
    'Average Patient Satisfaction' AS metric,
    ROUND(AVG(feedback_rating), 2) AS value
FROM appointments
WHERE feedback_rating IS NOT NULL;

-- 8.2 Department performance summary
SELECT 
    a.department,
    COUNT(*) AS total_appointments,
    ROUND(SUM(CASE WHEN a.status = 'No-Show' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS no_show_rate,
    ROUND(AVG(a.waiting_time_minutes), 2) AS avg_wait_time,
    ROUND(AVG(f.feedback_rating), 2) AS avg_satisfaction,
    COUNT(DISTINCT a.patient_id) AS unique_patients
FROM appointments a
LEFT JOIN (
    SELECT appointment_id, feedback_rating 
    FROM appointments 
    WHERE feedback_rating IS NOT NULL
) f ON a.appointment_id = f.appointment_id
GROUP BY a.department
ORDER BY total_appointments DESC;

-- 8.3 Monthly trends summary
SELECT 
    DATE_FORMAT(appointment_date, '%Y-%m-01') AS month,
    COUNT(*) AS total_appointments,
    SUM(CASE WHEN status = 'Attended' THEN 1 ELSE 0 END) AS attended,
    SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) AS no_shows,
    ROUND(SUM(CASE WHEN status = 'No-Show' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS no_show_rate,
    ROUND(AVG(waiting_time_minutes), 2) AS avg_wait_time,
    COUNT(DISTINCT patient_id) AS unique_patients
FROM appointments
GROUP BY month
ORDER BY month; 