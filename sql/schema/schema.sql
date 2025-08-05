-- Hospital Appointment Analytics Database Schema
-- This schema supports comprehensive analysis of hospital appointments, patients, and doctors

-- Create patients table with enhanced information
CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    insurance_type VARCHAR(50) NOT NULL,
    has_chronic_disease VARCHAR(3) NOT NULL, -- Yes/No
    diabetic VARCHAR(3) NOT NULL, -- Yes/No
    blood_group VARCHAR(5),
    emergency_contact VARCHAR(15),
    address_city VARCHAR(50),
    occupation VARCHAR(50),
    marital_status VARCHAR(20),
    income_level VARCHAR(10), -- Low/Medium/High
    preferred_language VARCHAR(20),
    last_visit_date DATE,
    patient_since DATE
);

-- Create doctors table with comprehensive information
CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    specialization VARCHAR(100),
    experience_years INT,
    qualification VARCHAR(100),
    consultation_fee DECIMAL(10,2),
    working_hours VARCHAR(20),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    join_date DATE,
    is_active VARCHAR(3), -- Yes/No
    rating DECIMAL(3,2),
    total_patients INT,
    emergency_available VARCHAR(3) -- Yes/No
);

-- Create appointments table with detailed appointment information
CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    department VARCHAR(50) NOT NULL,
    scheduled_date DATE NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time TIME,
    status VARCHAR(20) NOT NULL, -- Attended/No-Show
    appointment_type VARCHAR(20) NOT NULL, -- Routine/Emergency/Follow-up
    consultation_duration INT, -- in minutes
    waiting_time_minutes INT,
    feedback_rating INT, -- 1-5 scale
    payment_status VARCHAR(20), -- Paid/Pending
    payment_method VARCHAR(20),
    diagnosis TEXT,
    prescription_given VARCHAR(3), -- Yes/No
    lab_tests_ordered VARCHAR(3), -- Yes/No
    follow_up_required VARCHAR(3), -- Yes/No
    follow_up_date DATE,
    notes TEXT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

-- Create indexes for better query performance
CREATE INDEX idx_appointments_patient_id ON appointments(patient_id);
CREATE INDEX idx_appointments_doctor_id ON appointments(doctor_id);
CREATE INDEX idx_appointments_status ON appointments(status);
CREATE INDEX idx_appointments_date ON appointments(appointment_date);
CREATE INDEX idx_appointments_department ON appointments(department);
CREATE INDEX idx_appointments_type ON appointments(appointment_type);

CREATE INDEX idx_patients_age ON patients(age);
CREATE INDEX idx_patients_gender ON patients(gender);
CREATE INDEX idx_patients_insurance ON patients(insurance_type);
CREATE INDEX idx_patients_chronic ON patients(has_chronic_disease);

CREATE INDEX idx_doctors_department ON doctors(department);
CREATE INDEX idx_doctors_experience ON doctors(experience_years);
CREATE INDEX idx_doctors_rating ON doctors(rating);

-- Add constraints for data integrity
ALTER TABLE patients 
ADD CONSTRAINT chk_age CHECK (age > 0 AND age < 150),
ADD CONSTRAINT chk_gender CHECK (gender IN ('Male', 'Female')),
ADD CONSTRAINT chk_insurance CHECK (insurance_type IN ('Private', 'Public')),
ADD CONSTRAINT chk_chronic CHECK (has_chronic_disease IN ('Yes', 'No')),
ADD CONSTRAINT chk_diabetic CHECK (diabetic IN ('Yes', 'No')),
ADD CONSTRAINT chk_income CHECK (income_level IN ('Low', 'Medium', 'High'));

ALTER TABLE doctors
ADD CONSTRAINT chk_experience CHECK (experience_years >= 0),
ADD CONSTRAINT chk_fee CHECK (consultation_fee >= 0),
ADD CONSTRAINT chk_rating CHECK (rating >= 0 AND rating <= 5),
ADD CONSTRAINT chk_active CHECK (is_active IN ('Yes', 'No')),
ADD CONSTRAINT chk_emergency CHECK (emergency_available IN ('Yes', 'No'));

ALTER TABLE appointments
ADD CONSTRAINT chk_status CHECK (status IN ('Attended', 'No-Show')),
ADD CONSTRAINT chk_type CHECK (appointment_type IN ('Routine', 'Emergency', 'Follow-up')),
ADD CONSTRAINT chk_duration CHECK (consultation_duration > 0),
ADD CONSTRAINT chk_waiting CHECK (waiting_time_minutes >= 0),
ADD CONSTRAINT chk_feedback CHECK (feedback_rating >= 1 AND feedback_rating <= 5),
ADD CONSTRAINT chk_payment CHECK (payment_status IN ('Paid', 'Pending')),
ADD CONSTRAINT chk_prescription CHECK (prescription_given IN ('Yes', 'No')),
ADD CONSTRAINT chk_lab_tests CHECK (lab_tests_ordered IN ('Yes', 'No')),
ADD CONSTRAINT chk_follow_up CHECK (follow_up_required IN ('Yes', 'No')); 