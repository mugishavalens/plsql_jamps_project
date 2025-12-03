-- File: add_job.sql
-- Purpose: Adds a new job
CREATE OR REPLACE PROCEDURE add_job(
    p_job_title IN jobs.job_title%TYPE,
    p_department IN jobs.department%TYPE,
    p_salary IN jobs.salary%TYPE,
    p_posted_date IN jobs.posted_date%TYPE
)
IS
BEGIN
    INSERT INTO jobs(job_title, department, salary, posted_date)
    VALUES(p_job_title, p_department, p_salary, p_posted_date);

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Job "' || p_job_title || '" added successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error adding job: ' || SQLERRM);
        ROLLBACK;
END;
/
