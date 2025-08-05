# 🏥 Hospital Appointment Analytics - SQL Project

## 📋 Project Overview

This SQL project analyzes hospital appointment data to solve real-world healthcare problems. The project focuses on reducing patient no-shows, optimizing doctor workloads, improving patient satisfaction, and providing actionable insights for hospital management.

**Dataset:** 25 patients, 20 doctors, 60 appointments  
**Time Period:** October-December 2023

## 🎯 Business Problems Solved

### 1. **Patient No-Show Reduction**
- Identify patterns in missed appointments
- Predict high-risk patients for no-shows
- Optimize appointment scheduling strategies

### 2. **Operational Efficiency**
- Analyze doctor workload distribution
- Optimize waiting times and patient flow
- Improve resource allocation across departments

### 3. **Financial Impact Analysis**
- Calculate revenue loss from no-shows
- Analyze payment patterns and insurance impact
- Identify cost optimization opportunities

### 4. **Patient Experience Enhancement**
- Correlate waiting times with satisfaction scores
- Identify factors affecting patient retention
- Improve appointment scheduling based on patient preferences

## 📊 Dataset Overview

### **Patients Table** (25 records)
- **Demographics:** Age, gender, marital status, occupation
- **Health Information:** Chronic diseases, diabetes, blood group
- **Financial:** Insurance type, income level
- **Contact:** Emergency contact, address, preferred language
- **History:** Last visit date, patient since date

### **Doctors Table** (20 records)
- **Professional:** Name, department, specialization, experience
- **Qualifications:** Education, certifications
- **Performance:** Rating, total patients, consultation fees
- **Availability:** Working hours, emergency availability
- **Contact:** Phone, email, join date

### **Appointments Table** (60 records)
- **Scheduling:** Scheduled date, appointment date/time
- **Status:** Attended/No-Show, appointment type
- **Operational:** Consultation duration, waiting time
- **Feedback:** Patient satisfaction ratings
- **Financial:** Payment status, payment method
- **Medical:** Diagnosis, prescriptions, lab tests
- **Follow-up:** Follow-up requirements and dates

## 🗂️ Project Structure

```
hospital-appointment-analytics-sql/
├── README.md                           # Project documentation
├── SETUP_GUIDE.md                      # Detailed setup instructions
├── data/                               # CSV datasets
│   ├── patients.csv                    # Patient information
│   ├── doctors.csv                     # Doctor information
│   └── appointments.csv                # Appointment records
├── sql/
│   ├── schema/
│   │   ├── schema.sql                  # Database schema
│   │   └── insert_data.sql             # Sample data insertion
│   └── analysis/
│       ├── comprehensive_analysis.sql  # Advanced analytical queries
│       └── mysql_practice_exercises.sql # MySQL practice exercises
├── docs/
│   └── ERD.txt                         # Entity Relationship Diagram
└── insights/
    └── summary_of_findings.md          # Key insights and recommendations
```

## 🔍 SQL Analysis Categories

### 1. **No-Show Analysis** (8 queries)
- Department-wise no-show rates
- Doctor-specific no-show patterns
- Appointment type analysis
- Temporal patterns (day/time analysis)

### 2. **Patient Demographic Analysis** (5 queries)
- Age group behavior patterns
- Gender and department correlations
- Insurance type impact
- Income level analysis
- Chronic disease correlation

### 3. **Doctor Performance Analysis** (3 queries)
- Workload distribution
- Patient satisfaction ratings
- Efficiency metrics (consultation time vs satisfaction)

### 4. **Operational Analysis** (4 queries)
- Waiting time optimization
- Scheduling efficiency
- Monthly trends
- Department utilization

### 5. **Financial Analysis** (3 queries)
- Payment method analysis
- Revenue impact of no-shows
- Insurance payment patterns

### 6. **Patient Behavior Analysis** (3 queries)
- Frequent defaulter identification
- Patient loyalty metrics
- Retention analysis (90-day return rate)

