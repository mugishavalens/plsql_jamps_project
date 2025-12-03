-- Purpose: Lists all applicants with the jobs they applied for
CREATE OR REPLACE PROCEDURE list_applicant_applications IS
    CURSOR c_applications IS
        SELECT a.applicant_id,
               a.first_name || ' ' || a.last_name AS applicant_name,
               j.job_title,
               ja.status,
               ja.application_date
        FROM applicants a
        LEFT JOIN job_applications ja ON a.applicant_id = ja.applicant_id
        LEFT JOIN jobs j ON ja.job_id = j.job_id
        ORDER BY a.applicant_id;

    v_applicant_id   applicants.applicant_id%TYPE;
    v_applicant_name VARCHAR2(200);
    v_job_title      jobs.job_title%TYPE;
    v_status         job_applications.status%TYPE;
    v_application_date DATE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('APPLICANT APPLICATION REPORT');
    DBMS_OUTPUT.PUT_LINE('-------------------------------------');

    OPEN c_applications;
    LOOP
        FETCH c_applications INTO
            v_applicant_id,
            v_applicant_name,
            v_job_title,
            v_status,
            v_application_date;
        EXIT WHEN c_applications%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || v_applicant_id ||
            ' | Name: ' || v_applicant_name ||
            ' | Job: ' || NVL(v_job_title, 'NONE') ||
            ' | Status: ' || NVL(v_status, 'N/A') ||
            ' | Applied: ' || NVL(TO_CHAR(v_application_date,'YYYY-MM-DD'),'N/A')
        );
    END LOOP;
    CLOSE c_applications;
END;
/
