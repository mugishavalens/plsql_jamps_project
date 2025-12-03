-- File: count_status_applications.sql
-- Purpose: Counts applications by status (PENDING, APPROVED, REJECTED)
CREATE OR REPLACE FUNCTION count_status_applications(
    p_status IN job_applications.status%TYPE
) RETURN NUMBER IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM job_applications
    WHERE status = p_status;

    RETURN v_count;
END;
/