### 7. **Advanced Predictive Analysis** (3 queries)
- Risk factor identification
- Optimal scheduling analysis
- Satisfaction correlation analysis

### 8. **Business Intelligence Dashboard** (3 queries)
- Key Performance Indicators (KPIs)
- Department performance summary
- Monthly trends summary

## 💡 Key Insights

### **No-Show Patterns**
- Multiple departments have 33.33% no-show rate (ENT, General Surgery, Obstetrics, Orthopedics, Psychiatry, Radiology)
- Thursday appointments have 42.86% no-show rate
- Public insurance patients show 25.00% no-show rate
- Seniors (60+) are most likely to miss appointments

### **Operational Efficiency**
- Average waiting time varies from 0-30 minutes by department
- Emergency appointments have 0% no-show rate vs 44% for follow-ups
- Patient satisfaction drops with longer waiting times

### **Financial Impact**
- Estimated revenue loss from no-shows: ₹12,300
- Insurance payments are 100% successful vs 69% for cash
- Private insurance patients show better payment compliance

## 🛠️ Technical Requirements

### **Database Systems Supported**
- MySQL (recommended, version 8.0.16+ for full feature support)
- PostgreSQL
- SQLite
- Microsoft SQL Server

### **Tools for Analysis**
- MySQL Workbench (recommended for MySQL)
- pgAdmin (PostgreSQL)
- DB Browser for SQLite
- DBeaver (Universal)

## 📈 Quick Start

### **1. Setup Database (Clean Installation)**
```sql
-- Drop existing database if exists
DROP DATABASE IF EXISTS hospital_analytics;

-- Create fresh database
CREATE DATABASE hospital_analytics;
USE hospital_analytics;

-- Run schema and data
SOURCE sql/schema/schema.sql;
SOURCE sql/schema/insert_data.sql;
```

### **2. Run Analysis**
```sql
-- Execute comprehensive analysis
SOURCE sql/analysis/comprehensive_analysis.sql;
```

### **3. Practice MySQL (Optional)**
```sql
-- Run MySQL practice exercises
SOURCE sql/analysis/mysql_practice_exercises.sql;
```

> **📖 For detailed setup instructions, see [SETUP_GUIDE.md](SETUP_GUIDE.md)**

## 📚 Learning Resources

### **MySQL Practice Exercises**
The project includes comprehensive MySQL practice exercises (`mysql_practice_exercises.sql`) that provide:

- **13 Progressive Exercises** from basic to advanced
- **Real Hospital Data** for practical learning
- **Safe Practice Environment** with backup/restore functionality
- **Hospital-Specific Examples** relevant to healthcare analytics

### **How to Use Practice Exercises:**
```sql
-- Connect to MySQL and run:
USE hospital_analytics;
SOURCE sql/analysis/mysql_practice_exercises.sql;
```

## 🎯 Expected Outcomes

### **For Hospital Management**
- 15-20% reduction in no-show rates
- Improved resource allocation
- Enhanced patient satisfaction
- Optimized appointment scheduling

### **For Data Analysts**
- Comprehensive SQL portfolio piece
- Real-world problem-solving experience
- Healthcare analytics expertise
- Business intelligence skills

---

---

## 👨‍💻 **Author Information**

**Sankavaram Charan Sai**  
🎓 Final-year B.Tech student | Aspiring Backend Developer | SQL & Java Enthusiast

### 📫 **Connect with me:**
- **LinkedIn:** [S. Charan Sai](https://www.linkedin.com/in/s-charan-sai-16613b245/)
- **GitHub:** [TechWithCharan](https://github.com/TechWithCharan)
- **Email:** charansaicherry2004@gmail.com

### 🛠️ **Skills:**
Java | MySQL | HTML5 | CSS3 | SQL Analytics

---

**Note:** This project uses realistic but anonymized data for educational purposes. All patient and doctor information is fictional and created for demonstration purposes only. 