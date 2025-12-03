-- Function to return total jobs (renamed)
CREATE OR REPLACE FUNCTION get_total_jobs
RETURN NUMBER IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM jobs;
    RETURN v_count;
END;
/
