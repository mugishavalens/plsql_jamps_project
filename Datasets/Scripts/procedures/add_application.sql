-- Purpose: Adds a new job application
CREATE OR REPLACE PROCEDURE add_application(
    p_job_id IN job_applications.job_id%TYPE,
    p_applicant_id IN job_applications.applicant_id%TYPE,
    p_status IN job_applications.status%TYPE DEFAULT 'PENDING'
)
IS
BEGIN
    INSERT INTO job_applications(job_id, applicant_id, status, application_date)
    VALUES(p_job_id, p_applicant_id, p_status, SYSDATE);

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Application added successfully for Applicant ID ' || p_applicant_id);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error adding application: ' || SQLERRM);
        ROLLBACK;
END;
/
