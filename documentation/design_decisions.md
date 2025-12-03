# DESIGN DECISIONS DOCUMENT  


## 1. Purpose
This document outlines the major design choices made during development and the rationale behind each decision.


## 2. Database Design Decisions

### **2.1 Relational Database (Oracle)**
**Reason:**  
- Strong ACID compliance  
- Advanced PL/SQL support  
- Needed for audit triggers, stored procedures, and enterprise reliability

### **2.2 Normalization (Up to 3NF)**
- Avoids data duplication  
- Ensures data integrity  
- Makes maintenance easier

### **2.3 Use of Surrogate Keys (NUMBER Auto-Increment)**
- Clean, simple primary keys  
- Faster integer indexing

### **2.4 Audit Tables + Triggers**
**Why:**  
- Track all changes to sensitive records  
- Provide traceability for legal and admin purposes


## 3. Application Design Decisions

### **3.1 PHP as Business Logic Layer**
- Lightweight
- Widely supported with Oracle connections
- Fits academic project requirements

### **3.2 Separation of Concerns**
- UI rendered separately from DB logic  
- SQL resides in stored procedures for security

### **3.3 Use of Prepared Statements**
**Why:**  
- Prevent SQL Injection  
- Faster performance with bind variables


## 4. Security Decisions

### **4.1 Role-Based Access**
- `job_app_user` for app-level access  
- Prevents using SYS/ADMIN in production

### **4.2 Password Hashing**
- Uses PHP `password_hash()`  
- Prevents plaintext password storage

### **4.3 Enforced Validation**
- Email format checking  
- Allowed file types for CV uploads  
- Input sanitization


## 5. User Experience (UX) Decisions

### **5.1 Simple & Clean UI**
- Avoid crowded forms
- Make application submission easy

### **5.2 Clear Status Labels**
- Submitted, Shortlisted, Rejected, Hired
- Helps applicants track their progress


## 6. Reporting & Analytics Decisions

- Analytics tables generated from SQL scripts  
- No heavy BI tools needed for the scope  
- Uses materialized views for performance if needed


## 7. Future Enhancements

- Add AI-based CV ranking  
- Email notifications  
- Multi-user admin roles  
- Two-factor authentication (2FA)

