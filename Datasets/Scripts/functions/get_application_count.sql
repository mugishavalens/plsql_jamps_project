-- File: get_application_count.sql
-- Purpose: Returns total number of applications
CREATE OR REPLACE FUNCTION get_application_count
RETURN NUMBER IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM job_applications;
    RETURN v_count;
END;
/
