#  KPI Definitions  
## Job Application Management System (JAMS)

This document provides detailed definitions, formulas, and rationale for each KPI used in the BI dashboards for the Job Application Management System.

---

#  1. Recruitment KPIs

## **1.1 Total Applicants**
**Definition:** Total number of applicants registered in the system.  
**Formula:**  
```sql
SELECT COUNT(*) FROM APPLICANTS;
```
**Purpose:** Measures system usage and recruitment reach.

---

## **1.2 Total Jobs Posted**
**Definition:** Number of active job postings created.  
**Formula:**  
```sql
SELECT COUNT(*) FROM JOBS;
```
**Purpose:** Indicates available hiring opportunities and workload for recruiters.

---

## **1.3 Total Applications**
**Definition:** Number of all job applications submitted.  
**Formula:**  
```sql
SELECT COUNT(*) FROM JOB_APPLICATIONS;
```
**Purpose:** Shows hiring demand and position attractiveness.

---

## **1.4 Job Popularity Index**
**Definition:** Ranking of jobs based on number of applications received.  
**Formula:**  
```sql
SELECT JOB_ID, COUNT(*) AS TOTAL_APPS 
FROM JOB_APPLICATIONS 
GROUP BY JOB_ID 
ORDER BY TOTAL_APPS DESC;
```
**Purpose:** Identifies most attractive job positions.

---

## **1.5 Applicant Conversion Rate**
**Definition:** Measures how many applicants progress in the hiring process.  
**Formula:**  
```sql
(SELECTED_COUNT / TOTAL_APPLIED) * 100
```
**Purpose:** Measures hiring efficiency and applicant quality.

---

# 2. Salary & Department KPIs

## **2.1 Average Salary by Department**
**Definition:** Mean salary offered by each department.  
**Formula:**  
```sql
SELECT DEPARTMENT, AVG(SALARY) 
FROM JOBS 
GROUP BY DEPARTMENT;
```
**Purpose:** Supports budgeting and compensation decisions.

---

## **2.2 Salary Distribution Spread**
**Definition:** Range between highest and lowest salaries.  
**Formula:**  
```sql
MAX(SALARY) - MIN(SALARY)
```
**Purpose:** Shows fairness and competitiveness of compensation structure.

---

#  3. Pipeline KPIs

## **3.1 Applications by Status**
**Definition:** Number of applicants at each pipeline stage.  
**Formula:**  
```sql
SELECT STATUS, COUNT(*) 
FROM JOB_APPLICATIONS 
GROUP BY STATUS;
```
**Purpose:** Reveals hiring bottlenecks and workload.

---

## **3.2 Time-To-Fill Position**
**Definition:** Number of days between job posting and hiring.  
**Formula:**  
```sql
HIRE_DATE - POSTED_DATE
```
**Purpose:** Measures hiring efficiency.

---

#  4. Audit & Compliance KPIs

## **4.1 Total DML Attempts**
**Definition:** All actions recorded in audit log.  
**Formula:**  
```sql
SELECT COUNT(*) FROM AUDIT_LOG;
```

---

## **4.2 Denied Operation Count**
**Definition:** Total number of restricted operations blocked by triggers.  
**Formula:**  
```sql
SELECT COUNT(*) FROM AUDIT_LOG WHERE ACTION_STATUS = 'DENIED';
```

---

## **4.3 Denial Rate (%)**
**Definition:** Percentage of operations that were denied.  
**Formula:**  
```sql
(DENIED / TOTAL_ACTIONS) * 100
```

---

## **4.4 Holiday / Weekend Violations**
**Definition:** Number of DML attempts on restricted days.  
**Formula:**  
```sql
SELECT COUNT(*) 
FROM AUDIT_LOG 
WHERE IS_RESTRICTED_DAY = 'YES';
```

---

#  5. User Activity KPIs

## **5.1 User Activity Count**
**Definition:** Total actions performed by each user.  
**Formula:**  
```sql
SELECT USERNAME, COUNT(*) 
FROM AUDIT_LOG 
GROUP BY USERNAME;
```

---

## **5.2 High-Risk User Score**
**Definition:** Users with multiple denied operations.  
**Formula:**  
```sql
SELECT USERNAME, COUNT(*) AS DENIED_COUNT
FROM AUDIT_LOG 
WHERE ACTION_STATUS = 'DENIED'
GROUP BY USERNAME;
```

---

#  Conclusion  
These KPIs form the backbone of the BI dashboards, providing insight into recruitment efficiency, user behavior, salary structures, and system compliance.

