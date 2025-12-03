# Dashboards Specification  
## Job Application Management System (JAMS)

This file describes the dashboards required for BI implementation in JAMS. Each dashboard includes purpose, target audience, KPIs, visualizations, and data sources.

---

# 1. Executive Dashboard (High-Level KPIs)

### Purpose
Provide top-level insights for HR managers and executives.

### Users
- Executives  
- HR Managers  

### Key KPIs
- Total Applicants  
- Total Jobs  
- Total Applications  
- Monthly Application Trend  
- Top 5 Most Applied Jobs  

### harts
- Line Chart → Monthly applications  
- Bar Chart → Job popularity  
- KPI Cards → Job count, applicant count, application count  
- Pie Chart → Applications per department  

### Data Sources
- APPLICANTS  
- JOBS  
- JOB_APPLICATIONS  

---

# 2. Recruitment Pipeline Dashboard

### Purpose
Monitor applicant flow and recruiter workload.

### Users
- Recruiters  
- HR Team  

### Key KPIs
- Applications by status (APPLIED, SELECTED, INTERVIEW, HIRED, REJECTED)
- Conversion rate  
- Daily application volume  
- Recruiter activity  

### Charts
- Funnel Chart → Status pipeline  
- Column Chart → Daily applications  
- Stacked Bar → Recruiter workload  
- Table → Top 10 applicants pending action  

### Data Sources
- JOB_APPLICATIONS  
- APPLICANTS  

---

# 3. Department & Salary Insights Dashboard

### Purpose
Support departmental salary planning and job competitiveness.

### Users
- Department heads  
- Executives  
- HR financial division  

### Key KPIs
- Avg salary per department  
- Salary distribution  
- High-demand departments  
- Job count per department  

### Charts
- Heatmap → Department performance  
- Boxplot → Salary distribution  
- Bar Chart → Job count per department  

### Data Sources
- JOBS  
- JOB_APPLICATIONS  

---

# 4. Audit & Security Dashboard

### Purpose
Monitor violations and ensure compliance with restriction rules.

### Users
- System Administrator  
- HR Manager  

### 📌 Key KPIs
- Denied operations count  
- Allowed vs denied operations  
- Violations by user  
- Weekend/Holiday violations  

### Charts
- Line Chart → Violation trend  
- Table → Violating users  
- Pie Chart → Allowed vs Denied  
- Calendar Chart → Violations by date  

### Data Sources
- AUDIT_LOG  
- PUBLIC_HOLIDAYS  

---

#  Conclusion
These four dashboards collectively provide full operational, analytical, and compliance intelligence for the Job Application Management System.

