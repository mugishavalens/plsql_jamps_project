-- File: get_applicant_count.sql
-- Purpose: Returns total number of applicants
CREATE OR REPLACE FUNCTION get_applicant_count
RETURN NUMBER IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM applicants;
    RETURN v_count;
END;
/
