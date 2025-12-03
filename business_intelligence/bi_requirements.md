# Business Intelligence Requirements  
## Job Application Management System (JAMS)  
**Database:** mon_27801_valens_jobApplication_db  
**Author:** Mugisha Valens  
**Academic Year:** 2025–2026  

---

## 1. Introduction
The BI component enhances JAMS by transforming operational data into meaningful analytical insights. This document defines stakeholders, objectives, KPIs, dashboards, and reporting needs required for BI implementation.

---

## 2. BI Stakeholders

| Stakeholder | Key Questions | BI Needs |
|------------|---------------|----------|
| HR Manager | Are we hiring efficiently? | Trends, KPIs, job performance |
| Recruiters | Which applicants need follow-up? | Pipeline analytics |
| Executives | Are departments performing well? | Salary + department KPIs |
| Department Heads | Are job roles competitive? | Salary, demand, job metrics |
| System Admin | Are rules violated? | Audit dashboard |

---

## 3. BI Objectives
1. Improve recruitment efficiency  
2. Identify hiring trends  
3. Monitor salary distribution  
4. Detect security violations  
5. Support HR decision-making  

---

## 4. Key BI Areas
### 4.1 Recruitment Analytics  
- Application counts  
- Popular job roles  
- Hiring funnel  

### 4.2 Salary Analytics  
- Avg salary per department  
- Salary range distribution  

### 4.3 Applicant Behavior  
- Skill frequency  
- Conversion rate analysis  

### 4.4 Audit & Compliance  
- Denied operations  
- Holiday/weekend violations  

---

## 5. KPIs (Summary)
- Total Applicants  
- Total Jobs  
- Total Applications  
- Department Avg Salary  
- Job Popularity Index  
- Applicant Conversion Rate  
- Violation Rate  
- User Activity Count  

(Full definitions in kpi_definitions.md)

---

## 6. Data Sources

| Table | Purpose |
|-------|---------|
| APPLICANTS | Applicant demographics |
| JOBS | Job details + salary |
| JOB_APPLICATIONS | Pipeline stages |
| AUDIT_LOG | System monitoring |
| PUBLIC_HOLIDAYS | Compliance rules |

---

## 7. Required Dashboards
1. Executive Overview  
2. Recruitment Pipeline  
3. Department & Salary Insights  
4. Audit & Security Dashboard  

(Details in dashboards.md)

---

## 8. Reporting Requirements

| Report | Frequency | Audience |
|--------|-----------|----------|
| Monthly Recruitment Summary | Monthly | HR Manager |
| Weekly Pipeline Report | Weekly | Recruiters |
| Salary Summary | Monthly | Executives |
| Audit Report | Weekly/Daily | Admin |

---

## 9. Analytics Requirements
- Window functions: RANK, ROW_NUMBER, LAG, LEAD  
- Trend charts  
- Aggregations  
- Segmentation by department, job, skill  
- Funnel analytics  

---

## 10. Compliance Requirements
BI must evaluate:
- Holiday violations  
- Weekend violations  
- User-level violation counts  
- Attempt patterns over time  

---

## 11. Success Criteria
- 4 fully functional dashboards  
- All KPIs implemented  
- BI mockups included  
- Queries optimized  
- Complete GitHub documentation  

---

## 12. Conclusion
The BI layer enables strategic insights into recruitment, performance, salaries, and security activities. It tr
