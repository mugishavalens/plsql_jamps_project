# Job Application Management System - Project Summary

## 1. Database Schema
- **Table:** `APPLICANTS`
- Columns:
  - `applicant_id` (Primary Key)
  - `first_name`, `last_name`, `email`, `phone`
  - `apply_date`, `years_experience`
  - `education_level`, `certifications`, `skills`
- Designed to store all relevant applicant information efficiently.

## 2. Sample Data
- Inserted multiple sample applicant records with varied experience, education, and skill sets.
- Used `COMMIT` to save all changes.
- Data supports testing procedures, functions, and ranking features.

## 3. Procedures
- **GET_TOP_APPLICANTS:**  
  - Lists applicants with details like name, email, phone, experience, education, certifications, and skills.
  - Sorted by experience and other criteria to identify top candidates.
- Procedures ensure repeatable, automated access to important applicant information.

## 4. Functions
- **CALCULATE_APPLICANT_SCORE:**  
  - Computes a weighted score for applicants based on experience, education level, and certifications.
  - Supports dynamic ranking of candidates for selection or review.
- Functions modularize scoring logic for reuse in procedures and cursors.

## 5. Triggers
- **AUTO_SET_APPLY_DATE:**  
  - Automatically sets the application date to the current date if missing.
- Triggers automate routine tasks and maintain data consistency.

## 6. Cursors
- Used cursors to iterate over applicant records efficiently.
- Combined with functions to calculate scores dynamically.
- Allowed procedural operations like printing top applicants with calculated scores.

## 7. Innovation & Special Features
- Multi-criteria scoring system for applicant ranking (experience, education, certifications, skills).
- Real-time dynamic ranking within PL/SQL.
- Flexible and extensible: new scoring criteria can be added easily.
- Reduces manual HR filtering and improves data-driven decision-making.

## 8. Summary
- Complete **end-to-end PL/SQL solution** for managing job applicants.
- Covers schema design, sample data population, procedures, functions, triggers, and cursor-based operations.
- Includes innovative ranking mechanism to identify top candidates dynamically.
- Structured for **efficiency, automation, and maintainability** in real-world HR scenarios.
