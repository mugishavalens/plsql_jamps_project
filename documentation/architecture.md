# SYSTEM ARCHITECTURE DOCUMENT  


## 1. Overview
This document describes the architectural structure of the system, highlighting the components, data flow, and integration points.


## 2. High-Level Architecture
+------------------+ +---------------------+ +-----------------------+
| Frontend (Web) | <---> | Application Layer | <---> | Oracle Database |
| HTML/CSS/JS/PHP | | Business Logic | | PL/SQL, Tables, ERD |
+------------------+ +---------------------+ +-----------------------+



## 3. Components

### **3.1 Presentation Layer (Frontend)**
- Web pages (HTML, CSS, JS)
- Applicant dashboard
- Job listings
- Application forms
- Admin backend (PHP)

### **3.2 Application Layer (PHP Business Logic)**
Responsibilities:
- Receive user input
- Validate forms
- Communicate with Oracle (OCI / PDO_OCI)
- Handle login sessions
- Implement authorization rules
- Call stored procedures

### **3.3 Database Layer (Oracle 21c / 23c)**
Includes:
- Tables (applicants, jobs, applications)
- Audit tables
- Stored procedures & functions
- Triggers
- Views
- Indexing & performance optimization


## 4. Deployment Architecture
     INTERNET
         |
  +-------------+
  |   Browser   |
  +-------------+
         |
     HTTP/HTTPS
         |
+----------------------+
| Apache/PHP Server |
| Business Logic API |
+----------------------+
|
SQL/OCI
|
+----------------------+
| Oracle DB Server |
+----------------------+



## 5. Data Flow Diagram (Level 0)



Applicant ----> Web UI ----> PHP Application ----> Oracle DB
^ |
| V
<------- Confirmation, Status, Data ---------



## 6. Security Architecture

- Role-based access control
- Application user authentication
- Oracle DB users:  
  - `valens` (DBA for project)  
  - `job_app_user` (app layer)
- Encryption via:
  - HTTPS
  - Database password hashing
- Audit logging triggers


## 7. Backup & Recovery

| Item | Strategy |
|------|----------|
| Database | Oracle RMAN backup |
| Audit Logs | Export to CSV monthly |
| Application files | Compressed backups weekly |


## 8. Scalability Considerations

- Add indexing on `job_id`, `applicant_id`
- Use views for reporting
- Connection pooling for PHP

