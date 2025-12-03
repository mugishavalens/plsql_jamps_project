-- File: get_department_avg_salary.sql
-- Purpose: Returns average salary of a given department
CREATE OR REPLACE FUNCTION get_department_avg_salary(
    p_department IN jobs.department%TYPE
) RETURN NUMBER IS
    v_avg_salary NUMBER;
BEGIN
    SELECT AVG(salary) INTO v_avg_salary
    FROM jobs
    WHERE department = p_department;

    RETURN NVL(v_avg_salary,0);
END;
/
