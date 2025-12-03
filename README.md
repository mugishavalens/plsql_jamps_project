# Job Application Management System (PL/SQL Project)

**Student:** Mugisha Valens  
**Student ID:** 27801  
**GitHub Repository:** [PLSQL_Capstone_Project_Enhanced_BI](https://github.com/your-username/PLSQL_Capstone_Project_Enhanced_BI)  

**Final Commit:** `chore: Final commit – complete PL/SQL Job Application Management System with full scripts, triggers, procedures, sample data, documentation, and BI dashboards`


## Overview

The **Job Application Management System** is a PL/SQL-based solution built on **Oracle Database 21c**.  
It manages job postings, applicants, job applications, reviews, and audit logs.  
This project demonstrates **full database lifecycle development**, including schema design, stored logic, validation, automation, and analytics.


## Problem Statement

Organizations often struggle to manage job applications efficiently due to manual processes, inconsistent data, and lack of automation.  
This project provides a **structured, reliable database system** to streamline recruitment and support decision-making.


## Key Features

### Core Functionality

* Manage **job listings**, **applicant information**, and **applications**  
* Track application statuses (**PENDING**, **APPROVED**, **REJECTED**)  
* Enforce data integrity through **constraints, triggers, and validations**  
* Automated **timestamps** and **audit logs**  
* Support **search, filtering, and application analytics**

### Automation & PL/SQL

* `BEFORE INSERT` triggers for automatic application dates  
* Stored procedures for **adding jobs, applicants, and applications**  
* Functions for **analytics** (counts, percentages, averages)  
* Audit trigger logs every **status change**

### Analytics & Reporting

* Most applied jobs  
* Application approval/rejection rates  
* Department salary averages  
* Daily application summaries


## Data Validation Rules

### Applicant Validations

* Email must be **unique** and follow valid format  
* Phone number must follow **digit rules**  
* Age must be **≥ 18**  
* National ID must be **unique**

### Job Posting Validations

* Closing date must be **after opening date**  
* Job title must be **unique**

### Application Validations

* No duplicate applications per applicant/job  
* Applications only allowed **between posting dates**  
* Status transitions follow **workflow rules**

### System Validations

* Audit logs **mandatory** for all updates  
* No **cascaded deletes**  
* Trigger-enforced **date stamping**


## Database Schema

### Tables

* `JOBS`  
* `APPLICANTS`  
* `JOB_APPLICATIONS`  
* `AUDIT_LOG`  
* `PUBLIC_HOLIDAYS`

### Indexes

* `IDX_JOB_TITLE`  
* Unique index on `APPLICANTS.EMAIL`

### Constraints

* Primary & foreign keys  
* Unique constraints  
* Not null constraints  
* Date and workflow validations


## PL/SQL Modules

### Procedures

* `ADD_JOB`  
* `ADD_APPLICANT`  
* `ADD_APPLICATION`  
* `UPDATE_APPLICATION_STATUS`  
* `LIST_APPLICANT_APPLICATIONS`  
* `DAILY_APPLICATION_REPORT`  

### Functions

* `GET_JOB_COUNT`  
* `GET_APPLICANT_COUNT`  
* `GET_APPLICATION_COUNT`  
* `GET_DEPARTMENT_AVG_SALARY`  
* `COUNT_STATUS_APPLICATIONS`  
* `GET_TOTAL_APPS_CURSOR`  
* `IS_VALID_EMAIL`  
* `IS_VALID_AGE`  

### Triggers

* `TRG_SET_APPLY_DATE`  
* `TRG_RESTRICT_APPLICATION`  
* `TRG_APPLICATION_LOG`  


## Sample Data

* 20 Jobs  
* 50 Applicants  
* 100 Applications  
* Automatic timestamps and audit logging


## Quick Start Instructions

1. Clone the project repository:  
```bash
git clone https://github.com/your-username/PLSQL_Capstone_Project_Enhanced_BI.git
```  
2. Connect to **Oracle Database 21c** using SQL Developer or SQL*Plus.  
3. Execute the table creation scripts in `/tables`.  
4. Compile PL/SQL procedures, functions, and triggers from `/procedures`, `/functions`, and `/triggers`.  
5. Insert sample data into `applicants` and `jobs`.  
6. Run analytics queries or call procedures to generate reports.



## Documentation

* [Data Dictionary](/documentation/data_dictionary.md)  
* [Architecture](/documentation/architecture.md)  
* [Design Decisions](/documentation/design_decisions.md)


## Technologies Used

* Oracle Database 21c  
* SQL / PL/SQL  
* SQL Developer / SQL*Plus  
* Windows / Linux
