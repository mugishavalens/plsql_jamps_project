CREATE OR REPLACE PROCEDURE daily_application_report IS
    CURSOR c_daily IS
        SELECT TRUNC(application_date) AS day,
               COUNT(*) AS total
        FROM job_applications
        GROUP BY TRUNC(application_date)
        ORDER BY day;

    v_day   DATE;
    v_total NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('DAILY APPLICATION REPORT');
    DBMS_OUTPUT.PUT_LINE('--------------------------------');

    OPEN c_daily;
    LOOP
        FETCH c_daily INTO v_day, v_total;
        EXIT WHEN c_daily%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'Date: ' || TO_CHAR(v_day,'YYYY-MM-DD') ||
            ' | Applications: ' || v_total
        );
    END LOOP;
    CLOSE c_daily;
END;
/
