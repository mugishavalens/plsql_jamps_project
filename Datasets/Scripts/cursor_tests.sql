-- File: cursor_tests.sql
-- Purpose: Test all Phase VI cursor-based procedures and functions


-- Enable DBMS_OUTPUT
SET SERVEROUTPUT ON SIZE 1000000;

-- 1. Test: List all applicants and their applications
BEGIN
    DBMS_OUTPUT.PUT_LINE('============================');
    DBMS_OUTPUT.PUT_LINE('1. Testing: list_applicant_applications');
    DBMS_OUTPUT.PUT_LINE('============================');
    list_applicant_applications;
END;
/
-- 2. Test: List jobs with application counts
BEGIN
    DBMS_OUTPUT.PUT_LINE('============================');
    DBMS_OUTPUT.PUT_LINE('2. Testing: jobs_with_application_count');
    DBMS_OUTPUT.PUT_LINE('============================');
    jobs_with_application_count;
END;
/
-- 3. Test: Daily applications report
BEGIN
    DBMS_OUTPUT.PUT_LINE('============================');
    DBMS_OUTPUT.PUT_LINE('3. Testing: daily_application_report');
    DBMS_OUTPUT.PUT_LINE('============================');
    daily_application_report;
END;
/
-- 4. Test: Total applications function
DECLARE
    v_total NUMBER;
BEGIN
    v_total := get_total_apps_cursor;
    DBMS_OUTPUT.PUT_LINE('============================');
    DBMS_OUTPUT.PUT_LINE('4. Testing: get_total_apps_cursor');
    DBMS_OUTPUT.PUT_LINE('Total applications: ' || v_total);
    DBMS_OUTPUT.PUT_LINE('============================');
END;
/
-- 5. Test: Additional validation functions (optional)
DECLARE
    v_email_check NUMBER;
    v_age_check NUMBER;
BEGIN
    v_email_check := is_valid_email('test@example.com');
    v_age_check := is_valid_age(25);

    DBMS_OUTPUT.PUT_LINE('============================');
    DBMS_OUTPUT.PUT_LINE('5. Testing: Validation functions');
    DBMS_OUTPUT.PUT_LINE('Email test (1=valid,0=invalid): ' || v_email_check);
    DBMS_OUTPUT.PUT_LINE('Age test (1=valid,0=invalid): ' || v_age_check);
    DBMS_OUTPUT.PUT_LINE('============================');
END;
/
