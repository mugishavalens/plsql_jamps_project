-- Purpose: Returns total applications using an explicit cursor
CREATE OR REPLACE FUNCTION get_total_apps_cursor
RETURN NUMBER IS
    CURSOR c_total IS
        SELECT app_id
        FROM job_applications;

    v_count NUMBER := 0;
    v_temp  job_applications.app_id%TYPE;
BEGIN
    OPEN c_total;
    LOOP
        FETCH c_total INTO v_temp;
        EXIT WHEN c_total%NOTFOUND;
        v_count := v_count + 1;
    END LOOP;
    CLOSE c_total;

    RETURN v_count;
END;
/
