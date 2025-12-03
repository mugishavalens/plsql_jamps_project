-- 1. Retrieve all applicants
SELECT 
    applicant_id,
    first_name || ' ' || last_name AS full_name,
    email,
    phone AS phone_number,
    APPLY_DATE AS registration_date
FROM applicants
ORDER BY applicant_id;


-- 2. Retrieve active job posts
SELECT 
    job_id,
    job_title,
    department,
    SALARY AS salary,
    POSTED_DATE AS posted_date,
    closing_date
FROM jobs
WHERE STATUS = 'ACTIVE'
ORDER BY POSTED_DATE DESC;


-- 3. Retrieve applications with linked applicant and job
SELECT 
    ja.app_id AS application_id,
    a.first_name || ' ' || a.last_name AS full_name,
    a.email,
    j.job_title,
    ja.application_date AS apply_date,
    ja.status
FROM job_applications ja
INNER JOIN applicants a ON ja.applicant_id = a.applicant_id
INNER JOIN jobs j ON ja.job_id = j.job_id
ORDER BY ja.application_date DESC;


-- 4. Retrieve applicants for a specific job post (replace 1 with desired JOB_ID)
SELECT 
    a.first_name || ' ' || a.last_name AS full_name,
    a.email,
    a.phone AS phone_number,
    ja.application_date AS apply_date,
    ja.status
FROM job_applications ja
JOIN applicants a 
    ON ja.applicant_id = a.applicant_id
WHERE ja.job_id = 1  -- change 1 to any valid JOB_ID
ORDER BY ja.application_date;


-- 5. Retrieve all shortlisted candidates
SELECT 
    ja.app_id AS application_id,
    a.first_name || ' ' || a.last_name AS full_name,
    j.job_title,
    ja.status
FROM job_applications ja
JOIN applicants a 
    ON ja.applicant_id = a.applicant_id
JOIN jobs j 
    ON ja.job_id = j.job_id
WHERE ja.status = 'SHORTLISTED'
ORDER BY a.first_name || ' ' || a.last_name;
