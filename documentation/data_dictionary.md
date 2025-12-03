# DATA DICTIONARY  


## 1. Overview
This document describes all database tables, fields, data types, constraints, and business rules used in the Job Application Management System.


## 2. Table: `applicants`

| Field Name       | Data Type        | Null | Constraints              | Description |
|------------------|------------------|------|---------------------------|-------------|
| applicant_id     | NUMBER           | No   | PK, Auto Increment        | Unique identifier for each applicant |
| full_name        | VARCHAR2(100)    | No   |                           | Applicant full legal name |
| email            | VARCHAR2(100)    | No   | UNIQUE                    | Applicant email address |
| phone            | VARCHAR2(20)     | No   |                           | Contact phone number |
| gender           | VARCHAR2(10)     | Yes  |                           | Gender of applicant |
| date_of_birth    | DATE             | Yes  |                           | Applicant's birthdate |
| registration_date| DATE             | No   | DEFAULT SYSDATE           | System registration timestamp |

## 3. Table: `jobs`

| Field Name       | Data Type         | Null | Constraints             | Description |
|------------------|-------------------|------|--------------------------|-------------|
| job_id           | NUMBER            | No   | PK, Auto Increment       | Unique job identifier |
| job_title        | VARCHAR2(150)     | No   |                          | Title of job |
| department       | VARCHAR2(100)     | Yes  |                          | Hiring department |
| job_type         | VARCHAR2(50)      | Yes  |                          | Full-time / Part-time |
| location         | VARCHAR2(100)     | Yes  |                          | Job location |
| posted_date      | DATE              | No   | DEFAULT SYSDATE          | Date job was posted |
| closing_date     | DATE              | Yes  |                          | Deadline for applications |
| status           | VARCHAR2(20)      | No   | CHECK(status IN ('ACTIVE','CLOSED')) | Current job status |


## 4. Table: `applications`

| Field Name       | Data Type        | Null | Constraints              | Description |
|------------------|------------------|------|---------------------------|-------------|
| application_id   | NUMBER           | No   | PK, Auto Increment        | Application identifier |
| applicant_id     | NUMBER           | No   | FK -> applicants          | Applicant applying |
| job_id           | NUMBER           | No   | FK -> jobs                | Job applied to |
| application_date | DATE             | No   | DEFAULT SYSDATE           | When application was submitted |
| status           | VARCHAR2(30)     | No   | CHECK(...)                | Submitted / Shortlisted / Hired / Rejected |


## 5. Table: `audit_logs`

| Field Name       | Data Type        | Null | Description |
|------------------|------------------|------|-------------|
| log_id           | NUMBER           | No   | Primary audit entry |
| username         | VARCHAR2(50)     | No   | User who performed action |
| table_name       | VARCHAR2(50)     | No   | Table affected |
| action           | VARCHAR2(50)     | No   | INSERT/UPDATE/DELETE |
| old_value        | CLOB             | Yes  | Before-change data |
| new_value        | CLOB             | Yes  | After-change data |
| log_timestamp    | DATE             | No   | Action timestamp |


## 6. Relationships (ERD)

+-------------+ +-------------+ +----------------+
| applicants | 1---∞ | applications| ∞---1 | jobs |
+-------------+ +-------------+ +----------------+